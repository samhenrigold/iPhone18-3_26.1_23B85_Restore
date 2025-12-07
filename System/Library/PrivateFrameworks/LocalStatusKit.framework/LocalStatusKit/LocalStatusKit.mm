uint64_t storeEnumTagSinglePayload for LSKKey(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for LSKKey(uint64_t a1, int a2)
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

uint64_t _s14LocalStatusKit18OSLogDateFormatterV5StyleO0E22WithTimeZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOs0K3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_256148754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LSKDestinationDevice.Delivery(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_256148800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LSKDestinationDevice.Delivery(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2561488A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25614891C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t _s14LocalStatusKit0aB10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOs0F3KeyAAsAIP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    return 0x73657461647075;
  }

  else
  {
    return 0x536C616974696E69;
  }
}

uint64_t sub_256148AF8()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_256148B80()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_256148BB8()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_256148C38()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance OSLogDateFormatter.Style.CodingKeys()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 1701669236;
  v4 = 0x69546F4E656D6974;
  if (v1 != 3)
  {
    v4 = 1819047270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OSLogDateFormatter.Style.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized OSLogDateFormatter.Style.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OSLogDateFormatter.Style.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OSLogDateFormatter.Style.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OSLogDateFormatter.Style.DateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OSLogDateFormatter.Style.DateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OSLogDateFormatter.Style.FullCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OSLogDateFormatter.Style.FullCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OSLogDateFormatter.Style.TimeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OSLogDateFormatter.Style.TimeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSLogDateFormatter.Style.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO14FullCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO14FullCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO06TimeNoK14ZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO06TimeNoK14ZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO14TimeCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO14TimeCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO0H10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO0H10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO0H22WithTimeZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO0H22WithTimeZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v15 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  lazy protocol witness table accessor for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys();
      v31 = v45;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys();
      v31 = v45;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys();
      v22 = v33;
      v23 = v45;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys();
      v22 = v36;
      v23 = v45;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      lazy protocol witness table accessor for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys();
      v22 = v39;
      v23 = v45;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys);
  }

  return result;
}

uint64_t OSLogDateFormatter.Style.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO14FullCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO14FullCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v45 = &v30[-v3];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO06TimeNoK14ZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO06TimeNoK14ZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v30[-v4];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO14TimeCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO14TimeCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v44 = &v30[-v5];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO0H10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO0H10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v30[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO0H22WithTimeZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO0H22WithTimeZoneCodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV5StyleO10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30[-v13];
  v15 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type OSLogDateFormatter.Style.CodingKeys and conformance OSLogDateFormatter.Style.CodingKeys();
  v16 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v32 = v8;
    v17 = v44;
    v18 = v45;
    v46 = v12;
    v19 = v14;
    v20 = KeyedDecodingContainer.allKeys.getter();
    v21 = *(v20 + 16);
    if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 5) : (v23 = 1), v23))
    {
      v24 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v26 = &type metadata for OSLogDateFormatter.Style;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v46 + 8))(v19, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = *(v20 + 32);
      if (v22 <= 1)
      {
        if (v22)
        {
          v49 = 1;
          lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateCodingKeys and conformance OSLogDateFormatter.Style.DateCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v34 + 8))(v7, v36);
        }

        else
        {
          v48 = 0;
          lazy protocol witness table accessor for type OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.DateWithTimeZoneCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v33 + 8))(v10, v32);
        }

        (*(v46 + 8))(v14, v11);
      }

      else
      {
        v36 = v20;
        v28 = v46;
        if (v22 == 2)
        {
          v50 = 2;
          lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeCodingKeys and conformance OSLogDateFormatter.Style.TimeCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v35 + 8))(v17, v37);
          (*(v28 + 8))(v19, v11);
        }

        else
        {
          if (v22 == 3)
          {
            v51 = 3;
            lazy protocol witness table accessor for type OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys and conformance OSLogDateFormatter.Style.TimeNoTimeZoneCodingKeys();
            v29 = v42;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v38 + 8))(v29, v40);
          }

          else
          {
            v52 = 4;
            lazy protocol witness table accessor for type OSLogDateFormatter.Style.FullCodingKeys and conformance OSLogDateFormatter.Style.FullCodingKeys();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v39 + 8))(v18, v41);
          }

          (*(v28 + 8))(v19, v11);
        }
      }

      swift_unknownObjectRelease();
      *v43 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL specialized Collection<>.popFirst()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
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

id OSLogDateFormatter.dateFormatter.getter()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  if (v1 <= 1)
  {
    v3 = 0x2D4D4D2D79797979;
    if (v1)
    {
      v4 = 0xEA00000000006464;
    }

    else
    {
      v4 = 0xED00005A5A5A6464;
    }
  }

  else if (v1 == 2)
  {
    v3 = 0x73733A6D6D3A4848;
    v4 = 0xEF5A5A5A5353532ELL;
  }

  else if (v1 == 3)
  {
    v3 = 0x73733A6D6D3A4848;
    v4 = 0xEC0000005353532ELL;
  }

  else
  {
    v4 = 0x80000002561670D0;
    v3 = 0xD00000000000001ALL;
  }

  v5 = MEMORY[0x259C5B6E0](v3, v4);
  [v2 setDateFormat_];

  return v2;
}

uint64_t OSLogDateFormatter.format(_:)()
{
  v0 = OSLogDateFormatter.dateFormatter.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = [v0 stringFromDate_];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

void OSLogDateFormatter.parse(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  LOBYTE(v16) = *v2;
  v6 = OSLogDateFormatter.dateFormatter.getter();
  v7 = MEMORY[0x259C5B6E0](a1, a2);
  v8 = [v6 dateFromString_];

  if (v8)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0xEF303038302D3232;
    v10 = 0x8000000256167090;
    v11 = 0xEC0000003530332ELL;
    v12 = 0x37333A39303A3631;
    if (v5 != 3)
    {
      v12 = 0xD00000000000001CLL;
      v11 = 0x8000000256167020;
    }

    if (v5 == 2)
    {
      v12 = 0xD000000000000011;
    }

    else
    {
      v10 = v11;
    }

    if (v5)
    {
      v9 = 0xEA00000000003232;
    }

    if (v5 <= 1)
    {
      v13 = 0x2D31302D32323032;
    }

    else
    {
      v13 = v12;
    }

    if (v5 <= 1)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    _StringGuts.grow(_:)(67);
    MEMORY[0x259C5B730](0xD00000000000001BLL, 0x8000000256167040);
    MEMORY[0x259C5B730](a1, a2);
    MEMORY[0x259C5B730](0xD000000000000023, 0x8000000256167060);
    MEMORY[0x259C5B730](v13, v14);

    MEMORY[0x259C5B730](96, 0xE100000000000000);
    lazy protocol witness table accessor for type LSKError and conformance LSKError();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0xE000000000000000;
    *(v15 + 16) = 1;
    swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type LSKError and conformance LSKError()
{
  result = lazy protocol witness table cache variable for type LSKError and conformance LSKError;
  if (!lazy protocol witness table cache variable for type LSKError and conformance LSKError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKError and conformance LSKError);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance OSLogDateFormatter.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OSLogDateFormatter.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OSLogDateFormatter.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OSLogDateFormatter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OSLogDateFormatter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OSLogDateFormatter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit18OSLogDateFormatterV10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style);
  }

  return result;
}

Swift::Int OSLogDateFormatter.Style.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](v1);
  return Hasher._finalize()();
}

uint64_t OSLogDateFormatter.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit18OSLogDateFormatterV10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OSLogDateFormatter.CodingKeys and conformance OSLogDateFormatter.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type OSLogDateFormatter.Style and conformance OSLogDateFormatter.Style();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void protocol witness for FormatStyle.format(_:) in conformance OSLogDateFormatter(uint64_t *a1@<X8>)
{
  v2 = OSLogDateFormatter.dateFormatter.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v4 = [v2 stringFromDate_];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OSLogDateFormatter.Style.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](v2);
  return Hasher._finalize()();
}

uint64_t TinyDateRangeFormatter.format(_:)(uint64_t a1)
{
  v1 = type metadata accessor for Calendar();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for Date.ComponentsFormatStyle.Style();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for Date.ComponentsFormatStyle();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation4DateVGMd, &_sSny10Foundation4DateVGMR);
  Date.timeIntervalSince(_:)();
  if (v8 >= 1.0)
  {
    static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMR);
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    v13 = v4;
    v14 = v5;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_256163CF0;
    MEMORY[0x259C5B520]();
    static Date.ComponentsFormatStyle.Field.minute.getter();
    static Date.ComponentsFormatStyle.Field.second.getter();
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0g5Tf4g_n(v10);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    static Locale.autoupdatingCurrent.getter();
    static Calendar.autoupdatingCurrent.getter();
    Date.ComponentsFormatStyle.init(style:locale:calendar:fields:)();
    lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle, MEMORY[0x277CC9510], MEMORY[0x277CC9508]);
    v11 = v13;
    Range<>.formatted<A>(_:)();
    (*(v14 + 8))(v7, v11);
    v17 = 32;
    v18 = 0xE100000000000000;
    v15 = 0;
    v16 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    return v12;
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    Date.timeIntervalSince(_:)();
    Double.write<A>(to:)();
    MEMORY[0x259C5B730](29549, 0xE200000000000000);
    return v19;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TinyDateRangeFormatter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TinyDateRangeFormatter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TinyDateRangeFormatter.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit22TinyDateRangeFormatterV10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit22TinyDateRangeFormatterV10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance TinyDateRangeFormatter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = TinyDateRangeFormatter.format(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance TinyDateRangeFormatter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit22TinyDateRangeFormatterV10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit22TinyDateRangeFormatterV10CodingKeys33_67B2886A47097ED914C0C19E516A8C3FLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IDSDeviceType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IDSDeviceType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance IDSDeviceType@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t specialized OSLogDateFormatter.Style.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002561670B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69546F4E656D6974 && a2 == 0xEE00656E6F5A656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1819047270 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMd, &_ss11_SetStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMR);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x277CC94F0], MEMORY[0x277CC94F8]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x277CC94F0], MEMORY[0x277CC9500]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TinyDateRangeFormatter.CodingKeys and conformance TinyDateRangeFormatter.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OSLogDateFormatter and conformance OSLogDateFormatter()
{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter;
  if (!lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter()
{
  result = lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter;
  if (!lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter;
  if (!lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter;
  if (!lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter;
  if (!lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TinyDateRangeFormatter and conformance TinyDateRangeFormatter);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TinyDateRangeFormatter(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TinyDateRangeFormatter(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for OSLogDateFormatter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OSLogDateFormatter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata accessor for IDSDeviceType()
{
  if (!lazy cache variable for type metadata for IDSDeviceType)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for IDSDeviceType);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t one-time initialization function for localStatus()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.localStatus);
  __swift_project_value_buffer(v0, static Logger.localStatus);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.localStatus.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for localStatus != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.localStatus);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LSKDestinationDevice.Delivery.CodingKeys()
{
  v1 = 0x676E69646E6570;
  v2 = 0x64656C696166;
  if (*v0 != 2)
  {
    v2 = 0x46676E697373696DLL;
  }

  if (*v0)
  {
    v1 = 0x65726576696C6564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKDestinationDevice.Delivery.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized LSKDestinationDevice.Delivery.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKDestinationDevice.Delivery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKDestinationDevice.Delivery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance LSKDestinationDevice.Delivery.FailedCodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKDestinationDevice.Delivery.FailedCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x8000000256167180 == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002561671A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKDestinationDevice.Delivery.FailedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKDestinationDevice.Delivery.FailedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKDestinationDevice.Delivery.PendingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKDestinationDevice.Delivery.PendingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LSKDestinationDevice.Delivery.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO24MissingFromIDSCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO24MissingFromIDSCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v32 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO16FailedCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO16FailedCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v32 - v5;
  v6 = type metadata accessor for Date();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO19DeliveredCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO19DeliveredCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO17PendingCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO17PendingCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO10CodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO10CodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v45 = *(v17 - 8);
  v46 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of LSKDestinationDevice.Delivery(v44, v16, type metadata accessor for LSKDestinationDevice.Delivery);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
  v21 = (*(*(v20 - 8) + 48))(v16, 3, v20);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v49 = 1;
      lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys();
      v30 = v46;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v34 + 8))(v10, v8);
    }

    else
    {
      v53 = 3;
      lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys();
      v31 = v35;
      v30 = v46;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v36 + 8))(v31, v37);
    }

    return (*(v45 + 8))(v19, v30);
  }

  if (v21)
  {
    v48 = 0;
    lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys();
    v30 = v46;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v33 + 8))(v13, v11);
    return (*(v45 + 8))(v19, v30);
  }

  v44 = *&v16[*(v20 + 48)];
  v23 = v39;
  v22 = v40;
  v24 = v43;
  (*(v39 + 32))(v43, v16, v40);
  v52 = 2;
  lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys();
  v25 = v38;
  v26 = v46;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v51 = 0;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  v27 = v42;
  v28 = v47;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v28)
  {

    (*(v41 + 8))(v25, v27);
    (*(v23 + 8))(v24, v22);
  }

  else
  {
    v50 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(v41 + 8))(v25, v27);
    (*(v23 + 8))(v43, v22);
  }

  return (*(v45 + 8))(v19, v26);
}

uint64_t LSKDestinationDevice.Delivery.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO24MissingFromIDSCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO24MissingFromIDSCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO16FailedCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO16FailedCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v6 = *(v5 - 8);
  v60 = v5;
  v61 = v6;
  MEMORY[0x28223BE20](v5);
  v62 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO19DeliveredCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO19DeliveredCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v9 = *(v8 - 8);
  v56 = v8;
  v57 = v9;
  MEMORY[0x28223BE20](v8);
  v65 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO17PendingCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO17PendingCodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v12 = *(v11 - 8);
  v54 = v11;
  v55 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO10CodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV8DeliveryO10CodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v64 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v52 - v22;
  v24 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys();
  v25 = v67;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v25)
  {
    v26 = v18;
    v53 = v21;
    v67 = v23;
    v28 = v64;
    v27 = v65;
    v29 = v66;
    v30 = KeyedDecodingContainer.allKeys.getter();
    v31 = (2 * *(v30 + 16)) | 1;
    v69 = v30;
    v70 = v30 + 32;
    v71 = 0;
    v72 = v31;
    v32 = specialized Collection<>.popFirst()();
    if (v32 == 4 || v71 != v72 >> 1)
    {
      v35 = v15;
      v36 = type metadata accessor for DecodingError();
      swift_allocError();
      v37 = v17;
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v39 = v26;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v36 - 8) + 104))(v39, *MEMORY[0x277D84160], v36);
      swift_willThrow();
      (*(v28 + 8))(v37, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v32 > 1u)
      {
        if (v32 == 2)
        {
          v73 = 2;
          lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys();
          v41 = v62;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v65 = v15;
          type metadata accessor for Date();
          v73 = 0;
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
          v42 = v53;
          v43 = v60;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v73 = 1;
          v63 = KeyedDecodingContainer.decode(_:forKey:)();
          v59 = v47;
          v48 = v61;
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
          v50 = (v42 + *(v49 + 48));
          (*(v48 + 8))(v41, v43);
          (*(v28 + 8))(v17, v65);
          swift_unknownObjectRelease();
          v51 = v59;
          *v50 = v63;
          v50[1] = v51;
          (*(*(v49 - 8) + 56))(v42, 0, 3, v49);
          v34 = v67;
          outlined init with take of LSKDestinationDevice.Delivery(v42, v67);
          v29 = v66;
        }

        else
        {
          v73 = 3;
          lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys();
          v44 = v63;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v58 + 8))(v44, v59);
          (*(v28 + 8))(v17, v15);
          swift_unknownObjectRelease();
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
          v34 = v67;
          (*(*(v46 - 8) + 56))(v67, 3, 3, v46);
        }
      }

      else if (v32)
      {
        v73 = 1;
        lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v57 + 8))(v27, v56);
        (*(v28 + 8))(v17, v15);
        swift_unknownObjectRelease();
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
        v34 = v67;
        (*(*(v45 - 8) + 56))(v67, 2, 3, v45);
      }

      else
      {
        v73 = 0;
        lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v55 + 8))(v14, v54);
        (*(v28 + 8))(v17, v15);
        swift_unknownObjectRelease();
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
        v34 = v67;
        (*(*(v33 - 8) + 56))(v67, 1, 3, v33);
      }

      outlined init with take of LSKDestinationDevice.Delivery(v34, v29);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v68);
}

uint64_t LSKDestinationDevice.idsIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LSKDestinationDevice.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LSKDestinationDevice.model.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t LSKDestinationDevice.init(idsIdentifier:name:model:delivery:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v9 = a8 + *(type metadata accessor for LSKDestinationDevice(0) + 28);

  return outlined init with take of LSKDestinationDevice.Delivery(a7, v9);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LSKDestinationDevice.CodingKeys()
{
  v1 = 0x746E656449736469;
  v2 = 0x6C65646F6DLL;
  if (*v0 != 2)
  {
    v2 = 0x79726576696C6564;
  }

  if (*v0)
  {
    v1 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKDestinationDevice.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized LSKDestinationDevice.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKDestinationDevice.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKDestinationDevice.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LSKDestinationDevice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV10CodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit20LSKDestinationDeviceV10CodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for LSKDestinationDevice(0);
    v8[12] = 3;
    type metadata accessor for LSKDestinationDevice.Delivery(0);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery and conformance LSKDestinationDevice.Delivery, type metadata accessor for LSKDestinationDevice.Delivery, &protocol conformance descriptor for LSKDestinationDevice.Delivery);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t LSKDestinationDevice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV10CodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit20LSKDestinationDeviceV10CodingKeys33_5BD7DAE8A9205A5EC5685B78C6F9947ELLOGMR);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for LSKDestinationDevice(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys();
  v25 = v8;
  v12 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v26 = v3;
  v14 = v5;
  v16 = v23;
  v15 = v24;
  v30 = 0;
  *v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[1] = v17;
  v29 = 1;
  v11[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v11[3] = v18;
  v28 = 2;
  v21 = 0;
  v11[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v11[5] = v19;
  v27 = 3;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery and conformance LSKDestinationDevice.Delivery, type metadata accessor for LSKDestinationDevice.Delivery, &protocol conformance descriptor for LSKDestinationDevice.Delivery);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v25, v15);
  outlined init with take of LSKDestinationDevice.Delivery(v14, v11 + *(v9 + 28));
  outlined init with copy of LSKDestinationDevice.Delivery(v11, v22, type metadata accessor for LSKDestinationDevice);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return outlined destroy of LSKDestinationDevice(v11, type metadata accessor for LSKDestinationDevice);
}

uint64_t LSKDestinationDevice.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(20);
  type metadata accessor for LSKDestinationDevice(0);
  v2 = LSKDestinationDevice.Delivery.description.getter();

  v17 = v2;
  MEMORY[0x259C5B730](8250, 0xE200000000000000);
  v3 = *v1;
  v4 = v1[1];

  v6 = specialized Collection.prefix(_:)(8, v3, v4, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x259C5B700](v6, v8, v10, v12);
  v15 = v14;

  MEMORY[0x259C5B730](v13, v15);

  MEMORY[0x259C5B730](0x22206D4E20, 0xE500000000000000);
  MEMORY[0x259C5B730](v1[2], v1[3]);
  MEMORY[0x259C5B730](0x20644D2022, 0xE500000000000000);
  MEMORY[0x259C5B730](v1[4], v1[5]);
  return v17;
}

uint64_t LSKDestinationDevice.Delivery.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of LSKDestinationDevice.Delivery(v1, v8, type metadata accessor for LSKDestinationDevice.Delivery);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
  v10 = (*(*(v9 - 8) + 48))(v8, 3, v9);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      return 0x65726576696C6544;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else if (v10)
  {
    return 0x676E69646E6550;
  }

  else
  {
    v11 = &v8[*(v9 + 48)];
    v12 = *v11;
    v13 = v11[1];
    (*(v3 + 32))(v5, v8, v2);
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v19 = 0x5B64656C696146;
    v20 = 0xE700000000000000;
    MEMORY[0x259C5B730](v12, v13);

    MEMORY[0x259C5B730](0xD000000000000010, 0x8000000256167110);
    v16[15] = 4;
    lazy protocol witness table accessor for type OSLogDateFormatter and conformance OSLogDateFormatter();
    Date.formatted<A>(_:)();
    MEMORY[0x259C5B730](v17, v18);

    MEMORY[0x259C5B730](93, 0xE100000000000000);
    v14 = v19;
    (*(v3 + 8))(v5, v2);
    return v14;
  }
}

uint64_t specialized static LSKDestinationDevice.Delivery.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit20LSKDestinationDeviceV8DeliveryO_AEtMd, &_s14LocalStatusKit20LSKDestinationDeviceV8DeliveryO_AEtMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31 - v13;
  v15 = &v31 + *(v12 + 56) - v13;
  outlined init with copy of LSKDestinationDevice.Delivery(a1, &v31 - v13, type metadata accessor for LSKDestinationDevice.Delivery);
  outlined init with copy of LSKDestinationDevice.Delivery(a2, v15, type metadata accessor for LSKDestinationDevice.Delivery);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v14, 3, v16);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      if (v17(v15, 3, v16) != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v17(v15, 3, v16) != 3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v18)
  {
    if (v17(v15, 3, v16) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v32 = v5;
  outlined init with copy of LSKDestinationDevice.Delivery(v14, v10, type metadata accessor for LSKDestinationDevice.Delivery);
  v19 = *(v16 + 48);
  v20 = *&v10[v19 + 8];
  v31 = *&v10[v19];
  if (!v17(v15, 3, v16))
  {
    v22 = v20;
    v23 = &v15[v19];
    v24 = *&v15[v19];
    v25 = *(v23 + 1);
    v26 = v32;
    (*(v32 + 32))(v7, v15, v4);
    v27 = static Date.== infix(_:_:)();
    v28 = *(v26 + 8);
    v28(v10, v4);
    if ((v27 & 1) == 0)
    {
      v28(v7, v4);

LABEL_22:
      outlined destroy of LSKDestinationDevice(v14, type metadata accessor for LSKDestinationDevice.Delivery);
      return 0;
    }

    if (v31 == v24 && v22 == v25)
    {

      v28(v7, v4);
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v28(v7, v4);
      if ((v30 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

LABEL_11:
    outlined destroy of LSKDestinationDevice(v14, type metadata accessor for LSKDestinationDevice.Delivery);
    return 1;
  }

  (*(v32 + 8))(v10, v4);
LABEL_12:
  outlined destroy of (LSKDestinationDevice.Delivery, LSKDestinationDevice.Delivery)(v14);
  return 0;
}

unint64_t lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.CodingKeys and conformance LSKDestinationDevice.Delivery.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys and conformance LSKDestinationDevice.Delivery.MissingFromIDSCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.FailedCodingKeys and conformance LSKDestinationDevice.Delivery.FailedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.DeliveredCodingKeys and conformance LSKDestinationDevice.Delivery.DeliveredCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.Delivery.PendingCodingKeys and conformance LSKDestinationDevice.Delivery.PendingCodingKeys);
  }

  return result;
}

uint64_t outlined init with take of LSKDestinationDevice.Delivery(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for LSKDestinationDevice.Delivery(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized static LSKDestinationDevice.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for LSKDestinationDevice(0) + 28);

  return specialized static LSKDestinationDevice.Delivery.== infix(_:_:)(a1 + v6, a2 + v6);
}

unint64_t lazy protocol witness table accessor for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDestinationDevice.CodingKeys and conformance LSKDestinationDevice.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of LSKDestinationDevice.Delivery(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized LSKDestinationDevice.Delivery.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726576696C6564 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x46676E697373696DLL && a2 == 0xEE005344496D6F72)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized LSKDestinationDevice.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656449736469 && a2 == 0xED00007265696669;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79726576696C6564 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized Collection.prefix(_:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t type metadata completion function for LSKDestinationDevice(uint64_t a1)
{
  result = type metadata accessor for LSKDestinationDevice.Delivery(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for LSKDestinationDevice.Delivery(uint64_t a1)
{
  type metadata accessor for (earliestNextAttempt: Date, errorDescription: String)(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void type metadata accessor for (earliestNextAttempt: Date, errorDescription: String)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (earliestNextAttempt: Date, errorDescription: String))
  {
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (earliestNextAttempt: Date, errorDescription: String));
    }
  }
}

uint64_t getEnumTagSinglePayload for LSKDestinationDevice.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LSKDestinationDevice.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LSKDestinationDevice.Delivery.FailedCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LSKDestinationDevice.Delivery.FailedCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined destroy of (LSKDestinationDevice.Delivery, LSKDestinationDevice.Delivery)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit20LSKDestinationDeviceV8DeliveryO_AEtMd, &_s14LocalStatusKit20LSKDestinationDeviceV8DeliveryO_AEtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of LSKDestinationDevice(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t LSKDomain.id.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000019;
  v4 = 0xD000000000000014;
  if (v2 != 3)
  {
    v4 = 0xD00000000000002FLL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

LocalStatusKit::LSKDomain_optional __swiftcall LSKDomain.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LSKDomain.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LSKDomain@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = *v1;
  v4 = "com.apple.chrono";
  v5 = 0xD000000000000019;
  v6 = "com.apple.personalHotspot";
  v7 = 0xD000000000000014;
  result = 0xD00000000000002FLL;
  if (v3 != 3)
  {
    v7 = 0xD00000000000002FLL;
    v6 = "com.apple.regulatory";
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v9 = "kit.atDeskTesting";
  }

  else
  {
    v2 = 0xD000000000000021;
    v9 = "LSKTargetDeviceFlags";
  }

  if (*v1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
  return result;
}

unint64_t lazy protocol witness table accessor for type LSKDomain and conformance LSKDomain()
{
  result = lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain;
  if (!lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain;
  if (!lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain;
  if (!lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain;
  if (!lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKDomain and conformance LSKDomain);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LSKDomain()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LSKDomain(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LSKDomain(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type [LSKDomain] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [LSKDomain] and conformance [A];
  if (!lazy protocol witness table cache variable for type [LSKDomain] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14LocalStatusKit9LSKDomainOGMd, &_sSay14LocalStatusKit9LSKDomainOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [LSKDomain] and conformance [A]);
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

uint64_t LSKError.errorDescription.getter()
{
  if (*(v0 + 16))
  {
    v1 = 0x7463657078656E75;
  }

  else
  {
    v1 = 543975790;
  }

  v3 = v1;
  MEMORY[0x259C5B730](*v0, *(v0 + 8));
  return v3;
}

uint64_t protocol witness for LocalizedError.errorDescription.getter in conformance LSKError()
{
  if (*(v0 + 16))
  {
    v1 = 0x7463657078656E75;
  }

  else
  {
    v1 = 543975790;
  }

  v3 = v1;
  MEMORY[0x259C5B730](*v0, *(v0 + 8));
  return v3;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LSKError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LSKError(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "LSKTargetDeviceFlags";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD000000000000021;
    }

    if (v3)
    {
      v4 = "kit.atDeskTesting";
    }

    else
    {
      v4 = "LSKTargetDeviceFlags";
    }
  }

  else if (a1 == 2)
  {
    v4 = "com.apple.chrono";
    v5 = 0xD000000000000019;
  }

  else if (a1 == 3)
  {
    v4 = "com.apple.personalHotspot";
    v5 = 0xD000000000000014;
  }

  else
  {
    v4 = "com.apple.regulatory";
    v5 = 0xD00000000000002FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xD000000000000021;
    }

    if (a2)
    {
      v2 = "kit.atDeskTesting";
    }
  }

  else if (a2 == 2)
  {
    v2 = "com.apple.chrono";
    v6 = 0xD000000000000019;
  }

  else if (a2 == 3)
  {
    v2 = "com.apple.personalHotspot";
    v6 = 0xD000000000000014;
  }

  else
  {
    v2 = "com.apple.regulatory";
    v6 = 0xD00000000000002FLL;
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t LSKKey.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

_BYTE *LSKKey.init(domain:name:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static LSKKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((specialized == infix<A>(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t LSKKey.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int LSKKey.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t LSKKey.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LSKKey<A>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  LSKKey.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKKey<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = LSKKey.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance LSKKey<A>.CodingKeys@<X0>(_BYTE *a2@<X8>)
{
  result = specialized LSKKey.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKKey<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKKey<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LSKKey.encode(to:)(void *a1, void *a2)
{
  type metadata accessor for LSKKey.CodingKeys(255, a2[2], a2[3], a2[4]);
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedEncodingContainer();
  v13 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  v7 = *v2;
  v8 = *(v2 + 1);
  v12[0] = *(v2 + 2);
  v12[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v7;
  v16 = 0;
  lazy protocol witness table accessor for type LSKDomain and conformance LSKDomain();
  v9 = v14;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v9)
  {
    return (*(v13 + 8))(v6, v4);
  }

  v11 = v13;
  v15 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v11 + 8))(v6, v4);
}

uint64_t LSKKey.hash(into:)(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int LSKKey.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4[72] = *v0;
  v5 = v1;
  v6 = v2;
  Hasher.init(_seed:)();
  LSKKey.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t LSKKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  type metadata accessor for LSKKey.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedDecodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v11 = v18;
    v20 = 0;
    lazy protocol witness table accessor for type LSKDomain and conformance LSKDomain();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v21;
    v19 = 1;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    (*(v8 + 8))(v10, v7);
    *v11 = v12;
    *(v11 + 8) = v14;
    *(v11 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LSKKey<A>(uint64_t a1)
{
  Hasher.init(_seed:)();
  LSKKey.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t LSKKey.id.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = "LSKTargetDeviceFlags";
  v6 = "com.apple.chrono";
  v7 = 0xD000000000000019;
  v8 = "com.apple.personalHotspot";
  v9 = 0xD000000000000014;
  if (v2 != 3)
  {
    v9 = 0xD00000000000002FLL;
    v8 = "com.apple.regulatory";
  }

  if (v2 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  if (*v0)
  {
    v5 = "kit.atDeskTesting";
  }

  else
  {
    v1 = 0xD000000000000021;
  }

  if (*v0 <= 1u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v7;
  }

  if (*v0 <= 1u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  MEMORY[0x259C5B730](v10, v11 | 0x8000000000000000);

  MEMORY[0x259C5B730](45, 0xE100000000000000);
  MEMORY[0x259C5B730](v3, v4);
  return 0;
}

uint64_t protocol witness for Identifiable.id.getter in conformance LSKKey<A>@<X0>(uint64_t *a1@<X8>)
{
  result = LSKKey.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata instantiation function for LSKKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t LSKKey.eraseToData()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t one-time initialization function for log()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  v1 = __swift_project_value_buffer(v0, log);
  if (one-time initialization token for localStatus != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.localStatus);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t LSKLocalStatusClient.__allocating_init()()
{
  v0 = swift_allocObject();
  LSKLocalStatusClient.init()();
  return v0;
}

uint64_t LSKLocalStatusClient.init()()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v4 - 8);
  v9 = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v12 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v10);
  v5 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = v11;
  *(v11 + 16) = v5;
  type metadata accessor for SFXPCConnection();
  v7 = v5;
  *(v6 + 24) = SFXPCConnection.__allocating_init(machServiceName:queue:)();

  SFXPCConnection.activate()();

  return v6;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t LSKLocalStatusClient.publish<A>(_:for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 144) = v24;
  *(v9 + 152) = v8;
  *(v9 + 128) = a7;
  *(v9 + 136) = a8;
  *(v9 + 112) = a3;
  *(v9 + 120) = a6;
  *(v9 + 96) = a1;
  *(v9 + 104) = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
  *(v9 + 160) = v15;
  *(v9 + 64) = a6;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 88) = v24;
  v16 = type metadata accessor for LSKPublishedStatus(255, v9 + 64);
  *(v9 + 168) = v16;
  *(v9 + 176) = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type SFXPCAsyncSequence<LSKPublishedStatus<Data>> and conformance SFXPCAsyncSequence<A>, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR, MEMORY[0x277D54AE0]);
  v17 = type metadata accessor for AsyncThrowingMapSequence();
  *(v9 + 184) = v17;
  *(v9 + 192) = *(v17 - 8);
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = *(v15 - 8);
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = *(v16 - 8);
  *(v9 + 256) = swift_task_alloc();
  *(v9 + 264) = type metadata accessor for PublishStatusInvocation.Response(0);
  v18 = swift_task_alloc();
  *(v9 + 344) = *a4;
  v19 = *(a4 + 8);
  v20 = *(a4 + 16);
  *(v9 + 272) = v18;
  *(v9 + 280) = v19;
  v21 = *a5;
  *(v9 + 288) = v20;
  *(v9 + 296) = v21;

  return MEMORY[0x2822009F8](LSKLocalStatusClient.publish<A>(_:for:options:), 0, 0);
}

uint64_t LSKLocalStatusClient.publish<A>(_:for:options:)()
{
  v26 = v0;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 304) = v1;
  *(v0 + 312) = v2;
  v3 = *(v0 + 288);
  v4 = *(v0 + 280);
  v5 = *(v0 + 344);
  v19 = *(v0 + 296);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = *(v0 + 120);
  v9 = v1;
  v10 = v2;

  v23 = v5;
  v24 = v4;
  v25 = v3;
  type metadata accessor for LSKKey(0, v8, v7, v6);
  LSKKey.eraseToData()(v20);
  v11 = v20[0];
  v12 = v21;
  v13 = v22;
  *(v0 + 320) = v22;
  v14 = type metadata accessor for PublishStatusInvocation(0);
  *(v0 + 16) = v11;
  *(v0 + 24) = v12;
  *(v0 + 32) = v13;
  *(v0 + 40) = v9;
  *(v0 + 48) = v10;
  *(v0 + 56) = v19;
  outlined copy of Data._Representation(v9, v10);

  v15 = swift_task_alloc();
  *(v0 + 328) = v15;
  v16 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type PublishStatusInvocation and conformance PublishStatusInvocation, type metadata accessor for PublishStatusInvocation, &protocol conformance descriptor for PublishStatusInvocation);
  *v15 = v0;
  v15[1] = LSKLocalStatusClient.publish<A>(_:for:options:);
  v17 = *(v0 + 272);

  return MEMORY[0x2821B5FC8](v17, v14, v0 + 16, v14, v16);
}

{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = LSKLocalStatusClient.publish<A>(_:for:options:);
  }

  else
  {
    v2 = LSKLocalStatusClient.publish<A>(_:for:options:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v55 = v0;
  v1 = v0[42];
  v2 = v0[34];
  v3 = v0[32];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = *(v2 + 8);
  v8 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  LOBYTE(v50) = *v2;
  *(&v50 + 1) = v9;
  v51 = v8;
  v52 = v10;
  v53 = v11;
  v54 = v12;

  outlined copy of Data?(v10, v11);

  LSKPublishedStatus<>.map<A>(to:)(v7, v6, v5, v4, v3);
  if (v1)
  {
    v13 = v0[39];
    v14 = v0[38];
    v15 = v0[34];

    outlined consume of Data?(v14, v13);

    outlined consume of Data._Representation(v14, v13);

    outlined consume of Data?(v52, v53);

    outlined destroy of PublishStatusInvocation.Response(v15, type metadata accessor for PublishStatusInvocation.Response);

    v16 = v0[1];
  }

  else
  {
    v18 = v0[33];
    v17 = v0[34];
    v19 = v0[27];
    v20 = v0[28];
    v21 = v0[20];

    outlined consume of Data?(v52, v53);

    outlined init with copy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v17 + *(v18 + 20), v19, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
    v22 = (*(v20 + 48))(v19, 1, v21);
    v23 = v0[39];
    v24 = v0[38];
    v25 = v0[31];
    v26 = v0[32];
    if (v22 == 1)
    {
      v27 = v0[27];
      v28 = v0[21];
      v29 = v0[12];
      outlined destroy of PublishStatusInvocation.Response(v0[34], type metadata accessor for PublishStatusInvocation.Response);
      outlined consume of Data._Representation(v24, v23);

      outlined consume of Data?(v24, v23);

      outlined destroy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v27, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
      (*(v25 + 32))(v29, v26, v28);
      v30 = 0uLL;
    }

    else
    {
      v31 = v0[29];
      v32 = v0[30];
      v49 = v0[34];
      v33 = v0[28];
      v47 = v0[39];
      v48 = v0[38];
      v34 = v0[26];
      v35 = v0[23];
      v45 = v0[24];
      v46 = v0[25];
      v36 = v0[21];
      v37 = v0[20];
      v44 = v0[12];
      v42 = *(v0 + 17);
      v43 = *(v0 + 15);
      (*(v33 + 32))(v32, v0[27], v37);
      (*(v33 + 16))(v31, v32, v37);
      v38 = swift_allocObject();
      *(v38 + 16) = v43;
      *(v38 + 32) = v42;
      AsyncSequence.map<A>(_:)();

      (*(v25 + 16))(v44, v26, v36);
      (*(v45 + 16))(v46, v34, v35);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      WitnessTable = swift_getWitnessTable();
      LSKPublishedStatusSequence.init<A>(_:)(v46, v36, v39, v35, WitnessTable, &v50);

      outlined consume of Data?(v48, v47);

      outlined consume of Data._Representation(v48, v47);
      (*(v45 + 8))(v34, v35);
      (*(v33 + 8))(v32, v37);
      (*(v25 + 8))(v26, v36);
      outlined destroy of PublishStatusInvocation.Response(v49, type metadata accessor for PublishStatusInvocation.Response);
      v30 = v50;
    }

    *v0[13] = v30;

    v16 = v0[1];
  }

  return v16();
}

{
  v1 = v0[39];
  v2 = v0[38];
  outlined consume of Data._Representation(v2, v1);

  outlined consume of Data?(v2, v1);

  v3 = v0[1];

  return v3();
}

void outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

void outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    outlined copy of Data._Representation(a1, a2);
  }
}

uint64_t closure #1 in LSKLocalStatusClient.publish<A>(_:for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 96) = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  *(v6 + 48) = a6;
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 72) = *(a2 + 24);
  *(v6 + 88) = *(a2 + 40);
  return MEMORY[0x2822009F8](closure #1 in LSKLocalStatusClient.publish<A>(_:for:options:), 0, 0);
}

uint64_t partial apply for closure #1 in LSKLocalStatusClient.publish<A>(_:for:options:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in LSKLocalStatusClient.publish<A>(_:for:options:);

  return closure #1 in LSKLocalStatusClient.publish<A>(_:for:options:)(a1, a2, v6, v7, v9, v8);
}

uint64_t LSKLocalStatusClient.status<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 136) = a7;
  *(v8 + 144) = v7;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 104) = a2;
  *(v8 + 112) = a4;
  *(v8 + 96) = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
  *(v8 + 152) = v14;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  v15 = type metadata accessor for LSKPublishedStatus(255, v8 + 16);
  *(v8 + 160) = v15;
  *(v8 + 168) = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type SFXPCAsyncSequence<LSKPublishedStatus<Data>> and conformance SFXPCAsyncSequence<A>, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR, MEMORY[0x277D54AE0]);
  v16 = type metadata accessor for AsyncThrowingMapSequence();
  *(v8 + 176) = v16;
  *(v8 + 184) = *(v16 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = *(v14 - 8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = *(v15 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = type metadata accessor for LocalStatusInvocation.Response(0);
  v17 = swift_task_alloc();
  *(v8 + 304) = *a3;
  v18 = *(a3 + 8);
  v19 = *(a3 + 16);
  *(v8 + 264) = v17;
  *(v8 + 272) = v18;
  *(v8 + 280) = v19;

  return MEMORY[0x2822009F8](LSKLocalStatusClient.status<A>(for:), 0, 0);
}

uint64_t LSKLocalStatusClient.status<A>(for:)()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = type metadata accessor for LocalStatusInvocation(0);
  type metadata accessor for LSKKey(0, v3, v2, v1);
  LSKKey.eraseToData()(v0 + 48);
  *(v0 + 72) = *(v0 + 48);
  v5 = *(v0 + 64);
  *(v0 + 80) = *(v0 + 56);
  *(v0 + 88) = v5;
  v6 = swift_task_alloc();
  *(v0 + 288) = v6;
  v7 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LocalStatusInvocation and conformance LocalStatusInvocation, type metadata accessor for LocalStatusInvocation, &protocol conformance descriptor for LocalStatusInvocation);
  *v6 = v0;
  v6[1] = LSKLocalStatusClient.status<A>(for:);
  v8 = *(v0 + 264);

  return MEMORY[0x2821B5FC8](v8, v4, v0 + 72, v4, v7);
}

{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = LSKLocalStatusClient.status<A>(for:);
  }

  else
  {
    v2 = LSKLocalStatusClient.status<A>(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v48 = v0;
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[31];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v9 = *(v2 + 8);
  v8 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  LOBYTE(v43) = *v2;
  *(&v43 + 1) = v9;
  v44 = v8;
  v45 = v10;
  v46 = v11;
  v47 = v12;

  outlined copy of Data?(v10, v11);

  LSKPublishedStatus<>.map<A>(to:)(v7, v6, v5, v4, v3);
  v13 = v0[33];
  if (v1)
  {

    outlined consume of Data?(v45, v46);

    outlined destroy of PublishStatusInvocation.Response(v13, type metadata accessor for LocalStatusInvocation.Response);

    v14 = v0[1];
  }

  else
  {
    v15 = v0[32];
    v16 = v0[26];
    v17 = v0[27];
    v18 = v0[19];

    outlined consume of Data?(v45, v46);

    outlined init with copy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v13 + *(v15 + 20), v16, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
    v19 = (*(v17 + 48))(v16, 1, v18);
    v20 = v0[30];
    v21 = v0[31];
    if (v19 == 1)
    {
      v22 = v0[26];
      v23 = v0[20];
      v24 = v0[12];
      outlined destroy of PublishStatusInvocation.Response(v0[33], type metadata accessor for LocalStatusInvocation.Response);
      outlined destroy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v22, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
      (*(v20 + 32))(v24, v21, v23);
      v25 = 0uLL;
    }

    else
    {
      v26 = v0[28];
      v27 = v0[29];
      v28 = v0[27];
      v41 = v0[24];
      v30 = v0[22];
      v29 = v0[23];
      v31 = v0[20];
      v39 = v0[25];
      v32 = v0[19];
      v40 = v0[12];
      v42 = v0[33];
      v37 = *(v0 + 8);
      v38 = *(v0 + 7);
      (*(v28 + 32))(v27, v0[26], v32);
      (*(v28 + 16))(v26, v27, v32);
      v33 = swift_allocObject();
      *(v33 + 16) = v38;
      *(v33 + 32) = v37;
      AsyncSequence.map<A>(_:)();

      (*(v20 + 16))(v40, v21, v31);
      (*(v29 + 16))(v41, v39, v30);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      WitnessTable = swift_getWitnessTable();
      LSKPublishedStatusSequence.init<A>(_:)(v41, v31, v34, v30, WitnessTable, &v43);
      (*(v29 + 8))(v39, v30);
      (*(v28 + 8))(v27, v32);
      (*(v20 + 8))(v21, v31);
      outlined destroy of PublishStatusInvocation.Response(v42, type metadata accessor for LocalStatusInvocation.Response);
      v25 = v43;
    }

    *v0[13] = v25;

    v14 = v0[1];
  }

  return v14();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t outlined destroy of PublishStatusInvocation.Response(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #1 in LSKLocalStatusClient.status<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 96) = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  *(v6 + 48) = a6;
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 72) = *(a2 + 24);
  *(v6 + 88) = *(a2 + 40);
  return MEMORY[0x2822009F8](closure #1 in LSKLocalStatusClient.status<A>(for:), 0, 0);
}

uint64_t closure #1 in LSKLocalStatusClient.status<A>(for:)()
{
  LSKPublishedStatus<>.map<A>(to:)(v0[3], v0[4], v0[5], v0[6], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t partial apply for closure #1 in LSKLocalStatusClient.status<A>(for:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in LSKLocalStatusClient.status<A>(for:);

  return closure #1 in LSKLocalStatusClient.status<A>(for:)(a1, a2, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in LSKLocalStatusClient.status<A>(for:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t LSKLocalStatusClient.subscribe<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 40) = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Sharing18SFXPCAsyncSequenceVySay14LocalStatusKit08LSKLocalE11ObservationVy10Foundation4DataVGGGMd, &_s7Sharing18SFXPCAsyncSequenceVySay14LocalStatusKit08LSKLocalE11ObservationVy10Foundation4DataVGGGMR);
  *(v6 + 80) = v11;
  type metadata accessor for LSKLocalStatusObservation(255, a3, a4, a5);
  *(v6 + 88) = type metadata accessor for Array();
  *(v6 + 96) = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type SFXPCAsyncSequence<[LSKLocalStatusObservation<Data>]> and conformance SFXPCAsyncSequence<A>, &_s7Sharing18SFXPCAsyncSequenceVySay14LocalStatusKit08LSKLocalE11ObservationVy10Foundation4DataVGGGMd, &_s7Sharing18SFXPCAsyncSequenceVySay14LocalStatusKit08LSKLocalE11ObservationVy10Foundation4DataVGGGMR, MEMORY[0x277D54AE0]);
  v12 = type metadata accessor for AsyncMapSequence();
  *(v6 + 104) = v12;
  *(v6 + 112) = *(v12 - 8);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = *(v11 - 8);
  *(v6 + 144) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v6 + 200) = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  *(v6 + 152) = v13;
  *(v6 + 160) = v14;
  *(v6 + 168) = v15;

  return MEMORY[0x2822009F8](LSKLocalStatusClient.subscribe<A>(to:), 0, 0);
}

uint64_t LSKLocalStatusClient.subscribe<A>(to:)()
{
  v20 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v17 = *(v0 + 200);
  v18 = v2;
  v19 = v1;
  type metadata accessor for LSKKey(0, v4, v5, v3);
  LSKKey.eraseToData()(v14);
  v6 = v14[0];
  v7 = v15;
  v8 = v16;
  *(v0 + 176) = v16;
  v9 = type metadata accessor for SubscribeStatusInvocation(0);
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 32) = v8;
  v10 = swift_task_alloc();
  *(v0 + 184) = v10;
  v11 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SubscribeStatusInvocation and conformance SubscribeStatusInvocation, type metadata accessor for SubscribeStatusInvocation, &protocol conformance descriptor for SubscribeStatusInvocation);
  *v10 = v0;
  v10[1] = LSKLocalStatusClient.subscribe<A>(to:);
  v12 = *(v0 + 152);

  return MEMORY[0x2821B5FC8](v12, v9, v0 + 16, v9, v11);
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = LSKLocalStatusClient.subscribe<A>(to:);
  }

  else
  {

    v2 = LSKLocalStatusClient.subscribe<A>(to:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 104);
  v14 = *(v0 + 120);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v15 = *(v0 + 40);
  v16 = *(v0 + 152);
  v13 = *(v0 + 48);
  (*(v1 + 16))();
  v8 = swift_allocObject();
  *(v8 + 16) = v13;
  *(v8 + 32) = v7;
  AsyncSequence.map<A>(_:)();

  (*(v3 + 16))(v14, v2, v4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  WitnessTable = swift_getWitnessTable();
  LSKObservationsSequence.init<A>(_:)(v14, v6, v9, v4, WitnessTable, v15);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v16, v5);

  v11 = *(v0 + 8);

  return v11();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in LSKLocalStatusClient.subscribe<A>(to:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a1;
  v5[4] = a3;
  v5[7] = *a2;
  return MEMORY[0x2822009F8](closure #1 in LSKLocalStatusClient.subscribe<A>(to:), 0, 0);
}

uint64_t closure #1 in LSKLocalStatusClient.subscribe<A>(to:)()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v0[2] = v0[7];
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGGMd, &_sSay14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGGMR);
  type metadata accessor for LSKLocalStatusObservation(0, v3, v2, v1);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [LSKLocalStatusObservation<Data>] and conformance [A], &_sSay14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGGMd, &_sSay14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGGMR, MEMORY[0x277D83970]);
  v6 = Sequence.compactMap<A>(_:)();

  *v4 = v6;
  v7 = v0[1];

  return v7();
}

uint64_t partial apply for closure #1 in LSKLocalStatusClient.subscribe<A>(to:)(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in LSKLocalStatusClient.status<A>(for:);

  return closure #1 in LSKLocalStatusClient.subscribe<A>(to:)(a1, a2, v6, v7, v8);
}

uint64_t closure #1 in closure #1 in LSKLocalStatusClient.subscribe<A>(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
  MEMORY[0x28223BE20](v11 - 8);
  v36 = &v33 - v12;
  v13 = type metadata accessor for LSKLocalStatusObservation(0, a2, a3, a4);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  LSKLocalStatusObservation<>.map<A>(to:)(a2, a3, a4, &v33 - v15);
  if (v5)
  {
    v33 = v13;
    v34 = v14;
    v35 = a5;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, log);
    v18 = v36;
    outlined init with copy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(a1, v36, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = v22;
      *v21 = 136315394;
      v23 = specialized LSKLocalStatusObservation.description.getter();
      v25 = v24;
      outlined destroy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v18, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v37);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      v27 = _typeName(_:qualified:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v37);

      *(v21 + 14) = v29;
      swift_arrayDestroy();
      MEMORY[0x259C5BF00](v22, -1, -1);
      MEMORY[0x259C5BF00](v21, -1, -1);
      MEMORY[0x259C5BDA0](v5);
    }

    else
    {
      MEMORY[0x259C5BDA0](v5);

      outlined destroy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v18, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
    }

    v30 = 1;
    v14 = v34;
    a5 = v35;
    v31 = v33;
  }

  else
  {
    (*(v14 + 32))(a5, v16, v13);
    v30 = 0;
    v31 = v13;
  }

  return (*(v14 + 56))(a5, v30, 1, v31);
}

uint64_t LSKLocalStatusClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PublishStatusInvocation.Parameters.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t PublishStatusInvocation.Parameters.payload.getter()
{
  v1 = *(v0 + 24);
  outlined copy of Data?(v1, *(v0 + 32));
  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PublishStatusInvocation.Parameters.CodingKeys()
{
  v1 = 0x64616F6C796170;
  if (*v0 != 1)
  {
    v1 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7955819;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PublishStatusInvocation.Parameters.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PublishStatusInvocation.Parameters.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PublishStatusInvocation.Parameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PublishStatusInvocation.Parameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PublishStatusInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit07PublishE10InvocationC10ParametersV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit07PublishE10InvocationC10ParametersV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMR);
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = *v1;
  v7 = *(v1 + 1);
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v17 = *(v1 + 4);
  v18 = v9;
  v16 = *(v1 + 5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = v6;
  v22 = v7;
  v23 = v8;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v10 = v3;
  v11 = v5;
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, &protocol conformance descriptor for LSKKey<A>);
  v12 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (v12)
  {
    return (*(v20 + 8))(v5, v3);
  }

  v14 = v16;
  v15 = v20;
  v21 = v18;
  v22 = v17;
  v24 = 1;
  outlined copy of Data?(v18, v17);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v21, v22);
  v21 = v14;
  v24 = 2;
  lazy protocol witness table accessor for type LSKStatusOptions and conformance LSKStatusOptions();

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v15 + 8))(v11, v10);
}

unint64_t lazy protocol witness table accessor for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions and conformance LSKStatusOptions()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions and conformance LSKStatusOptions);
  }

  return result;
}

uint64_t PublishStatusInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit07PublishE10InvocationC10ParametersV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit07PublishE10InvocationC10ParametersV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PublishStatusInvocation.Parameters.CodingKeys and conformance PublishStatusInvocation.Parameters.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v24 = 0;
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, "aO\r,,3");
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v20;
  v9 = v21;
  v19 = v22;
  v24 = 1;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v9;
  v17 = v20;
  v18 = v21;
  v24 = 2;
  lazy protocol witness table accessor for type LSKStatusOptions and conformance LSKStatusOptions();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v11 = v19;
  v10 = v20;
  *a2 = v23;
  v12 = v17;
  *(a2 + 8) = v16;
  *(a2 + 16) = v11;
  v13 = v18;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v10;

  outlined copy of Data?(v12, v13);

  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of Data?(v12, v13);
}

uint64_t PublishStatusInvocation.Response.initialStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  outlined copy of Data?(v5, v6);
}

uint64_t outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PublishStatusInvocation.Response.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PublishStatusInvocation.Response.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PublishStatusInvocation.Response.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit07PublishE10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit07PublishE10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v4 + 8);
  v10 = *(v4 + 16);
  v13 = *(v4 + 24);
  v12 = *(v4 + 32);
  v14 = *(v4 + 40);
  v18[0] = *v4;
  v19 = v11;
  v20 = v10;
  v21 = v13;
  v22 = v12;
  v23 = v14;
  v24 = 0;

  outlined copy of Data?(v13, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR, "I=\r,h)");
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v15 = v21;
  v16 = v22;

  outlined consume of Data?(v15, v16);

  if (!v3)
  {
    type metadata accessor for PublishStatusInvocation.Response(0);
    v18[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type SFXPCAsyncSequence<LSKPublishedStatus<Data>> and conformance SFXPCAsyncSequence<A>, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR, MEMORY[0x277D54AD8]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t lazy protocol witness table accessor for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys);
  }

  return result;
}

uint64_t PublishStatusInvocation.Response.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit07PublishE10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit07PublishE10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMR);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = type metadata accessor for PublishStatusInvocation.Response(0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PublishStatusInvocation.Response.CodingKeys and conformance PublishStatusInvocation.Response.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v11;
  v24 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v34 = 0;
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR, &protocol conformance descriptor for LSKPublishedStatus<A>);
  v14 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v29;
  v16 = v30;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  *v13 = v28;
  *(v13 + 1) = v15;
  *(v13 + 2) = v16;
  v22[0] = v16;
  v22[1] = v18;
  v22[2] = v17;
  *(v13 + 3) = v17;
  *(v13 + 4) = v18;
  *(v13 + 5) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
  v28 = 1;
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type SFXPCAsyncSequence<LSKPublishedStatus<Data>> and conformance SFXPCAsyncSequence<A>, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR, MEMORY[0x277D54AE8]);
  v20 = v24;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v27 + 8))(v10, v14);
  outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v20, &v13[*(v23 + 20)]);
  outlined init with copy of PublishStatusInvocation.Response(v13, v25, type metadata accessor for PublishStatusInvocation.Response);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of PublishStatusInvocation.Response(v13, type metadata accessor for PublishStatusInvocation.Response);
}

id PublishStatusInvocation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t PublishStatusInvocation.Response.init(initialStatus:updates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 40);
  *a4 = *a1;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  *(a4 + 24) = *(a1 + 24);
  *(a4 + 40) = v7;
  v8 = a4 + *(a3(0) + 20);

  return outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(a2, v8);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PublishStatusInvocation.Response.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x536C616974696E69 && a2 == 0xED00007375746174;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73657461647075 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LocalStatusInvocation.Response.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LocalStatusInvocation.Response.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocalStatusInvocation.Response.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit0dE10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit0dE10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v4 + 8);
  v10 = *(v4 + 16);
  v13 = *(v4 + 24);
  v12 = *(v4 + 32);
  v14 = *(v4 + 40);
  v18[0] = *v4;
  v19 = v11;
  v20 = v10;
  v21 = v13;
  v22 = v12;
  v23 = v14;
  v24 = 0;

  outlined copy of Data?(v13, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR, "I=\r,h)");
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v15 = v21;
  v16 = v22;

  outlined consume of Data?(v15, v16);

  if (!v3)
  {
    type metadata accessor for LocalStatusInvocation.Response(0);
    v18[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type SFXPCAsyncSequence<LSKPublishedStatus<Data>> and conformance SFXPCAsyncSequence<A>, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR, MEMORY[0x277D54AD8]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t lazy protocol witness table accessor for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys);
  }

  return result;
}

uint64_t LocalStatusInvocation.Response.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit0dE10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit0dE10InvocationC8ResponseV10CodingKeys33_41D7F868091D53452C6D311108DB6532LLOGMR);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = type metadata accessor for LocalStatusInvocation.Response(0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LocalStatusInvocation.Response.CodingKeys and conformance LocalStatusInvocation.Response.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v11;
  v24 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v34 = 0;
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR, &protocol conformance descriptor for LSKPublishedStatus<A>);
  v14 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v29;
  v16 = v30;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  *v13 = v28;
  *(v13 + 1) = v15;
  *(v13 + 2) = v16;
  v22[0] = v16;
  v22[1] = v18;
  v22[2] = v17;
  *(v13 + 3) = v17;
  *(v13 + 4) = v18;
  *(v13 + 5) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
  v28 = 1;
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type SFXPCAsyncSequence<LSKPublishedStatus<Data>> and conformance SFXPCAsyncSequence<A>, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR, MEMORY[0x277D54AE8]);
  v20 = v24;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v27 + 8))(v10, v14);
  outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v20, &v13[*(v23 + 20)]);
  outlined init with copy of PublishStatusInvocation.Response(v13, v25, type metadata accessor for LocalStatusInvocation.Response);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of PublishStatusInvocation.Response(v13, type metadata accessor for LocalStatusInvocation.Response);
}

uint64_t outlined init with copy of PublishStatusInvocation.Response(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id PublishStatusInvocation.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id @objc PublishStatusInvocation.init()(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PublishStatusInvocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type PublishStatusInvocation.Parameters and conformance PublishStatusInvocation.Parameters()
{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters and conformance PublishStatusInvocation.Parameters;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters and conformance PublishStatusInvocation.Parameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters and conformance PublishStatusInvocation.Parameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters and conformance PublishStatusInvocation.Parameters;
  if (!lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters and conformance PublishStatusInvocation.Parameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PublishStatusInvocation.Parameters and conformance PublishStatusInvocation.Parameters);
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
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

uint64_t getEnumTagSinglePayload for PublishStatusInvocation.Parameters(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for PublishStatusInvocation.Parameters(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void type metadata accessor for LSKPublishedStatus<Data>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LSKPublishedStatus<Data>)
  {
    v2 = lazy protocol witness table accessor for type Data and conformance Data();
    v3 = lazy protocol witness table accessor for type Data and conformance Data();
    v4 = lazy protocol witness table accessor for type Data and conformance Data();
    v7[0] = MEMORY[0x277CC9318];
    v7[1] = v2;
    v7[2] = v3;
    v7[3] = v4;
    v5 = type metadata accessor for LSKPublishedStatus(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for LSKPublishedStatus<Data>);
    }
  }
}

void type metadata accessor for SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SFXPCAsyncSequence<LSKPublishedStatus<Data>>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SFXPCAsyncSequence<LSKPublishedStatus<Data>>?);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PublishStatusInvocation.Response(uint64_t a1)
{
  type metadata accessor for LSKPublishedStatus<Data>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for PublishStatusInvocation.Parameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PublishStatusInvocation.Parameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized LSKLocalStatusObservation.description.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type OSLogDateFormatter and conformance OSLogDateFormatter();
  Date.formatted<A>(_:)();
  _StringGuts.grow(_:)(24);
  MEMORY[0x259C5B730]();

  MEMORY[0x259C5B730](9, 0xE100000000000000);
  v2 = *v0;
  v3 = v1[1];

  v5 = specialized Collection.prefix(_:)(8, v2, v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x259C5B700](v5, v7, v9, v11);
  v14 = v13;

  MEMORY[0x259C5B730](v12, v14);

  MEMORY[0x259C5B730](0x22206D4E20, 0xE500000000000000);
  MEMORY[0x259C5B730](v1[2], v1[3]);
  MEMORY[0x259C5B730](0x20644D2022, 0xE500000000000000);
  MEMORY[0x259C5B730](v1[4], v1[5]);
  MEMORY[0x259C5B730](24585, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x259C5B730](96, 0xE100000000000000);
  return 0;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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

uint64_t specialized PublishStatusInvocation.Parameters.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined init with copy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t LSKLocalStatusObservation<>.map<A>(to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v6 = v4;
  v46 = a3;
  v10 = type metadata accessor for Date();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v39 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a1 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v36 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v5)
  {
    v19 = v4 + *(v17 + 60);
    v20 = *v19;
    v34 = a4;
    v21 = *(v19 + 1);
    v22 = *(v19 + 2);
    v40[0] = v20;
    v41 = v21;
    v42 = v22;
    LSKKey.eraseToData()(v43);

    v40[0] = v43[0];
    v41 = v44;
    v42 = v45;
    v23 = *v4;
    v24 = v4[1];
    v25 = v4[3];
    v32 = v6[2];
    v33 = v23;
    v31 = v6[4];
    v26 = v6[5];
    v27 = v6 + *(v17 + 52);
    v28 = v39;
    (*(v37 + 16))(v39, v27, v38);
    v29 = v36;
    (*(v35 + 32))(v36, v16, a1);
    LSKLocalStatusObservation.init(key:deviceIDSIdentifier:deviceName:deviceModel:timestamp:value:)(v40, v33, v24, v32, v25, v31, v26, v28, v34, v29, a1, a2, v46);
  }

  return result;
}

uint64_t LSKLocalStatusObservation.deviceIDSIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LSKLocalStatusObservation.deviceName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LSKLocalStatusObservation.deviceModel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t LSKLocalStatusObservation.timestamp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t LSKLocalStatusObservation.key.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 60);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
}

uint64_t LSKLocalStatusObservation.init(key:deviceIDSIdentifier:deviceName:deviceModel:timestamp:value:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = *a1;
  v19 = *(a1 + 1);
  v20 = *(a1 + 2);
  v21 = type metadata accessor for LSKLocalStatusObservation(0, a11, a12, a13);
  v22 = &a9[v21[15]];
  *v22 = v18;
  *(v22 + 1) = v19;
  *(v22 + 2) = v20;
  *a9 = a2;
  *(a9 + 1) = a3;
  *(a9 + 2) = a4;
  *(a9 + 3) = a5;
  *(a9 + 4) = a6;
  *(a9 + 5) = a7;
  v23 = v21[13];
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 32))(&a9[v23], a8, v24);
  v25 = *(*(a11 - 8) + 32);
  v26 = &a9[v21[14]];

  return v25(v26, a10, a11);
}

uint64_t LSKLocalStatusObservation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000256167280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

Swift::Int LSKLocalStatusObservation.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](a1);
  return Hasher._finalize()();
}

unint64_t LSKLocalStatusObservation.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x614E656369766564;
  v2 = 0x6D617473656D6974;
  v3 = 0x65756C6176;
  if (a1 != 4)
  {
    v3 = 7955819;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 != 1)
  {
    v1 = 0x6F4D656369766564;
  }

  if (!a1)
  {
    v1 = 0xD000000000000013;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LSKLocalStatusObservation<A>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  LSKLocalStatusObservation.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKLocalStatusObservation<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = LSKLocalStatusObservation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance LSKLocalStatusObservation<A>.CodingKeys@<X0>(_BYTE *a2@<X8>)
{
  result = specialized LSKLocalStatusObservation.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKLocalStatusObservation<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKLocalStatusObservation<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LSKLocalStatusObservation.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v20 = a2[4];
  v21 = v4;
  v19 = v5;
  type metadata accessor for LSKLocalStatusObservation.CodingKeys(255, v4, v5, v20);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24[0] = 0;
  v10 = v22;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v10)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v11 = v20;
  v12 = v21;
  v24[0] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v24[0] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = v7;
  v24[0] = 3;
  type metadata accessor for Date();
  _s10Foundation4DateVACSEAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9580]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v22 = a2;
  v24[0] = 4;
  v14 = v11;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v15 = v23 + *(v22 + 15);
  v16 = *(v15 + 8);
  v17 = *(v15 + 16);
  v24[0] = *v15;
  v25 = v16;
  v26 = v17;
  v27 = 5;
  type metadata accessor for LSKKey(0, v12, v19, v14);

  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v13 + 8))(v9, v6);
}

uint64_t LSKLocalStatusObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a5;
  v53 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Date();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v55 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LSKLocalStatusObservation.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v57 = type metadata accessor for KeyedDecodingContainer();
  v51 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v12 = &v42 - v11;
  v50 = a3;
  v48 = a4;
  v13 = type metadata accessor for LSKLocalStatusObservation(0, a2, a3, a4);
  v46 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = (&v42 - v14);
  v16 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v56 = v12;
  v17 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v18 = v54;
  v58 = v13;
  v19 = v51;
  v20 = v52;
  v21 = v53;
  v45 = a2;
  v60 = 0;
  *v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v15[1] = v23;
  v60 = 1;
  v15[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v15[3] = v24;
  v60 = 2;
  v15[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v15[5] = v25;
  v60 = 3;
  _s10Foundation4DateVACSEAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC95A0]);
  v26 = v18;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v44 = 0;
  v43 = 0;
  v28 = v20;
  (*(v20 + 32))(v15 + v58[13], v55, v26);
  v60 = 4;
  v29 = v49;
  v30 = v44;
  v31 = v45;
  v32 = v50;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v44 = v30;
  if (v30)
  {
    (*(v19 + 8))(v56, v57);
    v33 = 0;
  }

  else
  {
    (*(v21 + 32))(v15 + v58[14], v29, v31);
    type metadata accessor for LSKKey(0, v31, v32, v48);
    v63 = 5;
    swift_getWitnessTable();
    v34 = v44;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v44 = v34;
    if (!v34)
    {
      (*(v19 + 8))(v56, v57);
      v37 = v61;
      v38 = v62;
      v39 = v58;
      v40 = v15 + v58[15];
      *v40 = v60;
      *(v40 + 1) = v37;
      *(v40 + 2) = v38;
      v41 = v46;
      (*(v46 + 16))(v47, v15, v39);
      __swift_destroy_boxed_opaque_existential_1(v59);
      return (*(v41 + 8))(v15, v39);
    }

    (*(v19 + 8))(v56, v57);
    v33 = 1;
  }

  v35 = v43;
  v36 = v54;
  __swift_destroy_boxed_opaque_existential_1(v59);

  if (!v35)
  {
  }

  v27 = v58;
  result = (*(v28 + 8))(v15 + v58[13], v36);
  if (v33)
  {
    return (*(v21 + 8))(v15 + v27[14], v45);
  }

  return result;
}

uint64_t _s10Foundation4DateVACSEAAWlTm_0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static LSKLocalStatusObservation<>.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1 == *a2 && a1[1] == a2[1];
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[2] == a2[2] ? (v12 = a1[3] == a2[3]) : (v12 = 0), (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[4] == a2[4] && a1[5] == a2[5] || (_stringCompareWithSmolCheck(_:_:expecting:)())) && (v13 = type metadata accessor for LSKLocalStatusObservation(0, a3, a4, a5), (static Date.== infix(_:_:)()) && (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v14 = *(v13 + 60);
    v16 = *(a1 + v14 + 8);
    v15 = *(a1 + v14 + 16);
    v25[0] = *(a1 + v14);
    v26 = v16;
    v27 = v15;
    v17 = a2 + v14;
    v18 = *(v17 + 1);
    v19 = *(v17 + 2);
    v22[0] = *v17;
    v23 = v18;
    v24 = v19;

    v20 = static LSKKey.== infix(_:_:)(v25, v22);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t LSKLocalStatusObservation.description.getter(uint64_t a1)
{
  v2 = v1;
  lazy protocol witness table accessor for type OSLogDateFormatter and conformance OSLogDateFormatter();
  Date.formatted<A>(_:)();
  _StringGuts.grow(_:)(24);
  MEMORY[0x259C5B730]();

  MEMORY[0x259C5B730](9, 0xE100000000000000);
  v3 = *v1;
  v4 = v2[1];

  v6 = specialized Collection.prefix(_:)(8, v3, v4, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x259C5B700](v6, v8, v10, v12);
  v15 = v14;

  MEMORY[0x259C5B730](v13, v15);

  MEMORY[0x259C5B730](0x22206D4E20, 0xE500000000000000);
  MEMORY[0x259C5B730](v2[2], v2[3]);
  MEMORY[0x259C5B730](0x20644D2022, 0xE500000000000000);
  MEMORY[0x259C5B730](v2[4], v2[5]);
  MEMORY[0x259C5B730](24585, 0xE200000000000000);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x259C5B730](96, 0xE100000000000000);
  return 0;
}

uint64_t type metadata completion function for LSKLocalStatusObservation(void *a1)
{
  result = type metadata accessor for Date();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      result = type metadata accessor for LSKKey(319, result, a1[3], a1[4]);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LSKLocalStatusObservation(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (v14 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(v8 + 64) + ((v11 + ((v10 + 48) & ~v10) + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v14 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v14 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v13 & 0x80000000) != 0)
  {
    if (v7 == v14)
    {
      v25 = *(v6 + 48);

      return v25((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    }

    else
    {
      v26 = *(v8 + 48);

      return v26((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10) + v11 + v12) & ~v12, v9);
    }
  }

  else
  {
    v24 = *(a1 + 1);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }
}

void storeEnumTagSinglePayload for LSKLocalStatusObservation(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for Date() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((*(v10 + 64) + ((v13 + ((v12 + 48) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v16 >= a3)
  {
    v20 = 0;
    v21 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v13 + ((v12 + 48) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v15 & 0x80000000) != 0)
        {
          if (v9 == v16)
          {
            v24 = *(v8 + 56);

            v24((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12, a2);
          }

          else
          {
            v25 = *(v10 + 56);

            v25((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12) + v13 + v14) & ~v14, a2, v11);
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = (a2 - 1);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((*(v10 + 64) + ((v13 + ((v12 + 48) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((*(v10 + 64) + ((v13 + ((v12 + 48) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v23 = ~v16 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

uint64_t getEnumTagSinglePayload for LSKLocalStatusObservation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LSKLocalStatusObservation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t LSKObservationsSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  *(v14 + 5) = a5;
  result = (*(v12 + 32))(&v14[v13], a1, a4);
  *a6 = partial apply for closure #1 in LSKObservationsSequence.init<A>(_:);
  a6[1] = v14;
  return result;
}

void *closure #1 in LSKObservationsSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v15 = swift_allocBox();
  (*(v12 + 16))(v14, a1, a4);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  result[6] = v15;
  *a6 = &async function pointer to partial apply for closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:);
  a6[1] = result;
  return result;
}

uint64_t closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a1;
  v6[8] = swift_getAssociatedTypeWitness();
  v6[9] = swift_projectBox();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:)()
{
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:);
  v3 = v0[8];
  v4 = v0[5];

  return MEMORY[0x282200308](v4, v3, AssociatedConformanceWitness);
}

{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (!v0)
  {
    swift_endAccess();
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:), 0, 0);
}

{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t LSKObservationsSequence.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](LSKObservationsSequence.AsyncIterator.next(), 0, 0);
}

uint64_t LSKObservationsSequence.AsyncIterator.next()()
{
  v4 = (**(v0 + 24) + ***(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = LSKObservationsSequence.AsyncIterator.next();
  v2 = *(v0 + 16);

  return v4(v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance LSKObservationsSequence<A, B>.AsyncIterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in LSKLocalStatusClient.status<A>(for:);

  return LSKObservationsSequence.AsyncIterator.next()(a1);
}

uint64_t _s14LocalStatusKit23LSKObservationsSequenceV13AsyncIteratorVyxq__GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = _s14LocalStatusKit23LSKObservationsSequenceV13AsyncIteratorVyxq__GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t _s14LocalStatusKit23LSKObservationsSequenceV13AsyncIteratorVyxq__GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance LSKObservationsSequence<A, B>()
{
  LSKObservationsSequence.makeAsyncIterator()();
}

uint64_t type metadata instantiation function for LSKObservationsSequence(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t type metadata instantiation function for LSKObservationsSequence.AsyncIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for LSKObservationsSequence(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for LSKObservationsSequence(uint64_t result, int a2, int a3)
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

uint64_t partial apply for closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LSKLocalStatusClient.status<A>(for:);

  return closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:)(a1, v8, v4, v5, v6, v7);
}

uint64_t LSKPublishedStatus<>.map<A>(to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v39 = a4;
  v40 = a2;
  v38 = a5;
  v8 = type metadata accessor for Optional();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - v10;
  v12 = *(a1 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = *(v5 + 8);
  v16 = *(v5 + 16);
  v18 = *(v5 + 32);
  v19 = *(v5 + 40);
  if (v18 >> 60 == 15)
  {
    v41[0] = *v5;
    v42 = v17;
    v43 = v16;
    v20 = v40;
    LSKKey.eraseToData()(v44);

    v41[0] = v44[0];
    v42 = v45;
    v43 = v46;
    (*(v12 + 56))(v11, 1, 1, a1);
    v21 = v38;
    v22 = v11;
    v23 = v19;
    v24 = a1;
    v25 = v20;
    v26 = a3;
  }

  else
  {
    v34 = *(v5 + 8);
    v35 = v16;
    v36 = v12;
    v37 = a3;
    v27 = *(v5 + 24);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    outlined copy of Data._Representation(v27, v18);
    JSONDecoder.init()();
    v28 = v47;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v27, v18);

    v47 = v28;
    if (v28)
    {
      return result;
    }

    v41[0] = v15;
    v42 = v34;
    v43 = v35;
    v30 = v40;
    v31 = v37;
    LSKKey.eraseToData()(v44);

    v41[0] = v44[0];
    v42 = v45;
    v43 = v46;
    v32 = v36;
    (*(v36 + 32))(v11, v14, a1);
    (*(v32 + 56))(v11, 0, 1, a1);
    v21 = v38;
    v22 = v11;
    v23 = v19;
    v24 = a1;
    v25 = v30;
    v26 = v31;
  }

  LSKPublishedStatus.init(key:value:devices:)(v41, v22, v23, v24, v25, v26, v39, v21);
}

uint64_t LSKPublishedStatus.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t LSKPublishedStatus.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t LSKPublishedStatus.pendingDevies.getter(uint64_t a1)
{
  v3 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for LSKDestinationDevice(0);
  v6 = *(v27 - 8);
  v7 = MEMORY[0x28223BE20](v27);
  v26 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = *(v1 + *(a1 + 56));
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    v24[1] = v5 + 8;
    v15 = MEMORY[0x277D84F90];
    v25 = v13;
    while (v14 < *(v12 + 16))
    {
      v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v17 = *(v6 + 72);
      outlined init with copy of LSKDestinationDevice(v12 + v16 + v17 * v14, v11, type metadata accessor for LSKDestinationDevice);
      outlined init with copy of LSKDestinationDevice(&v11[*(v27 + 28)], v5, type metadata accessor for LSKDestinationDevice.Delivery);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
      v19 = (*(*(v18 - 8) + 48))(v5, 3, v18);
      if ((v19 - 2) < 2)
      {
        result = outlined destroy of LSKDestinationDevice(v11, type metadata accessor for LSKDestinationDevice);
      }

      else
      {
        if (!v19)
        {

          v20 = type metadata accessor for Date();
          (*(*(v20 - 8) + 8))(v5, v20);
        }

        outlined init with take of LSKDestinationDevice(v11, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1);
          v15 = v28;
        }

        v23 = *(v15 + 16);
        v22 = *(v15 + 24);
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
          v15 = v28;
        }

        *(v15 + 16) = v23 + 1;
        result = outlined init with take of LSKDestinationDevice(v26, v15 + v16 + v23 * v17);
        v13 = v25;
      }

      if (v13 == ++v14)
      {
        return v15;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t outlined init with copy of LSKDestinationDevice(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of LSKDestinationDevice(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LSKDestinationDevice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LSKPublishedStatus.init(key:value:devices:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 8) = v11;
  *(a8 + 16) = v12;
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  v13 = type metadata accessor for LSKPublishedStatus(0, v17);
  v14 = *(v13 + 52);
  v15 = type metadata accessor for Optional();
  result = (*(*(v15 - 8) + 32))(a8 + v14, a2, v15);
  *(a8 + *(v13 + 56)) = a3;
  return result;
}

uint64_t static LSKPublishedStatus.== infix(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v36 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  v39 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v38 = v33 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = v33 - v16;
  v19 = *(a1 + 8);
  v18 = *(a1 + 16);
  LOBYTE(v41) = *a1;
  v42 = v19;
  v43 = v18;
  v20 = *(a2 + 1);
  v21 = *(a2 + 2);
  v45[0] = *a2;
  v46 = v20;
  v47 = v21;

  LOBYTE(v21) = static LSKKey.== infix(_:_:)(&v41, v45);

  if ((v21 & 1) == 0)
  {
    goto LABEL_8;
  }

  v41 = a3;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v33[1] = a6;
  v34 = type metadata accessor for LSKPublishedStatus(0, &v41);
  v35 = TupleTypeMetadata2;
  v22 = *(v34 + 52);
  v23 = *(TupleTypeMetadata2 + 48);
  v24 = *(v39 + 16);
  v24(v17, a1 + v22, v13);
  v24(&v17[v23], &a2[v22], v13);
  v25 = *(v40 + 48);
  if (v25(v17, 1, a3) == 1)
  {
    if (v25(&v17[v23], 1, a3) == 1)
    {
      (*(v39 + 8))(v17, v13);
LABEL_11:
      v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14LocalStatusKit20LSKDestinationDeviceV_Tt1g5(*(a1 + *(v34 + 56)), *&a2[*(v34 + 56)]);
      return v26 & 1;
    }

    goto LABEL_7;
  }

  v24(v38, v17, v13);
  if (v25(&v17[v23], 1, a3) == 1)
  {
    (*(v40 + 8))(v38, a3);
LABEL_7:
    (*(v37 + 8))(v17, v35);
    goto LABEL_8;
  }

  v28 = v40;
  v29 = v36;
  (*(v40 + 32))(v36, &v17[v23], a3);
  v30 = v38;
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v28 + 8);
  v32(v29, a3);
  v32(v30, a3);
  (*(v39 + 8))(v17, v13);
  if (v31)
  {
    goto LABEL_11;
  }

LABEL_8:
  v26 = 0;
  return v26 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14LocalStatusKit20LSKDestinationDeviceV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v47 = type metadata accessor for Date();
  v4 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit20LSKDestinationDeviceV8DeliveryO_AEtMd, &_s14LocalStatusKit20LSKDestinationDeviceV8DeliveryO_AEtMR);
  MEMORY[0x28223BE20](v49);
  v51 = &v40 - v9;
  v48 = type metadata accessor for LSKDestinationDevice(0);
  v10 = MEMORY[0x28223BE20](v48);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v15 = (&v40 - v14);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    return 0;
  }

  if (v16 && a1 != a2)
  {
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = a1 + v17;
    v19 = a2 + v17;
    v41 = (v4 + 32);
    v20 = *(v13 + 72);
    v44 = (v4 + 8);
    v45 = v20;
    while (1)
    {
      outlined init with copy of LSKDestinationDevice(v18, v15, type metadata accessor for LSKDestinationDevice);
      outlined init with copy of LSKDestinationDevice(v19, v12, type metadata accessor for LSKDestinationDevice);
      v22 = *v15 == *v12 && v15[1] == v12[1];
      if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v15[2] == v12[2] ? (v23 = v15[3] == v12[3]) : (v23 = 0), !v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v15[4] != v12[4] || v15[5] != v12[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {
LABEL_39:
        outlined destroy of LSKDestinationDevice(v12, type metadata accessor for LSKDestinationDevice);
        outlined destroy of LSKDestinationDevice(v15, type metadata accessor for LSKDestinationDevice);
        return 0;
      }

      v50 = v18;
      v24 = v8;
      v25 = *(v48 + 28);
      v26 = v51;
      v27 = v51 + *(v49 + 48);
      outlined init with copy of LSKDestinationDevice(v15 + v25, v51, type metadata accessor for LSKDestinationDevice.Delivery);
      outlined init with copy of LSKDestinationDevice(v12 + v25, v27, type metadata accessor for LSKDestinationDevice.Delivery);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
      v29 = *(*(v28 - 8) + 48);
      v30 = v29(v26, 3, v28);
      if (v30 > 1)
      {
        break;
      }

      if (v30)
      {
        v21 = v29(v27, 3, v28) == 1;
        goto LABEL_6;
      }

      outlined init with copy of LSKDestinationDevice(v51, v24, type metadata accessor for LSKDestinationDevice.Delivery);
      v31 = *(v28 + 48);
      v32 = *(v24 + v31 + 8);
      v42 = *(v24 + v31);
      v43 = v32;
      if (v29(v27, 3, v28))
      {

        (*v44)(v24, v47);
LABEL_36:
        outlined destroy of (LSKDestinationDevice.Delivery, LSKDestinationDevice.Delivery)(v51);
        goto LABEL_39;
      }

      v34 = *(v27 + v31);
      v33 = *(v27 + v31 + 8);
      v35 = v47;
      (*v41)(v46, v27, v47);
      v36 = static Date.== infix(_:_:)();
      v37 = *v44;
      (*v44)(v24, v35);
      if ((v36 & 1) == 0)
      {
        v37(v46, v47);

LABEL_38:
        outlined destroy of LSKDestinationDevice(v51, type metadata accessor for LSKDestinationDevice.Delivery);
        goto LABEL_39;
      }

      v8 = v24;
      if (v42 == v34 && v43 == v33)
      {

        v37(v46, v47);
      }

      else
      {
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v37(v46, v47);
        if ((v38 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

LABEL_8:
      outlined destroy of LSKDestinationDevice(v51, type metadata accessor for LSKDestinationDevice.Delivery);
      outlined destroy of LSKDestinationDevice(v12, type metadata accessor for LSKDestinationDevice);
      outlined destroy of LSKDestinationDevice(v15, type metadata accessor for LSKDestinationDevice);
      v19 += v45;
      v18 = v50 + v45;
      if (!--v16)
      {
        return 1;
      }
    }

    if (v30 == 2)
    {
      v21 = v29(v27, 3, v28) == 2;
    }

    else
    {
      v21 = v29(v27, 3, v28) == 3;
    }

LABEL_6:
    v8 = v24;
    if (!v21)
    {
      goto LABEL_36;
    }

    goto LABEL_8;
  }

  return 1;
}

uint64_t LSKPublishedStatus.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t LSKPublishedStatus.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 7955819;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0x73656369766564;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LSKPublishedStatus<A>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  LSKLocalStatusObservation.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKPublishedStatus<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = LSKPublishedStatus.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance LSKPublishedStatus<A>.CodingKeys@<X0>(_BYTE *a2@<X8>)
{
  result = specialized LSKPublishedStatus.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKPublishedStatus<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKPublishedStatus<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LSKPublishedStatus.encode(to:)(void *a1, uint64_t a2)
{
  v16[0] = a2;
  v3 = *(a2 + 16);
  v18 = *(a2 + 24);
  v20 = v3;
  v21 = v18;
  v17 = *(a2 + 32);
  v22 = v17;
  type metadata accessor for LSKPublishedStatus.CodingKeys(255, &v20);
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedEncodingContainer();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = v4;
  v9 = v16[1];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  LOBYTE(v20) = *v9;
  v21 = v10;
  *&v22 = v11;
  v23 = 0;
  v12 = v17;
  *&v17 = v3;
  type metadata accessor for LSKKey(0, v3, v18, v12);

  swift_getWitnessTable();
  v13 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v13)
  {
  }

  else
  {

    v14 = v16[0];
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = *(v9 + *(v14 + 56));
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14LocalStatusKit20LSKDestinationDeviceVGMd, &_sSay14LocalStatusKit20LSKDestinationDeviceVGMR);
    lazy protocol witness table accessor for type [LSKDestinationDevice] and conformance <A> [A](&lazy protocol witness table cache variable for type [LSKDestinationDevice] and conformance <A> [A], &lazy protocol witness table cache variable for type LSKDestinationDevice and conformance LSKDestinationDevice, &protocol conformance descriptor for LSKDestinationDevice, MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v8);
}

uint64_t LSKPublishedStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a6;
  v11 = type metadata accessor for Optional();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  v30 = &v26 - v12;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  type metadata accessor for LSKPublishedStatus.CodingKeys(255, &v38);
  swift_getWitnessTable();
  v36 = type metadata accessor for KeyedDecodingContainer();
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v26 - v13;
  v34 = a2;
  v38 = a2;
  v39 = a3;
  v31 = a4;
  v32 = a3;
  v40 = a4;
  v41 = a5;
  v15 = type metadata accessor for LSKPublishedStatus(0, &v38);
  v26 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v35 = v14;
  v18 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v30;
  type metadata accessor for LSKKey(0, v34, v32, v31);
  v42 = 0;
  swift_getWitnessTable();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v39;
  v21 = v40;
  *v17 = v38;
  *(v17 + 1) = v20;
  *(v17 + 2) = v21;
  LOBYTE(v38) = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v28 + 32))(&v17[*(v15 + 52)], v19, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14LocalStatusKit20LSKDestinationDeviceVGMd, &_sSay14LocalStatusKit20LSKDestinationDeviceVGMR);
  v37 = v17;
  v42 = 2;
  lazy protocol witness table accessor for type [LSKDestinationDevice] and conformance <A> [A](&lazy protocol witness table cache variable for type [LSKDestinationDevice] and conformance <A> [A], &lazy protocol witness table cache variable for type LSKDestinationDevice and conformance LSKDestinationDevice, &protocol conformance descriptor for LSKDestinationDevice, MEMORY[0x277D83978]);
  v22 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v33 + 8))(v22, v36);
  v23 = v37;
  *&v37[*(v15 + 56)] = v38;
  v24 = v26;
  (*(v26 + 16))(v27, v23, v15);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v24 + 8))(v23, v15);
}

uint64_t LSKPublishedStatus.debugDescription.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LSKDestinationDevice(0);
  v68 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v67 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, &v2[*(a1 + 52)], v8);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v16 = 0xE500000000000000;
    v17 = 0x3E6C696E3CLL;
  }

  else
  {
    (*(v13 + 32))(v15, v12, v7);
    v72 = 0;
    v73 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v17 = v72;
    v16 = v73;
    (*(v13 + 8))(v15, v7);
  }

  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v72 = 0x203A6E69616D6F64;
  v73 = 0xE800000000000000;
  v18 = 0xD000000000000021;
  v19 = *v2;
  v20 = "LSKTargetDeviceFlags";
  v21 = "com.apple.chrono";
  v22 = 0xD000000000000019;
  v23 = "com.apple.personalHotspot";
  v24 = 0xD000000000000014;
  if (v19 != 3)
  {
    v24 = 0xD00000000000002FLL;
    v23 = "com.apple.regulatory";
  }

  if (v19 != 2)
  {
    v22 = v24;
    v21 = v23;
  }

  if (*v2)
  {
    v18 = 0xD000000000000010;
    v20 = "kit.atDeskTesting";
  }

  if (*v2 <= 1u)
  {
    v25 = v18;
  }

  else
  {
    v25 = v22;
  }

  if (*v2 <= 1u)
  {
    v26 = v20;
  }

  else
  {
    v26 = v21;
  }

  MEMORY[0x259C5B730](v25, v26 | 0x8000000000000000);

  MEMORY[0x259C5B730](0x203A656D616E20, 0xE700000000000000);
  MEMORY[0x259C5B730](*(v2 + 1), *(v2 + 2));
  MEMORY[0x259C5B730](0x203A65756C617620, 0xE900000000000060);
  MEMORY[0x259C5B730](v17, v16);

  MEMORY[0x259C5B730](0x6563697665642060, 0xEC0000007B203A73);
  v27 = v72;
  v28 = v73;
  v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  v32 = v31 + 1;
  if (v31 >= v30 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v32;
  v33 = &v29[16 * v31];
  *(v33 + 4) = v27;
  *(v33 + 5) = v28;
  if (*(*&v2[*(a1 + 56)] + 16))
  {
    v72 = *&v2[*(a1 + 56)];

    specialized MutableCollection<>.sort(by:)(&v72);
    v34 = *(v72 + 16);
    if (v34)
    {
      v35 = v72 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
      v69 = *(v4 + 28);
      v36 = *(v68 + 72);
      v67 = v72;
      v68 = v36;
      do
      {
        outlined init with copy of LSKDestinationDevice(v35, v6, type metadata accessor for LSKDestinationDevice);
        v72 = 8224;
        v73 = 0xE200000000000000;
        v70 = 0;
        v71 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);
        v37 = LSKDestinationDevice.Delivery.description.getter();
        v39 = v38;

        v70 = v37;
        v71 = v39;
        MEMORY[0x259C5B730](8250, 0xE200000000000000);
        v40 = *v6;
        v41 = v6[1];

        v43 = specialized Collection.prefix(_:)(8, v40, v41, v42);
        v45 = v44;
        v47 = v46;
        v49 = v48;

        v50 = MEMORY[0x259C5B700](v43, v45, v47, v49);
        v52 = v51;

        MEMORY[0x259C5B730](v50, v52);

        MEMORY[0x259C5B730](0x22206D4E20, 0xE500000000000000);
        MEMORY[0x259C5B730](v6[2], v6[3]);
        MEMORY[0x259C5B730](0x20644D2022, 0xE500000000000000);
        MEMORY[0x259C5B730](v6[4], v6[5]);
        v53 = v70;
        v54 = v71;
        outlined destroy of LSKDestinationDevice(v6, type metadata accessor for LSKDestinationDevice);
        MEMORY[0x259C5B730](v53, v54);

        v55 = v72;
        v56 = v73;
        v58 = *(v29 + 2);
        v57 = *(v29 + 3);
        if (v58 >= v57 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v29);
        }

        *(v29 + 2) = v58 + 1;
        v59 = &v29[16 * v58];
        *(v59 + 4) = v55;
        *(v59 + 5) = v56;
        v35 += v68;
        --v34;
      }

      while (v34);
    }
  }

  else
  {
    v60 = *(v29 + 3);
    if ((v31 + 2) > (v60 >> 1))
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v31 + 2, 1, v29);
    }

    *(v29 + 2) = v31 + 2;
    v61 = &v29[16 * v32];
    strcpy(v61 + 32, "  <No devices>");
    v61[47] = -18;
  }

  v63 = *(v29 + 2);
  v62 = *(v29 + 3);
  if (v63 >= v62 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v29);
  }

  *(v29 + 2) = v63 + 1;
  v64 = &v29[16 * v63];
  *(v64 + 4) = 125;
  *(v64 + 5) = 0xE100000000000000;
  v72 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v65 = BidirectionalCollection<>.joined(separator:)();

  return v65;
}

BOOL closure #1 in LSKPublishedStatus.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = type metadata accessor for LSKDestinationDevice(0);
  outlined init with copy of LSKDestinationDevice(a1 + *(v10 + 28), v9, type metadata accessor for LSKDestinationDevice.Delivery);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v9, 3, v11);
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v13)
  {
    v15 = 2;
  }

  else
  {

    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 8))(v9, v14);
    v15 = 1;
  }

  outlined init with copy of LSKDestinationDevice(a2 + *(v10 + 28), v7, type metadata accessor for LSKDestinationDevice.Delivery);
  v16 = v12(v7, 3, v11);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v18 = 3;
    }

    else
    {
      v18 = 0;
    }
  }

  else if (v16)
  {
    v18 = 2;
  }

  else
  {

    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 8))(v7, v17);
    v18 = 1;
  }

  return v15 < v18;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type [LSKDestinationDevice] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14LocalStatusKit20LSKDestinationDeviceVGMd, &_sSay14LocalStatusKit20LSKDestinationDeviceVGMR);
    lazy protocol witness table accessor for type LSKDestinationDevice and conformance LSKDestinationDevice(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LSKDestinationDevice and conformance LSKDestinationDevice(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LSKDestinationDevice(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR);
  v10 = *(type metadata accessor for LSKDestinationDevice(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for LSKDestinationDevice(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *(type metadata accessor for LSKDestinationDevice(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LSKDestinationDevice(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LSKDestinationDevice(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v55 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v41 - v11;
  v12 = type metadata accessor for LSKDestinationDevice(0);
  v13 = MEMORY[0x28223BE20](v12);
  v52 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v56 = &v41 - v16;
  result = MEMORY[0x28223BE20](v15);
  v20 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v48 = v55 + 8;
    v49 = v54 + 8;
    v23 = v21 + v22 * (a3 - 1);
    v50 = -v22;
    v51 = v21;
    v24 = a1 - a3;
    v42 = v22;
    v25 = v21 + v22 * a3;
    v53 = &v41 - v19;
LABEL_5:
    v46 = v23;
    v47 = a3;
    v44 = v25;
    v45 = v24;
    v26 = v23;
    while (1)
    {
      outlined init with copy of LSKDestinationDevice(v25, v20, type metadata accessor for LSKDestinationDevice);
      outlined init with copy of LSKDestinationDevice(v26, v56, type metadata accessor for LSKDestinationDevice);
      v27 = v54;
      outlined init with copy of LSKDestinationDevice(&v20[*(v12 + 28)], v54, type metadata accessor for LSKDestinationDevice.Delivery);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
      v29 = *(*(v28 - 8) + 48);
      v30 = v29(v27, 3, v28);
      if (v30 > 1)
      {
        if (v30 == 2)
        {
          v32 = 3;
        }

        else
        {
          v32 = 0;
        }
      }

      else if (v30)
      {
        v32 = 2;
      }

      else
      {

        v31 = type metadata accessor for Date();
        (*(*(v31 - 8) + 8))(v54, v31);
        v32 = 1;
      }

      v33 = v12;
      v34 = v56 + *(v12 + 28);
      v35 = v55;
      outlined init with copy of LSKDestinationDevice(v34, v55, type metadata accessor for LSKDestinationDevice.Delivery);
      v36 = v29(v35, 3, v28);
      if (v36 > 1)
      {
        if (v36 == 2)
        {
          v38 = 3;
        }

        else
        {
          v38 = 0;
        }

        v12 = v33;
        v20 = v53;
      }

      else
      {
        v20 = v53;
        if (v36)
        {
          v38 = 2;
        }

        else
        {

          v37 = type metadata accessor for Date();
          (*(*(v37 - 8) + 8))(v55, v37);
          v38 = 1;
        }

        v12 = v33;
      }

      outlined destroy of LSKDestinationDevice(v56, type metadata accessor for LSKDestinationDevice);
      result = outlined destroy of LSKDestinationDevice(v20, type metadata accessor for LSKDestinationDevice);
      if (v32 >= v38)
      {
LABEL_4:
        a3 = v47 + 1;
        v23 = v46 + v42;
        v24 = v45 - 1;
        v25 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v51)
      {
        break;
      }

      v39 = v52;
      outlined init with take of LSKDestinationDevice(v25, v52);
      swift_arrayInitWithTakeFrontToBack();
      result = outlined init with take of LSKDestinationDevice(v39, v26);
      v26 += v50;
      v25 += v50;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v139 = a1;
  v7 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v135 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v135 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v135 - v17;
  v19 = type metadata accessor for LSKDestinationDevice(0);
  v151 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v144 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v160 = &v135 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v165 = &v135 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v163 = &v135 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v158 = &v135 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v153 = &v135 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v137 = &v135 - v33;
  result = MEMORY[0x28223BE20](v32);
  v136 = &v135 - v35;
  v36 = *(a3 + 8);
  v152 = a3;
  if (v36 < 1)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_124:
    a4 = *v139;
    if (!*v139)
    {
      goto LABEL_164;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v4 = v157;
    if ((result & 1) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_126;
  }

  v37 = 0;
  v141 = v18 + 8;
  v150 = v16;
  v140 = v16 + 8;
  v155 = v13 + 8;
  v38 = MEMORY[0x277D84F90];
  v162 = v10;
  v154 = v10 + 8;
  v138 = a4;
  v161 = v13;
  v148 = v18;
  v164 = v19;
  while (1)
  {
    v39 = v37;
    if (v37 + 1 >= v36)
    {
      v61 = v37 + 1;
    }

    else
    {
      v156 = v36;
      v142 = v37;
      v40 = *a3;
      v41 = *(v151 + 72);
      v4 = *a3 + v41 * (v37 + 1);
      v42 = v136;
      outlined init with copy of LSKDestinationDevice(v4, v136, type metadata accessor for LSKDestinationDevice);
      v159 = v40;
      v43 = v40 + v41 * v142;
      v44 = v137;
      outlined init with copy of LSKDestinationDevice(v43, v137, type metadata accessor for LSKDestinationDevice);
      v45 = v157;
      LODWORD(v149) = closure #1 in LSKPublishedStatus.debugDescription.getter(v42, v44);
      v157 = v45;
      if (v45)
      {
        outlined destroy of LSKDestinationDevice(v44, type metadata accessor for LSKDestinationDevice);
        outlined destroy of LSKDestinationDevice(v42, type metadata accessor for LSKDestinationDevice);
      }

      outlined destroy of LSKDestinationDevice(v44, type metadata accessor for LSKDestinationDevice);
      result = outlined destroy of LSKDestinationDevice(v42, type metadata accessor for LSKDestinationDevice);
      v46 = v142 + 2;
      v47 = v159 + v41 * (v142 + 2);
      v48 = v41;
      v159 = v41;
      do
      {
        if (v156 == v46)
        {
          v61 = v156;
          goto LABEL_26;
        }

        v51 = v153;
        outlined init with copy of LSKDestinationDevice(v47, v153, type metadata accessor for LSKDestinationDevice);
        outlined init with copy of LSKDestinationDevice(v4, v158, type metadata accessor for LSKDestinationDevice);
        outlined init with copy of LSKDestinationDevice(v51 + *(v19 + 28), v18, type metadata accessor for LSKDestinationDevice.Delivery);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
        v53 = *(*(v52 - 8) + 48);
        v54 = v53(v18, 3, v52);
        if (v54 > 1)
        {
          if (v54 == 2)
          {
            v56 = 3;
          }

          else
          {
            v56 = 0;
          }
        }

        else if (v54)
        {
          v56 = 2;
        }

        else
        {

          v55 = type metadata accessor for Date();
          (*(*(v55 - 8) + 8))(v18, v55);
          v56 = 1;
        }

        v57 = v158 + *(v19 + 28);
        v58 = v150;
        outlined init with copy of LSKDestinationDevice(v57, v150, type metadata accessor for LSKDestinationDevice.Delivery);
        v59 = v53(v58, 3, v52);
        if (v59 > 1)
        {
          if (v59 == 2)
          {
            v49 = 3;
          }

          else
          {
            v49 = 0;
          }
        }

        else if (v59)
        {
          v49 = 2;
        }

        else
        {

          v60 = type metadata accessor for Date();
          (*(*(v60 - 8) + 8))(v150, v60);
          v49 = 1;
        }

        v19 = v164;
        a3 = v152;
        outlined destroy of LSKDestinationDevice(v158, type metadata accessor for LSKDestinationDevice);
        result = outlined destroy of LSKDestinationDevice(v153, type metadata accessor for LSKDestinationDevice);
        v50 = v56 >= v49;
        ++v46;
        v48 = v159;
        v47 += v159;
        v4 += v159;
        v18 = v148;
      }

      while (((v149 ^ v50) & 1) != 0);
      v61 = v46 - 1;
LABEL_26:
      a4 = v138;
      v13 = v161;
      v39 = v142;
      if (v149)
      {
        if (v61 < v142)
        {
          goto LABEL_157;
        }

        if (v142 < v61)
        {
          v62 = v48 * (v61 - 1);
          v63 = v61 * v48;
          v156 = v61;
          v4 = v142;
          v64 = v142 * v48;
          do
          {
            if (v4 != --v61)
            {
              v65 = *a3;
              if (!v65)
              {
                goto LABEL_161;
              }

              outlined init with take of LSKDestinationDevice(v65 + v64, v144);
              if (v64 < v62 || v65 + v64 >= v65 + v63)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v64 != v62)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = outlined init with take of LSKDestinationDevice(v144, v65 + v62);
              a3 = v152;
              v48 = v159;
            }

            ++v4;
            v62 -= v48;
            v63 -= v48;
            v64 += v48;
          }

          while (v4 < v61);
          a4 = v138;
          v13 = v161;
          v18 = v148;
          v39 = v142;
          v61 = v156;
        }
      }
    }

    v66 = *(a3 + 8);
    if (v61 < v66)
    {
      if (__OFSUB__(v61, v39))
      {
        goto LABEL_154;
      }

      if (v61 - v39 < a4)
      {
        if (__OFADD__(v39, a4))
        {
          goto LABEL_155;
        }

        if (v39 + a4 >= v66)
        {
          a4 = *(a3 + 8);
        }

        else
        {
          a4 += v39;
        }

        if (a4 < v39)
        {
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v38);
          v38 = result;
LABEL_126:
          v166 = v38;
          v131 = *(v38 + 2);
          if (v131 >= 2)
          {
            while (1)
            {
              v132 = *a3;
              if (!*a3)
              {
                goto LABEL_162;
              }

              v133 = *&v38[16 * v131];
              a3 = *&v38[16 * v131 + 24];
              specialized _merge<A>(low:mid:high:buffer:by:)(v132 + *(v151 + 72) * v133, v132 + *(v151 + 72) * *&v38[16 * v131 + 16], v132 + *(v151 + 72) * a3, a4);
              if (v4)
              {
              }

              if (a3 < v133)
              {
                goto LABEL_151;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v38 = specialized _ArrayBuffer._consumeAndCreateNew()(v38);
              }

              if (v131 - 2 >= *(v38 + 2))
              {
                goto LABEL_152;
              }

              v134 = &v38[16 * v131];
              *v134 = v133;
              v134[1] = a3;
              v166 = v38;
              result = specialized Array.remove(at:)(v131 - 1);
              v38 = v166;
              v131 = *(v166 + 2);
              a3 = v152;
              if (v131 <= 1)
              {
              }
            }
          }
        }

        if (v61 != a4)
        {
          break;
        }
      }
    }

    a4 = v61;
    if (v61 < v39)
    {
      goto LABEL_153;
    }

LABEL_50:
    result = swift_isUniquelyReferenced_nonNull_native();
    v145 = a4;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
      v38 = result;
    }

    v68 = *(v38 + 2);
    v67 = *(v38 + 3);
    v4 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v38);
      v38 = result;
    }

    *(v38 + 2) = v4;
    v69 = &v38[16 * v68];
    v70 = v145;
    *(v69 + 4) = v39;
    *(v69 + 5) = v70;
    v159 = *v139;
    if (!v159)
    {
      goto LABEL_163;
    }

    if (v68)
    {
      while (1)
      {
        a4 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v71 = *(v38 + 4);
          v72 = *(v38 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_69:
          if (v74)
          {
            goto LABEL_142;
          }

          v87 = &v38[16 * v4];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_145;
          }

          v93 = &v38[16 * a4 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_148;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_149;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              a4 = v4 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v97 = &v38[16 * v4];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_83:
        if (v92)
        {
          goto LABEL_144;
        }

        v100 = &v38[16 * a4];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_147;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_90:
        v108 = a4 - 1;
        if (a4 - 1 >= v4)
        {
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
          goto LABEL_156;
        }

        if (!*a3)
        {
          goto LABEL_160;
        }

        v109 = *&v38[16 * v108 + 32];
        v110 = *&v38[16 * a4 + 40];
        v111 = v157;
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + *(v151 + 72) * v109, *a3 + *(v151 + 72) * *&v38[16 * a4 + 32], *a3 + *(v151 + 72) * v110, v159);
        v157 = v111;
        if (v111)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_138;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew()(v38);
        }

        if (v108 >= *(v38 + 2))
        {
          goto LABEL_139;
        }

        v112 = &v38[16 * v108];
        *(v112 + 4) = v109;
        *(v112 + 5) = v110;
        v166 = v38;
        result = specialized Array.remove(at:)(a4);
        v38 = v166;
        v4 = *(v166 + 2);
        v13 = v161;
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v38[16 * v4 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_140;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_141;
      }

      v82 = &v38[16 * v4];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_143;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_146;
      }

      if (v86 >= v78)
      {
        v104 = &v38[16 * a4 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_150;
        }

        if (v73 < v107)
        {
          a4 = v4 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v36 = *(a3 + 8);
    v37 = v145;
    a4 = v138;
    if (v145 >= v36)
    {
      goto LABEL_124;
    }
  }

  v135 = v38;
  v113 = *a3;
  v114 = *(v151 + 72);
  v4 = *a3 + v114 * (v61 - 1);
  v115 = -v114;
  v142 = v39;
  v116 = v39 - v61;
  v159 = v113;
  v143 = v114;
  v117 = v113 + v61 * v114;
  v145 = a4;
LABEL_101:
  v156 = v61;
  v146 = v117;
  v147 = v116;
  v118 = v117;
  v149 = v4;
  while (1)
  {
    v119 = v163;
    outlined init with copy of LSKDestinationDevice(v118, v163, type metadata accessor for LSKDestinationDevice);
    outlined init with copy of LSKDestinationDevice(v4, v165, type metadata accessor for LSKDestinationDevice);
    outlined init with copy of LSKDestinationDevice(v119 + *(v19 + 28), v13, type metadata accessor for LSKDestinationDevice.Delivery);
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
    v121 = *(*(v120 - 8) + 48);
    v122 = v121(v13, 3, v120);
    if (v122 > 1)
    {
      if (v122 == 2)
      {
        v124 = 3;
      }

      else
      {
        v124 = 0;
      }
    }

    else if (v122)
    {
      v124 = 2;
    }

    else
    {

      v123 = type metadata accessor for Date();
      (*(*(v123 - 8) + 8))(v13, v123);
      v124 = 1;
    }

    v125 = v162;
    outlined init with copy of LSKDestinationDevice(v165 + *(v164 + 28), v162, type metadata accessor for LSKDestinationDevice.Delivery);
    v126 = v121(v125, 3, v120);
    if (v126 > 1)
    {
      if (v126 == 2)
      {
        v128 = 3;
      }

      else
      {
        v128 = 0;
      }
    }

    else if (v126)
    {
      v128 = 2;
    }

    else
    {

      v127 = type metadata accessor for Date();
      (*(*(v127 - 8) + 8))(v162, v127);
      v128 = 1;
    }

    v13 = v161;
    v19 = v164;
    outlined destroy of LSKDestinationDevice(v165, type metadata accessor for LSKDestinationDevice);
    result = outlined destroy of LSKDestinationDevice(v163, type metadata accessor for LSKDestinationDevice);
    if (v124 >= v128)
    {
LABEL_100:
      v61 = v156 + 1;
      v4 = v149 + v143;
      v116 = v147 - 1;
      v117 = v146 + v143;
      a4 = v145;
      if (v156 + 1 != v145)
      {
        goto LABEL_101;
      }

      a3 = v152;
      v38 = v135;
      v18 = v148;
      v39 = v142;
      if (v145 < v142)
      {
        goto LABEL_153;
      }

      goto LABEL_50;
    }

    if (!v159)
    {
      break;
    }

    v129 = v160;
    outlined init with take of LSKDestinationDevice(v118, v160);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of LSKDestinationDevice(v129, v4);
    v4 += v115;
    v118 += v115;
    if (__CFADD__(v116++, 1))
    {
      goto LABEL_100;
    }
  }

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
  return result;
}