uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WellnessUnit@<X0>(uint64_t *a1@<X8>)
{
  result = WellnessUnit.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WellnessUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE1)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 30) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 225;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 31;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WellnessUnit(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE1)
  {
    v5 = ((a3 + 30) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xE1)
  {
    v4 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 30;
    }
  }

  return result;
}

SiriWellnessIntents::WellnessValue_optional __swiftcall WellnessValue.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "dry";
  *(v1 + 8) = 3;
  *(v1 + 16) = 2;
  *(v1 + 24) = "sticky";
  *(v1 + 32) = 6;
  *(v1 + 40) = 2;
  *(v1 + 48) = "creamy";
  *(v1 + 56) = 6;
  *(v1 + 64) = 2;
  *(v1 + 72) = "watery";
  *(v1 + 80) = 6;
  *(v1 + 88) = 2;
  *(v1 + 96) = "egg_white";
  *(v1 + 104) = 9;
  *(v1 + 112) = 2;
  *(v1 + 120) = "light";
  *(v1 + 128) = 5;
  *(v1 + 136) = 2;
  *(v1 + 144) = "medium";
  *(v1 + 152) = 6;
  *(v1 + 160) = 2;
  *(v1 + 168) = "heavy";
  *(v1 + 176) = 5;
  *(v1 + 184) = 2;
  *(v1 + 192) = "negative";
  *(v1 + 200) = 8;
  *(v1 + 208) = 2;
  *(v1 + 216) = "positive";
  *(v1 + 224) = 8;
  *(v1 + 232) = 2;
  *(v1 + 240) = "indeterminate";
  *(v1 + 248) = 13;
  *(v1 + 256) = 2;
  *(v1 + 264) = "protected";
  *(v1 + 272) = 9;
  *(v1 + 280) = 2;
  *(v1 + 288) = "not_protected";
  *(v1 + 296) = 13;
  *(v1 + 304) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriWellnessIntents_WellnessValue_dry;
LABEL_28:

      return v5;
    case 1:
      v5.value = SiriWellnessIntents_WellnessValue_sticky;
      goto LABEL_28;
    case 2:
      v5.value = SiriWellnessIntents_WellnessValue_creamy;
      goto LABEL_28;
    case 3:
      v5.value = SiriWellnessIntents_WellnessValue_watery;
      goto LABEL_28;
    case 4:
      v5.value = SiriWellnessIntents_WellnessValue_egg_white;
      goto LABEL_28;
    case 5:
      v5.value = SiriWellnessIntents_WellnessValue_light;
      goto LABEL_28;
    case 6:
      v5.value = SiriWellnessIntents_WellnessValue_medium;
      goto LABEL_28;
    case 7:
      v5.value = SiriWellnessIntents_WellnessValue_heavy;
      goto LABEL_28;
    case 8:
      v5.value = SiriWellnessIntents_WellnessValue_negative;
      goto LABEL_28;
    case 9:
      v5.value = SiriWellnessIntents_WellnessValue_positive;
      goto LABEL_28;
    case 10:
      v5.value = SiriWellnessIntents_WellnessValue_indeterminate;
      goto LABEL_28;
    case 11:
      v5.value = SiriWellnessIntents_WellnessValue_protected;
      goto LABEL_28;
    case 12:
      v5.value = SiriWellnessIntents_WellnessValue_not_protected;
      goto LABEL_28;
  }

  return 13;
}

uint64_t WellnessValue.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sticky", 6uLL, 1)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("creamy", 6uLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("watery", 6uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("egg_white", 9uLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("light", 5uLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("medium", 6uLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("heavy", 5uLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("negative", 8uLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("positive", 8uLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("indeterminate", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("protected", 9uLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("not_protected", 0xDuLL, 1)._countAndFlagsBits;
      break;
    default:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dry", 3uLL, 1)._countAndFlagsBits;
      break;
  }

  return countAndFlagsBits;
}

unint64_t lazy protocol witness table accessor for type WellnessValue and conformance WellnessValue()
{
  v2 = lazy protocol witness table cache variable for type WellnessValue and conformance WellnessValue;
  if (!lazy protocol witness table cache variable for type WellnessValue and conformance WellnessValue)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessValue and conformance WellnessValue);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WellnessValue and conformance WellnessValue;
  if (!lazy protocol witness table cache variable for type WellnessValue and conformance WellnessValue)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessValue and conformance WellnessValue);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessValue_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WellnessValue@<W0>(Swift::String *a1@<X0>, SiriWellnessIntents::WellnessValue_optional *a2@<X8>)
{
  result.value = WellnessValue.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WellnessValue@<X0>(uint64_t *a1@<X8>)
{
  result = WellnessValue.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WellnessValue(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF3)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 12) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 243;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 13;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WellnessValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF3)
  {
    v5 = ((a3 + 12) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF3)
  {
    v4 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 12;
    }
  }

  return result;
}

uint64_t Statistics.init(queryDateRange:dataDateRange:sampleCount:unit:valueRange:latestValue:averageValue:totalValue:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = a9;
  v66 = a1;
  v64 = a2;
  v42 = a3;
  v43 = a4;
  v61 = a5;
  v38 = a6;
  v39 = a7;
  v57 = a8;
  v56 = a10;
  v55 = a11;
  v67 = a12;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v81 = a12;
  v53 = *(a12 - 8);
  v54 = a12 - 8;
  v32 = (v53[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2);
  v49 = &v32 - v32;
  v35 = 0;
  v65 = type metadata accessor for DateInterval();
  v62 = *(v65 - 8);
  v63 = v65 - 8;
  v33 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65, v12);
  v41 = &v32 - v33;
  v34 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35, v13);
  v40 = &v32 - v34;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = (*(*(TupleTypeMetadata2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35, v67);
  v46 = &v32 - v36;
  v37 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15, v16);
  v60 = &v32 - v37;
  v80 = &v32 - v37;
  v69 = type metadata accessor for Statistics(v17, v18, v19, v20);
  v21 = MEMORY[0x28223BE20](v60, v38);
  v70 = &v32 - v22;
  v79 = &v32 - v22;
  v78 = v66;
  v77 = v64;
  v76 = v42;
  v74 = v23;
  v75 = v24;
  v51 = v53[4];
  v50 = v53 + 4;
  v51(v21);
  (v51)(v60 + *(TupleTypeMetadata2 + 48), v39, v67);
  v73 = v57;
  v72 = v56;
  v71 = v55;
  (*(v62 + 56))(v70, 1, 1, v65);
  outlined init with copy of DateInterval?(v66, v40);
  outlined assign with take of DateInterval?(v40, v70);
  (*(v62 + 16))(v41, v64, v65);
  (*(v62 + 32))(&v70[v69[7]], v41, v65);
  *&v70[v69[8]] = v42;

  v25 = v60;
  v26 = v46;
  v27 = v61;
  v28 = v67;
  v29 = TupleTypeMetadata2;
  v30 = &v70[v69[9]];
  *v30 = v43;
  v30[1] = v27;
  outlined init with copy of (minimum: A, maximum: A)(v25, v26, v28, v29);
  v45 = *(TupleTypeMetadata2 + 48);
  v44 = &v70[v69[10]];
  (v51)();
  (v51)(&v44[*(TupleTypeMetadata2 + 48)], &v46[v45], v67);
  v48 = v53[2];
  v47 = v53 + 2;
  v48(v49, v57, v67);
  (v51)(&v70[v69[11]], v49, v67);
  v48(v49, v56, v67);
  (v51)(&v70[v69[12]], v49, v67);
  v48(v49, v55, v67);
  (v51)(&v70[v69[13]], v49, v67);
  outlined init with copy of Statistics<A>(v70, v52, v67, TupleTypeMetadata2, v69);
  v59 = v53[1];
  v58 = v53 + 1;
  v59(v55, v67);
  v59(v56, v67);
  v59(v57, v67);
  outlined destroy of (minimum: A, maximum: A)(v60, v67, TupleTypeMetadata2);

  (*(v62 + 8))(v64, v65);
  outlined destroy of DateInterval?(v66);
  return outlined destroy of Statistics<A>(v70, v67, TupleTypeMetadata2, v69);
}

void *outlined assign with take of DateInterval?(const void *a1, void *a2)
{
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t outlined init with copy of (minimum: A, maximum: A)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a3 - 8) + 16);
  v8();
  (v8)(a2 + *(a4 + 48), a1 + *(a4 + 48), a3);
  return a2;
}

char *outlined init with copy of Statistics<A>(char *a1, char *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v19 = type metadata accessor for DateInterval();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(a1, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v20 + 16))(a2, a1, v19);
    (*(v20 + 56))(a2, 0, 1, v19);
  }

  (*(v20 + 16))(&a2[a5[7]], &a1[a5[7]], v19);
  *&a2[a5[8]] = *&a1[a5[8]];
  v6 = a5[9];
  v9 = &a2[v6];
  *&a2[v6] = *&a1[v6];
  v10 = *&a1[v6 + 8];

  *(v9 + 1) = v10;
  v7 = a5[10];
  v11 = &a2[v7];
  v12 = &a1[v7];
  v13 = *(*(a3 - 8) + 16);
  v13();
  (v13)(&v11[*(a4 + 48)], &v12[*(a4 + 48)], a3);
  (v13)(&a2[a5[11]], &a1[a5[11]], a3);
  (v13)(&a2[a5[12]], &a1[a5[12]], a3);
  (v13)(&a2[a5[13]], &a1[a5[13]], a3);
  return a2;
}

uint64_t outlined destroy of (minimum: A, maximum: A)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 - 8) + 8);
  v6();
  (v6)(a1 + *(a3 + 48), a2);
  return a1;
}

uint64_t outlined destroy of Statistics<A>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v11 = type metadata accessor for DateInterval();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(a1, 1))
  {
    (*(v12 + 8))(a1, v11);
  }

  (*(v12 + 8))(a1 + a4[7], v11);

  v5 = a1 + a4[10];
  v6 = *(*(a2 - 8) + 8);
  v6();
  (v6)(v5 + *(a3 + 48), a2);
  (v6)(a1 + a4[11], a2);
  (v6)(a1 + a4[12], a2);
  (v6)(a1 + a4[13], a2);
  return a1;
}

uint64_t Statistics.queryDateRange.setter(uint64_t a1)
{
  v6 = a1;
  v4[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v1);
  v5 = v4 - v4[0];
  outlined init with copy of DateInterval?(v2, v4 - v4[0]);
  outlined assign with take of DateInterval?(v5, v4[1]);
  return outlined destroy of DateInterval?(v6);
}

uint64_t Statistics.dataDateRange.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 28);
  v3 = type metadata accessor for DateInterval();
  return (*(*(v3 - 8) + 16))(a2, v2 + v5);
}

uint64_t Statistics.dataDateRange.setter(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v7 = a2;
  v11 = type metadata accessor for DateInterval();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v11, v12);
  v8 = &v5 - v6;
  (*(v9 + 16))(v3);
  (*(v9 + 40))(v2 + *(v7 + 28), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t Statistics.unit.getter(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 36));

  return v3;
}

uint64_t Statistics.unit.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = (v3 + *(a3 + 36));
  *v4 = a1;
  v4[1] = a2;
}

uint64_t Statistics.valueRange.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v19 = a2;
  v10 = a3;
  v16 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = (*(*(TupleTypeMetadata2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](TupleTypeMetadata2, v4);
  v15 = &v10 - v11;
  outlined init with copy of (minimum: A, maximum: A)(v3 + *(v5 + 40), &v10 - v11, v6, v7);
  v14 = *(TupleTypeMetadata2 + 48);
  v8 = *(v16 - 8);
  v18 = *(v8 + 32);
  v17 = v8 + 32;
  v18(v13, v15);
  return (v18)(v19, &v15[v14], v16);
}

uint64_t Statistics.valueRange.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v15 = a2;
  v18 = a3;
  v26 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = (*(*(TupleTypeMetadata2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](TupleTypeMetadata2, v12);
  v23 = &v11 - v13;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v28 = &v11 - v14;
  v19 = *(v8 - 8);
  v20 = v8 - 8;
  v17 = *(v19 + 32);
  v16 = v19 + 32;
  v17(v7);
  (v17)(v28 + *(TupleTypeMetadata2 + 48), v15, v26);
  outlined init with copy of (minimum: A, maximum: A)(v28, v23, v26, TupleTypeMetadata2);
  v22 = *(TupleTypeMetadata2 + 48);
  v9 = *(v18 + 40);
  v25 = *(v19 + 40);
  v24 = v19 + 40;
  v21 = v3 + v9;
  v25();
  (v25)(v21 + *(TupleTypeMetadata2 + 48), v23 + v22, v26);
  return outlined destroy of (minimum: A, maximum: A)(v28, v26, TupleTypeMetadata2);
}

uint64_t Statistics.latestValue.setter(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v7 = a2;
  v11 = *(a2 + 16);
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](a1, a1);
  v8 = &v5 - v6;
  (*(v9 + 16))(v3);
  (*(v9 + 40))(v2 + *(v7 + 44), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t Statistics.averageValue.setter(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v7 = a2;
  v11 = *(a2 + 16);
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](a1, a1);
  v8 = &v5 - v6;
  (*(v9 + 16))(v3);
  (*(v9 + 40))(v2 + *(v7 + 48), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t Statistics.totalValue.setter(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v7 = a2;
  v11 = *(a2 + 16);
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](a1, a1);
  v8 = &v5 - v6;
  (*(v9 + 16))(v3);
  (*(v9 + 40))(v2 + *(v7 + 52), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

unint64_t type metadata completion function for Statistics(uint64_t a1)
{
  TupleTypeMetadata2 = type metadata accessor for DateInterval?(319);
  if (v1 <= 0x3F)
  {
    TupleTypeMetadata2 = type metadata accessor for DateInterval();
    if (v2 <= 0x3F)
    {
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      if (v3 <= 0x3F)
      {
        TupleTypeMetadata2 = swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_269A52D88(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  if (a2 == *(*(v12 - 8) + 84))
  {
    return (*(*(v12 - 8) + 48))(a1, a2, v12);
  }

  else
  {
    v7 = type metadata accessor for DateInterval();
    if (a2 == *(*(v7 - 8) + 84))
    {
      return (*(*(v7 - 8) + 48))(a1 + *(a3 + 28), a2, v7);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v6 = -1;
      if (*(a1 + *(a3 + 36) + 8) < 0x100000000uLL)
      {
        v6 = *(a1 + *(a3 + 36) + 8);
      }

      return (v6 + 1);
    }

    else
    {
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      if (a2 == *(*(TupleTypeMetadata2 - 8) + 84))
      {
        return (*(*(TupleTypeMetadata2 - 8) + 48))(a1 + *(a3 + 40), a2, TupleTypeMetadata2);
      }

      else
      {
        v4 = *(a3 + 16);
        if (a2 == *(*(v4 - 8) + 84))
        {
          return (*(*(v4 - 8) + 48))(a1 + *(a3 + 44), a2, v4);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return v8;
}

uint64_t sub_269A530C4(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  if (a3 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 56))(a1, a2, a2, v10);
  }

  result = type metadata accessor for DateInterval();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 28), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36) + 8) = a2 - 1;
  }

  else
  {
    result = swift_getTupleTypeMetadata2();
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(a1 + *(a4 + 40), a2, a2, result);
    }

    else
    {
      v5 = *(a4 + 16);
      if (a3 == *(*(v5 - 8) + 84))
      {
        return (*(*(v5 - 8) + 56))(a1 + *(a4 + 44), a2, a2, v5);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t type metadata accessor for DateInterval?(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for DateInterval?;
  if (!lazy cache variable for type metadata for DateInterval?)
  {
    type metadata accessor for DateInterval();
    v4 = type metadata accessor for Optional();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for DateInterval?);
      return v2;
    }
  }

  return v5;
}

BOOL static InferedMeasurement.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t lazy protocol witness table accessor for type InferedMeasurement and conformance InferedMeasurement()
{
  v2 = lazy protocol witness table cache variable for type InferedMeasurement and conformance InferedMeasurement;
  if (!lazy protocol witness table cache variable for type InferedMeasurement and conformance InferedMeasurement)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type InferedMeasurement and conformance InferedMeasurement);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type InferedMeasurement and conformance InferedMeasurement;
  if (!lazy protocol witness table cache variable for type InferedMeasurement and conformance InferedMeasurement)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type InferedMeasurement and conformance InferedMeasurement);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::InferedMeasurement __swiftcall getMeasurementType(for:)(Swift::String_optional a1)
{

  if (!a1.value._object)
  {
    return 3;
  }

  type metadata accessor for HKUnit();

  v7 = @nonobjc HKUnit.__allocating_init(from:)(a1.value._countAndFlagsBits, a1.value._object);
  v8 = [objc_opt_self() meterUnit];
  v9 = [v7 _isCompatibleWithUnit_];
  MEMORY[0x277D82BD8](v8);
  if (v9)
  {
    MEMORY[0x277D82BD8](v7);

    return 1;
  }

  else
  {
    v4 = [objc_opt_self() gramUnit];
    v5 = [v7 _isCompatibleWithUnit_];
    MEMORY[0x277D82BD8](v4);
    if (v5)
    {
      MEMORY[0x277D82BD8](v7);

      return 0;
    }

    else
    {
      v2 = [objc_opt_self() smallCalorieUnit];
      v3 = [v7 _isCompatibleWithUnit_];
      MEMORY[0x277D82BD8](v2);
      MEMORY[0x277D82BD8](v7);

      if (v3)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for InferedMeasurement(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InferedMeasurement(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t UnavailableDataProvider.init(failure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v8 = a3;

  v6 = a1;
  v7 = a2;

  outlined destroy of UnavailableDataProvider<A>(&v6);
  return a1;
}

uint64_t UnavailableDataProvider.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a5;
  v5[8] = a4;
  v5[7] = a1;
  v5[4] = v5;
  v5[5] = 0;
  v5[6] = 0;
  v5[2] = 0;
  v5[3] = 0;
  v5[5] = a2;
  v5[6] = a3;
  v5[2] = a4;
  v5[3] = a5;
  return MEMORY[0x2822009F8](UnavailableDataProvider.query(start:end:), 0);
}

uint64_t UnavailableDataProvider.query(start:end:)()
{
  v4 = *(v0 + 64);
  *(v0 + 32) = v0;

  v4(v1);

  v2 = *(*(v0 + 32) + 8);

  return v2();
}

uint64_t protocol witness for DataProviding.isQueryAuthorized() in conformance UnavailableDataProvider<A>()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return UnavailableDataProvider.isQueryAuthorized()();
}

uint64_t protocol witness for DataProviding.isLoggingAuthorized() in conformance UnavailableDataProvider<A>()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return UnavailableDataProvider.isLoggingAuthorized()();
}

uint64_t protocol witness for AmbiguousDistanceProviding.query(start:end:) in conformance <A> UnavailableDataProvider<A>(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v9 = v2[1];
  v4 = swift_task_alloc();
  *(v6 + 32) = v4;
  type metadata accessor for GetAmbiguousDistanceIntentResponse();
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for AmbiguousDistanceProviding.query(start:end:) in conformance <A> UnavailableDataProvider<A>;

  return UnavailableDataProvider.query(start:end:)(v6 + 24, a1, a2, v8, v9);
}

uint64_t protocol witness for AmbiguousDistanceProviding.query(start:end:) in conformance <A> UnavailableDataProvider<A>()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 16) = *v0;

  v1 = *(v4 + 24);
  v2 = *(*(v5 + 16) + 8);

  return v2(v1);
}

uint64_t protocol witness for BloodPressureProviding.query(start:end:) in conformance <A> UnavailableDataProvider<A>(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v9 = v2[1];
  v4 = swift_task_alloc();
  *(v6 + 32) = v4;
  type metadata accessor for GetBloodPressureIntentResponse();
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for AmbiguousDistanceProviding.query(start:end:) in conformance <A> UnavailableDataProvider<A>;

  return UnavailableDataProvider.query(start:end:)(v6 + 24, a1, a2, v8, v9);
}

uint64_t type metadata instantiation function for UnavailableDataProvider()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t CardioFitnessLevel.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CardioFitnessLevel@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = CardioFitnessLevel.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

id static CardioFitnessLevelResolutionResult.success(with:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  CardioFitnessLevel.rawValue.getter();
  v1 = [ObjCClassFromMetadata successWithResolvedValue_];

  return v1;
}

id static CardioFitnessLevelResolutionResult.confirmationRequired(with:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  CardioFitnessLevel.rawValue.getter();
  v1 = [ObjCClassFromMetadata confirmationRequiredWithValueToConfirm_];

  return v1;
}

id CardioFitnessLevelResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7 = [v4 initWithJSONDictionary_forIntent_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](isa);

  return v7;
}

id CardioFitnessLevelResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v9 = a1;
  v8 = a2;

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = 0;
  v7.super_class = type metadata accessor for CardioFitnessLevelResolutionResult();
  v6 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);
  MEMORY[0x277D82BD8](isa);
  if (v6)
  {
    MEMORY[0x277D82BE0](v6);
    v10 = v6;
    MEMORY[0x277D82BD8](a2);

    MEMORY[0x277D82BD8](v10);
    return v6;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a2);

    return 0;
  }
}

id CardioFitnessLevelResolutionResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardioFitnessLevelResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type CardioFitnessLevel and conformance CardioFitnessLevel()
{
  v2 = lazy protocol witness table cache variable for type CardioFitnessLevel and conformance CardioFitnessLevel;
  if (!lazy protocol witness table cache variable for type CardioFitnessLevel and conformance CardioFitnessLevel)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CardioFitnessLevel and conformance CardioFitnessLevel);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CardioFitnessLevel and conformance CardioFitnessLevel;
  if (!lazy protocol witness table cache variable for type CardioFitnessLevel and conformance CardioFitnessLevel)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CardioFitnessLevel and conformance CardioFitnessLevel);
    return WitnessTable;
  }

  return v2;
}

void *GetCardioFitnessIntentHandler.init(store:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v11 = v1;
  outlined init with copy of QuantityPersisting?(a1, v8);
  if (v9)
  {
    outlined init with take of QuantityPersisting(v8, __dst);
  }

  else
  {
    v2.store.super.isa = CycleTrackingFetcher.init()().store.super.isa;
    __dst[3] = &type metadata for CardioFitnessFetcher;
    __dst[4] = &protocol witness table for CardioFitnessFetcher;
    __dst[0] = v2.store.super.isa;
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents29GetCardioFitnessIntentHandler_store]);
  v7.receiver = v11;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x277D82BE0](v4);
  v11 = v4;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v4;
}

uint64_t GetCardioFitnessIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[23] = v1;
  v2[22] = a1;
  v2[15] = v2;
  v2[16] = 0;
  v2[17] = 0;
  v3 = type metadata accessor for Logger();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[16] = a1;
  v2[17] = v1;

  return MEMORY[0x2822009F8](GetCardioFitnessIntentHandler.handle(intent:), 0);
}

{
  v3 = *v1;
  *(v3 + 120) = *v1;
  *(v3 + 288) = a1;

  return MEMORY[0x2822009F8](GetCardioFitnessIntentHandler.handle(intent:), 0);
}

uint64_t GetCardioFitnessIntentHandler.handle(intent:)()
{
  v1 = v0[23];
  v0[15] = v0;
  outlined init with copy of QuantityPersisting(v1 + OBJC_IVAR____TtC19SiriWellnessIntents29GetCardioFitnessIntentHandler_store, (v0 + 2));
  v7 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v6 = (*(v5 + 8) + **(v5 + 8));
  v2 = swift_task_alloc();
  *(v4 + 272) = v2;
  *v2 = *(v4 + 120);
  v2[1] = GetCardioFitnessIntentHandler.handle(intent:);

  return v6(v7, v5);
}

{
  v45 = *(v0 + 296);
  *(v0 + 120) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v45 & 1) == 0)
  {
    type metadata accessor for GetCardioFitnessIntentResponse();
    v43 = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(101, 0);
LABEL_19:

    v8 = *(*(v44 + 120) + 8);

    return v8(v43);
  }

  v42 = [*(v44 + 176) startDate];
  if (v42)
  {
    v39 = *(v44 + 256);
    v40 = *(v44 + 232);
    v41 = *(v44 + 224);
    v38 = *(v44 + 240);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v38 + 32))(v41, v39, v40);
    (*(v38 + 56))(v41, 0, 1, v40);
    MEMORY[0x277D82BD8](v42);
  }

  else
  {
    (*(*(v44 + 240) + 56))(*(v44 + 224), 1, 1, *(v44 + 232));
  }

  v1 = (*(v44 + 240) + 48);
  v37 = *v1;
  if ((*v1)(*(v44 + 224), 1, *(v44 + 232)) == 1)
  {
    outlined destroy of Date?(*(v44 + 224));
LABEL_16:
    v7 = *(v44 + 208);
    v19 = *(v44 + 192);
    v17 = *(v44 + 200);
    v18 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v17 + 16))(v7, v18, v19);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v22 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v20))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v14 = createStorage<A>(capacity:type:)(0, v12, v12);
      v15 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v44 + 144) = buf;
      *(v44 + 152) = v14;
      *(v44 + 160) = v15;
      serialize(_:at:)(0, (v44 + 144));
      serialize(_:at:)(0, (v44 + 144));
      *(v44 + 168) = v22;
      v16 = swift_task_alloc();
      v16[2] = v44 + 144;
      v16[3] = v44 + 152;
      v16[4] = v44 + 160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v20, "Must provide start and end dates for GetCardioFitnessIntent", buf, 2u);
      destroyStorage<A>(_:count:)(v14, 0, v12);
      destroyStorage<A>(_:count:)(v15, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v10 = *(v44 + 208);
    v11 = *(v44 + 192);
    v9 = *(v44 + 200);
    MEMORY[0x277D82BD8](oslog);
    (*(v9 + 8))(v10, v11);
    type metadata accessor for GetCardioFitnessIntentResponse();
    v43 = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    goto LABEL_19;
  }

  v35 = *(v44 + 176);
  v2 = (*(v44 + 240) + 32);
  v34 = *v2;
  (*v2)(*(v44 + 264), *(v44 + 224), *(v44 + 232));
  v36 = [v35 endDate];
  if (v36)
  {
    v30 = *(v44 + 256);
    v32 = *(v44 + 232);
    v33 = *(v44 + 216);
    v31 = *(v44 + 240);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v34(v33, v30, v32);
    (*(v31 + 56))(v33, 0, 1, v32);
    MEMORY[0x277D82BD8](v36);
  }

  else
  {
    (*(*(v44 + 240) + 56))(*(v44 + 216), 1, 1, *(v44 + 232));
  }

  if (v37(*(v44 + 216), 1, *(v44 + 232)) == 1)
  {
    v29 = *(v44 + 264);
    v28 = *(v44 + 232);
    v27 = *(v44 + 240);
    outlined destroy of Date?(*(v44 + 216));
    (*(v27 + 8))(v29, v28);
    goto LABEL_16;
  }

  v23 = *(v44 + 184);
  v34(*(v44 + 248), *(v44 + 216), *(v44 + 232));
  outlined init with copy of QuantityPersisting(v23 + OBJC_IVAR____TtC19SiriWellnessIntents29GetCardioFitnessIntentHandler_store, v44 + 56);
  v24 = *(v44 + 80);
  v25 = *(v44 + 88);
  __swift_project_boxed_opaque_existential_1((v44 + 56), v24);
  v26 = (*(v25 + 16) + **(v25 + 16));
  v3 = swift_task_alloc();
  *(v44 + 280) = v3;
  *v3 = *(v44 + 120);
  v3[1] = GetCardioFitnessIntentHandler.handle(intent:);
  v4 = *(v44 + 264);
  v5 = *(v44 + 248);

  return v26(v4, v5, v24, v25);
}

{
  v5 = v0[33];
  v4 = v0[31];
  v3 = v0[30];
  v6 = v0[29];
  v0[15] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v7 = *(v3 + 8);
  v7(v4, v6);
  v7(v5, v6);
  v8 = v0[36];

  v1 = *(v0[15] + 8);

  return v1(v8);
}

uint64_t GetCardioFitnessIntentHandler.handle(intent:)(char a1)
{
  v3 = *v1;
  *(v3 + 120) = *v1;
  *(v3 + 296) = a1;

  return MEMORY[0x2822009F8](GetCardioFitnessIntentHandler.handle(intent:), 0);
}

uint64_t @objc closure #1 in GetCardioFitnessIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return GetCardioFitnessIntentHandler.handle(intent:)(a1);
}

id GetCardioFitnessIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CardioFitnessFetcher.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a3;
  v3[16] = a2;
  v3[15] = a1;
  v3[5] = v3;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[13] = 0;
  v4 = type metadata accessor for Logger();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = a3;

  return MEMORY[0x2822009F8](CardioFitnessFetcher.query(start:end:), 0);
}

uint64_t CardioFitnessFetcher.query(start:end:)()
{
  *(v0 + 40) = v0;
  v27 = objc_opt_self();
  v28 = *MEMORY[0x277CCCC98];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCC98]);
  v29 = [v27 quantityTypeForIdentifier_];
  *(v0 + 168) = v29;
  MEMORY[0x277D82BD8](v28);
  if (v29)
  {
    v22 = *(v26 + 136);
    v24 = *(v26 + 128);
    v23 = *(v26 + 120);
    *(v26 + 104) = v29;
    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("query(start:end:)", 0x11uLL, 1);
    *(v26 + 176) = v1._object;
    MEMORY[0x277D82BE0](v22);
    MEMORY[0x277D82BE0](v29);
    v25 = swift_task_alloc();
    *(v26 + 184) = v25;
    v25[2] = v22;
    v25[3] = v23;
    v25[4] = v24;
    v25[5] = v29;
    v2 = swift_task_alloc();
    *(v26 + 192) = v2;
    CardioFitnessIntentResponse = type metadata accessor for GetCardioFitnessIntentResponse();
    *v2 = *(v26 + 40);
    v2[1] = CardioFitnessFetcher.query(start:end:);

    return MEMORY[0x2822007B8](v26 + 112, 0, 0, v1._countAndFlagsBits, v1._object, partial apply for closure #1 in CardioFitnessFetcher.query(start:end:), v25, CardioFitnessIntentResponse);
  }

  else
  {
    v4 = *(v26 + 160);
    v18 = *(v26 + 144);
    v16 = *(v26 + 152);
    v17 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v16 + 16))(v4, v17, v18);
    swift_endAccess();
    v20 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v21 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v20, v19))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v13 = createStorage<A>(capacity:type:)(0, v11, v11);
      v14 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v26 + 72) = buf;
      *(v26 + 80) = v13;
      *(v26 + 88) = v14;
      serialize(_:at:)(0, (v26 + 72));
      serialize(_:at:)(0, (v26 + 72));
      *(v26 + 96) = v21;
      v15 = swift_task_alloc();
      v15[2] = v26 + 72;
      v15[3] = v26 + 80;
      v15[4] = v26 + 88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v20, v19, "Couldn't create HKQuantityType for vo2max.", buf, 2u);
      destroyStorage<A>(_:count:)(v13, 0, v11);
      destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v8 = *(v26 + 160);
    v9 = *(v26 + 144);
    v7 = *(v26 + 152);
    MEMORY[0x277D82BD8](v20);
    (*(v7 + 8))(v8, v9);
    type metadata accessor for GetCardioFitnessIntentResponse();
    v10 = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    v5 = *(*(v26 + 40) + 8);

    return v5(v10);
  }
}

{
  v3 = *(*v0 + 168);
  v2 = *(*v0 + 136);
  *(*v0 + 40) = *v0;

  return MEMORY[0x2822009F8](CardioFitnessFetcher.query(start:end:), 0);
}

{
  v1 = v0[21];
  v0[5] = v0;
  v4 = v0[14];
  MEMORY[0x277D82BD8](v1);

  v2 = *(v0[5] + 8);

  return v2(v4);
}

uint64_t closure #1 in CardioFitnessFetcher.query(start:end:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v98 = a2;
  v73 = a3;
  v52 = a4;
  v95 = a5;
  v93 = partial apply for closure #1 in closure #1 in CardioFitnessFetcher.query(start:end:);
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v105 = 0;
  v68 = 0;
  v89 = type metadata accessor for Date();
  v85 = *(v89 - 8);
  v86 = v89 - 8;
  v78 = v85;
  v79 = *(v85 + 64);
  v42 = (v79 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v89, v6);
  v88 = &v41 - v42;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR);
  v80 = *(v84 - 8);
  v81 = v84 - 8;
  v76 = v80;
  v77 = *(v80 + 64);
  v43 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v84, v7);
  v83 = &v41 - v43;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v44 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9);
  v64 = &v41 - v44;
  v45 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68, v10);
  v63 = &v41 - v45;
  v103 = type metadata accessor for DateComponents();
  v100 = *(v103 - 8);
  v101 = v103 - 8;
  v46 = (*(v100 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v103, v11);
  v102 = &v41 - v46;
  v113 = &v41 - v46;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v47 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v13);
  v55 = &v41 - v47;
  v48 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v41 - v47, v15);
  v56 = &v41 - v48;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v50 = *(*(v67 - 8) + 64);
  v49 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67, v16);
  v97 = &v41 - v49;
  v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, v18);
  v104 = &v41 - v51;
  v112 = &v41 - v51;
  v111 = v19;
  v110 = a2;
  v109 = v20;
  v108 = v21;
  v107 = v22;
  v57 = v23[12];
  v60 = v23[16];
  v61 = v23[20];
  MEMORY[0x277D82BE0](a2);
  v75 = *(v85 + 16);
  v74 = v85 + 16;
  v75(v56, v73, v89);
  v54 = *(v85 + 56);
  v53 = v85 + 56;
  v66 = 0;
  v65 = 1;
  v54(v56);
  v75(v55, v52, v89);
  (v54)(v55, v66, v65, v89);
  v58 = HKHealthStore.queryParameters(start:end:)(v104, v56, v55);
  v59 = v24;
  v62 = v25;
  outlined destroy of Date?(v55);
  outlined destroy of Date?(v56);
  MEMORY[0x277D82BD8](v98);
  v26 = v59;
  v27 = v60;
  v28 = v61;
  v29 = v62;
  v30 = v104;
  *&v104[v57] = v58;
  *&v30[v27] = v26;
  *&v30[v28] = v29;
  v31 = type metadata accessor for Calendar();
  (*(*(v31 - 8) + 56))(v63, v65);
  v32 = type metadata accessor for TimeZone();
  (*(*(v32 - 8) + 56))(v64, v65);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v69 = 1;
  DateComponents.day.setter();
  v71 = type metadata accessor for HKStatisticsQuery();
  MEMORY[0x277D82BE0](v95);
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v104, v97);
  v91 = *&v97[*(v67 + 48)];
  v96 = *&v97[*(v67 + 64)];
  type metadata accessor for HKStatisticsOptions(v68);
  _allocateUninitializedArray<A>(_:)();
  *v33 = 2;
  _finalizeUninitializedArray<A>(_:)();
  v70 = v34;
  lazy protocol witness table accessor for type HKStatisticsOptions and conformance HKStatisticsOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v92 = v106;
  (*(v80 + 16))(v83, v72, v84);
  v75(v88, v73, v89);
  MEMORY[0x277D82BE0](v98);
  v82 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v87 = (v82 + v77 + *(v78 + 80)) & ~*(v78 + 80);
  v90 = (v87 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = swift_allocObject();
  (*(v80 + 32))(v94 + v82, v83, v84);
  (*(v85 + 32))(v94 + v87, v88, v89);
  v35 = v91;
  v36 = v92;
  v37 = v93;
  v38 = v94;
  v39 = v95;
  *(v94 + v90) = v98;
  v99 = HKStatisticsQuery.__allocating_init(quantityType:quantitySamplePredicate:options:completionHandler:)(v39, v35, v36, v37, v38);

  outlined destroy of DateInterval?(v97);
  v105 = v99;
  MEMORY[0x277D82BE0](v98);
  [v98 executeQuery_];
  MEMORY[0x277D82BD8](v98);
  MEMORY[0x277D82BD8](v99);
  (*(v100 + 8))(v102, v103);
  return outlined destroy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v104);
}

uint64_t closure #1 in closure #1 in CardioFitnessFetcher.query(start:end:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v225 = a6;
  v224 = a5;
  v223 = a4;
  v236 = a3;
  v226 = a2;
  v222 = a1;
  v217 = 0;
  v279 = 0;
  v278 = 0;
  v277 = 0;
  v276 = 0;
  v275 = 0;
  v274 = 0;
  v216 = 0;
  v268 = 0;
  v267 = 0;
  v266 = 0;
  v265 = 0;
  v264 = 0;
  v258 = 0.0;
  v252 = 0;
  v251 = 0;
  v250 = 0;
  v246 = 0;
  v218 = type metadata accessor for Date();
  v219 = *(v218 - 8);
  v220 = v219;
  MEMORY[0x28223BE20](0, v218);
  v221 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for Logger();
  v228 = *(v227 - 8);
  v229 = v228;
  v232 = *(v228 + 64);
  MEMORY[0x28223BE20](v236, v226);
  v234 = (v232 + 15) & 0xFFFFFFFFFFFFFFF0;
  v230 = &v59 - v234;
  MEMORY[0x28223BE20](v7, v8);
  v231 = &v59 - v234;
  MEMORY[0x28223BE20](v9, v10);
  v233 = &v59 - v234;
  MEMORY[0x28223BE20](v11, v12);
  v235 = &v59 - v234;
  v279 = v13;
  v278 = v14;
  v277 = v15;
  v276 = v16;
  v275 = v17;
  v274 = v18;
  v19 = v15;
  if (v236)
  {
    v215 = v236;
    v238 = v236;
    v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for related decl 'e' for HKErrorCode(0);
    if (swift_dynamicCast())
    {
      v212 = v237;
    }

    else
    {
      v212 = 0;
    }

    v214 = v212;
  }

  else
  {
    v214 = 0;
  }

  v211 = v214;
  if (v214)
  {
    v210 = v211;
    v207 = v211;
    v246 = v211;
    v245[4] = v211;
    v208 = type metadata accessor for related decl 'e' for HKErrorCode(0);
    lazy protocol witness table accessor for type related decl 'e' for HKErrorCode and conformance related decl 'e' for HKErrorCode();
    _BridgedStoredNSError.code.getter();
    if (v245[3] == 6)
    {
      v205 = 0;
      type metadata accessor for GetCardioFitnessIntentResponse();
      v239 = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(103, v205);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR);
      CheckedContinuation.resume(returning:)();

      return v216;
    }

    else
    {
      v22 = v235;
      v185 = Logger.wellnessIntents.unsafeMutableAddressor();
      v192 = 32;
      v186 = v245;
      swift_beginAccess();
      (*(v229 + 16))(v22, v185, v227);
      swift_endAccess();
      v23 = v207;
      v193 = 7;
      v194 = swift_allocObject();
      *(v194 + 16) = v207;
      v204 = Logger.logObject.getter();
      v187 = v204;
      v203 = static os_log_type_t.error.getter();
      v188 = v203;
      v189 = 17;
      v197 = swift_allocObject();
      v190 = v197;
      *(v197 + 16) = 64;
      v198 = swift_allocObject();
      v191 = v198;
      *(v198 + 16) = 8;
      v24 = swift_allocObject();
      v25 = v194;
      v195 = v24;
      *(v24 + 16) = partial apply for implicit closure #1 in closure #1 in closure #1 in CardioFitnessFetcher.query(start:end:);
      *(v24 + 24) = v25;
      v26 = swift_allocObject();
      v27 = v195;
      v201 = v26;
      v196 = v26;
      *(v26 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
      *(v26 + 24) = v27;
      v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v199 = _allocateUninitializedArray<A>(_:)();
      v200 = v28;

      v29 = v197;
      v30 = v200;
      *v200 = partial apply for closure #1 in OSLogArguments.append(_:);
      v30[1] = v29;

      v31 = v198;
      v32 = v200;
      v200[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v32[3] = v31;

      v33 = v200;
      v34 = v201;
      v200[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v33[5] = v34;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v204, v203))
      {
        v35 = v216;
        v178 = static UnsafeMutablePointer.allocate(capacity:)();
        v175 = v178;
        v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v181 = 1;
        v179 = createStorage<A>(capacity:type:)(1, v176, v176);
        v177 = v179;
        v180 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v244[0] = v178;
        v243 = v179;
        v242 = v180;
        v182 = v244;
        serialize(_:at:)(2, v244);
        serialize(_:at:)(v181, v182);
        v240 = partial apply for closure #1 in OSLogArguments.append(_:);
        v241 = v190;
        closure #1 in osLogInternal(_:log:type:)(&v240, v182, &v243, &v242);
        v183 = v35;
        v184 = v35;
        if (v35)
        {
          v173 = 0;

          __break(1u);
        }

        else
        {
          v240 = partial apply for closure #1 in OSLogArguments.append(_:);
          v241 = v191;
          closure #1 in osLogInternal(_:log:type:)(&v240, v244, &v243, &v242);
          v171 = 0;
          v172 = 0;
          v240 = partial apply for closure #1 in OSLogArguments.append(_:);
          v241 = v196;
          closure #1 in osLogInternal(_:log:type:)(&v240, v244, &v243, &v242);
          v169 = 0;
          v170 = 0;
          _os_log_impl(&dword_269912000, v187, v188, "Error while querying HealthKit for quantity samples: %@", v175, 0xCu);
          destroyStorage<A>(_:count:)(v177, 1, v176);
          destroyStorage<A>(_:count:)(v180, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v175, MEMORY[0x277D84B78]);

          v174 = v169;
        }
      }

      else
      {
        v36 = v216;

        v174 = v36;
      }

      v168 = v174;

      (*(v229 + 8))(v235, v227);
      v167 = 0;
      type metadata accessor for GetCardioFitnessIntentResponse();
      v244[1] = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(5, v167);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR);
      CheckedContinuation.resume(returning:)();

      return v168;
    }
  }

  else
  {
    v21 = v226;
    if (v226)
    {
      v209 = v226;
      v157 = v226;
      v268 = v226;
      v148 = 0x277CCD000uLL;
      v153 = [objc_opt_self() minuteUnit];
      v147 = v153;
      v267 = v153;
      v150 = [objc_opt_self() gramUnitWithMetricPrefix_];
      v149 = v150;
      v266 = v150;
      v151 = [objc_opt_self() literUnitWithMetricPrefix_];
      v265 = v151;
      v152 = 0x1FBD9E000uLL;
      v154 = [v151 0x1FBD9EE9CLL];
      v156 = [v154 (v152 + 3740)];
      v155 = v156;

      v264 = v156;
      v38 = [v157 averageQuantity];
      v158 = v38;
      if (v38)
      {
        v146 = v158;
        v142 = v158;
        [v158 doubleValueForUnit_];
        v143 = v39;

        v144 = v143;
        v145 = 0;
      }

      else
      {
        v144 = 0.0;
        v145 = 1;
      }

      v141 = v144;
      if (v145)
      {
        v40 = v231;
        v132 = Logger.wellnessIntents.unsafeMutableAddressor();
        v133 = &v263;
        v136 = 0;
        swift_beginAccess();
        (*(v229 + 16))(v40, v132, v227);
        swift_endAccess();
        v138 = Logger.logObject.getter();
        v134 = v138;
        v137 = static os_log_type_t.error.getter();
        v135 = v137;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v139 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v138, v137))
        {
          v52 = v216;
          v85 = static UnsafeMutablePointer.allocate(capacity:)();
          v81 = v85;
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v83 = 0;
          v86 = createStorage<A>(capacity:type:)(0, v82, v82);
          v84 = v86;
          v87 = createStorage<A>(capacity:type:)(v83, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v262[0] = v85;
          v261 = v86;
          v260 = v87;
          v88 = 0;
          v89 = v262;
          serialize(_:at:)(0, v262);
          serialize(_:at:)(v88, v89);
          v259 = v139;
          v90 = &v59;
          MEMORY[0x28223BE20](&v59, v53);
          v91 = &v59 - 6;
          *(&v59 - 4) = v54;
          *(&v59 - 3) = &v261;
          *(&v59 - 2) = &v260;
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v93 = v52;
          if (v52)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_269912000, v134, v135, "Unable to create an average value for vo2Max", v81, 2u);
            v79 = 0;
            destroyStorage<A>(_:count:)(v84, 0, v82);
            destroyStorage<A>(_:count:)(v87, v79, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D6497C0](v81, MEMORY[0x277D84B78]);

            v80 = v93;
          }
        }

        else
        {

          v80 = v216;
        }

        v78 = v80;

        (*(v229 + 8))(v231, v227);
        v77 = 0;
        type metadata accessor for GetCardioFitnessIntentResponse();
        v262[1] = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(5, v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR);
        CheckedContinuation.resume(returning:)();

        return v78;
      }

      else
      {
        v140 = v141;
        v41 = v221;
        v127 = v141;
        v258 = v141;
        v128 = objc_opt_self();
        (*(v220 + 16))(v41, v224, v218);
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v220 + 8))(v221, v218);
        v42 = v225;
        v131 = [v128 cardioFitnessPropertiesForDate:isa healthStore:v225];
        v129 = v131;

        if (v131)
        {
          v126 = v129;
          v112 = v129;
          v252 = v129;
          v114 = objc_opt_self();
          v113 = [v112 biologicalSex];
          v44 = [v112 age];
          v116 = [v114 cardioFitnessLevelForVO2Max:v113 biologicalSex:v44 age:v127];
          v251 = v116;
          v115 = 0;
          type metadata accessor for GetCardioFitnessIntentResponse();
          v117 = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(4, v115);
          v250 = v117;
          HKMedicationDoseEventStatus.rawValue.getter();
          v46 = CardioFitnessLevel.init(rawValue:)(v45);
          v248 = v46;
          v249 = v47 & 1;
          if (v47)
          {
            v111 = 0;
          }

          else
          {
            v111 = v248;
          }

          [v117 setCardioFitnessLevel_];
          v48 = v117;
          v247 = v117;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR);
          CheckedContinuation.resume(returning:)();

          return v216;
        }

        else
        {
          v43 = v230;
          v118 = Logger.wellnessIntents.unsafeMutableAddressor();
          v119 = &v257;
          v122 = 0;
          swift_beginAccess();
          (*(v229 + 16))(v43, v118, v227);
          swift_endAccess();
          v124 = Logger.logObject.getter();
          v120 = v124;
          v123 = static os_log_type_t.error.getter();
          v121 = v123;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v125 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v124, v123))
          {
            v49 = v216;
            v102 = static UnsafeMutablePointer.allocate(capacity:)();
            v98 = v102;
            v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v100 = 0;
            v103 = createStorage<A>(capacity:type:)(0, v99, v99);
            v101 = v103;
            v104 = createStorage<A>(capacity:type:)(v100, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            v256[0] = v102;
            v255 = v103;
            v254 = v104;
            v105 = 0;
            v106 = v256;
            serialize(_:at:)(0, v256);
            serialize(_:at:)(v105, v106);
            v253 = v125;
            v107 = &v59;
            MEMORY[0x28223BE20](&v59, v50);
            v108 = &v59 - 6;
            *(&v59 - 4) = v51;
            *(&v59 - 3) = &v255;
            *(&v59 - 2) = &v254;
            v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
            lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
            Sequence.forEach(_:)();
            v110 = v49;
            if (v49)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&dword_269912000, v120, v121, "Unable to find the fitness Level", v98, 2u);
              v96 = 0;
              destroyStorage<A>(_:count:)(v101, 0, v99);
              destroyStorage<A>(_:count:)(v104, v96, MEMORY[0x277D84F70] + 8);
              MEMORY[0x26D6497C0](v98, MEMORY[0x277D84B78]);

              v97 = v110;
            }
          }

          else
          {

            v97 = v216;
          }

          v95 = v97;

          (*(v229 + 8))(v230, v227);
          v94 = 0;
          type metadata accessor for GetCardioFitnessIntentResponse();
          v256[1] = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(5, v94);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR);
          CheckedContinuation.resume(returning:)();

          return v95;
        }
      }
    }

    else
    {
      v37 = v233;
      v159 = Logger.wellnessIntents.unsafeMutableAddressor();
      v160 = &v273;
      v163 = 0;
      swift_beginAccess();
      (*(v229 + 16))(v37, v159, v227);
      swift_endAccess();
      v165 = Logger.logObject.getter();
      v161 = v165;
      v164 = static os_log_type_t.error.getter();
      v162 = v164;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v166 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v165, v164))
      {
        v55 = v216;
        v68 = static UnsafeMutablePointer.allocate(capacity:)();
        v64 = v68;
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v66 = 0;
        v69 = createStorage<A>(capacity:type:)(0, v65, v65);
        v67 = v69;
        v70 = createStorage<A>(capacity:type:)(v66, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v272[0] = v68;
        v271 = v69;
        v270 = v70;
        v71 = 0;
        v72 = v272;
        serialize(_:at:)(0, v272);
        serialize(_:at:)(v71, v72);
        v269 = v166;
        v73 = &v59;
        MEMORY[0x28223BE20](&v59, v56);
        v74 = &v59 - 6;
        *(&v59 - 4) = v57;
        *(&v59 - 3) = &v271;
        *(&v59 - 2) = &v270;
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v76 = v55;
        if (v55)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_269912000, v161, v162, "Expecting to find statistics but didn't find them", v64, 2u);
          v62 = 0;
          destroyStorage<A>(_:count:)(v67, 0, v65);
          destroyStorage<A>(_:count:)(v70, v62, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v64, MEMORY[0x277D84B78]);

          v63 = v76;
        }
      }

      else
      {

        v63 = v216;
      }

      v61 = v63;

      (*(v229 + 8))(v233, v227);
      v60 = 0;
      type metadata accessor for GetCardioFitnessIntentResponse();
      v272[1] = GetCardioFitnessIntentResponse.__allocating_init(code:userActivity:)(5, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR);
      CheckedContinuation.resume(returning:)();
      return v61;
    }
  }
}

uint64_t implicit closure #1 in closure #1 in closure #1 in CardioFitnessFetcher.query(start:end:)(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a1);
  v3 = _convertErrorToNSError(_:)();

  MEMORY[0x277D82BD8](a1);
  return v3;
}

uint64_t CardioFitnessFetcher.preferredUnit()(uint64_t a1)
{
  v1[32] = a1;
  v1[24] = v1;
  v1[25] = 0;
  v1[26] = 0;
  v1[28] = 0;
  v1[29] = 0;
  v2 = type metadata accessor for Logger();
  v1[33] = v2;
  v1[34] = *(v2 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[25] = a1;

  return MEMORY[0x2822009F8](CardioFitnessFetcher.preferredUnit(), 0);
}

{
  v37 = v1;
  v23 = v1[46];
  v19 = v1[45];
  v22 = v1[38];
  v17 = v1[35];
  v21 = v1[33];
  v18 = v1[32];
  v1[24] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  v2 = v23;
  v1[28] = v23;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v22(v17, v20, v21);
  swift_endAccess();
  v3 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v28 + 24) = v25;
  _allocateUninitializedArray<A>(_:)();
  v29 = v4;

  *v29 = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[1] = v26;

  v29[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[3] = v27;

  v29[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[5] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v30, v31))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(0, v12, v12);
    v15 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v32 = buf;
    v33 = v14;
    v34 = v15;
    serialize(_:at:)(2, &v32);
    serialize(_:at:)(1, &v32);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_269912000, v30, v31, "Error fetching preferred units: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v14, 0, v12);
    destroyStorage<A>(_:count:)(v15, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v16[46];
  v9 = v16[41];
  v7 = v16[35];
  v8 = v16[33];
  v11 = v16[37];
  MEMORY[0x277D82BD8](v30);
  v9(v7, v8);

  MEMORY[0x277D82BD8](v11);

  v5 = *(v16[24] + 8);

  return v5(0);
}

uint64_t CardioFitnessFetcher.preferredUnit()()
{
  v39 = v0;
  *(v0 + 192) = v0;
  v31 = objc_opt_self();
  v32 = *MEMORY[0x277CCCC98];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCCC98]);
  v33 = [v31 quantityTypeForIdentifier_];
  *(v0 + 296) = v33;
  MEMORY[0x277D82BD8](v32);
  if (v33)
  {
    v1 = *(v30 + 288);
    v21 = *(v30 + 264);
    v19 = *(v30 + 272);
    *(v30 + 208) = v33;
    v20 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v2 = *(v19 + 16);
    *(v30 + 304) = v2;
    *(v30 + 312) = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v2(v1, v20, v21);
    swift_endAccess();
    MEMORY[0x277D82BE0](v33);
    v22 = swift_allocObject();
    *(v22 + 16) = v33;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    v24 = swift_allocObject();
    *(v24 + 16) = 64;
    v25 = swift_allocObject();
    *(v25 + 16) = 8;
    v23 = swift_allocObject();
    *(v23 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v23 + 24) = v22;
    v26 = swift_allocObject();
    *(v26 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v26 + 24) = v23;
    *(v30 + 320) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v27 = v3;

    *v27 = partial apply for closure #1 in OSLogArguments.append(_:);
    v27[1] = v24;

    v27[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v27[3] = v25;

    v27[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v27[5] = v26;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v28, v29))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v17 = createStorage<A>(capacity:type:)(1, v15, v15);
      v18 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v34 = buf;
      v35 = v17;
      v36 = v18;
      serialize(_:at:)(2, &v34);
      serialize(_:at:)(1, &v34);
      v37 = partial apply for closure #1 in OSLogArguments.append(_:);
      v38 = v24;
      closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
      v37 = partial apply for closure #1 in OSLogArguments.append(_:);
      v38 = v25;
      closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
      v37 = partial apply for closure #1 in OSLogArguments.append(_:);
      v38 = v26;
      closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
      _os_log_impl(&dword_269912000, v28, v29, "Looking for preferred units for %@", buf, 0xCu);
      destroyStorage<A>(_:count:)(v17, 1, v15);
      destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v9 = *(v30 + 288);
    v10 = *(v30 + 264);
    v14 = *(v30 + 256);
    v8 = *(v30 + 272);
    MEMORY[0x277D82BD8](v28);
    v4 = *(v8 + 8);
    *(v30 + 328) = v4;
    *(v30 + 336) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v4(v9, v10);
    MEMORY[0x277D82BE0](v14);
    *(v30 + 344) = type metadata accessor for HKQuantityType();
    _allocateUninitializedArray<A>(_:)();
    v11 = v5;
    MEMORY[0x277D82BE0](v33);
    *v11 = v33;
    _finalizeUninitializedArray<A>(_:)();
    *(v30 + 352) = lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
    Set.init(arrayLiteral:)();
    isa = Set._bridgeToObjectiveC()().super.isa;
    *(v30 + 360) = isa;

    *(v30 + 16) = *(v30 + 192);
    *(v30 + 56) = v30 + 216;
    *(v30 + 24) = CardioFitnessFetcher.preferredUnit();
    v12 = swift_continuation_init();
    *(v30 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMd, &_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMR);
    *(v30 + 112) = v12;
    *(v30 + 80) = MEMORY[0x277D85DD0];
    *(v30 + 88) = 1107296256;
    *(v30 + 92) = 0;
    *(v30 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [HKQuantityType : HKUnit];
    *(v30 + 104) = &block_descriptor_13;
    [v14 preferredUnitsForQuantityTypes:isa completion:?];

    return MEMORY[0x282200938](v30 + 16);
  }

  else
  {

    v6 = *(*(v30 + 192) + 8);

    return v6(0);
  }
}

{
  v4 = *v0;
  v4[24] = *v0;
  v1 = v4[6];
  v4[46] = v1;
  if (v1)
  {
    v2 = CardioFitnessFetcher.preferredUnit();
  }

  else
  {
    v2 = CardioFitnessFetcher.preferredUnit();
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v5 = v0[45];
  v7 = v0[44];
  v6 = v0[43];
  v9 = v0[37];
  v1 = v0[32];
  v0[24] = v0;
  v8 = v0[27];
  v0[29] = v8;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BE0](v9);
  v0[31] = v9;
  v2 = type metadata accessor for HKUnit();
  MEMORY[0x26D649240](v0 + 31, v8, v6, v2, v7);
  MEMORY[0x277D82BD8](v0[31]);
  v10 = v0[30];

  MEMORY[0x277D82BD8](v9);

  v3 = *(v0[24] + 8);

  return v3(v10);
}

uint64_t protocol witness for CardioFitnessFetching.isReadingAuthorized() in conformance CardioFitnessFetcher()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *v0;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return CycleTrackingFetcher.isReadingAuthorized()(v5);
}

uint64_t protocol witness for CardioFitnessFetching.query(start:end:) in conformance CardioFitnessFetcher(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return CardioFitnessFetcher.query(start:end:)(a1, a2, v8);
}

id @nonobjc HKStatisticsQuery.init(quantityType:quantitySamplePredicate:options:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a4;
  v18 = a5;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = 0;
  v15 = thunk for @escaping @callee_guaranteed (@guaranteed HKMCAnalysisQuery, @guaranteed HKMCAnalysis?, @guaranteed Error?) -> ();
  v16 = &block_descriptor_50;
  v8 = _Block_copy(&aBlock);
  v11 = [v7 initWithQuantityType:a1 quantitySamplePredicate:a2 options:a3 completionHandler:?];
  _Block_release(v8);

  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v11;
}

uint64_t sub_269A5A504()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in GetCardioFitnessIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in GetCardioFitnessIntentHandler.handle(intent:)(v7, v5, v6);
}

unint64_t type metadata accessor for HKStatisticsQuery()
{
  v2 = lazy cache variable for type metadata for HKStatisticsQuery;
  if (!lazy cache variable for type metadata for HKStatisticsQuery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKStatisticsQuery);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_269A5A97C()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR);
  v5 = *(v4 - 8);
  v3 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v2 = v3 + *(v5 + 64);
  v8 = type metadata accessor for Date();
  v6 = *(v8 - 8);
  v7 = (v2 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = (v7 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v0 + v3, v4);
  (*(v6 + 8))(v0 + v7, v8);
  MEMORY[0x277D82BD8](*(v0 + v9));
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in CardioFitnessFetcher.query(start:end:)(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetCardioFitnessIntentResponseCs5NeverOGMR) - 8);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v9 = v11 + *(v8 + 64);
  v4 = type metadata accessor for Date();
  v5 = (v9 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = *(v3 + ((v5 + *(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in CardioFitnessFetcher.query(start:end:)(a1, a2, a3, v3 + v11, v3 + v5, v6);
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

NSMeasurement __swiftcall Measurement._bridgeToObjectiveC()()
{
  v0 = MEMORY[0x28211B6B0]();
  result._doubleValue = v2;
  result._unit = v1;
  result.super.isa = v0;
  return result;
}

uint64_t String.init<A>(describing:)()
{
  return MEMORY[0x2821FBCB0]();
}

{
  return MEMORY[0x2821FBCB8]();
}

{
  return MEMORY[0x2821FBCC0]();
}

Swift::String __swiftcall String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(Builtin::RawPointer _builtinStringLiteral, Builtin::Word utf8CodeUnitCount, Builtin::Int1 isASCII)
{
  v3 = MEMORY[0x2821FBD90](_builtinStringLiteral, utf8CodeUnitCount, isASCII);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t _assertionFailure(_:_:file:line:flags:)()
{
  return MEMORY[0x2821FD718]();
}

{
  return MEMORY[0x2821FD720]();
}