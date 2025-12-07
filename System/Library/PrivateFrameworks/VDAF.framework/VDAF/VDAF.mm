void sub_270B600A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = 0;
    v34 = a2;
    v35 = a1 + 32;
    v33 = v3;
    while (1)
    {
      v6 = (v35 + 40 * v5);
      v7 = *v6;
      if ((*v6 & 0x8000000000000000) != 0)
      {
        break;
      }

      v8 = a2[2];
      v9 = a2[3] >> 1;
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_51;
      }

      v10 = v6[2];
      if (v7)
      {
        v11 = v9 - v8 >= v7;
      }

      else
      {
        v11 = 1;
      }

      v12 = !v11;
      v13 = a2[3] >> 1;
      if (v11)
      {
        v13 = v8 + v7;
        if (__OFADD__(v8, v7))
        {
          goto LABEL_62;
        }
      }

      if (v13 < v8)
      {
        goto LABEL_52;
      }

      if (v9 < v8)
      {
        goto LABEL_53;
      }

      if (v9 < v13)
      {
        goto LABEL_54;
      }

      if (v13 < 0)
      {
        goto LABEL_55;
      }

      if ((v12 & 1) == 0)
      {
        v14 = __OFADD__(v8, v7);
        v15 = v8 + v7;
        if (v14)
        {
          goto LABEL_63;
        }

        if (v9 < v15)
        {
          goto LABEL_61;
        }

        v9 = v15;
      }

      if (v9 < v8)
      {
        goto LABEL_56;
      }

      v36 = a2[1];
      a2[2] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF16GadgetWireInputsCyAA7Field64VGMd, &_s4VDAF16GadgetWireInputsCyAA7Field64VGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      v17 = v13 - v8;
      if (__OFSUB__(v13, v8))
      {
        goto LABEL_57;
      }

      v18 = v16;
      *(v16 + 24) = v10;
      v19 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_58;
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      v37 = v5;
      swift_unknownObjectRetain();
      if (v10 == -1)
      {
        v20 = MEMORY[0x277D84F90];
        if (v17 < 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v20 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v20 + 16) = v19;
        bzero((v20 + 32), 8 * v10 + 8);
        if (v17 < 0)
        {
          goto LABEL_60;
        }
      }

      if (v17)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF7Field64VGMd, &_sSay4VDAF7Field64VGMR);
        v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v22 = v21;
        *(v21 + 16) = v17;
        *(v21 + 32) = v20;
        if (v17 != 1)
        {
          v23 = ~v8 + v13;
          v24 = (v21 + 40);
          do
          {
            *v24++ = v20;

            --v23;
          }

          while (v23);
        }

        *(v18 + 32) = v22;
        v25 = (v18 + 32);
        swift_beginAccess();
        v26 = 0;
        v27 = v36 + 8 * v8;
        while (v17 != v26)
        {
          v28 = *(v27 + 8 * v26);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v25 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
            *v25 = v22;
          }

          if (v26 >= v22[2])
          {
            goto LABEL_49;
          }

          v30 = &v22[v26];
          v31 = v30[4];
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v30[4] = v31;
          if (v32)
          {
            if (!*(v31 + 2))
            {
              goto LABEL_46;
            }
          }

          else
          {
            v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
            v30[4] = v31;
            if (!*(v31 + 2))
            {
LABEL_46:
              __break(1u);
              return;
            }
          }

          ++v26;
          *(v31 + 4) = v28;
          *v25 = v22;
          if (v17 == v26)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
        break;
      }

      *(v18 + 32) = MEMORY[0x277D84F90];
LABEL_4:
      v5 = v37 + 1;
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      a2 = v34;
      if (v37 + 1 == v33)
      {
        return;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }
}

uint64_t specialized Collection<>.encode<A>(into:)(uint64_t a1, uint64_t a2)
{

  return specialized AggregateShare.encode<A>(into:)(a1, a2);
}

{
  v19[5] = *MEMORY[0x277D85DE8];
  v15 = *(a2 + 16);
  if (v15)
  {
    v2 = 0;
    v14 = a2 + 32;
    do
    {
      v3 = *(v14 + 8 * v2);
      v4 = *(v3 + 16);
      if (!v4)
      {
        __break(1u);
      }

      v16 = v2 + 1;
      v5 = lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();

      v6 = 32;
      do
      {
        if (*(v3 + v6) + 4293918721u * (-1048577 * *(v3 + v6)) >= 0xFFF0000100000000)
        {
          v7 = 0;
        }

        else
        {
          v7 = (*(v3 + v6) + 4293918721u * (-1048577 * *(v3 + v6))) >> 32;
        }

        v17 = v7;
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
        v19[3] = v8;
        v19[4] = v5;
        v9 = swift_allocObject();
        v19[0] = v9;
        *(v9 + 16) = xmmword_270C44570;
        *(v9 + 32) = &v17;
        *(v9 + 40) = v18;
        v10 = __swift_project_boxed_opaque_existential_1(v19, v8);
        v11 = MEMORY[0x28223BE20](v10);
        v12 = v11[1];
        v18[0] = *v11;
        v18[1] = v12;
        Slice<>.withUnsafeBytes<A>(_:)();
        __swift_destroy_boxed_opaque_existential_1(v19);
        v6 += 4;
        --v4;
      }

      while (v4);

      v2 = v16;
    }

    while (v16 != v15);
  }

  return result;
}

{
  v16[5] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    v4 = lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
    do
    {
      v5 = *v3++;
      v6 = v5 + 0xFFF000FEFFFFFFFFLL * v5;
      if (v6 >= 0xFFF0000100000000)
      {
        v7 = 0;
      }

      else
      {
        v7 = HIDWORD(v6);
      }

      v14 = v7;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
      v16[3] = v8;
      v16[4] = v4;
      v9 = swift_allocObject();
      v16[0] = v9;
      *(v9 + 16) = xmmword_270C44570;
      *(v9 + 32) = &v14;
      *(v9 + 40) = v15;
      v10 = __swift_project_boxed_opaque_existential_1(v16, v8);
      v11 = MEMORY[0x28223BE20](v10);
      v12 = v11[1];
      v15[0] = *v11;
      v15[1] = v12;
      Slice<>.withUnsafeBytes<A>(_:)();
      result = __swift_destroy_boxed_opaque_existential_1(v16);
      --v2;
    }

    while (v2);
  }

  return result;
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a2 + 32;
    do
    {
      v5 = *(v4 + 8 * v3);
      v6 = *(v5 + 16);
      if (!v6)
      {
        __break(1u);
      }

      ++v3;

      v7 = 32;
      do
      {
        if (*(v5 + v7) + 4293918721u * (-1048577 * *(v5 + v7)) >= 0xFFF0000100000000)
        {
          v8 = 0;
        }

        else
        {
          v8 = (*(v5 + v7) + 4293918721u * (-1048577 * *(v5 + v7))) >> 32;
        }

        v10 = v8;
        specialized Array.append<A>(contentsOf:)(0, 4, &v10, &v11);
        v7 += 4;
        --v6;
      }

      while (v6);
    }

    while (v3 != v2);
  }

  return result;
}

{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    do
    {
      v4 = *v3++;
      v5 = v4 + 0xFFF000FEFFFFFFFFLL * v4;
      if (v5 >= 0xFFF0000100000000)
      {
        v6 = 0;
      }

      else
      {
        v6 = HIDWORD(v5);
      }

      v8 = v6;
      result = specialized Array.append<A>(contentsOf:)(0, 4, &v8, &v9);
      --v2;
    }

    while (v2);
  }

  return result;
}

{
  v15[5] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    v4 = lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
    do
    {
      v12 = *v3++;
      v5 = (0xFFFFFFFEFFFFFFFFLL * v12 * 0xFFFFFFFF00000001) >> 64;
      if (__CFADD__(-v12, v12))
      {
        if (v5 <= 0xFFFFFFFEFFFFFFFFLL)
        {
          ++v5;
        }

        else
        {
          v5 += 0x100000000;
        }
      }

      v13 = v5;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
      v15[3] = v6;
      v15[4] = v4;
      v7 = swift_allocObject();
      v15[0] = v7;
      *(v7 + 16) = xmmword_270C44580;
      *(v7 + 32) = &v13;
      *(v7 + 40) = v14;
      v8 = __swift_project_boxed_opaque_existential_1(v15, v6);
      v9 = MEMORY[0x28223BE20](v8);
      v10 = v9[1];
      v14[0] = *v9;
      v14[1] = v10;
      Slice<>.withUnsafeBytes<A>(_:)();
      result = __swift_destroy_boxed_opaque_existential_1(v15);
      --v2;
    }

    while (v2);
  }

  return result;
}

{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    do
    {
      v4 = *v3++;
      v6 = v4;
      result = specialized Array.append<A>(contentsOf:)(0, 4, &v6, &v7);
      --v2;
    }

    while (v2);
  }

  return result;
}

unint64_t sub_270B60478(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t outlined consume of GadgetEvaluation<A><A>(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_270B604C8@<X0>(uint64_t *a1@<X8>)
{
  result = VerificationJointRandomness.seed.getter();
  *a1 = result;
  return result;
}

__n128 sub_270B6052C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_270B60538@<X0>(uint64_t *a1@<X8>)
{
  result = VerificationJointRandomness.xof.getter();
  *a1 = result;
  return result;
}

__n128 protocol witness for FieldElement.value.getter in conformance Field128@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

unint64_t _s4VDAF8_UInt128V5WordsVSkAASk5index_8offsetBy07limitedF05IndexQzSgAJ_SiAJtFTW_0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void *sub_270B60600(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
    v5 = 0;
    goto LABEL_9;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    *a2 = a4;
    if (a3 == 1)
    {
      v5 = 1;
LABEL_9:
      v6 = a3;
      goto LABEL_10;
    }

    a2[1] = a5;
    v5 = 2;
    v6 = 2;
    if (a3 == 2)
    {
      goto LABEL_9;
    }

LABEL_10:
    *result = a4;
    result[1] = a5;
    result[2] = v5;
    return v6;
  }

  __break(1u);
  return result;
}

int8x16_t _s4VDAF8_UInt128Vs17FixedWidthIntegerAAsADP9bigEndianxvgTW_0@<Q0>(int8x16_t *a1@<X8>)
{
  v2 = vrev64q_s8(*v1);
  result = vextq_s8(v2, v2, 8uLL);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Field128()
{
  v1 = v0[1];
  MEMORY[0x2743B31A0](*v0);
  return MEMORY[0x2743B31A0](v1);
}

void *_s4VDAF8_UInt128V5WordsVSKAASK5index6before5IndexQzAI_tFTW_0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *_s4VDAF8_UInt128V5WordsVSKAASK9formIndex6beforey0E0Qzz_tFTW_0(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

double _s4VDAF8_UInt128V5WordsVSlAASl7indices7IndicesQzvgTW_0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_270C44F60;
  return result;
}

void *_s4VDAF8_UInt128V5WordsVSlAASl5index5after5IndexQzAI_tFTW_0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *_s4VDAF8_UInt128V5WordsVSlAASl9formIndex5aftery0E0Qzz_tFTW_0(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 _s4VDAF8_UInt128V5WordsVSTAAST12makeIterator0E0QzyFTW_0@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

unint64_t _s4VDAF8_UInt128Vs17FixedWidthIntegerAAsADP19leadingZeroBitCountSivgTW_0()
{
  v1 = v0[1];
  if (v1)
  {
    return __clz(v1);
  }

  else
  {
    return __clz(*v0) + 64;
  }
}

int8x16_t _s4VDAF8_UInt128Vs17FixedWidthIntegerAAsADP9bigEndianxx_tcfCTW_0@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X8>)
{
  v2 = vrev64q_s8(*a1);
  result = vextq_s8(v2, v2, 8uLL);
  *a2 = result;
  return result;
}

__n128 _s4VDAF8_UInt128Vs17FixedWidthIntegerAAsADP12littleEndianxx_tcfCTW_0@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t _s4VDAF8_UInt128VSzAASz20trailingZeroBitCountSivgTW_0()
{
  if (*v0)
  {
    return __clz(__rbit64(*v0));
  }

  else
  {
    return __clz(__rbit64(v0[1])) + 64;
  }
}

int8x16_t _s4VDAF8_UInt128VSzAASz1aoiyxx_xtFZTW_0@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  result = vandq_s8(*a2, *a1);
  *a3 = result;
  return result;
}

int8x16_t _s4VDAF8_UInt128VSzAASz2aeoiyyxz_xtFZTW_0(int8x16_t *a1, int8x16_t *a2)
{
  result = vandq_s8(*a1, *a2);
  *a1 = result;
  return result;
}

int8x16_t _s4VDAF8_UInt128VSzAASz1ooiyxx_xtFZTW_0@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  result = vorrq_s8(*a2, *a1);
  *a3 = result;
  return result;
}

int8x16_t _s4VDAF8_UInt128VSzAASz2oeoiyyxz_xtFZTW_0(int8x16_t *a1, int8x16_t *a2)
{
  result = vorrq_s8(*a1, *a2);
  *a1 = result;
  return result;
}

int8x16_t _s4VDAF8_UInt128VSzAASz1xoiyxx_xtFZTW_0@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  result = veorq_s8(*a2, *a1);
  *a3 = result;
  return result;
}

int8x16_t _s4VDAF8_UInt128VSzAASz2xeoiyyxz_xtFZTW_0(int8x16_t *a1, int8x16_t *a2)
{
  result = veorq_s8(*a1, *a2);
  *a1 = result;
  return result;
}

int8x16_t sub_270B60988@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X8>)
{
  result = vextq_s8(*a1, *a1, 8uLL);
  *a2 = result;
  return result;
}

int8x16_t sub_270B60998(int8x16_t *a1, int8x16_t *a2)
{
  result = vextq_s8(*a1, *a1, 8uLL);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Fraction(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Fraction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_270B60A2C()
{

  return protocol witness for VDAFEncodable.encodedBytes.getter in conformance Int32();
}

uint64_t getEnumTagSinglePayload for PreambleSeedDecodableParameter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PreambleSeedDecodableParameter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t _s4VDAF4PINEVyxq_q0_GAA9CollectorAAWI_0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_270B60BD0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _s4VDAF12PreambleKWayVyxq_q0_GAA9CollectorAAWI_0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s4VDAF5Prio3Vyxq_GAA6ClientAAWI_0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s4VDAF24LeafCorrectionCalculatorV17UncorrectedValuesVMi_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _s4VDAF8PreambleVyxq_q0_GAA9CollectorAAWI_0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s4VDAF9VDAFErrorOWOy_0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_270B60E50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _s4VDAF22SiblingLeafCorrectionsVMi_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static Data.random(count:)(uint64_t a1)
{
  v1 = _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(a1);
  v2 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v1);

  return v2;
}

uint64_t _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2 = MEMORY[0x277D84F90];
    if (result)
    {
      v7 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v2 = v7;
      do
      {
        v6 = 0;
        MEMORY[0x2743B35C0](&v6, 8);
        v3 = v6;
        v7 = v2;
        v5 = *(v2 + 16);
        v4 = *(v2 + 24);
        if (v5 >= v4 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
          v2 = v7;
        }

        *(v2 + 16) = v5 + 1;
        *(v2 + v5 + 32) = v3;
        --v1;
      }

      while (v1);
    }

    return v2;
  }

  return result;
}

uint64_t SeedCtrlUnadjusted.seedLeft.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t SeedCtrlUnadjusted.seedRight.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

double SeedCtrlUnadjusted.init(from:doubling:using:for:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, _OWORD *a5@<X8>, int64_t a6@<X2>, uint64_t a7@<X5>)
{
  specialized SeedCtrlUnadjusted.init(from:doubling:using:for:)(a1, a2, a6, a3, a4, a7, v14);
  outlined consume of Data._Representation(a3, a4);
  outlined consume of Data._Representation(a1, a2);
  v12 = v14[1];
  *a5 = v14[0];
  a5[1] = v12;
  result = *&v15;
  a5[2] = v15;
  return result;
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t static SeedCtrlUnadjusted.makePairList(from:using:for:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == v3)
  {
    v4 = MEMORY[0x28223BE20](a1);
    v11[2] = v2;
    v11[3] = v5;
    v11[4] = v6;
    v11[5] = v7;
    return _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay10Foundation4DataVGAKG_4VDAF4PairVyAM18SeedCtrlUnadjustedVGs5NeverOTg5015_s10Foundation4g9VAC4VDAF4i6VyAD18jkl18VGIgggo_AC_ACtAIs5M11OIegnrzr_TRA2jRIgggo_Tf1cn_nTf4ng_n(v4, v8, partial apply for closure #1 in static SeedCtrlUnadjusted.makePairList(from:using:for:), v11);
  }

  else
  {
    lazy protocol witness table accessor for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError();
    swift_allocError();
    *v10 = v2;
    *(v10 + 8) = v3;
    *(v10 + 16) = 0;
    return swift_willThrow();
  }
}

double closure #1 in static SeedCtrlUnadjusted.makePairList(from:using:for:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>, int64_t a9@<X4>)
{
  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(a5, a6);

  specialized SeedCtrlUnadjusted.init(from:doubling:using:for:)(a1, a2, a9, a5, a6, a7, v22);
  outlined consume of Data._Representation(a5, a6);
  outlined consume of Data._Representation(a1, a2);
  outlined copy of Data._Representation(a5, a6);

  outlined copy of Data._Representation(a3, a4);
  specialized SeedCtrlUnadjusted.init(from:doubling:using:for:)(a3, a4, a9, a5, a6, a7, v23);
  outlined consume of Data._Representation(a5, a6);
  outlined consume of Data._Representation(a3, a4);
  v18 = v23[0];
  a8[2] = v22[2];
  a8[3] = v18;
  v19 = v23[2];
  a8[4] = v23[1];
  a8[5] = v19;
  result = *v22;
  v21 = v22[1];
  *a8 = v22[0];
  a8[1] = v21;
  return result;
}

uint64_t SeedCtrlUnadjusted.subscript.getter(char a1)
{
  v2 = 24;
  if ((a1 & 1) == 0)
  {
    v2 = 8;
  }

  v3 = *(v1 + 16 * (a1 & 1));
  outlined copy of Data._Representation(v3, *(v1 + v2));

  return v3;
}

uint64_t default argument 1 of FieldElement.init<A>(bytes:mask:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static FixedWidthInteger.max.getter();
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t specialized Data.init(xofWith:using:for:byteCount:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = a1;
  v45 = a2;
  outlined copy of Data._Representation(a1, a2);
  v8 = MEMORY[0x277CC9318];
  v9 = MEMORY[0x277CC9300];
  v10 = a2;
  v11 = a1;
  while (1)
  {
    v12 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_14;
      }

      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      if (v16 > 31)
      {
        break;
      }

      goto LABEL_14;
    }

    if (!v12)
    {
      if (BYTE6(v10) > 0x1FuLL)
      {
        break;
      }

      goto LABEL_14;
    }

    if (__OFSUB__(HIDWORD(v11), v11))
    {
      goto LABEL_33;
    }

    if (HIDWORD(v11) - v11 > 31)
    {
      break;
    }

LABEL_14:
    v42 = v8;
    v43 = v9;
    v40 = a1;
    v41 = a2;
    v17 = __swift_project_boxed_opaque_existential_1(&v40, v8);
    v18 = *v17;
    v19 = v17[1] >> 62;
    if (v19 > 1)
    {
      if (v19 != 2)
      {
LABEL_2:
        outlined copy of Data._Representation(a1, a2);
        goto LABEL_3;
      }

      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      outlined copy of Data._Representation(a1, a2);
      if (__DataStorage._bytes.getter() && __OFSUB__(v21, __DataStorage._offset.getter()))
      {
        goto LABEL_36;
      }

      if (__OFSUB__(v20, v21))
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_2;
      }

      v22 = v18;
      if (v18 >> 32 < v18)
      {
        goto LABEL_34;
      }

      outlined copy of Data._Representation(a1, a2);
      if (__DataStorage._bytes.getter() && __OFSUB__(v22, __DataStorage._offset.getter()))
      {
        goto LABEL_37;
      }
    }

    MEMORY[0x2743B2250]();
LABEL_3:
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_1(&v40);
    v11 = v44;
    v10 = v45;
  }

  outlined copy of Data._Representation(v11, v10);
  specialized Collection.prefix(_:)(32, v11, v10, &v40);
  v23 = v40;
  v24 = v41;
  outlined consume of Data._Representation(v11, v10);
  outlined copy of Data._Representation(v23, v24);
  v35 = v23;
  v25 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v23, v24);
  outlined copy of Data._Representation(a3, a4);
  v26 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v27 = _s4VDAF31BatchedExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binder10generatingxAA4SeedV_Says5UInt8VGAMSitFZAA19XofHmacSha256Aes128C_Tt3g5(v25, a5, v26, a6);

  v28 = *(v27 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);
  if (!v28)
  {
    goto LABEL_39;
  }

  if (a6 < 0)
  {
    goto LABEL_38;
  }

  if (a6)
  {
    v29 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v29[1].i64[0] = a6;
    bzero(&v29[2], a6);
    v30 = a6;
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
    v30 = *(MEMORY[0x277D84F90] + 16);
  }

  v31 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v32 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
  swift_beginAccess();
  specialized static AES.CTR.encryptInPlace(_:using:updating:)(v29 + 2, v29[2].i64 + v30, v28 + v31, v28 + v32);
  swift_endAccess();

  v33 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v29);

  outlined consume of Data._Representation(a3, a4);
  outlined consume of Data._Representation(a1, a2);
  outlined consume of Data._Representation(v35, v24);
  return v33;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t specialized SeedCtrlUnadjusted.init(from:doubling:using:for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v124 = *MEMORY[0x277D85DE8];
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v13 = 0;
    if (v12 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v13 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v13 = HIDWORD(a1) - a1;
LABEL_10:
  v16 = ceil(vcvtd_n_f64_s64(a3, 3uLL));
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v17 = v13 + v16;
  if (__OFADD__(v13, v16))
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  if (v17 + 0x4000000000000000 < 0)
  {
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v111 = a7;
  v18 = 2 * v17;
  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(a4, a5);
  v21 = specialized Data.init(xofWith:using:for:byteCount:)(a1, a2, a4, a5, a6, v18);
  v23 = v21;
  v24 = v22;
  v25 = v22 >> 62;
  v116 = v21;
  if ((v22 >> 62) > 1)
  {
    v26 = 0;
    if (v25 == 2)
    {
      v26 = *(v21 + 16);
    }
  }

  else if (v25)
  {
    v26 = v21;
  }

  else
  {
    v26 = 0;
  }

  if (specialized RandomAccessCollection<>.index(_:offsetBy:)(v26, v13, v21, v22) < v26)
  {
    goto LABEL_171;
  }

  v27 = Data._Representation.subscript.getter();
  v28 = MEMORY[0x277CC9318];
  v29 = MEMORY[0x277CC9300];
  v122 = MEMORY[0x277CC9318];
  v123 = MEMORY[0x277CC9300];
  v120 = v27;
  v121 = v30;
  v31 = __swift_project_boxed_opaque_existential_1(&v120, MEMORY[0x277CC9318]);
  v32 = *v31;
  v33 = v31[1];
  v34 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v34 != 2)
    {
      memset(v117, 0, 14);
      v35 = v117;
      goto LABEL_50;
    }

    v36 = *(v32 + 16);
    v37 = *(v32 + 24);
    v38 = __DataStorage._bytes.getter();
    if (v38)
    {
      v39 = __DataStorage._offset.getter();
      if (__OFSUB__(v36, v39))
      {
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      v38 += v36 - v39;
    }

    v40 = __OFSUB__(v37, v36);
    v41 = v37 - v36;
    if (v40)
    {
      goto LABEL_177;
    }

    v42 = MEMORY[0x2743B2250]();
    if (v42 >= v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = v42;
    }

    v44 = &v38[v43];
    if (v38)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    closure #1 in Data.init<A>(_:)(v38, v45, &v118);
    v28 = MEMORY[0x277CC9318];
LABEL_48:
    v29 = MEMORY[0x277CC9300];
    goto LABEL_51;
  }

  if (v34)
  {
    v46 = v32;
    v47 = v32 >> 32;
    v48 = v47 - v46;
    if (v47 < v46)
    {
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    v49 = __DataStorage._bytes.getter();
    if (v49)
    {
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v46, v50))
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      v49 += v46 - v50;
    }

    v28 = MEMORY[0x277CC9318];
    v51 = MEMORY[0x2743B2250]();
    if (v51 >= v48)
    {
      v52 = v48;
    }

    else
    {
      v52 = v51;
    }

    v53 = &v49[v52];
    if (v49)
    {
      v54 = v53;
    }

    else
    {
      v54 = 0;
    }

    closure #1 in Data.init<A>(_:)(v49, v54, &v118);
    goto LABEL_48;
  }

  v117[0] = *v31;
  LOWORD(v117[1]) = v33;
  BYTE2(v117[1]) = BYTE2(v33);
  BYTE3(v117[1]) = BYTE3(v33);
  BYTE4(v117[1]) = BYTE4(v33);
  BYTE5(v117[1]) = BYTE5(v33);
  v35 = v117 + BYTE6(v33);
LABEL_50:
  closure #1 in Data.init<A>(_:)(v117, v35, &v118);
LABEL_51:
  v109 = v119;
  v110 = v118;
  __swift_destroy_boxed_opaque_existential_1(&v120);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v55 = specialized RandomAccessCollection<>.index(_:offsetBy:)(*(v23 + 16), v13, v23, v24);
      v56 = *(v23 + 16);
      goto LABEL_57;
    }
  }

  else if (v25)
  {
    v55 = specialized RandomAccessCollection<>.index(_:offsetBy:)(v116, v13, v23, v24);
    v56 = v116;
    goto LABEL_57;
  }

  v55 = specialized RandomAccessCollection<>.index(_:offsetBy:)(0, v13, v23, v24);
  v56 = 0;
LABEL_57:
  if (v13 + 0x4000000000000000 < 0)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v113 = 2 * v13;
  if (specialized RandomAccessCollection<>.index(_:offsetBy:)(v56, 2 * v13, v23, v24) < v55)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v57 = Data._Representation.subscript.getter();
  v122 = v28;
  v123 = v29;
  v120 = v57;
  v121 = v58;
  v59 = __swift_project_boxed_opaque_existential_1(&v120, v28);
  v60 = *v59;
  v61 = v59[1];
  v62 = v61 >> 62;
  if ((v61 >> 62) > 1)
  {
    if (v62 != 2)
    {
      memset(v117, 0, 14);
      v64 = v117;
      v63 = v117;
      goto LABEL_81;
    }

    v65 = *(v60 + 16);
    v66 = *(v60 + 24);
    v67 = __DataStorage._bytes.getter();
    if (v67)
    {
      v68 = __DataStorage._offset.getter();
      v60 = v65 - v68;
      if (__OFSUB__(v65, v68))
      {
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      v67 += v60;
    }

    v40 = __OFSUB__(v66, v65);
    v69 = v66 - v65;
    if (!v40)
    {
LABEL_73:
      v73 = MEMORY[0x2743B2250]();
      if (v73 >= v69)
      {
        v74 = v69;
      }

      else
      {
        v74 = v73;
      }

      v75 = (v74 + v67);
      if (v67)
      {
        v63 = v75;
      }

      else
      {
        v63 = 0;
      }

      v64 = v67;
      goto LABEL_81;
    }

    __break(1u);
LABEL_69:
    v70 = v60;
    v71 = v60 >> 32;
    v69 = v71 - v70;
    if (v71 < v70)
    {
LABEL_178:
      __break(1u);
      goto LABEL_179;
    }

    v67 = __DataStorage._bytes.getter();
    if (v67)
    {
      v72 = __DataStorage._offset.getter();
      if (__OFSUB__(v70, v72))
      {
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
      }

      v67 += v70 - v72;
    }

    goto LABEL_73;
  }

  if (v62)
  {
    goto LABEL_69;
  }

  v117[0] = *v59;
  LOWORD(v117[1]) = v61;
  BYTE2(v117[1]) = BYTE2(v61);
  BYTE3(v117[1]) = BYTE3(v61);
  BYTE4(v117[1]) = BYTE4(v61);
  BYTE5(v117[1]) = BYTE5(v61);
  v63 = v117 + BYTE6(v61);
  v64 = v117;
LABEL_81:
  closure #1 in Data.init<A>(_:)(v64, v63, &v118);
  v76 = v118;
  v77 = v119;
  __swift_destroy_boxed_opaque_existential_1(&v120);
  if (a3 < 0)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  if (!a3)
  {
    v79 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    goto LABEL_144;
  }

  v108 = v76;
  v78 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v78 + 16) = a3;
  v114 = v78;
  bzero((v78 + 32), a3);
  v79 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v79 + 16) = a3;
  bzero((v79 + 32), a3);
  v115 = v23 >> 32;
  v112 = -a3;
  v80 = 32;
  v81 = v116;
  do
  {
    v82 = v80 - 32;
    v83 = ((v80 - 32) >> 2) & 0x1FFFFFFFFFFFFFFELL;
    v84 = v113 + v83;
    if (__OFADD__(v113, v83))
    {
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    if (v25 > 1)
    {
      if (v25 != 2)
      {
        v86 = 0;
        v85 = 0;
        goto LABEL_94;
      }

      v85 = *(v23 + 16);
      v87 = v85 + v84;
      if (__OFADD__(v85, v84))
      {
        goto LABEL_165;
      }

      v86 = *(v23 + 24);
    }

    else
    {
      if (!v25)
      {
        v85 = 0;
        v86 = BYTE6(v24);
LABEL_94:
        v87 = v84;
        goto LABEL_95;
      }

      v87 = v81 + v84;
      if (__OFADD__(v81, v84))
      {
        goto LABEL_164;
      }

      v86 = v23 >> 32;
      v85 = v81;
    }

LABEL_95:
    if (v87 < v85 || v86 < v87)
    {
      goto LABEL_146;
    }

    if (v25 > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_183;
      }

      if (v87 < *(v23 + 16))
      {
        goto LABEL_150;
      }

      if (v87 >= *(v23 + 24))
      {
        goto LABEL_153;
      }

      v90 = __DataStorage._bytes.getter();
      if (!v90)
      {
        goto LABEL_185;
      }

      v91 = v90;
      v92 = __DataStorage._offset.getter();
      v93 = v87 - v92;
      if (__OFSUB__(v87, v92))
      {
        goto LABEL_155;
      }

      goto LABEL_114;
    }

    if (v25)
    {
      if (v87 < v81 || v87 >= v115)
      {
        goto LABEL_152;
      }

      v94 = __DataStorage._bytes.getter();
      if (!v94)
      {
        goto LABEL_184;
      }

      v91 = v94;
      v95 = __DataStorage._offset.getter();
      v93 = v87 - v95;
      if (__OFSUB__(v87, v95))
      {
        goto LABEL_154;
      }

LABEL_114:
      v89 = *(v91 + v93);
      v81 = v116;
      goto LABEL_115;
    }

    if (v87 >= BYTE6(v24))
    {
      goto LABEL_151;
    }

    v120 = v23;
    LOWORD(v121) = v24;
    BYTE2(v121) = BYTE2(v24);
    BYTE3(v121) = BYTE3(v24);
    BYTE4(v121) = BYTE4(v24);
    BYTE5(v121) = BYTE5(v24);
    v89 = *(&v120 + v87);
LABEL_115:
    if (v82 >= *(v114 + 16))
    {
      goto LABEL_147;
    }

    v96 = v84 | 1;
    *(v114 + v80) = (v89 >> (v82 & 7)) & 1;
    if (v25)
    {
      if (v25 == 2)
      {
        v97 = *(v23 + 16);
        v40 = __OFADD__(v97, v96);
        v96 += v97;
        if (v40)
        {
          goto LABEL_157;
        }

        v98 = *(v23 + 24);
      }

      else
      {
        v40 = __OFADD__(v81, v96);
        v96 += v81;
        if (v40)
        {
          goto LABEL_156;
        }

        v98 = v23 >> 32;
        v97 = v81;
      }
    }

    else
    {
      v97 = 0;
      v98 = BYTE6(v24);
    }

    if (v96 < v97 || v98 < v96)
    {
      goto LABEL_148;
    }

    if (v25 == 2)
    {
      if (v96 < *(v23 + 16))
      {
        goto LABEL_159;
      }

      if (v96 >= *(v23 + 24))
      {
        goto LABEL_161;
      }

      v103 = __DataStorage._bytes.getter();
      if (!v103)
      {
        goto LABEL_187;
      }

      v100 = v103;
      v104 = __DataStorage._offset.getter();
      v102 = v96 - v104;
      if (__OFSUB__(v96, v104))
      {
        goto LABEL_163;
      }

      goto LABEL_137;
    }

    if (v25 == 1)
    {
      if (v96 < v81 || v96 >= v115)
      {
        goto LABEL_160;
      }

      v99 = __DataStorage._bytes.getter();
      if (!v99)
      {
        goto LABEL_186;
      }

      v100 = v99;
      v101 = __DataStorage._offset.getter();
      v102 = v96 - v101;
      if (__OFSUB__(v96, v101))
      {
        goto LABEL_162;
      }

LABEL_137:
      v105 = *(v100 + v102);
      v81 = v116;
      goto LABEL_140;
    }

    if (v96 >= BYTE6(v24))
    {
      goto LABEL_158;
    }

    v120 = v23;
    LOWORD(v121) = v24;
    BYTE2(v121) = BYTE2(v24);
    BYTE3(v121) = BYTE3(v24);
    BYTE4(v121) = BYTE4(v24);
    BYTE5(v121) = BYTE5(v24);
    v105 = *(&v120 + v96);
LABEL_140:
    if (v82 >= *(v79 + 16))
    {
      goto LABEL_149;
    }

    *(v79 + v80++) = (v105 >> (v82 & 7)) & 1;
  }

  while (v112 + v80 != 32);
  v76 = v108;
  v106 = v114;
LABEL_144:
  result = outlined consume of Data._Representation(v23, v24);
  *v111 = v110;
  v111[1] = v109;
  v111[2] = v76;
  v111[3] = v77;
  v111[4] = v106;
  v111[5] = v79;
  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t lazy protocol witness table accessor for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError()
{
  result = lazy protocol witness table cache variable for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError;
  if (!lazy protocol witness table cache variable for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError;
  if (!lazy protocol witness table cache variable for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError);
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay10Foundation4DataVGAKG_4VDAF4PairVyAM18SeedCtrlUnadjustedVGs5NeverOTg5015_s10Foundation4g9VAC4VDAF4i6VyAD18jkl18VGIgggo_AC_ACtAIs5M11OIegnrzr_TRA2jRIgggo_Tf1cn_nTf4ng_n(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *__return_ptr, uint64_t, unint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v49 = a4;
  v41 = *(a2 + 16);
  v42 = *(a1 + 16);
  if (v41 >= v42)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v46 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v39 = a2;
  v40 = a1;
  v43 = v6;
  if (v6)
  {

    v7 = (a1 + 40);
    v8 = (a2 + 40);
    while (1)
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      v11 = *(v8 - 1);
      v12 = *v8;
      outlined copy of Data._Representation(v9, *v7);
      result = outlined copy of Data._Representation(v11, v12);
      if (v10 >> 60 == 15)
      {
        break;
      }

      a3(v48, v9, v10, v11, v12);
      outlined consume of Data._Representation(v9, v10);
      result = outlined consume of Data._Representation(v11, v12);
      v15 = *(v46 + 16);
      v14 = *(v46 + 24);
      if (v15 >= v14 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      }

      v7 += 2;
      v8 += 2;
      *(v46 + 16) = v15 + 1;
      v16 = (v46 + 96 * v15);
      v17 = v48[1];
      v16[2] = v48[0];
      v16[3] = v17;
      v18 = v48[2];
      v19 = v48[3];
      v20 = v48[5];
      v16[6] = v48[4];
      v16[7] = v20;
      v16[4] = v18;
      v16[5] = v19;
      if (!--v6)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {

LABEL_12:
    v22 = v41;
    v21 = v42;
    if (v42 <= v41)
    {
LABEL_22:

      return v46;
    }

    v23 = v43;
    v24 = 16 * v43 + 40;
    v25 = (v39 + v24);
    v26 = (v40 + v24);
    while (v23 < v21)
    {
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_24;
      }

      if (v22 == v23)
      {
        goto LABEL_22;
      }

      if (v23 >= v22)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v23, 1))
      {
        goto LABEL_26;
      }

      v44 = v23;
      v28 = *(v26 - 1);
      v29 = *v26;
      v31 = *(v25 - 1);
      v30 = *v25;
      outlined copy of Data._Representation(v28, *v26);
      outlined copy of Data._Representation(v31, v30);
      a3(v47, v28, v29, v31, v30);
      outlined consume of Data._Representation(v28, v29);
      result = outlined consume of Data._Representation(v31, v30);
      v33 = *(v46 + 16);
      v32 = *(v46 + 24);
      if (v33 >= v32 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
      }

      *(v46 + 16) = v33 + 1;
      v34 = (v46 + 96 * v33);
      v35 = v47[1];
      v34[2] = v47[0];
      v34[3] = v35;
      v36 = v47[2];
      v37 = v47[3];
      v38 = v47[5];
      v34[6] = v47[4];
      v34[7] = v38;
      v34[4] = v36;
      v34[5] = v37;
      v21 = v42;
      v23 = v44 + 1;
      v25 += 2;
      v26 += 2;
      v22 = v41;
      if (v27 == v42)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t instantiation function for generic protocol witness table for SeedCtrlUnadjustedError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError();
  result = lazy protocol witness table accessor for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SeedCtrlUnadjustedError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SeedCtrlUnadjustedError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTag for SeedCtrlUnadjustedError(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for SeedCtrlUnadjustedError(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SeedCtrlUnadjusted(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for SeedCtrlUnadjusted(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SeedCtrlUnadjusted.UnadjustedOneSide(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SeedCtrlUnadjusted.UnadjustedOneSide(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void InnerCorrectionCalculator.numNonZeroPaths.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LeafParent(0, a3, a4, a4);

  JUMPOUT(0x2743B2830);
}

uint64_t InnerCorrectionCalculator.generate(at:with:using:)@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, void *a12)
{
  result = InnerCorrectionCalculator.calculate(at:withParty0:andParty1:using:)(a1, a2, a3, a6, a7, a8, a10, a11, a12);
  if (!v12)
  {
    v21 = v18;
    v22 = v19;
    v23 = InnerCorrectionCalculator.makeNextLevelInput(forCurrentLevel:from:using:and:)(a1, result, v18, v19, a4, a5, a8, v20, a11, a12);
    v25 = v24;
    v27 = v26;
    v29 = v28;

    *a9 = v21;
    a9[1] = v22;
    a9[2] = v23;
    a9[3] = v25;
    a9[4] = v27;
    a9[5] = v29;
  }

  return result;
}

uint64_t InnerCorrectionCalculator.calculate(at:withParty0:andParty1:using:)(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v9 = a8;
  v194 = a1;
  v11 = a9;
  v213 = *MEMORY[0x277D85DE8];
  v12 = *(a2 + 16);
  v13 = *(a3 + 16);
  if (v12 != v13 || (v200 = a9, v201 = a2, v187 = v12, v191 = type metadata accessor for LeafParent(0, a8, a9, a4), v18 = MEMORY[0x2743B2830](a6), v9 = a8, v11 = a9, v12 = v187, v187 != v18))
  {
    v178 = v12;
    v179 = type metadata accessor for LeafParent(0, v9, v11, a4);
    v180 = MEMORY[0x2743B2830](a6, v179);
    lazy protocol witness table accessor for type InnerCorrectionError and conformance InnerCorrectionError();
    swift_allocError();
    *v181 = v178;
    v181[1] = v13;
    v181[2] = v180;
    swift_willThrow();
    return v189;
  }

  MEMORY[0x28223BE20](v18);
  v183[2] = v19;
  v183[3] = a4;
  v183[4] = v20;
  v183[5] = a7;
  v22 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay10Foundation4DataVGAKG_4VDAF4PairVyAM18SeedCtrlUnadjustedVGs5NeverOTg5015_s10Foundation4g9VAC4VDAF4i6VyAD18jkl18VGIgggo_AC_ACtAIs5M11OIegnrzr_TRA2jRIgggo_Tf1cn_nTf4ng_n(v21, a3, partial apply for closure #1 in static SeedCtrlUnadjusted.makePairList(from:using:for:), v183);
  v203 = MEMORY[0x277D84FA0];
  v23 = MEMORY[0x277D84F90];
  v202 = MEMORY[0x277D84F90];
  v188._rawValue = a6;
  v204 = a6;
  v183[6] = type metadata accessor for LeafParent(255, v9, a9, v24);
  v25 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2743B26D0](&v205, v25, WitnessTable);
  v204 = v205;
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  v185 = type metadata accessor for EnumeratedSequence.Iterator();
  EnumeratedSequence.Iterator.next()();
  v189 = v22;
  v195 = *(&v205 + 1);
  if (!*(&v205 + 1))
  {
    v190 = v23;
LABEL_137:

    return v189;
  }

  v186 = v22 + 32;
  v27 = v205;
  v184 = v201 + 32;
  v28 = v23;
  v190 = v23;
  rawValue = v188._rawValue;
  while (1)
  {
    v196 = v28;
    v197 = v27;
    v30 = MEMORY[0x2743B2830](rawValue, v191);
    type metadata accessor for BitMasks();
    v31 = swift_allocObject();
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_162;
    }

    v32 = v31;
    if (v30)
    {
      v33 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v33 + 16) = v30;
      bzero((v33 + 32), v30);
      *(v32 + 16) = v33;
      v200 = (v32 + 16);
      v34 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v34 + 16) = v30;
      bzero((v34 + 32), v30);
    }

    else
    {
      *(v31 + 16) = v23;
      v200 = (v31 + 16);
      v34 = v23;
    }

    *(v32 + 24) = v34;
    v35 = LeafParent.prefix(leadingToLevel:)(v194);
    if (v36)
    {
LABEL_138:

      return v189;
    }

    v37 = v35;
    v38 = specialized Set.contains(_:)(v35, v203);
    v201 = v32;
    v192 = 0;
    if (!v38)
    {
      break;
    }

    if (v197 >= v187)
    {
      goto LABEL_163;
    }

    v39 = (v184 + 16 * v197);
    v40 = *v39;
    v41 = v39[1];
    v42 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      v43 = v190;
      if (v42 == 2)
      {
        v98 = v40 + 16;
        v96 = *(v40 + 16);
        v97 = *(v98 + 8);
        v44 = v97 - v96;
        if (__OFSUB__(v97, v96))
        {
          goto LABEL_179;
        }
      }

      else
      {
        v44 = 0;
      }
    }

    else
    {
      v43 = v190;
      if (v42)
      {
        v105 = __OFSUB__(HIDWORD(v40), v40);
        v106 = HIDWORD(v40) - v40;
        if (v105)
        {
          goto LABEL_178;
        }

        v44 = v106;
      }

      else
      {
        v44 = BYTE6(v41);
      }
    }

    v107 = _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(v44);
    v108 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v107);
    v110 = v109;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
    }

    v112 = *(v43 + 2);
    v111 = *(v43 + 3);
    if (v112 >= v111 >> 1)
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v112 + 1, 1, v43);
    }

    *(v43 + 2) = v112 + 1;
    v113 = &v43[16 * v112];
    *(v113 + 4) = v108;
    *(v113 + 5) = v110;
    v114 = ceil(vcvtd_n_f64_s64(MEMORY[0x2743B2830](rawValue, v191), 3uLL));
    if ((*&v114 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_165;
    }

    if (v114 <= -9.22337204e18)
    {
      goto LABEL_166;
    }

    if (v114 >= 9.22337204e18)
    {
      goto LABEL_167;
    }

    if (v114 + 0x4000000000000000 < 0)
    {
      goto LABEL_168;
    }

    v115 = _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(2 * v114);
    v199 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v115);
    v117 = v116;

    v118 = MEMORY[0x2743B2830](rawValue, v191);
    if (v118 < 0)
    {
      goto LABEL_169;
    }

    v119 = v118;
    v190 = v43;
    v120 = v199;
    if (v119)
    {
      v121 = v117 >> 62;
      v196 = v199 >> 32;
      v197 = v199;
      v122 = 32;
      v193 = BYTE6(v117);
      v198 = v117 >> 62;
      while (1)
      {
        v123 = v122 - 32;
        v124 = (v122 - 32) >> 2;
        v125 = v124 & 0x1FFFFFFFFFFFFFFELL;
        v126 = v124 | 1;
        if (v121 > 1)
        {
          break;
        }

        if (v121)
        {
          if (v125 < v197 || v125 >= v196)
          {
            goto LABEL_152;
          }

          v137 = __DataStorage._bytes.getter();
          if (!v137)
          {
            goto LABEL_183;
          }

          v138 = v137;
          v139 = __DataStorage._offset.getter();
          if (__OFSUB__(v125, v139))
          {
            goto LABEL_155;
          }

          if (v126 < v197 || v126 >= v196)
          {
            goto LABEL_157;
          }

          v127 = *(v138 + v125 - v139);
          v140 = __DataStorage._bytes.getter();
          if (!v140)
          {
            goto LABEL_185;
          }

          v133 = v140;
          v141 = __DataStorage._offset.getter();
          v135 = v126 - v141;
          if (__OFSUB__(v126, v141))
          {
            goto LABEL_159;
          }

LABEL_103:
          v128 = *(v133 + v135);
          goto LABEL_104;
        }

        if (v125 >= v193)
        {
          goto LABEL_150;
        }

        *&v205 = v120;
        WORD4(v205) = v117;
        BYTE10(v205) = BYTE2(v117);
        BYTE11(v205) = BYTE3(v117);
        BYTE12(v205) = BYTE4(v117);
        BYTE13(v205) = BYTE5(v117);
        if (v126 >= v193)
        {
          goto LABEL_154;
        }

        v127 = *(&v205 + v125);
        BYTE1(v205) = BYTE1(v120);
        BYTE2(v205) = BYTE2(v120);
        BYTE3(v205) = BYTE3(v120);
        BYTE4(v205) = BYTE4(v120);
        BYTE5(v205) = BYTE5(v120);
        BYTE6(v205) = BYTE6(v120);
        BYTE7(v205) = HIBYTE(v120);
        WORD4(v205) = v117;
        BYTE10(v205) = BYTE2(v117);
        BYTE11(v205) = BYTE3(v117);
        BYTE12(v205) = BYTE4(v117);
        BYTE13(v205) = BYTE5(v117);
        v128 = *(&v205 + v126);
LABEL_104:
        v142 = v200;
        v143 = *v200;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v142 = v143;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v143 = specialized _ArrayBuffer._consumeAndCreateNew()(v143);
        }

        if (v123 >= *(v143 + 2))
        {
          goto LABEL_143;
        }

        v143[v122] = (v127 >> (v123 & 7)) & 1;
        v145 = v201;
        *(v201 + 16) = v143;
        v146 = *(v145 + 24);
        v147 = swift_isUniquelyReferenced_nonNull_native();
        *(v145 + 24) = v146;
        if ((v147 & 1) == 0)
        {
          v146 = specialized _ArrayBuffer._consumeAndCreateNew()(v146);
        }

        if (v123 >= *(v146 + 2))
        {
          goto LABEL_144;
        }

        v146[v122] = (v128 >> (v123 & 7)) & 1;
        *(v201 + 24) = v146;
        ++v122;
        --v119;
        LODWORD(v121) = v198;
        v120 = v199;
        if (!v119)
        {
          goto LABEL_111;
        }
      }

      if (v121 != 2)
      {
        goto LABEL_182;
      }

      if (v125 < *(v120 + 16))
      {
        goto LABEL_151;
      }

      if (v125 >= *(v120 + 24))
      {
        goto LABEL_153;
      }

      v129 = __DataStorage._bytes.getter();
      if (!v129)
      {
        goto LABEL_184;
      }

      v130 = v129;
      v131 = __DataStorage._offset.getter();
      if (__OFSUB__(v125, v131))
      {
        goto LABEL_156;
      }

      if (v126 < *(v199 + 16))
      {
        goto LABEL_158;
      }

      if (v126 >= *(v199 + 24))
      {
        goto LABEL_160;
      }

      v127 = *(v130 + v125 - v131);
      v132 = __DataStorage._bytes.getter();
      if (!v132)
      {
        goto LABEL_186;
      }

      v133 = v132;
      v134 = __DataStorage._offset.getter();
      v135 = v126 - v134;
      if (__OFSUB__(v126, v134))
      {
        goto LABEL_161;
      }

      goto LABEL_103;
    }

LABEL_111:
    outlined consume of Data._Representation(v120, v117);
    rawValue = v188._rawValue;
    v23 = MEMORY[0x277D84F90];
LABEL_130:

    MEMORY[0x2743B2760](v177);
    if (*((v202 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v202 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v28 = v202;
    EnumeratedSequence.Iterator.next()();
    v195 = *(&v205 + 1);
    v27 = v205;
    if (!*(&v205 + 1))
    {
      goto LABEL_137;
    }
  }

  specialized Set._Variant.insert(_:)(&v205, v37);
  v45 = MEMORY[0x2743B2830](rawValue, v191);
  if (v45 < 0)
  {
    goto LABEL_164;
  }

  if (v45)
  {
    if ((v197 & 0x8000000000000000) == 0)
    {
      if (v197 >= *(v189 + 16))
      {
        goto LABEL_173;
      }

      v46 = (v186 + 96 * v197);
      v47 = v46[4];
      v48 = v46[5];
      v49 = v46[3];
      v207 = v46[2];
      v50 = *v46;
      v51 = v46[1];
      v209 = v47;
      v210 = v48;
      v208 = v49;
      v205 = v50;
      v206 = v51;
      v52 = v207;
      if (*(v207 + 16))
      {
        v198 = 1 - v45;
        v53 = 32;
        v54 = *(&v207 + 1);
        v55 = *(&v210 + 1);
        v56 = v210;
        while (1)
        {
          v57 = v53 - 32;
          if ((v53 - 32) >= *(v56 + 16))
          {
            break;
          }

          if (v57 >= *(v54 + 16))
          {
            goto LABEL_146;
          }

          if (v57 >= *(v55 + 16))
          {
            goto LABEL_147;
          }

          v58 = *(v52 + v53);
          v59 = *(v56 + v53);
          LODWORD(v199) = *(v54 + v53);
          v60 = *(v55 + v53);
          v61 = v200;
          v62 = *v200;
          outlined init with copy of Pair<SeedCtrlUnadjusted>(&v205, &v204);
          v63 = swift_isUniquelyReferenced_nonNull_native();
          *v61 = v62;
          if ((v63 & 1) == 0)
          {
            v62 = specialized _ArrayBuffer._consumeAndCreateNew()(v62);
          }

          if (v57 >= *(v62 + 2))
          {
            goto LABEL_148;
          }

          v62[v53] = (v58 ^ v59) & 1;
          v64 = v201;
          *(v201 + 16) = v62;
          v65 = *(v64 + 24);
          v66 = swift_isUniquelyReferenced_nonNull_native();
          *(v64 + 24) = v65;
          if ((v66 & 1) == 0)
          {
            v65 = specialized _ArrayBuffer._consumeAndCreateNew()(v65);
          }

          if (v57 >= *(v65 + 2))
          {
            goto LABEL_149;
          }

          v67 = v198 + v53;
          v65[v53] = (v199 ^ v60) & 1;
          *(v64 + 24) = v65;
          outlined destroy of Pair<SeedCtrlUnadjusted>(&v205);
          v23 = MEMORY[0x277D84F90];
          if (v67 == 32)
          {
            goto LABEL_33;
          }

          v69 = v46[2];
          v68 = v46[3];
          v70 = v46[4];
          v210 = v46[5];
          v207 = v69;
          v71 = *v46;
          v72 = v46[1];
          v208 = v68;
          v209 = v70;
          v205 = v71;
          v206 = v72;
          v55 = *(&v210 + 1);
          v56 = v210;
          v54 = *(&v207 + 1);
          v52 = v207;
          v73 = v53 - 31;
          ++v53;
          if (v73 >= *(v207 + 16))
          {
            goto LABEL_142;
          }
        }
      }

      else
      {
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
      }

      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
    }

    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
  }

LABEL_33:
  v214 = LeafParent.firstDiverge(fromAnyOf:at:)(v188, v194);
  if (v74)
  {
    goto LABEL_138;
  }

  if (!v214.is_nil)
  {
    if (v197 >= v187)
    {
      goto LABEL_174;
    }

    value = v214.value;
    v100 = (v184 + 16 * v197);
    v101 = *v100;
    v102 = v100[1];
    v103 = v102 >> 62;
    if ((v102 >> 62) > 1)
    {
      if (v103 == 2)
      {
        v150 = v101 + 16;
        v148 = *(v101 + 16);
        v149 = *(v150 + 8);
        v104 = v149 - v148;
        if (__OFSUB__(v149, v148))
        {
          goto LABEL_181;
        }
      }

      else
      {
        v104 = 0;
      }
    }

    else if (v103)
    {
      v105 = __OFSUB__(HIDWORD(v101), v101);
      v151 = HIDWORD(v101) - v101;
      if (v105)
      {
        goto LABEL_180;
      }

      v104 = v151;
    }

    else
    {
      v104 = BYTE6(v102);
    }

    v152 = _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(v104);
    v153 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v152);
    v155 = v154;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v190 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v190 + 2) + 1, 1, v190);
    }

    v157 = *(v190 + 2);
    v156 = *(v190 + 3);
    if (v157 >= v156 >> 1)
    {
      v190 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v156 > 1), v157 + 1, 1, v190);
    }

    v158 = v190;
    *(v190 + 2) = v157 + 1;
    v159 = &v158[16 * v157];
    *(v159 + 4) = v153;
    *(v159 + 5) = v155;
    rawValue = v188._rawValue;
    Array.subscript.getter();
    v160 = LeafParent.bit(atLevel:)(v194);
    v192 = v161;
    if (v161)
    {

      goto LABEL_141;
    }

    v162 = v160;

    if (v197 >= *(v189 + 16))
    {
      goto LABEL_177;
    }

    v163 = (v186 + 96 * v197);
    v164 = v163[1];
    v212[0] = *v163;
    v212[1] = v164;
    v165 = v163[2];
    v166 = v163[3];
    v167 = v163[5];
    v212[4] = v163[4];
    v212[5] = v167;
    v212[2] = v165;
    v212[3] = v166;
    outlined init with copy of Pair<SeedCtrlUnadjusted>(v212, &v205);
    BitMasks.enableSeedCorrection(between:forPath:withOnPathBit:)(v212, value, v162);
    outlined destroy of Pair<SeedCtrlUnadjusted>(v212);
    goto LABEL_126;
  }

  v75 = LeafParent.bit(atLevel:)(v194);
  if (v76)
  {
    goto LABEL_138;
  }

  if ((v197 & 0x8000000000000000) != 0)
  {
    goto LABEL_175;
  }

  v192 = 0;
  if (v197 >= *(v189 + 16))
  {
    goto LABEL_176;
  }

  v77 = v186 + 96 * v197;
  v78 = 16;
  if (v75)
  {
    v78 = 0;
  }

  v79 = 24;
  if (v75)
  {
    v79 = 8;
  }

  v80 = *(v77 + v79);
  v81 = *(v77 + v78);
  if (v75)
  {
    v82 = 48;
  }

  else
  {
    v82 = 64;
  }

  if (v75)
  {
    v83 = 56;
  }

  else
  {
    v83 = 72;
  }

  outlined copy of Data._Representation(v81, v80);

  outlined copy of Data._Representation(v81, v80);
  outlined consume of Data._Representation(v81, v80);

  v84 = *(v77 + v83);
  v85 = *(v77 + v82);
  outlined copy of Data._Representation(v85, v84);

  outlined copy of Data._Representation(v85, v84);
  outlined consume of Data._Representation(v85, v84);

  v86 = v192;
  v87 = Data.xor(_:)(v85, v84, v81, v80);
  v192 = v86;
  if (!v86)
  {
    v89 = v87;
    v90 = v88;
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v89;
    if ((v91 & 1) == 0)
    {
      v190 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v190 + 2) + 1, 1, v190);
    }

    v93 = *(v190 + 2);
    v92 = *(v190 + 3);
    if (v93 >= v92 >> 1)
    {
      v190 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v190);
    }

    outlined consume of Data._Representation(v85, v84);
    outlined consume of Data._Representation(v81, v80);
    v94 = v190;
    *(v190 + 2) = v93 + 1;
    v95 = &v94[16 * v93];
    *(v95 + 4) = v200;
    *(v95 + 5) = v90;
    rawValue = v188._rawValue;
    v23 = MEMORY[0x277D84F90];
LABEL_126:
    v168 = LeafParent.bit(atLevel:)(v194);
    if (v169)
    {
      goto LABEL_138;
    }

    v170 = v197;
    if ((v197 & 0x8000000000000000) != 0)
    {
      goto LABEL_170;
    }

    if (v197 >= *(v189 + 16))
    {
      goto LABEL_171;
    }

    v171 = v168;
    v172 = (v186 + 96 * v197);
    v173 = v172[1];
    v211[0] = *v172;
    v211[1] = v173;
    v174 = v172[2];
    v175 = v172[3];
    v176 = v172[5];
    v211[4] = v172[4];
    v211[5] = v176;
    v211[2] = v174;
    v211[3] = v175;
    outlined init with copy of Pair<SeedCtrlUnadjusted>(v211, &v205);
    BitMasks.enableSeedCorrection(between:forPath:withOnPathBit:)(v211, v170, v171);
    outlined destroy of Pair<SeedCtrlUnadjusted>(v211);
    goto LABEL_130;
  }

  outlined consume of Data._Representation(v85, v84);
  outlined consume of Data._Representation(v81, v80);

LABEL_141:

  return v189;
}

char *InnerCorrectionCalculator.makeNextLevelInput(forCurrentLevel:from:using:and:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26[2] = a7;
  v23 = a9;
  v24 = a10;
  v25 = a1;
  type metadata accessor for LeafParent(255, a9, a10, a4);
  v15 = type metadata accessor for Array();

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  WitnessTable = swift_getWitnessTable();
  v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in InnerCorrectionCalculator.makeNextLevelInput(forCurrentLevel:from:using:and:), v22, v15, &type metadata for Side, v16, WitnessTable, MEMORY[0x277D84950], v26);
  v19 = v10;

  if (!v10)
  {
    v19 = ClientLevelOutput.nextLevelInput(onPathDirections:prevParty0CtrlList:prevParty1CtrlList:)(v18, a5, a6, a2, a3, a4);
  }

  return v19;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x2743B3150](*(a2 + 40), a1);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

unint64_t lazy protocol witness table accessor for type InnerCorrectionError and conformance InnerCorrectionError()
{
  result = lazy protocol witness table cache variable for type InnerCorrectionError and conformance InnerCorrectionError;
  if (!lazy protocol witness table cache variable for type InnerCorrectionError and conformance InnerCorrectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InnerCorrectionError and conformance InnerCorrectionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InnerCorrectionError and conformance InnerCorrectionError;
  if (!lazy protocol witness table cache variable for type InnerCorrectionError and conformance InnerCorrectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InnerCorrectionError and conformance InnerCorrectionError);
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCySay4VDAF7Field40VGGMd, &_ss23_ContiguousArrayStorageCySay4VDAF7Field40VGGMR, &_sSay4VDAF7Field40VGMd, &_sSay4VDAF7Field40VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCySay4VDAF7Field32VGGMd, &_ss23_ContiguousArrayStorageCySay4VDAF7Field32VGGMR, &_sSay4VDAF7Field32VGMd, &_sSay4VDAF7Field32VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCySay4VDAF7Field64VGGMd, &_ss23_ContiguousArrayStorageCySay4VDAF7Field64VGGMR, &_sSay4VDAF7Field64VGMd, &_sSay4VDAF7Field64VGMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF4SeedVGMd, &_ss23_ContiguousArrayStorageCy4VDAF4SeedVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF29OneBlockSparseInnerCorrectionVGMd, &_ss23_ContiguousArrayStorageCy4VDAF29OneBlockSparseInnerCorrectionVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16InnerCorrectionsVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16InnerCorrectionsVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF4LeafVyAC7Field32VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF4LeafVyAC7Field32VGGMR);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF8EvalNodeVGMd, &_ss23_ContiguousArrayStorageCy4VDAF8EvalNodeVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySbGGMd, &_ss23_ContiguousArrayStorageCySaySbGGMR, &_sSaySbGMd, &_sSaySbGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF10PolynomialVyAC7Field40VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF10PolynomialVyAC7Field40VGGMR, &_s4VDAF10PolynomialVyAA7Field40VGMd, &_s4VDAF10PolynomialVyAA7Field40VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF14PINEInputShareVyAC7Field40VAC19XofHmacSha256Aes128CGGMd, &_ss23_ContiguousArrayStorageCy4VDAF14PINEInputShareVyAC7Field40VAC19XofHmacSha256Aes128CGGMR, &_s4VDAF14PINEInputShareVyAA7Field40VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field40VAA19XofHmacSha256Aes128CGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF24LeafCorrectionCalculatorV17UncorrectedValuesVyAC7Field32VAC19XofHmacSha256Aes128C_GGMd, &_ss23_ContiguousArrayStorageCy4VDAF24LeafCorrectionCalculatorV17UncorrectedValuesVyAC7Field32VAC19XofHmacSha256Aes128C_GGMR, &_s4VDAF24LeafCorrectionCalculatorV17UncorrectedValuesVyAA7Field32VAA19XofHmacSha256Aes128C_GMd, &_s4VDAF24LeafCorrectionCalculatorV17UncorrectedValuesVyAA7Field32VAA19XofHmacSha256Aes128C_GMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF22SiblingLeafCorrectionsVyAC7Field32VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF22SiblingLeafCorrectionsVyAC7Field32VGGMR, &_s4VDAF22SiblingLeafCorrectionsVyAA7Field32VGMd, &_s4VDAF22SiblingLeafCorrectionsVyAA7Field32VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF10PolynomialVyAC7Field32VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF10PolynomialVyAC7Field32VGGMR, &_s4VDAF10PolynomialVyAA7Field32VGMd, &_s4VDAF10PolynomialVyAA7Field32VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF14PINEInputShareVyAC7Field32VAC19XofHmacSha256Aes128CGGMd, &_ss23_ContiguousArrayStorageCy4VDAF14PINEInputShareVyAC7Field32VAC19XofHmacSha256Aes128CGGMR, &_s4VDAF14PINEInputShareVyAA7Field32VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field32VAA19XofHmacSha256Aes128CGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF10PolynomialVyAC7Field64VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF10PolynomialVyAC7Field64VGGMR, &_s4VDAF10PolynomialVyAA7Field64VGMd, &_s4VDAF10PolynomialVyAA7Field64VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF25OneBlockSparsePublicShareVyAC7Field32VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF25OneBlockSparsePublicShareVyAC7Field32VGGMR, &_s4VDAF25OneBlockSparsePublicShareVyAA7Field32VGMd, &_s4VDAF25OneBlockSparsePublicShareVyAA7Field32VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF14PINEInputShareVyAC7Field64VAC19XofHmacSha256Aes128CGGMd, &_ss23_ContiguousArrayStorageCy4VDAF14PINEInputShareVyAC7Field64VAC19XofHmacSha256Aes128CGGMR, &_s4VDAF14PINEInputShareVyAA7Field64VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field64VAA19XofHmacSha256Aes128CGMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 48);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[6 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 48 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF15Prio3InputShareVyAC13SumVectorTypeVyAC7Field64VSWGAC19XofHmacSha256Aes128CGGMd, &_ss23_ContiguousArrayStorageCy4VDAF15Prio3InputShareVyAC13SumVectorTypeVyAC7Field64VSWGAC19XofHmacSha256Aes128CGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF15Prio3InputShareVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMd, &_s4VDAF15Prio3InputShareVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x2743B3150](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = MEMORY[0x2743B3150](*(v5 + 40), v17);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x2743B3150](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = MEMORY[0x2743B3150](*(v5 + 40), v16);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t outlined init with copy of Pair<SeedCtrlUnadjusted>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Pair<SeedCtrlUnadjusted>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL partial apply for closure #1 in InnerCorrectionCalculator.makeNextLevelInput(forCurrentLevel:from:using:and:)@<W0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  result = LeafParent.bit(atLevel:)(*(v2 + 32));
  if (v6)
  {
    *a1 = v6;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for InnerCorrectionError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type InnerCorrectionError and conformance InnerCorrectionError();
  result = lazy protocol witness table accessor for type InnerCorrectionError and conformance InnerCorrectionError();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InnerCorrectionError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InnerCorrectionError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t type metadata instantiation function for InnerCorrectionCalculator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for InnerCorrectionCalculator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for InnerCorrectionCalculator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      outlined consume of Data._Representation(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v10, 0);
      v14 = Data._copyContents(initializing:)();
      outlined consume of Data._Representation(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufC4VDAF8BitMasksC_SayAFGTt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v2 = a1;
  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v3 = MEMORY[0x2743B2FD0](a1);
  if (!v3)
  {
LABEL_9:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC4VDAF8BitMasksC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, v2);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedV16measurementShare_AI05proofG0AI24wraparoundJointRandBlindAI012verificationjkL0ts5NeverOTg5020_s4VDAF4PINEV14splite65Bytes33_96F6F895E25AE9C9B366289ACE02F486LLySayAA0D0V16measurementg26_AG05proofO0AG24wraparoundjkl117AG012verificationrsT0tG12helperShares_AG016leaderWraparoundrsT0AG0x12VerificationrsT0AG05provesD0tqd__SkRd__s5UInt8V7B89Rtd__lFAgH_AgigjgKtSiXEfU_AA7Field40V_SRySfGAA19XofHmacSha256Aes128C10Foundation4DataVTG5s10ArraySliceVys5UInt8VGTf1cn_nTm(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v25 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v5 = v25;
    if (a2 <= a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = a2;
    }

    v10 = v9 - a1 + 1;
    while (v8 < v4)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_18;
      }

      v12 = specialized closure #1 in PINE.splitSeedBytes<A>(_:)(a3);
      if (v3)
      {
        goto LABEL_23;
      }

      v17 = *(v25 + 16);
      v16 = *(v25 + 24);
      if (v17 >= v16 >> 1)
      {
        v22 = v13;
        v23 = v12;
        v21 = v14;
        v20 = v15;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v15 = v20;
        v14 = v21;
        v13 = v22;
        v12 = v23;
      }

      *(v25 + 16) = v17 + 1;
      v18 = (v25 + 32 * v17);
      v18[4] = v12;
      v18[5] = v13;
      v18[6] = v14;
      v18[7] = v15;
      if (a2 < a1)
      {
        goto LABEL_19;
      }

      if (v10 == ++v8)
      {
        goto LABEL_20;
      }

      if (v11 == v4)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
LABEL_23:

  __break(1u);
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay4VDAF16GadgetParametersVG_AF0E10WireInputsCyAF7Field40VGs5NeverOTg5096_s4VDAF16FullyLinearProofPAAE5prove4into11measurement0E4Rand05jointH0yqd__z_Say1FQzGA2KtKSmRd__7b15Qyd__AJRSlFAA16egh11CyAJGAA0K10f43VXEfU_AA28PINENormEqualityCheckCircuitVyAA7I18VSRySfGG_SayAVGTG5s10ArraySliceVyAMGTf1cn_nTm(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = 0;
    v34 = a2;
    v35 = a1 + 32;
    v33 = v3;
    while (1)
    {
      v6 = (v35 + 40 * v5);
      v7 = *v6;
      if ((*v6 & 0x8000000000000000) != 0)
      {
        break;
      }

      v8 = a2[2];
      v9 = a2[3] >> 1;
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_51;
      }

      v10 = v6[2];
      if (v7)
      {
        v11 = v9 - v8 >= v7;
      }

      else
      {
        v11 = 1;
      }

      v12 = !v11;
      v13 = a2[3] >> 1;
      if (v11)
      {
        v13 = v8 + v7;
        if (__OFADD__(v8, v7))
        {
          goto LABEL_62;
        }
      }

      if (v13 < v8)
      {
        goto LABEL_52;
      }

      if (v9 < v8)
      {
        goto LABEL_53;
      }

      if (v9 < v13)
      {
        goto LABEL_54;
      }

      if (v13 < 0)
      {
        goto LABEL_55;
      }

      if ((v12 & 1) == 0)
      {
        v14 = __OFADD__(v8, v7);
        v15 = v8 + v7;
        if (v14)
        {
          goto LABEL_63;
        }

        if (v9 < v15)
        {
          goto LABEL_61;
        }

        v9 = v15;
      }

      if (v9 < v8)
      {
        goto LABEL_56;
      }

      v36 = a2[1];
      a2[2] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF16GadgetWireInputsCyAA7Field40VGMd, &_s4VDAF16GadgetWireInputsCyAA7Field40VGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      v17 = v13 - v8;
      if (__OFSUB__(v13, v8))
      {
        goto LABEL_57;
      }

      v18 = v16;
      *(v16 + 24) = v10;
      v19 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_58;
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      v37 = v5;
      swift_unknownObjectRetain();
      if (v10 == -1)
      {
        v20 = MEMORY[0x277D84F90];
        if (v17 < 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v20 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v20 + 16) = v19;
        bzero((v20 + 32), 8 * v10 + 8);
        if (v17 < 0)
        {
          goto LABEL_60;
        }
      }

      if (v17)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF7Field40VGMd, &_sSay4VDAF7Field40VGMR);
        v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v22 = v21;
        *(v21 + 16) = v17;
        *(v21 + 32) = v20;
        if (v17 != 1)
        {
          v23 = ~v8 + v13;
          v24 = (v21 + 40);
          do
          {
            *v24++ = v20;

            --v23;
          }

          while (v23);
        }

        *(v18 + 32) = v22;
        v25 = (v18 + 32);
        swift_beginAccess();
        v26 = 0;
        v27 = v36 + 8 * v8;
        while (v17 != v26)
        {
          v28 = *(v27 + 8 * v26);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v25 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
            *v25 = v22;
          }

          if (v26 >= v22[2])
          {
            goto LABEL_49;
          }

          v30 = &v22[v26];
          v31 = v30[4];
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v30[4] = v31;
          if (v32)
          {
            if (!*(v31 + 2))
            {
              goto LABEL_46;
            }
          }

          else
          {
            v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
            v30[4] = v31;
            if (!*(v31 + 2))
            {
LABEL_46:
              __break(1u);
              return;
            }
          }

          ++v26;
          *(v31 + 4) = v28;
          *v25 = v22;
          if (v17 == v26)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
        break;
      }

      *(v18 + 32) = MEMORY[0x277D84F90];
LABEL_4:
      v5 = v37 + 1;
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      a2 = v34;
      if (v37 + 1 == v33)
      {
        return;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }
}

int64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedVs5NeverOTg5072_s4VDAF15PINEPublicShareV4from9parameterACyxGqd___SiSgtKcSkRd__s5UInt8V7b12Rtd__lufcAA4E38VSiXEfU_AA19XofHmacSha256Aes128C_SWTG5s10ArraySliceVys0T0VGTf1cn_nTm(int64_t result, int64_t a2, uint64_t *a3)
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_60;
  }

  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v6 = result;
  v27 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if (a2 < v6 || v3 < 0)
  {
    goto LABEL_61;
  }

  v22 = v3;
  v7 = 0;
  v4 = v27;
  v23 = v6 - 1;
  v8 = v3;
  while (v7 < v8)
  {
    if (__OFADD__(v7, 1))
    {
      goto LABEL_47;
    }

    v10 = a3[2];
    v9 = a3[3];
    v11 = v9 >> 1;
    v12 = (v9 >> 1) - v10;
    if (__OFSUB__(v9 >> 1, v10))
    {
      goto LABEL_48;
    }

    v13 = a3[1];
    v14 = v9 >> 1;
    if (v12 >= 0x20)
    {
      v14 = v10 + 32;
      if (__OFADD__(v10, 32))
      {
        goto LABEL_56;
      }
    }

    if (v14 < v10)
    {
      goto LABEL_49;
    }

    if (v11 < v10)
    {
      goto LABEL_50;
    }

    if (v11 < v14)
    {
      goto LABEL_51;
    }

    if (v14 < 0)
    {
      goto LABEL_52;
    }

    if (v12 >= 0x20)
    {
      if (__OFADD__(v10, 32))
      {
        goto LABEL_57;
      }

      if (v11 < v10 + 32)
      {
        goto LABEL_53;
      }

      v11 = v10 + 32;
    }

    if (v11 < v10)
    {
      goto LABEL_54;
    }

    v26 = v7 + 1;
    a3[2] = v11;
    if (v9)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v18 = swift_dynamicCastClass();
      if (!v18)
      {
        swift_unknownObjectRelease();
        v18 = MEMORY[0x277D84F90];
      }

      v19 = *(v18 + 16);

      v15 = v14 - v10;
      if (__OFSUB__(v14, v10))
      {
        goto LABEL_59;
      }

      if (v19 == v15)
      {
        v17 = swift_dynamicCastClass();
        result = swift_unknownObjectRelease();
        v8 = v22;
        if (v17)
        {
          goto LABEL_38;
        }
      }

      else
      {
        result = swift_unknownObjectRelease();
        v8 = v22;
        if (v15)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v15 = v14 - v10;
      v16 = __OFSUB__(v14, v10);
      result = swift_unknownObjectRetain();
      if (v16)
      {
        goto LABEL_58;
      }

      if (v15)
      {
LABEL_26:
        v25 = v13;
        if (v15 < 1)
        {
          v17 = MEMORY[0x277D84F90];
          if (v10 == v14)
          {
            goto LABEL_62;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
          v17 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v17);
          v17[2] = v15;
          v17[3] = 2 * result - 64;
          if (v10 == v14)
          {
            goto LABEL_62;
          }
        }

        memcpy(v17 + 4, (v25 + v10), v15);
        goto LABEL_37;
      }
    }

    v17 = MEMORY[0x277D84F90];
LABEL_37:
    result = swift_unknownObjectRelease();
LABEL_38:
    v21 = *(v27 + 16);
    v20 = *(v27 + 24);
    if (v21 >= v20 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
    }

    *(v27 + 16) = v21 + 1;
    *(v27 + 8 * v21 + 32) = v17;
    ++v7;
    if ((v23 + v7) >= a2)
    {
      goto LABEL_55;
    }

    if (v26 == v8)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay4VDAF16GadgetParametersVG_AF0E10WireInputsCyAF7Field32VGs5NeverOTg5096_s4VDAF16FullyLinearProofPAAE5prove4into11measurement0E4Rand05jointH0yqd__z_Say1FQzGA2KtKSmRd__7b15Qyd__AJRSlFAA16egh11CyAJGAA0K10f43VXEfU_AA28PINENormEqualityCheckCircuitVyAA7I18VSRySfGG_SayAVGTG5s10ArraySliceVyAMGTf1cn_nTm(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = 0;
    v34 = a2;
    v35 = a1 + 32;
    v33 = v3;
    while (1)
    {
      v6 = (v35 + 40 * v5);
      v7 = *v6;
      if ((*v6 & 0x8000000000000000) != 0)
      {
        break;
      }

      v8 = a2[2];
      v9 = a2[3] >> 1;
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_51;
      }

      v10 = v6[2];
      if (v7)
      {
        v11 = v9 - v8 >= v7;
      }

      else
      {
        v11 = 1;
      }

      v12 = !v11;
      v13 = a2[3] >> 1;
      if (v11)
      {
        v13 = v8 + v7;
        if (__OFADD__(v8, v7))
        {
          goto LABEL_62;
        }
      }

      if (v13 < v8)
      {
        goto LABEL_52;
      }

      if (v9 < v8)
      {
        goto LABEL_53;
      }

      if (v9 < v13)
      {
        goto LABEL_54;
      }

      if (v13 < 0)
      {
        goto LABEL_55;
      }

      if ((v12 & 1) == 0)
      {
        v14 = __OFADD__(v8, v7);
        v15 = v8 + v7;
        if (v14)
        {
          goto LABEL_63;
        }

        if (v9 < v15)
        {
          goto LABEL_61;
        }

        v9 = v15;
      }

      if (v9 < v8)
      {
        goto LABEL_56;
      }

      v36 = a2[1];
      a2[2] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF16GadgetWireInputsCyAA7Field32VGMd, &_s4VDAF16GadgetWireInputsCyAA7Field32VGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      v17 = v13 - v8;
      if (__OFSUB__(v13, v8))
      {
        goto LABEL_57;
      }

      v18 = v16;
      *(v16 + 24) = v10;
      v19 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_58;
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      v37 = v5;
      swift_unknownObjectRetain();
      if (v10 == -1)
      {
        v20 = MEMORY[0x277D84F90];
        if (v17 < 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v20 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v20 + 16) = v19;
        bzero((v20 + 32), 4 * v10 + 4);
        if (v17 < 0)
        {
          goto LABEL_60;
        }
      }

      if (v17)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF7Field32VGMd, &_sSay4VDAF7Field32VGMR);
        v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v22 = v21;
        *(v21 + 16) = v17;
        *(v21 + 32) = v20;
        if (v17 != 1)
        {
          v23 = ~v8 + v13;
          v24 = (v21 + 40);
          do
          {
            *v24++ = v20;

            --v23;
          }

          while (v23);
        }

        *(v18 + 32) = v22;
        v25 = (v18 + 32);
        swift_beginAccess();
        v26 = 0;
        v27 = v36 + 4 * v8;
        while (v17 != v26)
        {
          v28 = *(v27 + 4 * v26);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v25 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
            *v25 = v22;
          }

          if (v26 >= v22[2])
          {
            goto LABEL_49;
          }

          v30 = &v22[v26];
          v31 = v30[4];
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v30[4] = v31;
          if (v32)
          {
            if (!*(v31 + 2))
            {
              goto LABEL_46;
            }
          }

          else
          {
            v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
            v30[4] = v31;
            if (!*(v31 + 2))
            {
LABEL_46:
              __break(1u);
              return;
            }
          }

          ++v26;
          *(v31 + 8) = v28;
          *v25 = v22;
          if (v17 == v26)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
        break;
      }

      *(v18 + 32) = MEMORY[0x277D84F90];
LABEL_4:
      v5 = v37 + 1;
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      a2 = v34;
      if (v37 + 1 == v33)
      {
        return;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }
}

uint64_t PINE<>.shardAndEncode(_:nonce:seedBytes:)(float *a1, char *a2, uint64_t a3, unint64_t a4, char **a5, unint64_t a6)
{
  v8 = v7;
  memcpy(__dst, v6, sizeof(__dst));
  outlined copy of Data._Representation(a3, a4);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v16 = specialized PINE.shard<A>(_:nonce:seedBytes:)(&v36, a1, a2, v15, a5, a6);

  if (!v7)
  {
    v17 = v36;
    v18 = v37;
    v19 = specialized PINEPublicShare.encodedLength.getter(v36, v37);
    v36 = specialized Data._Representation.init(capacity:)(v19);
    v37 = v20;
    specialized PINEPublicShare.encode<A>(into:)(&v36, v17, v18);

    v8 = v36;
    v21 = v16[2];
    if (v21)
    {
      v35 = v36;
      v40 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = 4;
      v23 = v40;
      do
      {
        v24 = v16;
        v25 = *&v16[v22];
        v26 = *&v16[v22 + 4];
        v38[1] = *&v16[v22 + 2];
        v38[2] = v26;
        v38[0] = v25;
        outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &v36, &_s4VDAF14PINEInputShareVyAA7Field40VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field40VAA19XofHmacSha256Aes128CGMR);
        specialized VDAFEncodable.encodedData.getter();
        v28 = v27;
        v30 = v29;
        outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &_s4VDAF14PINEInputShareVyAA7Field40VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field40VAA19XofHmacSha256Aes128CGMR);
        v40 = v23;
        v32 = *(v23 + 16);
        v31 = *(v23 + 24);
        if (v32 >= v31 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v32 + 1;
        v33 = v23 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
        v22 += 6;
        --v21;
        v16 = v24;
      }

      while (v21);

      return v35;
    }

    else
    {
    }
  }

  return v8;
}

{
  v8 = v7;
  memcpy(__dst, v6, sizeof(__dst));
  outlined copy of Data._Representation(a3, a4);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v16 = specialized PINE.shard<A>(_:nonce:seedBytes:)(&v36, a1, a2, v15, a5, a6);

  if (!v7)
  {
    v17 = v36;
    v18 = v37;
    v19 = specialized PINEPublicShare.encodedLength.getter(v36, v37);
    v36 = specialized Data._Representation.init(capacity:)(v19);
    v37 = v20;
    specialized PINEPublicShare.encode<A>(into:)(&v36, v17, v18);

    v8 = v36;
    v21 = v16[2];
    if (v21)
    {
      v35 = v36;
      v40 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = 4;
      v23 = v40;
      do
      {
        v24 = v16;
        v25 = *&v16[v22];
        v26 = *&v16[v22 + 4];
        v38[1] = *&v16[v22 + 2];
        v38[2] = v26;
        v38[0] = v25;
        outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &v36, &_s4VDAF14PINEInputShareVyAA7Field32VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field32VAA19XofHmacSha256Aes128CGMR);
        specialized VDAFEncodable.encodedData.getter();
        v28 = v27;
        v30 = v29;
        outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &_s4VDAF14PINEInputShareVyAA7Field32VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field32VAA19XofHmacSha256Aes128CGMR);
        v40 = v23;
        v32 = *(v23 + 16);
        v31 = *(v23 + 24);
        if (v32 >= v31 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v32 + 1;
        v33 = v23 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
        v22 += 6;
        --v21;
        v16 = v24;
      }

      while (v21);

      return v35;
    }

    else
    {
    }
  }

  return v8;
}

char **specialized PINE.shard<A>(_:nonce:seedBytes:)(unint64_t a1, float *a2, char *a3, char *a4, char **a5, unint64_t a6)
{
  v8 = v7;
  v230 = a2;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v215 = *(v293 - 8);
  MEMORY[0x28223BE20](v293);
  v232 = (v199 - v14);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v214 = *(v233 - 1);
  MEMORY[0x28223BE20](v233);
  v231 = v199 - v15;
  memcpy(v243, v6, sizeof(v243));
  v228 = a4;
  v17 = *(a4 + 2);
  if (v17 != 16)
  {
    v240 = 0;
    v241 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v240 = 0xD00000000000002FLL;
    v241 = 0x8000000270C51F20;
    v239[0] = 16;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v20);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v239[0] = v17;
    goto LABEL_70;
  }

  v18 = (a6 >> 62);
  if ((a6 >> 62) <= 1)
  {
    if (!v18)
    {
      v19 = BYTE6(a6);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v18 != 2)
  {
    v19 = 0;
    goto LABEL_13;
  }

  v22 = a5[2];
  v21 = a5[3];
  v23 = __OFSUB__(v21, v22);
  v19 = v21 - v22;
  if (v23)
  {
    __break(1u);
LABEL_10:
    v19 = (HIDWORD(a5) - a5);
    if (__OFSUB__(HIDWORD(a5), a5))
    {
      goto LABEL_127;
    }

    v19 = v19;
  }

LABEL_13:
  v24 = *v6;
  v25 = (*v6 - 1);
  if (__OFSUB__(*v6, 1))
  {
    goto LABEL_118;
  }

  if ((*v6 + 0x3FFFFFFFFFFFFFFFLL) < 0)
  {
    goto LABEL_119;
  }

  if (v24 + 0x4000000000000000 < 0)
  {
    goto LABEL_120;
  }

  v26 = 2 * v25 + 2 * v24;
  if (__OFADD__(2 * v25, 2 * v24))
  {
    goto LABEL_121;
  }

  if ((v26 - 0x3FFFFFFFFFFFFFFLL) >> 59 != 31)
  {
    goto LABEL_122;
  }

  v27 = (32 * v26) | 0x20;
  if (v19 != v27)
  {
    v240 = 0;
    v241 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v240 = 0xD00000000000002ALL;
    v241 = 0x8000000270C51F50;
    v239[0] = v27;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    a4 = v39;
    MEMORY[0x2743B25F0](v38);

    v6 = &v240;
    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    if (v18 > 1)
    {
      v40 = 0;
      if (v18 == 2)
      {
        v59 = a5[2];
        v58 = a5[3];
        v23 = __OFSUB__(v58, v59);
        v40 = v58 - v59;
        if (v23)
        {
          __break(1u);
          goto LABEL_44;
        }
      }
    }

    else if (v18)
    {
      v40 = (HIDWORD(a5) - a5);
      if (__OFSUB__(HIDWORD(a5), a5))
      {
        goto LABEL_132;
      }

      v40 = v40;
    }

    else
    {
      v40 = BYTE6(a6);
    }

    v239[0] = v40;
LABEL_70:
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v118);

    v119 = v240;
    v120 = v241;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v121 = v119;
    *(v121 + 8) = v120;
    *(v121 + 16) = 1;
    return swift_willThrow();
  }

  v202 = a1;
  v203 = v24;
  v216 = v25;
  a4 = v243;
  memcpy(v292, v6, sizeof(v292));
  v18 = specialized PINE.splitSeedBytes<A>(_:)(a5, a6);
  v206 = v29;
  v207 = v28;
  v205 = v30;
  v31 = *(v18 + 2);
  a1 = MEMORY[0x277D84F90];
  v209 = v18;
  if (v31)
  {
    *&v226 = a3;
    v227 = v7;
    v240 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v32 = v240;
    v33 = (v18 + 32);
    v34 = v31;
    do
    {
      v35 = *v33;
      v240 = v32;
      v37 = *(v32 + 16);
      v36 = *(v32 + 24);

      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v32 = v240;
      }

      *(v32 + 16) = v37 + 1;
      *(v32 + 8 * v37 + 32) = v35;
      v33 += 4;
      --v34;
    }

    while (v34);
    v240 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v41 = v240;
    v42 = (v209 + 40);
    v43 = v31;
    do
    {
      v44 = *v42;
      v240 = v41;
      v46 = *(v41 + 16);
      v45 = *(v41 + 24);

      if (v46 >= v45 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
        v41 = v240;
      }

      *(v41 + 16) = v46 + 1;
      *(v41 + 8 * v46 + 32) = v44;
      v42 += 4;
      --v43;
    }

    while (v43);
    a1 = v32;
    v204 = v41;
    v240 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v47 = v240;
    v48 = (v209 + 48);
    v49 = v31;
    do
    {
      v50 = *v48;
      v240 = v47;
      v52 = *(v47 + 16);
      v51 = *(v47 + 24);

      if (v52 >= v51 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
        v47 = v240;
      }

      *(v47 + 16) = v52 + 1;
      *(v47 + 8 * v52 + 32) = v50;
      v48 += 4;
      --v49;
    }

    while (v49);
    v229 = v47;
    v240 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v53 = v240;
    v54 = (v209 + 56);
    a3 = v226;
    do
    {
      v55 = *v54;
      v240 = v53;
      v57 = *(v53 + 16);
      v56 = *(v53 + 24);

      if (v57 >= v56 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
        v53 = v240;
      }

      *(v53 + 16) = v57 + 1;
      *(v53 + 8 * v57 + 32) = v55;
      v54 += 4;
      --v31;
    }

    while (v31);
    v208 = v53;
    v18 = v209;
    a4 = v243;
    v8 = v227;
    goto LABEL_45;
  }

LABEL_44:
  v229 = a1;
  v204 = a1;
  v208 = a1;
LABEL_45:
  v242 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v292[10] & ~(v292[10] >> 63), 0, MEMORY[0x277D84F90]);
  v60 = *(a4 + 120);
  v288 = *(a4 + 104);
  v289 = v60;
  v290 = *(a4 + 136);
  v291 = *&v243[152];
  v61 = *(a4 + 56);
  v284 = *(a4 + 40);
  v285 = v61;
  v62 = *(a4 + 88);
  v286 = *(a4 + 72);
  v287 = v62;
  v63 = *(a4 + 24);
  v282 = *(a4 + 8);
  v283 = v63;
  specialized PINECircuit.encodeMeasurementAndNormRangeCheck(raw:into:)(v230, a3, &v242);
  a4 = v8;
  if (v8)
  {
  }

  v201 = v242;
  v6 = MEMORY[0x277D84F90];
  v200 = v203 & ~(v203 >> 63);
  v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v200, 0, MEMORY[0x277D84F90]);
  a6 = *(v16 + 2);
  v19 = *(v16 + 3);
  a5 = (a6 + 1);
  if (a6 >= v19 >> 1)
  {
    goto LABEL_129;
  }

  while (1)
  {
    v64 = v216;
    *(v16 + 2) = a5;
    v227 = v16;
    v40 = &v16[8 * a6];
    *(v40 + 32) = v6;
    v236 = v201;
    if ((v64 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), a5, 1, v8);
      goto LABEL_72;
    }

    v213 = a1;
    if (v64)
    {
      a6 = 0;
      v224 = (v215 + 8);
      v225 = (v215 + 16);
      v211 = (v214 + 8);
      v212 = a1 + 32;
      v210 = v229 + 32;
      v19 = &unk_270C44000;
      v226 = xmmword_270C44540;
      while (a6 != 255)
      {
        v19 = *(a1 + 16);
        if (a6 >= v19)
        {
          goto LABEL_115;
        }

        v6 = (a6 + 1);
        a5 = *(v212 + 8 * a6);

        a3 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(0, 101777407);
        a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
        v65 = swift_allocObject();
        *(v65 + 16) = v226;
        v230 = (a6 + 1);
        *(v65 + 32) = a6 + 1;
        v19 = a5[2];
        if (v19 != 32)
        {
          goto LABEL_116;
        }

        v18 = v65;
        *&v222 = a1;
        v223 = a6;
        v66 = a4;

        v67 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(a5, a3, v18);
        if (*(v67 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          goto LABEL_144;
        }

        v68 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        a6 = v67;
        swift_beginAccess();
        v69 = a6 + v68;
        v70 = v232;
        v71 = v293;
        v221 = *v225;
        (v221)(v232, v69, v293);
        v8 = v231;
        HMAC.finalize()();
        v220 = *v224;
        v220(v70, v71);
        a4 = v233;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        v219 = v66;
        a1 = v211;
        v6 = *v211;
        (*v211)(v8, a4);

        swift_setDeallocating();
        swift_deallocClassInstance();
        v72 = *(v236 + 2);
        v218 = a6;
        v73 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(v72, a6, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5);
        v19 = *(v229 + 16);
        if (v223 >= v19)
        {
          goto LABEL_117;
        }

        v74 = v73;
        v217 = v6;
        v75 = (2 * *(v73 + 16)) | 1;
        v76 = *(v210 + 8 * v223);
        swift_bridgeObjectRetain_n();

        v77 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 101777407);
        v78 = swift_allocObject();
        *(v78 + 16) = v226;
        *(v78 + 32) = v230;
        v238 = v78;

        specialized Array.append<A>(contentsOf:)(v79);
        v223 = v76;
        v8 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v76, v77, v238);
        v80 = specialized VDAFEncodable.encodedBytes.getter((v74 + 32), 0, v75);
        v81 = off_2880A7738[0];
        type metadata accessor for XofHmacSha256Aes128(0);
        v81(v80);

        v82 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
        if (*&v8[OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream])
        {
          goto LABEL_145;
        }

        *&v222 = v74;
        v83 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        swift_beginAccess();
        v84 = &v8[v83];
        v85 = v232;
        v86 = v293;
        (v221)(v232, v84, v293);
        v87 = v231;
        HMAC.finalize()();
        v220(v85, v86);
        v88 = v233;
        v89 = v219;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        a4 = v89;
        (v217)(v87, v88);
        v90 = *&v8[v82];
        if (!v90)
        {
          goto LABEL_146;
        }

        v91 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v91 + 16) = 32;
        *(v91 + 48) = 0u;
        *(v91 + 32) = 0u;
        a3 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
        v92 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
        swift_beginAccess();
        specialized static AES.CTR.encryptInPlace(_:using:updating:)((v91 + 32), v91 + 64, &a3[v90], v90 + v92);
        if (v89)
        {
          goto LABEL_154;
        }

        swift_endAccess();

        a5 = v222;

        v93 = v227;
        v95 = *(v227 + 2);
        v94 = *(v227 + 3);
        v18 = (v95 + 1);
        a1 = v213;
        if (v95 >= v94 >> 1)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v227);
        }

        *(v93 + 2) = v18;
        v227 = v93;
        *&v93[8 * v95 + 32] = v91;
        v6 = &v236;
        specialized Array<A>.elementwiseSubtract(_:)(a5);

        a6 = v230;
        v19 = v216;
        if (v216 == v230)
        {
          goto LABEL_62;
        }
      }

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
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

LABEL_62:
    v96 = a4;

    a5 = v236;
    v97 = (2 * *(v236 + 2)) | 1;

    v98 = v207;

    v99 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 101777407);
    v238 = &outlined read-only object #0 of specialized PINE.shard<A>(_:nonce:seedBytes:);

    specialized Array.append<A>(contentsOf:)(v100);
    a6 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v98, v99, v238);
    v101 = specialized VDAFEncodable.encodedBytes.getter(a5 + 32, 0, v97);
    v102 = off_2880A7738[0];
    v212 = type metadata accessor for XofHmacSha256Aes128(0);
    v217 = v102;
    v102(v101);

    v103 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
    if (*(a6 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
    {
      goto LABEL_150;
    }

    v104 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
    swift_beginAccess();
    v105 = v215;
    v106 = *(v215 + 16);
    v107 = a6 + v104;
    v108 = v232;
    v109 = v293;
    v229 = v215 + 16;
    *&v226 = v106;
    v106(v232, v107, v293);
    v110 = v231;
    HMAC.finalize()();
    v111 = *(v105 + 8);
    v215 = v105 + 8;
    v225 = v111;
    (v111)(v108, v109);
    v112 = v233;
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
    a4 = v96;
    v113 = *(v214 + 8);
    v214 += 8;
    v224 = v113;
    v113(v110, v112);
    v6 = *(a6 + v103);
    if (!v6)
    {
      goto LABEL_151;
    }

    v18 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v18 + 2) = 32;
    *(v18 + 3) = 0u;
    *(v18 + 2) = 0u;
    a1 = (v18 + 32);
    v8 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v114 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    specialized static AES.CTR.encryptInPlace(_:using:updating:)(v18 + 2, (v18 + 64), &v8[v6], v6 + v114);
    if (a4)
    {
      goto LABEL_154;
    }

    swift_endAccess();

    v40 = *(v227 + 2);
    a3 = v213;
    if (!v40)
    {
      goto LABEL_131;
    }

    *(v227 + 4) = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
    swift_allocObject();

    v116 = specialized WraparoundJointRandomness.init(parts:)(v115, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field40, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field40> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 101777407);
    v278 = *&v243[104];
    v279 = *&v243[120];
    v280 = *&v243[136];
    v281 = *&v243[152];
    v274 = *&v243[40];
    v275 = *&v243[56];
    v276 = *&v243[72];
    v277 = *&v243[88];
    v272 = *&v243[8];
    v273 = *&v243[24];
    v201 = specialized PINECircuit.appendWraparoundCheck<A>(into:random:)(&v242, v116);
    v199[1] = v116;
    v18 = v242;
    v6 = MEMORY[0x277D84F90];
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v200, 0, MEMORY[0x277D84F90]);
    a6 = *(v8 + 2);
    v40 = *(v8 + 3);
    a5 = (a6 + 1);
    if (a6 >= v40 >> 1)
    {
      goto LABEL_133;
    }

LABEL_72:
    v122 = v216;
    *(v8 + 2) = a5;
    *&v8[8 * a6 + 32] = v6;
    v237 = v18;

    if (!v122)
    {
      break;
    }

    v199[0] = v18;
    a6 = 0;
    v210 = v208 + 32;
    v211 = (a3 + 32);
    v19 = &unk_270C44000;
    v222 = xmmword_270C44540;
    while (a6 != 255)
    {
      v19 = *(a3 + 2);
      if (a6 >= v19)
      {
        goto LABEL_124;
      }

      v223 = v8;
      v6 = (a6 + 1);
      a5 = v211[a6];

      a3 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(0, 101777407);
      a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v123 = swift_allocObject();
      *(v123 + 16) = v222;
      v230 = (a6 + 1);
      *(v123 + 32) = a6 + 1;
      v19 = a5[2];
      if (v19 != 32)
      {
        goto LABEL_125;
      }

      v18 = v123;
      v220 = a1;
      v221 = a6;
      v8 = a4;

      v124 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(a5, a3, v18);
      if (*(v124 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
      {
        goto LABEL_147;
      }

      v125 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
      a1 = v124;
      swift_beginAccess();
      v126 = a1 + v125;
      v127 = v232;
      v128 = v293;
      (v226)(v232, v126, v293);
      a4 = v231;
      HMAC.finalize()();
      (v225)(v127, v128);
      a6 = v233;
      v6 = a4;
      HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
      v219 = v8;
      v224(a4, a6);

      swift_setDeallocating();
      swift_deallocClassInstance();
      v129 = *(v237 + 2);
      v218 = a1;
      v130 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(v129, a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5);
      v19 = *(v208 + 16);
      if (v221 >= v19)
      {
        goto LABEL_126;
      }

      a5 = v130;
      v131 = (2 * *(v130 + 16)) | 1;
      v132 = *(v210 + 8 * v221);
      swift_bridgeObjectRetain_n();

      v133 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 101777407);
      v134 = swift_allocObject();
      *(v134 + 16) = v222;
      *(v134 + 32) = v230;
      v235 = v134;

      specialized Array.append<A>(contentsOf:)(v135);
      v136 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v132, v133, v235);
      v137 = specialized VDAFEncodable.encodedBytes.getter(a5 + 32, 0, v131);
      (v217)(v137);

      v138 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
      if (*(v136 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
      {
        goto LABEL_148;
      }

      v221 = v132;
      v139 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
      swift_beginAccess();
      v140 = v136 + v139;
      v141 = v232;
      v142 = v293;
      (v226)(v232, v140, v293);
      v143 = v231;
      HMAC.finalize()();
      (v225)(v141, v142);
      v144 = v233;
      v145 = v219;
      HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
      a4 = v145;
      v224(v143, v144);
      v146 = *(v136 + v138);
      if (!v146)
      {
        goto LABEL_149;
      }

      v147 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v147 + 16) = 32;
      *(v147 + 48) = 0u;
      *(v147 + 32) = 0u;
      v148 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
      v149 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
      swift_beginAccess();
      specialized static AES.CTR.encryptInPlace(_:using:updating:)((v147 + 32), v147 + 64, v146 + v148, v146 + v149);
      if (v145)
      {
        goto LABEL_154;
      }

      swift_endAccess();

      v8 = v223;
      a1 = *(v223 + 16);
      v150 = *(v223 + 24);
      v18 = (a1 + 1);
      a3 = v213;
      if (a1 >= v150 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v150 > 1), a1 + 1, 1, v223);
      }

      *(v8 + 2) = v18;
      *&v8[8 * a1 + 32] = v147;
      v6 = &v237;
      specialized Array<A>.elementwiseSubtract(_:)(a5);

      a6 = v230;
      v19 = v216;
      if (v216 == v230)
      {
        goto LABEL_85;
      }
    }

LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), a5, 1, v16);
  }

LABEL_85:
  v223 = v8;
  v151 = a4;

  a3 = v237;
  v152 = (2 * *(v237 + 2)) | 1;

  v153 = v206;

  v154 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 101777407);
  v235 = &outlined read-only object #1 of specialized PINE.shard<A>(_:nonce:seedBytes:);

  specialized Array.append<A>(contentsOf:)(v155);
  v156 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v153, v154, v235);
  v157 = specialized VDAFEncodable.encodedBytes.getter(a3 + 32, 0, v152);
  (v217)(v157);

  v158 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  if (*(v156 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    goto LABEL_152;
  }

  v159 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  swift_beginAccess();
  v160 = v156 + v159;
  v161 = v232;
  v162 = v293;
  (v226)(v232, v160, v293);
  v163 = v231;
  HMAC.finalize()();
  (v225)(v161, v162);
  v164 = v233;
  v165 = v151;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  a4 = v151;
  v224(v163, v164);
  v6 = *(v156 + v158);
  if (!v6)
  {
    goto LABEL_153;
  }

  v166 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v166 + 16) = 32;
  *(v166 + 48) = 0u;
  *(v166 + 32) = 0u;
  v167 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v8 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
  swift_beginAccess();
  specialized static AES.CTR.encryptInPlace(_:using:updating:)((v166 + 32), v166 + 64, v6 + v167, &v8[v6]);
  if (a4)
  {
    goto LABEL_154;
  }

  v168 = v292[39];
  v169 = v292[40];
  swift_endAccess();

  v170 = v223;
  if (!*(v223 + 16))
  {
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
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
    goto LABEL_142;
  }

  *(v223 + 32) = v166;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
  v171 = swift_allocObject();
  v171[4] = 0;
  v171[5] = 3;
  v171[6] = v168;
  v171[2] = v170;
  v171[3] = 0;
  v229 = v171;

  specialized Array.append<A>(contentsOf:)(v201, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(3u, 101777407);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_270C44550;
  if ((v169 & 0x8000000000000000) != 0)
  {
    goto LABEL_135;
  }

  if (v169 > 0xFF)
  {
    goto LABEL_136;
  }

  *(v172 + 32) = v169;
  if ((v168 & 0x8000000000000000) != 0)
  {
    goto LABEL_137;
  }

  if (v168 > 0xFF)
  {
    goto LABEL_138;
  }

  *(v172 + 33) = v168;
  v293 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v205, v6, v172);

  swift_setDeallocating();
  swift_deallocClassInstance();
  a6 = v243;
  v268[6] = *&v243[104];
  v268[7] = *&v243[120];
  v268[8] = *&v243[136];
  v269 = *&v243[152];
  v268[2] = *&v243[40];
  v268[3] = *&v243[56];
  v268[4] = *&v243[72];
  v268[5] = *&v243[88];
  v268[0] = *&v243[8];
  v268[1] = *&v243[24];
  v270[6] = *&v243[256];
  v270[7] = *&v243[272];
  v270[8] = *&v243[288];
  v271 = *&v243[304];
  v270[2] = *&v243[192];
  v270[3] = *&v243[208];
  v270[4] = *&v243[224];
  v270[5] = *&v243[240];
  v270[0] = *&v243[160];
  v270[1] = *&v243[176];
  v6 = v270;
  v173 = specialized FullyLinearProof.proofLength.getter();
  v170 = v169 * v173;
  if ((v169 * v173) >> 64 != (v169 * v173) >> 63)
  {
    goto LABEL_139;
  }

  v6 = v268;
  v174 = specialized FullyLinearProof.proofLength.getter();
  v175 = v168 * v174;
  if ((v168 * v174) >> 64 != (v168 * v174) >> 63)
  {
    goto LABEL_140;
  }

  v23 = __OFADD__(v170, v175);
  v176 = v170 + v175;
  if (v23)
  {
    goto LABEL_141;
  }

  v233 = v168;
  v228 = a3;
  v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v176 & ~(v176 >> 63), 0, MEMORY[0x277D84F90]);
  v234[0] = v177;
  if (v169)
  {
    v178 = v242;
    v8 = MEMORY[0x277D84F90];
    do
    {
      v264 = *&v243[256];
      v265 = *&v243[272];
      v266 = *&v243[288];
      v267 = *&v243[304];
      v260 = *&v243[192];
      v261 = *&v243[208];
      v262 = *&v243[224];
      v263 = *&v243[240];
      v258 = *&v243[160];
      v259 = *&v243[176];
      v179 = specialized FullyLinearProof.proveRandLength.getter();
      a3 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(v179, v293, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5);
      v256[6] = *&v243[256];
      v256[7] = *&v243[272];
      v256[8] = *&v243[288];
      v257 = *&v243[304];
      v256[2] = *&v243[192];
      v256[3] = *&v243[208];
      v256[4] = *&v243[224];
      v256[5] = *&v243[240];
      v256[0] = *&v243[160];
      v256[1] = *&v243[176];
      v6 = v256;
      specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(v234, v178, a3, v8);

      --v169;
    }

    while (v169);
  }

  v19 = v233;
  if (v233)
  {
    a5 = 0;
    v18 = v242;
    do
    {
      a1 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        goto LABEL_128;
      }

      v8 = specialized VerificationJointRandomness.next()();
      v252 = *&v243[104];
      v253 = *&v243[120];
      v254 = *&v243[136];
      v255 = *&v243[152];
      v249 = *&v243[56];
      v250 = *&v243[72];
      v251 = *&v243[88];
      v246 = *&v243[8];
      v247 = *&v243[24];
      v248 = *&v243[40];
      v180 = specialized FullyLinearProof.proveRandLength.getter();
      a3 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(v180, v293, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5);
      v244[6] = *&v243[104];
      v244[7] = *&v243[120];
      v244[8] = *&v243[136];
      v245 = *&v243[152];
      v244[2] = *&v243[40];
      v244[3] = *&v243[56];
      v244[4] = *&v243[72];
      v244[5] = *&v243[88];
      v244[0] = *&v243[8];
      v244[1] = *&v243[24];
      v6 = v244;
      specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(v234, v18, a3, v8);

      a5 = (a5 + 1);
      v19 = v233;
    }

    while (a1 != v233);
  }

  MEMORY[0x28223BE20](v177);
  v181 = v203;
  v199[-2] = v204;
  v199[-1] = v243;
  _s4VDAF12VDAFProtocolPAAE10splitShare_4into_ySayqd__Gz_Siqd_0_SiXEtAA12FieldElementRd__AA24ExtendableOutputFunctionRd_0_r0_lFZAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CG_AlOTt2g5(v234, v181, partial apply for specialized closure #5 in PINE.shard<A>(_:nonce:seedBytes:));

  a3 = v234[0];
  v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v200, 0, MEMORY[0x277D84F90]);
  v168 = v182[2];
  v165 = v182[3];
  v6 = v182;
  v170 = v168 + 1;
  v8 = v228;

  if (v168 < v165 >> 1)
  {
    goto LABEL_104;
  }

LABEL_142:
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v165 > 1), v170, 1, v6);
LABEL_104:
  v183 = v202;
  v184 = v223;
  v6[2] = v170;
  v185 = &v6[6 * v168];
  v185[4] = v8;
  *(v185 + 40) = 0;
  v185[6] = a3;
  *(v185 + 56) = 0;
  v186 = v206;
  v185[8] = v207;
  v185[9] = v186;
  v187 = v216;
  if (!v216)
  {

LABEL_113:

    swift_setDeallocating();

    swift_deallocClassInstance();

    *v183 = v227;
    v183[1] = v184;

    return v6;
  }

  *&v226 = a3;
  if (v216 <= *(v209 + 2))
  {
    v188 = v6;
    v189 = 48 * v168 + 120;
    v190 = v168 + 2;
    v191 = (v209 + 56);
    do
    {
      v216 = v187;
      v192 = *(v191 - 3);
      v193 = *(v191 - 2);
      v194 = *(v191 - 1);
      v195 = *v191;
      v232 = v188;
      v196 = v188[3];
      v230 = v192;

      v231 = v193;

      v233 = v194;

      if (v190 - 1 >= v196 >> 1)
      {
        v188 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v196 > 1), v190, 1, v232);
      }

      else
      {
        v188 = v232;
      }

      v188[2] = v190;
      v197 = (v188 + v189);
      v198 = v231;
      *(v197 - 5) = v230;
      *(v197 - 32) = 1;
      *(v197 - 3) = v198;
      *(v197 - 16) = 1;
      v189 += 48;
      ++v190;
      v191 += 4;
      *(v197 - 1) = v233;
      *v197 = v195;
      v187 = (v216 - 1);
    }

    while (v216 != 1);
    v6 = v188;

    v183 = v202;
    v184 = v223;
    goto LABEL_113;
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  swift_endAccess();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

{
  v8 = v7;
  v230 = a2;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v215 = *(v293 - 8);
  MEMORY[0x28223BE20](v293);
  v232 = (v199 - v14);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v214 = *(v233 - 1);
  MEMORY[0x28223BE20](v233);
  v231 = v199 - v15;
  memcpy(v243, v6, sizeof(v243));
  v228 = a4;
  v17 = *(a4 + 2);
  if (v17 != 16)
  {
    v240 = 0;
    v241 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v240 = 0xD00000000000002FLL;
    v241 = 0x8000000270C51F20;
    v239[0] = 16;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v20);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v239[0] = v17;
    goto LABEL_70;
  }

  v18 = (a6 >> 62);
  if ((a6 >> 62) <= 1)
  {
    if (!v18)
    {
      v19 = BYTE6(a6);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v18 != 2)
  {
    v19 = 0;
    goto LABEL_13;
  }

  v22 = a5[2];
  v21 = a5[3];
  v23 = __OFSUB__(v21, v22);
  v19 = v21 - v22;
  if (v23)
  {
    __break(1u);
LABEL_10:
    v19 = (HIDWORD(a5) - a5);
    if (__OFSUB__(HIDWORD(a5), a5))
    {
      goto LABEL_127;
    }

    v19 = v19;
  }

LABEL_13:
  v24 = *v6;
  v25 = (*v6 - 1);
  if (__OFSUB__(*v6, 1))
  {
    goto LABEL_118;
  }

  if ((*v6 + 0x3FFFFFFFFFFFFFFFLL) < 0)
  {
    goto LABEL_119;
  }

  if (v24 + 0x4000000000000000 < 0)
  {
    goto LABEL_120;
  }

  v26 = 2 * v25 + 2 * v24;
  if (__OFADD__(2 * v25, 2 * v24))
  {
    goto LABEL_121;
  }

  if ((v26 - 0x3FFFFFFFFFFFFFFLL) >> 59 != 31)
  {
    goto LABEL_122;
  }

  v27 = (32 * v26) | 0x20;
  if (v19 != v27)
  {
    v240 = 0;
    v241 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v240 = 0xD00000000000002ALL;
    v241 = 0x8000000270C51F50;
    v239[0] = v27;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    a4 = v39;
    MEMORY[0x2743B25F0](v38);

    v6 = &v240;
    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    if (v18 > 1)
    {
      v40 = 0;
      if (v18 == 2)
      {
        v59 = a5[2];
        v58 = a5[3];
        v23 = __OFSUB__(v58, v59);
        v40 = v58 - v59;
        if (v23)
        {
          __break(1u);
          goto LABEL_44;
        }
      }
    }

    else if (v18)
    {
      v40 = (HIDWORD(a5) - a5);
      if (__OFSUB__(HIDWORD(a5), a5))
      {
        goto LABEL_132;
      }

      v40 = v40;
    }

    else
    {
      v40 = BYTE6(a6);
    }

    v239[0] = v40;
LABEL_70:
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v118);

    v119 = v240;
    v120 = v241;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v121 = v119;
    *(v121 + 8) = v120;
    *(v121 + 16) = 1;
    return swift_willThrow();
  }

  v202 = a1;
  v203 = v24;
  v216 = v25;
  a4 = v243;
  memcpy(v292, v6, sizeof(v292));
  v18 = specialized PINE.splitSeedBytes<A>(_:)(a5, a6);
  v206 = v29;
  v207 = v28;
  v205 = v30;
  v31 = *(v18 + 2);
  a1 = MEMORY[0x277D84F90];
  v209 = v18;
  if (v31)
  {
    *&v226 = a3;
    v227 = v7;
    v240 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v32 = v240;
    v33 = (v18 + 32);
    v34 = v31;
    do
    {
      v35 = *v33;
      v240 = v32;
      v37 = *(v32 + 16);
      v36 = *(v32 + 24);

      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v32 = v240;
      }

      *(v32 + 16) = v37 + 1;
      *(v32 + 8 * v37 + 32) = v35;
      v33 += 4;
      --v34;
    }

    while (v34);
    v240 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v41 = v240;
    v42 = (v209 + 40);
    v43 = v31;
    do
    {
      v44 = *v42;
      v240 = v41;
      v46 = *(v41 + 16);
      v45 = *(v41 + 24);

      if (v46 >= v45 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
        v41 = v240;
      }

      *(v41 + 16) = v46 + 1;
      *(v41 + 8 * v46 + 32) = v44;
      v42 += 4;
      --v43;
    }

    while (v43);
    a1 = v32;
    v204 = v41;
    v240 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v47 = v240;
    v48 = (v209 + 48);
    v49 = v31;
    do
    {
      v50 = *v48;
      v240 = v47;
      v52 = *(v47 + 16);
      v51 = *(v47 + 24);

      if (v52 >= v51 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
        v47 = v240;
      }

      *(v47 + 16) = v52 + 1;
      *(v47 + 8 * v52 + 32) = v50;
      v48 += 4;
      --v49;
    }

    while (v49);
    v229 = v47;
    v240 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v53 = v240;
    v54 = (v209 + 56);
    a3 = v226;
    do
    {
      v55 = *v54;
      v240 = v53;
      v57 = *(v53 + 16);
      v56 = *(v53 + 24);

      if (v57 >= v56 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
        v53 = v240;
      }

      *(v53 + 16) = v57 + 1;
      *(v53 + 8 * v57 + 32) = v55;
      v54 += 4;
      --v31;
    }

    while (v31);
    v208 = v53;
    v18 = v209;
    a4 = v243;
    v8 = v227;
    goto LABEL_45;
  }

LABEL_44:
  v229 = a1;
  v204 = a1;
  v208 = a1;
LABEL_45:
  v242 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v292[10] & ~(v292[10] >> 63), 0, MEMORY[0x277D84F90]);
  v60 = *(a4 + 120);
  v288 = *(a4 + 104);
  v289 = v60;
  v290 = *(a4 + 136);
  v291 = *&v243[152];
  v61 = *(a4 + 56);
  v284 = *(a4 + 40);
  v285 = v61;
  v62 = *(a4 + 88);
  v286 = *(a4 + 72);
  v287 = v62;
  v63 = *(a4 + 24);
  v282 = *(a4 + 8);
  v283 = v63;
  specialized PINECircuit.encodeMeasurementAndNormRangeCheck(raw:into:)(v230, a3, &v242);
  a4 = v8;
  if (v8)
  {
  }

  v201 = v242;
  v6 = MEMORY[0x277D84F90];
  v200 = v203 & ~(v203 >> 63);
  v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v200, 0, MEMORY[0x277D84F90]);
  a6 = *(v16 + 2);
  v19 = *(v16 + 3);
  a5 = (a6 + 1);
  if (a6 >= v19 >> 1)
  {
    goto LABEL_129;
  }

  while (1)
  {
    v64 = v216;
    *(v16 + 2) = a5;
    v227 = v16;
    v40 = &v16[8 * a6];
    *(v40 + 32) = v6;
    v236 = v201;
    if ((v64 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), a5, 1, v8);
      goto LABEL_72;
    }

    v213 = a1;
    if (v64)
    {
      a6 = 0;
      v224 = (v215 + 8);
      v225 = (v215 + 16);
      v211 = (v214 + 8);
      v212 = a1 + 32;
      v210 = v229 + 32;
      v19 = &unk_270C44000;
      v226 = xmmword_270C44540;
      while (a6 != 255)
      {
        v19 = *(a1 + 16);
        if (a6 >= v19)
        {
          goto LABEL_115;
        }

        v6 = (a6 + 1);
        a5 = *(v212 + 8 * a6);

        a3 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(0, 85000191);
        a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
        v65 = swift_allocObject();
        *(v65 + 16) = v226;
        v230 = (a6 + 1);
        *(v65 + 32) = a6 + 1;
        v19 = a5[2];
        if (v19 != 32)
        {
          goto LABEL_116;
        }

        v18 = v65;
        *&v222 = a1;
        v223 = a6;
        v66 = a4;

        v67 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(a5, a3, v18);
        if (*(v67 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          goto LABEL_144;
        }

        v68 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        a6 = v67;
        swift_beginAccess();
        v69 = a6 + v68;
        v70 = v232;
        v71 = v293;
        v221 = *v225;
        (v221)(v232, v69, v293);
        v8 = v231;
        HMAC.finalize()();
        v220 = *v224;
        v220(v70, v71);
        a4 = v233;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        v219 = v66;
        a1 = v211;
        v6 = *v211;
        (*v211)(v8, a4);

        swift_setDeallocating();
        swift_deallocClassInstance();
        v72 = *(v236 + 2);
        v218 = a6;
        v73 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(v72, a6);
        v19 = *(v229 + 16);
        if (v223 >= v19)
        {
          goto LABEL_117;
        }

        v74 = v73;
        v217 = v6;
        v75 = (2 * *(v73 + 16)) | 1;
        v76 = *(v210 + 8 * v223);
        swift_bridgeObjectRetain_n();

        v77 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 85000191);
        v78 = swift_allocObject();
        *(v78 + 16) = v226;
        *(v78 + 32) = v230;
        v238 = v78;

        specialized Array.append<A>(contentsOf:)(v79);
        v223 = v76;
        v8 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v76, v77, v238);
        v80 = specialized VDAFEncodable.encodedBytes.getter((v74 + 32), 0, v75);
        v81 = off_2880A7738[0];
        type metadata accessor for XofHmacSha256Aes128(0);
        v81(v80);

        v82 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
        if (*&v8[OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream])
        {
          goto LABEL_145;
        }

        *&v222 = v74;
        v83 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        swift_beginAccess();
        v84 = &v8[v83];
        v85 = v232;
        v86 = v293;
        (v221)(v232, v84, v293);
        v87 = v231;
        HMAC.finalize()();
        v220(v85, v86);
        v88 = v233;
        v89 = v219;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        a4 = v89;
        (v217)(v87, v88);
        v90 = *&v8[v82];
        if (!v90)
        {
          goto LABEL_146;
        }

        v91 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v91 + 16) = 32;
        *(v91 + 48) = 0u;
        *(v91 + 32) = 0u;
        a3 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
        v92 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
        swift_beginAccess();
        specialized static AES.CTR.encryptInPlace(_:using:updating:)((v91 + 32), v91 + 64, &a3[v90], v90 + v92);
        if (v89)
        {
          goto LABEL_154;
        }

        swift_endAccess();

        a5 = v222;

        v93 = v227;
        v95 = *(v227 + 2);
        v94 = *(v227 + 3);
        v18 = (v95 + 1);
        a1 = v213;
        if (v95 >= v94 >> 1)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v227);
        }

        *(v93 + 2) = v18;
        v227 = v93;
        *&v93[8 * v95 + 32] = v91;
        v6 = &v236;
        specialized Array<A>.elementwiseSubtract(_:)(a5);

        a6 = v230;
        v19 = v216;
        if (v216 == v230)
        {
          goto LABEL_62;
        }
      }

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
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

LABEL_62:
    v96 = a4;

    a5 = v236;
    v97 = (2 * *(v236 + 2)) | 1;

    v98 = v207;

    v99 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 85000191);
    v238 = &outlined read-only object #0 of specialized PINE.shard<A>(_:nonce:seedBytes:);

    specialized Array.append<A>(contentsOf:)(v100);
    a6 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v98, v99, v238);
    v101 = specialized VDAFEncodable.encodedBytes.getter(a5 + 32, 0, v97);
    v102 = off_2880A7738[0];
    v212 = type metadata accessor for XofHmacSha256Aes128(0);
    v217 = v102;
    v102(v101);

    v103 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
    if (*(a6 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
    {
      goto LABEL_150;
    }

    v104 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
    swift_beginAccess();
    v105 = v215;
    v106 = *(v215 + 16);
    v107 = a6 + v104;
    v108 = v232;
    v109 = v293;
    v229 = v215 + 16;
    *&v226 = v106;
    v106(v232, v107, v293);
    v110 = v231;
    HMAC.finalize()();
    v111 = *(v105 + 8);
    v215 = v105 + 8;
    v225 = v111;
    (v111)(v108, v109);
    v112 = v233;
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
    a4 = v96;
    v113 = *(v214 + 8);
    v214 += 8;
    v224 = v113;
    v113(v110, v112);
    v6 = *(a6 + v103);
    if (!v6)
    {
      goto LABEL_151;
    }

    v18 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v18 + 2) = 32;
    *(v18 + 3) = 0u;
    *(v18 + 2) = 0u;
    a1 = (v18 + 32);
    v8 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v114 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    specialized static AES.CTR.encryptInPlace(_:using:updating:)(v18 + 2, (v18 + 64), &v8[v6], v6 + v114);
    if (a4)
    {
      goto LABEL_154;
    }

    swift_endAccess();

    v40 = *(v227 + 2);
    a3 = v213;
    if (!v40)
    {
      goto LABEL_131;
    }

    *(v227 + 4) = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
    swift_allocObject();

    v116 = specialized WraparoundJointRandomness.init(parts:)(v115, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field32, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field32> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 85000191);
    v278 = *&v243[104];
    v279 = *&v243[120];
    v280 = *&v243[136];
    v281 = *&v243[152];
    v274 = *&v243[40];
    v275 = *&v243[56];
    v276 = *&v243[72];
    v277 = *&v243[88];
    v272 = *&v243[8];
    v273 = *&v243[24];
    v201 = specialized PINECircuit.appendWraparoundCheck<A>(into:random:)(&v242, v116);
    v199[1] = v116;
    v18 = v242;
    v6 = MEMORY[0x277D84F90];
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v200, 0, MEMORY[0x277D84F90]);
    a6 = *(v8 + 2);
    v40 = *(v8 + 3);
    a5 = (a6 + 1);
    if (a6 >= v40 >> 1)
    {
      goto LABEL_133;
    }

LABEL_72:
    v122 = v216;
    *(v8 + 2) = a5;
    *&v8[8 * a6 + 32] = v6;
    v237 = v18;

    if (!v122)
    {
      break;
    }

    v199[0] = v18;
    a6 = 0;
    v210 = v208 + 32;
    v211 = (a3 + 32);
    v19 = &unk_270C44000;
    v222 = xmmword_270C44540;
    while (a6 != 255)
    {
      v19 = *(a3 + 2);
      if (a6 >= v19)
      {
        goto LABEL_124;
      }

      v223 = v8;
      v6 = (a6 + 1);
      a5 = v211[a6];

      a3 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(0, 85000191);
      a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v123 = swift_allocObject();
      *(v123 + 16) = v222;
      v230 = (a6 + 1);
      *(v123 + 32) = a6 + 1;
      v19 = a5[2];
      if (v19 != 32)
      {
        goto LABEL_125;
      }

      v18 = v123;
      v220 = a1;
      v221 = a6;
      v8 = a4;

      v124 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(a5, a3, v18);
      if (*(v124 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
      {
        goto LABEL_147;
      }

      v125 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
      a1 = v124;
      swift_beginAccess();
      v126 = a1 + v125;
      v127 = v232;
      v128 = v293;
      (v226)(v232, v126, v293);
      a4 = v231;
      HMAC.finalize()();
      (v225)(v127, v128);
      a6 = v233;
      v6 = a4;
      HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
      v219 = v8;
      v224(a4, a6);

      swift_setDeallocating();
      swift_deallocClassInstance();
      v129 = *(v237 + 2);
      v218 = a1;
      v130 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(v129, a1);
      v19 = *(v208 + 16);
      if (v221 >= v19)
      {
        goto LABEL_126;
      }

      a5 = v130;
      v131 = (2 * *(v130 + 16)) | 1;
      v132 = *(v210 + 8 * v221);
      swift_bridgeObjectRetain_n();

      v133 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 85000191);
      v134 = swift_allocObject();
      *(v134 + 16) = v222;
      *(v134 + 32) = v230;
      v235 = v134;

      specialized Array.append<A>(contentsOf:)(v135);
      v136 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v132, v133, v235);
      v137 = specialized VDAFEncodable.encodedBytes.getter(a5 + 32, 0, v131);
      (v217)(v137);

      v138 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
      if (*(v136 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
      {
        goto LABEL_148;
      }

      v221 = v132;
      v139 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
      swift_beginAccess();
      v140 = v136 + v139;
      v141 = v232;
      v142 = v293;
      (v226)(v232, v140, v293);
      v143 = v231;
      HMAC.finalize()();
      (v225)(v141, v142);
      v144 = v233;
      v145 = v219;
      HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
      a4 = v145;
      v224(v143, v144);
      v146 = *(v136 + v138);
      if (!v146)
      {
        goto LABEL_149;
      }

      v147 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v147 + 16) = 32;
      *(v147 + 48) = 0u;
      *(v147 + 32) = 0u;
      v148 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
      v149 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
      swift_beginAccess();
      specialized static AES.CTR.encryptInPlace(_:using:updating:)((v147 + 32), v147 + 64, v146 + v148, v146 + v149);
      if (v145)
      {
        goto LABEL_154;
      }

      swift_endAccess();

      v8 = v223;
      a1 = *(v223 + 16);
      v150 = *(v223 + 24);
      v18 = (a1 + 1);
      a3 = v213;
      if (a1 >= v150 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v150 > 1), a1 + 1, 1, v223);
      }

      *(v8 + 2) = v18;
      *&v8[8 * a1 + 32] = v147;
      v6 = &v237;
      specialized Array<A>.elementwiseSubtract(_:)(a5);

      a6 = v230;
      v19 = v216;
      if (v216 == v230)
      {
        goto LABEL_85;
      }
    }

LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), a5, 1, v16);
  }

LABEL_85:
  v223 = v8;
  v151 = a4;

  a3 = v237;
  v152 = (2 * *(v237 + 2)) | 1;

  v153 = v206;

  v154 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 85000191);
  v235 = &outlined read-only object #1 of specialized PINE.shard<A>(_:nonce:seedBytes:);

  specialized Array.append<A>(contentsOf:)(v155);
  v156 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v153, v154, v235);
  v157 = specialized VDAFEncodable.encodedBytes.getter(a3 + 32, 0, v152);
  (v217)(v157);

  v158 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  if (*(v156 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    goto LABEL_152;
  }

  v159 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  swift_beginAccess();
  v160 = v156 + v159;
  v161 = v232;
  v162 = v293;
  (v226)(v232, v160, v293);
  v163 = v231;
  HMAC.finalize()();
  (v225)(v161, v162);
  v164 = v233;
  v165 = v151;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  a4 = v151;
  v224(v163, v164);
  v6 = *(v156 + v158);
  if (!v6)
  {
    goto LABEL_153;
  }

  v166 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v166 + 16) = 32;
  *(v166 + 48) = 0u;
  *(v166 + 32) = 0u;
  v167 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v8 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
  swift_beginAccess();
  specialized static AES.CTR.encryptInPlace(_:using:updating:)((v166 + 32), v166 + 64, v6 + v167, &v8[v6]);
  if (a4)
  {
    goto LABEL_154;
  }

  v168 = v292[39];
  v169 = v292[40];
  swift_endAccess();

  v170 = v223;
  if (!*(v223 + 16))
  {
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
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
    goto LABEL_142;
  }

  *(v223 + 32) = v166;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
  v171 = swift_allocObject();
  v171[4] = 0;
  v171[5] = 3;
  v171[6] = v168;
  v171[2] = v170;
  v171[3] = 0;
  v229 = v171;

  specialized Array.append<A>(contentsOf:)(v201);
  v6 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(3u, 85000191);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_270C44550;
  if ((v169 & 0x8000000000000000) != 0)
  {
    goto LABEL_135;
  }

  if (v169 > 0xFF)
  {
    goto LABEL_136;
  }

  *(v172 + 32) = v169;
  if ((v168 & 0x8000000000000000) != 0)
  {
    goto LABEL_137;
  }

  if (v168 > 0xFF)
  {
    goto LABEL_138;
  }

  *(v172 + 33) = v168;
  v293 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v205, v6, v172);

  swift_setDeallocating();
  swift_deallocClassInstance();
  a6 = v243;
  v268[6] = *&v243[104];
  v268[7] = *&v243[120];
  v268[8] = *&v243[136];
  v269 = *&v243[152];
  v268[2] = *&v243[40];
  v268[3] = *&v243[56];
  v268[4] = *&v243[72];
  v268[5] = *&v243[88];
  v268[0] = *&v243[8];
  v268[1] = *&v243[24];
  v270[6] = *&v243[256];
  v270[7] = *&v243[272];
  v270[8] = *&v243[288];
  v271 = *&v243[304];
  v270[2] = *&v243[192];
  v270[3] = *&v243[208];
  v270[4] = *&v243[224];
  v270[5] = *&v243[240];
  v270[0] = *&v243[160];
  v270[1] = *&v243[176];
  v6 = v270;
  v173 = specialized FullyLinearProof.proofLength.getter();
  v170 = v169 * v173;
  if ((v169 * v173) >> 64 != (v169 * v173) >> 63)
  {
    goto LABEL_139;
  }

  v6 = v268;
  v174 = specialized FullyLinearProof.proofLength.getter();
  v175 = v168 * v174;
  if ((v168 * v174) >> 64 != (v168 * v174) >> 63)
  {
    goto LABEL_140;
  }

  v23 = __OFADD__(v170, v175);
  v176 = v170 + v175;
  if (v23)
  {
    goto LABEL_141;
  }

  v233 = v168;
  v228 = a3;
  v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v176 & ~(v176 >> 63), 0, MEMORY[0x277D84F90]);
  v234[0] = v177;
  if (v169)
  {
    v178 = v242;
    v8 = MEMORY[0x277D84F90];
    do
    {
      v264 = *&v243[256];
      v265 = *&v243[272];
      v266 = *&v243[288];
      v267 = *&v243[304];
      v260 = *&v243[192];
      v261 = *&v243[208];
      v262 = *&v243[224];
      v263 = *&v243[240];
      v258 = *&v243[160];
      v259 = *&v243[176];
      v179 = specialized FullyLinearProof.proveRandLength.getter();
      a3 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(v179, v293);
      v256[6] = *&v243[256];
      v256[7] = *&v243[272];
      v256[8] = *&v243[288];
      v257 = *&v243[304];
      v256[2] = *&v243[192];
      v256[3] = *&v243[208];
      v256[4] = *&v243[224];
      v256[5] = *&v243[240];
      v256[0] = *&v243[160];
      v256[1] = *&v243[176];
      v6 = v256;
      specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(v234, v178, a3, v8);

      --v169;
    }

    while (v169);
  }

  v19 = v233;
  if (v233)
  {
    a5 = 0;
    v18 = v242;
    do
    {
      a1 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        goto LABEL_128;
      }

      v8 = specialized VerificationJointRandomness.next()();
      v252 = *&v243[104];
      v253 = *&v243[120];
      v254 = *&v243[136];
      v255 = *&v243[152];
      v249 = *&v243[56];
      v250 = *&v243[72];
      v251 = *&v243[88];
      v246 = *&v243[8];
      v247 = *&v243[24];
      v248 = *&v243[40];
      v180 = specialized FullyLinearProof.proveRandLength.getter();
      a3 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(v180, v293);
      v244[6] = *&v243[104];
      v244[7] = *&v243[120];
      v244[8] = *&v243[136];
      v245 = *&v243[152];
      v244[2] = *&v243[40];
      v244[3] = *&v243[56];
      v244[4] = *&v243[72];
      v244[5] = *&v243[88];
      v244[0] = *&v243[8];
      v244[1] = *&v243[24];
      v6 = v244;
      specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(v234, v18, a3, v8);

      a5 = (a5 + 1);
      v19 = v233;
    }

    while (a1 != v233);
  }

  MEMORY[0x28223BE20](v177);
  v181 = v203;
  v199[-2] = v204;
  v199[-1] = v243;
  _s4VDAF12VDAFProtocolPAAE10splitShare_4into_ySayqd__Gz_Siqd_0_SiXEtAA12FieldElementRd__AA24ExtendableOutputFunctionRd_0_r0_lFZAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CG_AlOTt2g5(v234, v181, partial apply for specialized closure #5 in PINE.shard<A>(_:nonce:seedBytes:));

  a3 = v234[0];
  v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v200, 0, MEMORY[0x277D84F90]);
  v168 = v182[2];
  v165 = v182[3];
  v6 = v182;
  v170 = v168 + 1;
  v8 = v228;

  if (v168 < v165 >> 1)
  {
    goto LABEL_104;
  }

LABEL_142:
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v165 > 1), v170, 1, v6);
LABEL_104:
  v183 = v202;
  v184 = v223;
  v6[2] = v170;
  v185 = &v6[6 * v168];
  v185[4] = v8;
  *(v185 + 40) = 0;
  v185[6] = a3;
  *(v185 + 56) = 0;
  v186 = v206;
  v185[8] = v207;
  v185[9] = v186;
  v187 = v216;
  if (!v216)
  {

LABEL_113:

    swift_setDeallocating();

    swift_deallocClassInstance();

    *v183 = v227;
    v183[1] = v184;

    return v6;
  }

  *&v226 = a3;
  if (v216 <= *(v209 + 2))
  {
    v188 = v6;
    v189 = 48 * v168 + 120;
    v190 = v168 + 2;
    v191 = (v209 + 56);
    do
    {
      v216 = v187;
      v192 = *(v191 - 3);
      v193 = *(v191 - 2);
      v194 = *(v191 - 1);
      v195 = *v191;
      v232 = v188;
      v196 = v188[3];
      v230 = v192;

      v231 = v193;

      v233 = v194;

      if (v190 - 1 >= v196 >> 1)
      {
        v188 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v196 > 1), v190, 1, v232);
      }

      else
      {
        v188 = v232;
      }

      v188[2] = v190;
      v197 = (v188 + v189);
      v198 = v231;
      *(v197 - 5) = v230;
      *(v197 - 32) = 1;
      *(v197 - 3) = v198;
      *(v197 - 16) = 1;
      v189 += 48;
      ++v190;
      v191 += 4;
      *(v197 - 1) = v233;
      *v197 = v195;
      v187 = (v216 - 1);
    }

    while (v216 != 1);
    v6 = v188;

    v183 = v202;
    v184 = v223;
    goto LABEL_113;
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  swift_endAccess();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t *specialized PINE.shard<A>(_:nonce:seedBytes:)(_BYTE *a1, float *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v8 = v7;
  v244 = a2;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v229 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v246 = (&v212 - v14);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v228 = *(v247 - 1);
  MEMORY[0x28223BE20](v247);
  v245 = &v212 - v15;
  memcpy(v258, v6, sizeof(v258));
  v242 = a4;
  v17 = *(a4 + 16);
  if (v17 != 16)
  {
    v255 = 0;
    v256 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v255 = 0xD00000000000002FLL;
    v256 = 0x8000000270C51F20;
    v254[0] = 16;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v20);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v254[0] = v17;
    goto LABEL_70;
  }

  v18 = (a6 >> 62);
  if ((a6 >> 62) <= 1)
  {
    if (!v18)
    {
      v19 = BYTE6(a6);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v18 != 2)
  {
    v19 = 0;
    goto LABEL_13;
  }

  v22 = *(a5 + 16);
  v21 = *(a5 + 24);
  v23 = __OFSUB__(v21, v22);
  v19 = v21 - v22;
  if (v23)
  {
    __break(1u);
LABEL_10:
    v19 = (HIDWORD(a5) - a5);
    if (__OFSUB__(HIDWORD(a5), a5))
    {
      goto LABEL_133;
    }

    v19 = v19;
  }

LABEL_13:
  v24 = *v6;
  v25 = *v6 - 1;
  if (__OFSUB__(*v6, 1))
  {
    goto LABEL_124;
  }

  if ((*v6 + 0x3FFFFFFFFFFFFFFFLL) < 0)
  {
    goto LABEL_125;
  }

  if ((v24 + 0x4000000000000000) < 0)
  {
    goto LABEL_126;
  }

  v26 = 2 * v25 + 2 * v24;
  if (__OFADD__(2 * v25, 2 * v24))
  {
    goto LABEL_127;
  }

  if ((v26 - 0x3FFFFFFFFFFFFFFLL) >> 59 != 31)
  {
    goto LABEL_128;
  }

  v27 = (32 * v26) | 0x20;
  if (v19 != v27)
  {
    v255 = 0;
    v256 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v255 = 0xD00000000000002ALL;
    v256 = 0x8000000270C51F50;
    v254[0] = v27;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    a4 = v39;
    MEMORY[0x2743B25F0](v38);

    v6 = &v255;
    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    if (v18 > 1)
    {
      v40 = 0;
      if (v18 == 2)
      {
        v58 = *(a5 + 16);
        v57 = *(a5 + 24);
        v23 = __OFSUB__(v57, v58);
        v40 = v57 - v58;
        if (v23)
        {
          __break(1u);
          goto LABEL_44;
        }
      }
    }

    else if (v18)
    {
      v40 = (HIDWORD(a5) - a5);
      if (__OFSUB__(HIDWORD(a5), a5))
      {
        goto LABEL_138;
      }

      v40 = v40;
    }

    else
    {
      v40 = BYTE6(a6);
    }

    v254[0] = v40;
LABEL_70:
    v119 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v119);

    v120 = v255;
    v121 = v256;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v122 = v120;
    *(v122 + 8) = v121;
    *(v122 + 16) = 1;
    return swift_willThrow();
  }

  v243 = a3;
  v216 = a1;
  v217 = v24;
  v230 = v25;
  v18 = v258;
  memcpy(v307, v6, sizeof(v307));
  v28 = specialized PINE.splitSeedBytes<A>(_:)(a5, a6);
  v220 = v30;
  v221 = v29;
  v219 = v31;
  a4 = *(v28 + 16);
  a3 = MEMORY[0x277D84F90];
  v226 = v28;
  if (a4)
  {
    v241 = v7;
    v255 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0);
    v32 = v255;
    v33 = (v28 + 32);
    v34 = a4;
    do
    {
      v35 = *v33;
      v255 = v32;
      v37 = *(v32 + 2);
      v36 = *(v32 + 3);

      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v32 = v255;
      }

      *(v32 + 2) = v37 + 1;
      *&v32[8 * v37 + 32] = v35;
      v33 += 4;
      --v34;
    }

    while (v34);
    v255 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0);
    v41 = v255;
    v42 = (v226 + 40);
    v43 = a4;
    do
    {
      v44 = *v42;
      v255 = v41;
      v46 = *(v41 + 2);
      v45 = *(v41 + 3);

      if (v46 >= v45 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
        v41 = v255;
      }

      *(v41 + 2) = v46 + 1;
      *&v41[8 * v46 + 32] = v44;
      v42 += 4;
      --v43;
    }

    while (v43);
    v227 = v32;
    v218 = v41;
    v255 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0);
    a1 = v255;
    v47 = (v226 + 48);
    v48 = a4;
    do
    {
      v49 = *v47;
      v255 = a1;
      v51 = *(a1 + 2);
      v50 = *(a1 + 3);

      if (v51 >= v50 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
        a1 = v255;
      }

      *(a1 + 2) = v51 + 1;
      *&a1[8 * v51 + 32] = v49;
      v47 += 4;
      --v48;
    }

    while (v48);
    v255 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0);
    v52 = v255;
    a3 = v227;
    v53 = (v226 + 56);
    do
    {
      v54 = *v53;
      v255 = v52;
      v56 = *(v52 + 2);
      v55 = *(v52 + 3);

      if (v56 >= v55 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
        v52 = v255;
      }

      *(v52 + 2) = v56 + 1;
      *&v52[8 * v56 + 32] = v54;
      v53 += 4;
      --a4;
    }

    while (a4);
    v222 = v52;
    v8 = v241;
    v18 = v258;
    goto LABEL_45;
  }

LABEL_44:
  a1 = a3;
  v218 = a3;
  v222 = a3;
LABEL_45:
  v257 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v307[10] & ~(v307[10] >> 63), 0, MEMORY[0x277D84F90]);
  v303 = *(v18 + 104);
  v304 = *(v18 + 120);
  v305 = *(v18 + 136);
  v306 = *&v258[152];
  v299 = *(v18 + 40);
  v300 = *(v18 + 56);
  v301 = *(v18 + 72);
  v302 = *(v18 + 88);
  v297 = *(v18 + 8);
  v298 = *(v18 + 24);
  specialized PINECircuit.encodeMeasurementAndNormRangeCheck(raw:into:)(v244, v243, &v257);
  v18 = v8;
  if (v8)
  {
  }

  v215 = v257;
  v6 = MEMORY[0x277D84F90];
  v214 = v217 & ~(v217 >> 63);
  v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v214, 0, MEMORY[0x277D84F90]);
  a6 = *(v16 + 2);
  v19 = *(v16 + 3);
  a5 = a6 + 1;
  if (a6 >= v19 >> 1)
  {
    goto LABEL_135;
  }

  while (1)
  {
    v60 = v230;
    *(v16 + 2) = a5;
    v241 = v16;
    v40 = &v16[8 * a6];
    *(v40 + 32) = v6;
    v251 = v215;
    if ((v60 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), a5, 1, v16);
      goto LABEL_72;
    }

    v227 = a3;
    if (v60)
    {
      a5 = 0;
      v225 = a3 + 32;
      v238 = (v229 + 8);
      v239 = (v229 + 16);
      v237 = (v228 + 8);
      v223 = a1 + 32;
      v19 = &unk_270C44000;
      v240 = xmmword_270C44540;
      v224 = a1;
      while (a5 != 255)
      {
        v19 = *(a3 + 16);
        if (a5 >= v19)
        {
          goto LABEL_121;
        }

        v6 = (a5 + 1);
        a3 = *(v225 + 8 * a5);

        a4 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(0, 68222975);
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
        v62 = swift_allocObject();
        *(v62 + 16) = v240;
        v243 = (a5 + 1);
        *(v62 + 32) = a5 + 1;
        v19 = *(a3 + 16);
        if (v19 != 32)
        {
          goto LABEL_122;
        }

        a6 = v62;
        *&v236 = v61;
        v244 = a5;
        v63 = v18;

        v64 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(a3, a4, a6);
        if (*(v64 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          goto LABEL_150;
        }

        v65 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        a5 = v64;
        swift_beginAccess();
        v66 = a5 + v65;
        v67 = v246;
        v68 = v308;
        v235 = *v239;
        (v235)(v246, v66, v308);
        v69 = v245;
        HMAC.finalize()();
        v234 = *v238;
        (v234)(v67, v68);
        v18 = v247;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        v233 = v63;
        v6 = *v237;
        (*v237)(v69, v18);

        swift_setDeallocating();
        swift_deallocClassInstance();
        v70 = *(v251 + 16);
        v232 = a5;
        v71 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(v70, a5, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);
        a1 = v224;
        v19 = *(v224 + 2);
        if (v244 >= v19)
        {
          goto LABEL_123;
        }

        v72 = v71;
        v231 = v6;
        v73 = (2 * *(v71 + 16)) | 1;
        v74 = *&v223[8 * v244];
        swift_bridgeObjectRetain_n();

        v75 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 68222975);
        v76 = swift_allocObject();
        *(v76 + 16) = v240;
        *(v76 + 32) = v243;
        v253 = v76;

        specialized Array.append<A>(contentsOf:)(v77);
        v78 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v74, v75, v253);
        v244 = v72;
        v79 = specialized VDAFEncodable.encodedBytes.getter((v72 + 32), 0, v73);
        v80 = off_2880A7738[0];
        type metadata accessor for XofHmacSha256Aes128(0);
        v80(v79);

        v81 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
        if (*(v78 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          goto LABEL_151;
        }

        *&v236 = v74;
        v82 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        swift_beginAccess();
        v83 = v78 + v82;
        v84 = v246;
        v85 = v308;
        (v235)(v246, v83, v308);
        v86 = v245;
        HMAC.finalize()();
        (v234)(v84, v85);
        v87 = v247;
        v88 = v233;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        a6 = v88;
        (v231)(v86, v87);
        v89 = *(v78 + v81);
        if (!v89)
        {
          goto LABEL_152;
        }

        v90 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v90 + 16) = 32;
        *(v90 + 48) = 0u;
        *(v90 + 32) = 0u;
        v91 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
        v92 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
        swift_beginAccess();
        specialized static AES.CTR.encryptInPlace(_:using:updating:)((v90 + 32), v90 + 64, v89 + v91, v89 + v92);
        if (v88)
        {
          goto LABEL_160;
        }

        swift_endAccess();

        v93 = v241;
        v95 = *(v241 + 2);
        v94 = *(v241 + 3);
        a4 = v95 + 1;
        a3 = v227;
        if (v95 >= v94 >> 1)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v241);
        }

        *(v93 + 2) = a4;
        v241 = v93;
        *&v93[8 * v95 + 32] = v90;
        v6 = &v251;
        specialized Array<A>.elementwiseSubtract(_:)(v244);
        v18 = 0;

        a5 = v243;
        v19 = v230;
        if (v230 == v243)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

LABEL_62:
    v96 = v18;

    a5 = v251;
    v97 = (2 * *(v251 + 16)) | 1;

    v98 = v221;

    v99 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 68222975);
    v253 = &outlined read-only object #0 of specialized PINE.shard<A>(_:nonce:seedBytes:);

    specialized Array.append<A>(contentsOf:)(v100);
    a1 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v98, v99, v253);
    v101 = specialized VDAFEncodable.encodedBytes.getter((a5 + 32), 0, v97);
    v102 = off_2880A7738[0];
    v225 = type metadata accessor for XofHmacSha256Aes128(0);
    v231 = v102;
    v102(v101);

    v103 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
    if (*&a1[OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream])
    {
      goto LABEL_156;
    }

    v104 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
    swift_beginAccess();
    v105 = v229;
    v106 = *(v229 + 16);
    v107 = &a1[v104];
    v108 = v246;
    v109 = v308;
    v243 = (v229 + 16);
    *&v240 = v106;
    v106(v246, v107, v308);
    v110 = v245;
    HMAC.finalize()();
    v111 = *(v105 + 8);
    v229 = v105 + 8;
    v239 = v111;
    (v111)(v108, v109);
    v112 = v247;
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
    a4 = v96;
    v113 = *(v228 + 8);
    v228 += 8;
    v238 = v113;
    (v113)(v110, v112);
    v6 = *&a1[v103];
    if (!v6)
    {
      goto LABEL_157;
    }

    a6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(a6 + 16) = 32;
    *(a6 + 48) = 0u;
    *(a6 + 32) = 0u;
    v114 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v115 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    specialized static AES.CTR.encryptInPlace(_:using:updating:)((a6 + 32), a6 + 64, v6 + v114, v6 + v115);
    if (a4)
    {
      goto LABEL_160;
    }

    swift_endAccess();

    v40 = *(v241 + 2);
    a3 = v227;
    if (!v40)
    {
      goto LABEL_137;
    }

    a1 = v258;
    *(v241 + 4) = a6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
    swift_allocObject();

    v117 = specialized WraparoundJointRandomness.init(parts:)(v116, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field64, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field64> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 68222975);
    v293 = *&v258[104];
    v294 = *&v258[120];
    v295 = *&v258[136];
    v296 = *&v258[152];
    v289 = *&v258[40];
    v290 = *&v258[56];
    v291 = *&v258[72];
    v292 = *&v258[88];
    v287 = *&v258[8];
    v288 = *&v258[24];
    v118 = specialized PINECircuit.appendWraparoundCheck<A>(into:random:)(&v257, v117);
    v212 = v117;
    v213 = v118;
    v215 = v257;
    v6 = MEMORY[0x277D84F90];
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v214, 0, MEMORY[0x277D84F90]);
    a6 = *(v16 + 2);
    v40 = *(v16 + 3);
    a5 = a6 + 1;
    if (a6 >= v40 >> 1)
    {
      goto LABEL_139;
    }

LABEL_72:
    v123 = v230;
    v18 = a4;
    *(v16 + 2) = a5;
    v237 = v16;
    *&v16[8 * a6 + 32] = v6;
    v252 = v215;

    if (!v123)
    {
      break;
    }

    a5 = 0;
    v223 = (v222 + 32);
    v224 = (a3 + 32);
    v19 = &unk_270C44000;
    v236 = xmmword_270C44540;
    while (a5 != 255)
    {
      v19 = *(a3 + 16);
      if (a5 >= v19)
      {
        goto LABEL_130;
      }

      v6 = (a5 + 1);
      a3 = *&v224[8 * a5];

      a4 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(0, 68222975);
      a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v124 = swift_allocObject();
      *(v124 + 16) = v236;
      v244 = a5 + 1;
      *(v124 + 32) = a5 + 1;
      v19 = *(a3 + 16);
      if (v19 != 32)
      {
        goto LABEL_131;
      }

      a6 = v124;
      v234 = a1;
      v235 = a5;
      v125 = v18;

      v126 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(a3, a4, a6);
      if (*&v126[OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream])
      {
        goto LABEL_153;
      }

      v127 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
      a1 = v126;
      swift_beginAccess();
      v128 = &a1[v127];
      v129 = v246;
      v130 = v308;
      (v240)(v246, v128, v308);
      v18 = v245;
      HMAC.finalize()();
      (v239)(v129, v130);
      a5 = v247;
      v6 = v18;
      HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
      v233 = v125;
      (v238)(v18, a5);

      swift_setDeallocating();
      swift_deallocClassInstance();
      v131 = *(v252 + 16);
      v232 = a1;
      v132 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(v131, a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);
      v19 = *(v222 + 16);
      if (v235 >= v19)
      {
        goto LABEL_132;
      }

      v133 = v132;
      v134 = (2 * *(v132 + 16)) | 1;
      v135 = *&v223[8 * v235];
      swift_bridgeObjectRetain_n();

      v136 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 68222975);
      v137 = swift_allocObject();
      *(v137 + 16) = v236;
      *(v137 + 32) = v244;
      v250 = v137;

      specialized Array.append<A>(contentsOf:)(v138);
      v235 = v135;
      v139 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v135, v136, v250);
      v140 = specialized VDAFEncodable.encodedBytes.getter((v133 + 32), 0, v134);
      (v231)(v140, v225);

      v141 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
      if (*(v139 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
      {
        goto LABEL_154;
      }

      v142 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
      swift_beginAccess();
      v143 = v139 + v142;
      v144 = v246;
      v145 = v308;
      (v240)(v246, v143, v308);
      v146 = v245;
      HMAC.finalize()();
      (v239)(v144, v145);
      v147 = v247;
      v148 = v233;
      HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
      a6 = v148;
      (v238)(v146, v147);
      v149 = *(v139 + v141);
      if (!v149)
      {
        goto LABEL_155;
      }

      v150 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v150 + 16) = 32;
      *(v150 + 48) = 0u;
      *(v150 + 32) = 0u;
      a1 = (v150 + 32);
      v151 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
      v152 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
      swift_beginAccess();
      specialized static AES.CTR.encryptInPlace(_:using:updating:)((v150 + 32), v150 + 64, v149 + v151, v149 + v152);
      if (v148)
      {
        goto LABEL_160;
      }

      swift_endAccess();

      v153 = v237;
      v155 = *(v237 + 2);
      v154 = *(v237 + 3);
      a4 = v155 + 1;
      if (v155 >= v154 >> 1)
      {
        v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v154 > 1), v155 + 1, 1, v237);
      }

      *(v153 + 2) = a4;
      *&v153[8 * v155 + 32] = v150;
      v6 = &v252;
      specialized Array<A>.elementwiseSubtract(_:)(v133);
      v18 = 0;
      v237 = v153;

      a5 = v244;
      v19 = v230;
      a3 = v227;
      if (v230 == v244)
      {
        goto LABEL_85;
      }
    }

LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), a5, 1, v16);
  }

LABEL_85:
  v156 = v18;

  v157 = v252;
  v158 = (2 * *(v252 + 16)) | 1;

  v159 = v220;

  v160 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 68222975);
  v250 = &outlined read-only object #1 of specialized PINE.shard<A>(_:nonce:seedBytes:);

  specialized Array.append<A>(contentsOf:)(v161);
  v162 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v159, v160, v250);
  v242 = v157;
  specialized VDAFEncodable.encodedBytes.getter((v157 + 32), 0, v158);
  (v231)();

  v163 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  if (*(v162 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    goto LABEL_158;
  }

  v164 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  swift_beginAccess();
  v165 = v162 + v164;
  v166 = v246;
  v167 = v308;
  (v240)(v246, v165, v308);
  v168 = v245;
  HMAC.finalize()();
  (v239)(v166, v167);
  v169 = v247;
  v170 = v156;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  a4 = v156;
  (v238)(v168, v169);
  v6 = *(v162 + v163);
  if (!v6)
  {
    goto LABEL_159;
  }

  a6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(a6 + 16) = 32;
  *(a6 + 48) = 0u;
  *(a6 + 32) = 0u;
  v171 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v172 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
  swift_beginAccess();
  specialized static AES.CTR.encryptInPlace(_:using:updating:)((a6 + 32), a6 + 64, v6 + v171, v6 + v172);
  a1 = v156;
  if (v156)
  {
    goto LABEL_160;
  }

  a3 = v307[39];
  v173 = v307[40];
  swift_endAccess();

  a5 = v237;
  if (!*(v237 + 2))
  {
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
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  *(v237 + 4) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
  v174 = swift_allocObject();
  *(v174 + 4) = 0;
  *(v174 + 5) = 3;
  *(v174 + 6) = a3;
  *(v174 + 2) = a5;
  *(v174 + 3) = 0;
  v245 = v174;

  specialized Array.append<A>(contentsOf:)(v213, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(3u, 68222975);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_270C44550;
  if ((v173 & 0x8000000000000000) != 0)
  {
    goto LABEL_141;
  }

  a6 = v226;
  if (v173 > 0xFF)
  {
    goto LABEL_142;
  }

  *(v175 + 32) = v173;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_143;
  }

  if (a3 > 0xFF)
  {
    goto LABEL_144;
  }

  *(v175 + 33) = a3;
  a4 = v219;
  v308 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v219, v6, v175);

  swift_setDeallocating();
  swift_deallocClassInstance();
  v283[6] = *&v258[104];
  v283[7] = *&v258[120];
  v283[8] = *&v258[136];
  v284 = *&v258[152];
  v283[2] = *&v258[40];
  v283[3] = *&v258[56];
  v283[4] = *&v258[72];
  v283[5] = *&v258[88];
  v283[0] = *&v258[8];
  v283[1] = *&v258[24];
  v285[6] = *&v258[256];
  v285[7] = *&v258[272];
  v285[8] = *&v258[288];
  v286 = *&v258[304];
  v285[2] = *&v258[192];
  v285[3] = *&v258[208];
  v285[4] = *&v258[224];
  v285[5] = *&v258[240];
  v285[0] = *&v258[160];
  v285[1] = *&v258[176];
  v6 = v285;
  v176 = specialized FullyLinearProof.proofLength.getter();
  a5 = v173 * v176;
  if ((v173 * v176) >> 64 != (v173 * v176) >> 63)
  {
    goto LABEL_145;
  }

  v6 = v283;
  v177 = specialized FullyLinearProof.proofLength.getter();
  v178 = a3 * v177;
  if ((a3 * v177) >> 64 != (a3 * v177) >> 63)
  {
    goto LABEL_146;
  }

  v23 = __OFADD__(a5, v178);
  v179 = a5 + v178;
  if (v23)
  {
    goto LABEL_147;
  }

  v18 = 0;
  v246 = a3;
  v180 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v179 & ~(v179 >> 63), 0, MEMORY[0x277D84F90]);
  v249[0] = v180;
  if (v173)
  {
    a5 = v258;
    a1 = v257;
    do
    {
      a4 = 0;
      v279 = *&v258[256];
      v280 = *&v258[272];
      v281 = *&v258[288];
      v282 = *&v258[304];
      v275 = *&v258[192];
      v276 = *&v258[208];
      v277 = *&v258[224];
      v278 = *&v258[240];
      v273 = *&v258[160];
      v274 = *&v258[176];
      v181 = specialized FullyLinearProof.proveRandLength.getter();
      a3 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(v181, v308, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);
      v271[6] = *&v258[256];
      v271[7] = *&v258[272];
      v271[8] = *&v258[288];
      v272 = *&v258[304];
      v271[2] = *&v258[192];
      v271[3] = *&v258[208];
      v271[4] = *&v258[224];
      v271[5] = *&v258[240];
      v271[0] = *&v258[160];
      v271[1] = *&v258[176];
      v6 = v271;
      specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(v249, a1, a3, MEMORY[0x277D84F90]);

      --v173;
    }

    while (v173);
  }

  if (v246)
  {
    v182 = 0;
    v244 = v257;
    do
    {
      v19 = v182 + 1;
      v247 = (v182 + 1);
      if (__OFADD__(v182, 1))
      {
        goto LABEL_134;
      }

      a1 = 0;
      v183 = specialized VerificationJointRandomness.xof.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field64, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field64> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 68222975);
      v252 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
      a3 = v252;
      _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v183, &v248);
      v184 = v248;
      v186 = *(a3 + 16);
      v185 = *(a3 + 24);
      if (v186 >= v185 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v185 > 1), v186 + 1, 1);
        a3 = v252;
      }

      *(a3 + 16) = v186 + 1;
      *(a3 + 8 * v186 + 32) = v184;
      _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v183, &v248);
      v187 = v248;
      v252 = a3;
      v189 = *(a3 + 16);
      v188 = *(a3 + 24);
      if (v189 >= v188 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v188 > 1), v189 + 1, 1);
        a3 = v252;
      }

      *(a3 + 16) = v189 + 1;
      *(a3 + 8 * v189 + 32) = v187;
      _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v183, &v248);
      v190 = v248;
      v252 = a3;
      v192 = *(a3 + 16);
      v191 = *(a3 + 24);
      if (v192 >= v191 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v191 > 1), v192 + 1, 1);
        a3 = v252;
      }

      *(a3 + 16) = v192 + 1;
      *(a3 + 8 * v192 + 32) = v190;

      a5 = v259;
      v267 = *&v258[104];
      v268 = *&v258[120];
      v269 = *&v258[136];
      v270 = *&v258[152];
      v263 = *&v258[40];
      v264 = *&v258[56];
      v265 = *&v258[72];
      v266 = *&v258[88];
      v261 = *&v258[8];
      v262 = *&v258[24];
      v193 = specialized FullyLinearProof.proveRandLength.getter();
      a4 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(v193, v308, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);
      v259[6] = *&v258[104];
      v259[7] = *&v258[120];
      v259[8] = *&v258[136];
      v260 = *&v258[152];
      v259[2] = *&v258[40];
      v259[3] = *&v258[56];
      v259[4] = *&v258[72];
      v259[5] = *&v258[88];
      v259[0] = *&v258[8];
      v259[1] = *&v258[24];
      v6 = v259;
      specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(v249, v244, a4, a3);
      v18 = 0;

      ++v182;
      a6 = v226;
    }

    while (v247 != v246);
  }

  v244 = 0;
  MEMORY[0x28223BE20](v180);
  v194 = v217;
  *(&v212 - 2) = v218;
  *(&v212 - 1) = v258;
  _s4VDAF12VDAFProtocolPAAE10splitShare_4into_ySayqd__Gz_Siqd_0_SiXEtAA12FieldElementRd__AA24ExtendableOutputFunctionRd_0_r0_lFZAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CG_AlOTt2g5(v249, v194, partial apply for specialized closure #5 in PINE.shard<A>(_:nonce:seedBytes:));

  a3 = v249[0];
  v195 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v214, 0, MEMORY[0x277D84F90]);
  a4 = v195[2];
  v170 = v195[3];
  v6 = v195;
  a5 = a4 + 1;

  if (a4 < v170 >> 1)
  {
    goto LABEL_110;
  }

LABEL_148:
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), a5, 1, v6);
LABEL_110:
  v196 = v216;
  v197 = v237;
  v6[2] = a5;
  v198 = &v6[6 * a4];
  v198[4] = v242;
  *(v198 + 40) = 0;
  v198[6] = a3;
  *(v198 + 56) = 0;
  v199 = v220;
  v198[8] = v221;
  v198[9] = v199;
  v200 = v230;
  if (v230)
  {
    v243 = a3;
    if (v230 > *(a6 + 16))
    {
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
      while (1)
      {
LABEL_160:
        swift_endAccess();
        swift_unexpectedError();
        __break(1u);
      }
    }

    v201 = v6;
    v202 = a6;
    v203 = 48 * a4 + 120;
    v204 = a4 + 2;
    v205 = (v202 + 56);
    do
    {
      v230 = v200;
      v206 = *(v205 - 3);
      v207 = *(v205 - 2);
      v209 = *(v205 - 1);
      v208 = *v205;
      v246 = v201;
      v210 = v201[3];

      v247 = v209;

      if (v204 - 1 >= v210 >> 1)
      {
        v201 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v210 > 1), v204, 1, v246);
      }

      else
      {
        v201 = v246;
      }

      v201[2] = v204;
      v211 = (v201 + v203);
      *(v211 - 5) = v206;
      *(v211 - 32) = 1;
      *(v211 - 3) = v207;
      *(v211 - 16) = 1;
      v203 += 48;
      ++v204;
      v205 += 4;
      *(v211 - 1) = v247;
      *v211 = v208;
      v200 = (v230 - 1);
    }

    while (v230 != 1);
    v6 = v201;

    v196 = v216;
    v197 = v237;
  }

  else
  {
  }

  swift_setDeallocating();

  swift_deallocClassInstance();

  *v196 = v241;
  v196[1] = v197;

  return v6;
}