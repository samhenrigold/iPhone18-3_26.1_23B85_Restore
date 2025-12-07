uint64_t MLS.IncomingGroupCreated.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F43746E65696C63;
  if (a1 != 2)
  {
    v2 = 0x6D654D726568746FLL;
  }

  if (a1)
  {
    v1 = 0x7265646E6573;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingGroupCreated<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingGroupCreated<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingMemberAdded.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D654D6465646461 && a2 == 0xEC00000073726562)
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

uint64_t MLS.IncomingMemberAdded.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F43746E65696C63;
  if (a1 != 2)
  {
    v2 = 0x6D654D6465646461;
  }

  if (a1)
  {
    v1 = 0x7265646E6573;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingMemberAdded<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingMemberAdded<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingMemberKicked.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D64656B63696BLL && a2 == 0xED0000737265626DLL)
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

uint64_t MLS.IncomingMemberKicked.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F43746E65696C63;
  if (a1 != 2)
  {
    v2 = 0x654D64656B63696BLL;
  }

  if (a1)
  {
    v1 = 0x7265646E6573;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingMemberKicked<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingMemberKicked<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingGroupCreated.encode(to:)(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v17 = *(a2 + 16);
  v18 = v7;
  v22[0] = v17;
  v22[1] = v6;
  v16[1] = v6;
  v16[2] = v8;
  v22[2] = v7;
  v22[3] = v8;
  a3(255, v22);
  swift_getWitnessTable();
  v9 = type metadata accessor for KeyedEncodingContainer();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22[0]) = 0;
  v13 = v19;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v13)
  {
    LOBYTE(v22[0]) = 1;
    v14 = *(v18 + 16);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22[0] = *(v20 + *(a2 + 60));
    v23 = 3;
    type metadata accessor for Set();
    v21 = v14;
    swift_getWitnessTable();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t MLS.IncomingGroupCreated.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t *)@<X5>, uint64_t (*a8)(void, uint64_t *)@<X7>, uint64_t a9@<X8>)
{
  v51 = a8;
  v39 = a9;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v43 = v15;
  v44 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v41 = &v37 - v18;
  v45 = *(a2 - 8);
  MEMORY[0x28223BE20](v17);
  v46 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  a6(255, &v54);
  swift_getWitnessTable();
  v20 = type metadata accessor for KeyedDecodingContainer();
  v49 = *(v20 - 8);
  v50 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - v21;
  v47 = a4;
  v48 = a2;
  v54 = a2;
  v55 = a3;
  v42 = a3;
  v56 = a4;
  v57 = a5;
  v40 = a5;
  v23 = v51(0, &v54);
  v38 = *(v23 - 1);
  MEMORY[0x28223BE20](v23);
  v25 = (&v37 - v24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v51 = v22;
  v26 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = v46;
  v28 = v47;
  v29 = a1;
  v30 = v48;
  LOBYTE(v54) = 0;
  *v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v25[1] = v31;
  v52 = v31;
  LOBYTE(v54) = 1;
  v32 = v27;
  v33 = *(v28 + 8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = v33;
  (*(v45 + 32))(v25 + v23[13], v32, v30);
  LOBYTE(v54) = 2;
  v34 = v41;
  v46 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v44 + 32))(v25 + v23[14], v34, v43);
  type metadata accessor for Set();
  v58 = 3;
  v53 = v37;
  swift_getWitnessTable();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v49 + 8))(v51, v50);
  *(v25 + v23[15]) = v54;
  v35 = v38;
  (*(v38 + 16))(v39, v25, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return (*(v35 + 8))(v25, v23);
}

uint64_t MLS.IncomingGroupCreated.init(identifier:sender:clientContext:otherMembers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t (*a11)(void, void *))
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v20[0] = a6;
  v20[1] = a7;
  v20[2] = a8;
  v20[3] = a10;
  v16 = a11(0, v20);
  (*(*(a6 - 8) + 32))(&a9[v16[13]], a3, a6);
  v17 = v16[14];
  v18 = type metadata accessor for Optional();
  result = (*(*(v18 - 8) + 32))(&a9[v17], a4, v18);
  *&a9[v16[15]] = a5;
  return result;
}

uint64_t MLS.IncomingSelfKicked.identifier.getter()
{
  v0 = specialized MLS.IncomingEventType.identifier.getter();

  return v0;
}

uint64_t _s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedV10CodingKeys33_555E9926E93F10315268B329E7E007DCLLO11stringValueSSvg_0(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x7265646E6573;
  }

  return 0x6F43746E65696C63;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingSelfKicked<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingSelfKicked<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingDowngradeRecommended<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingDowngradeRecommended<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingResendApplicationMessage.identifierToResend.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));

  return v2;
}

uint64_t MLS.IncomingGroupNameChange.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065)
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

uint64_t MLS.IncomingGroupNameChange.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F43746E65696C63;
  if (a1 != 2)
  {
    v2 = 0x6D614E70756F7267;
  }

  if (a1)
  {
    v1 = 0x7265646E6573;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingGroupNameChange<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingGroupNameChange<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingResendApplicationMessage.encode(to:)(void *a1, void *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[5];
  v15 = a2[4];
  v16 = v5;
  v17[0] = v5;
  v17[1] = v6;
  v14[1] = v7;
  v14[2] = v6;
  v17[2] = v15;
  v17[3] = v7;
  a3(255, v17);
  swift_getWitnessTable();
  v8 = type metadata accessor for KeyedEncodingContainer();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17[0]) = 0;
  v12 = v17[5];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    LOBYTE(v17[0]) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17[0]) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t MLS.IncomingResendApplicationMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t *)@<X5>, uint64_t (*a8)(void, uint64_t *)@<X7>, uint64_t a9@<X8>)
{
  v57 = a8;
  v45 = a9;
  v52 = type metadata accessor for Optional();
  v49 = *(v52 - 8);
  v15 = MEMORY[0x28223BE20](v52);
  v47 = v42 - v16;
  v50 = *(a2 - 8);
  MEMORY[0x28223BE20](v15);
  v51 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a2;
  v59 = a3;
  v60 = a4;
  v61 = a5;
  a6(255, &v58);
  swift_getWitnessTable();
  v18 = type metadata accessor for KeyedDecodingContainer();
  v54 = *(v18 - 8);
  v55 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = v42 - v19;
  v56 = a2;
  v58 = a2;
  v59 = a3;
  v48 = a3;
  v53 = a4;
  v60 = a4;
  v61 = a5;
  v46 = a5;
  v21 = v57(0, &v58);
  v44 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = (v42 - v22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v57 = v20;
  v24 = v62;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v43 = v23;
  v62 = v21;
  v25 = v55;
  v26 = v56;
  v27 = a1;
  v29 = v51;
  v28 = v52;
  LOBYTE(v58) = 0;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v43;
  *v43 = v30;
  v31[1] = v32;
  v42[1] = v32;
  LOBYTE(v58) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v50 + 32))(v31 + v62[13], v29, v26);
  LOBYTE(v58) = 2;
  v33 = v47;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v49 + 32))(v31 + v62[14], v33, v28);
  LOBYTE(v58) = 3;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v35;
  (*(v54 + 8))(v57, v25);
  v37 = v62;
  v39 = v43;
  v38 = v44;
  v40 = (v43 + v62[15]);
  *v40 = v34;
  v40[1] = v36;
  (*(v38 + 16))(v45, v39, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return (*(v38 + 8))(v39, v37);
}

uint64_t MLS.IncomingResendApplicationMessage.init(identifier:sender:clientContext:identifierToResend:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t (*a12)(void, void *))
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v23[0] = a7;
  v23[1] = a8;
  v23[2] = a10;
  v23[3] = a11;
  v18 = a12(0, v23);
  (*(*(a7 - 8) + 32))(&a9[v18[13]], a3, a7);
  v19 = v18[14];
  v20 = type metadata accessor for Optional();
  result = (*(*(v20 - 8) + 32))(&a9[v19], a4, v20);
  v22 = &a9[v18[15]];
  *v22 = a5;
  *(v22 + 1) = a6;
  return result;
}

uint64_t MLS.IncomingResendApplicationMessage.clientContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t MLS.IncomingApplicationSignatureVerified.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
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

Swift::Int MLS.IncomingEventType.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.IncomingEventType<A, B>.CodingKeys(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *, void, void, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.IncomingEventType<A, B>.CodingKeys@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingInternalStateUpdated<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingInternalStateUpdated<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingApplicationSignatureVerified.encode(to:)(void *a1, void *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[5];
  v15 = a2[4];
  v16 = v5;
  v17[0] = v5;
  v17[1] = v6;
  v14[1] = v7;
  v14[2] = v6;
  v17[2] = v15;
  v17[3] = v7;
  a3(255, v17);
  swift_getWitnessTable();
  v8 = type metadata accessor for KeyedEncodingContainer();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17[0]) = 0;
  v12 = v17[5];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    LOBYTE(v17[0]) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t MLS.IncomingApplicationSignatureVerified.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t *)@<X5>, uint64_t (*a8)(void, uint64_t *)@<X7>, uint64_t a9@<X8>)
{
  v49 = a8;
  v39 = a9;
  v15 = type metadata accessor for Optional();
  v37 = *(v15 - 8);
  v38 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v41 = v34 - v17;
  v43 = *(a2 - 8);
  MEMORY[0x28223BE20](v16);
  v45 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  a6(255, &v50);
  swift_getWitnessTable();
  v48 = type metadata accessor for KeyedDecodingContainer();
  v44 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v20 = v34 - v19;
  v46 = a4;
  v47 = a2;
  v50 = a2;
  v51 = a3;
  v42 = a3;
  v52 = a4;
  v53 = a5;
  v40 = a5;
  v21 = v49(0, &v50);
  v36 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = (v34 - v22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v49 = v20;
  v24 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = v45;
  v26 = v44;
  v35 = v23;
  v54 = a1;
  v27 = v47;
  LOBYTE(v50) = 0;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v35;
  *v35 = v28;
  v29[1] = v30;
  v34[1] = v30;
  LOBYTE(v50) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v43 + 32))(v29 + *(v21 + 52), v25, v27);
  LOBYTE(v50) = 2;
  v31 = v41;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v26 + 8))(v49, v48);
  (*(v37 + 32))(v29 + *(v21 + 56), v31, v38);
  v32 = v36;
  (*(v36 + 16))(v39, v29, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  return (*(v32 + 8))(v29, v21);
}

uint64_t MLS.IncomingApplicationSignatureVerified.init(identifier:sender:clientContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t (*a10)(void, void *))
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v18[0] = a5;
  v18[1] = a6;
  v18[2] = a7;
  v18[3] = a8;
  v14 = a10(0, v18);
  (*(*(a5 - 8) + 32))(&a9[*(v14 + 52)], a3, a5);
  v15 = *(v14 + 56);
  v16 = type metadata accessor for Optional();
  return (*(*(v16 - 8) + 32))(&a9[v15], a4, v16);
}

uint64_t MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v209 = a4;
  v207 = a2;
  v208 = a6;
  v212 = a1;
  v213 = a5;
  v203 = a7;
  v9 = type metadata accessor for Optional();
  v10 = MEMORY[0x28223BE20](v9);
  v11 = MEMORY[0x28223BE20](v10);
  v199 = &v193 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v198 = &v193 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v197 = &v193 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v196 = &v193 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v195 = &v193 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  v194 = &v193 - v25;
  v211 = a3;
  v26 = MEMORY[0x28223BE20](v24);
  v201 = &v193 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v200 = &v193 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v193 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v193 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v193 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v193 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v43 = MEMORY[0x28223BE20](v42);
  v44 = MEMORY[0x28223BE20](v43);
  v45 = MEMORY[0x28223BE20](v44);
  v55 = &v193 - v54;
  v57 = *v7;
  v56 = *(v7 + 8);
  v59 = *(v7 + 16);
  v58 = *(v7 + 24);
  v60 = *(v7 + 32);
  v61 = *(v7 + 40);
  v63 = *(v7 + 48);
  v62 = *(v7 + 56);
  v64 = *(v7 + 64);
  v65 = *(v7 + 72);
  v66 = *(v7 + 96);
  v204 = v67;
  v205 = v63;
  v202 = v57;
  v206 = v62;
  if (v66 > 4)
  {
    if (v66 <= 6)
    {
      if (v66 != 5)
      {
        v198 = v65;
        v201 = v64;
        v214 = v59;
        v215 = v58;
        v216 = v60;
        LOBYTE(v217) = v61;
        v145 = v213;
        v146 = *(v213 + 48);
        v147 = v56;

        outlined copy of MLS.AllMember(v59, v58);
        v148 = v211;
        v149 = v210;
        v146(&v214, v211, v145);
        if (!v149)
        {
          v160 = v147;
          v161 = v196;
          v162 = v208;
          v163 = v209;
          static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v205, v206, v209, v208, v196, v208);
          MLS.IncomingGroupNameChange.init(identifier:sender:clientContext:groupName:)(v202, v160, v38, v161, v201, v198, v148, v163, v203, v145, v162);
          v214 = v148;
          v215 = v163;
          v216 = v145;
          v217 = v162;
          type metadata accessor for MLS.IncomingEventType(0, &v214);
          swift_storeEnumTagMultiPayload();
        }
      }

      v214 = v59;
      v215 = v58;
      v216 = v60;
      LOBYTE(v217) = v61;
      v105 = v213;
      v106 = *(v213 + 48);
      v107 = v56;

      outlined copy of MLS.AllMember(v59, v58);
      v108 = v211;
      v109 = v210;
      v106(&v214, v211, v105);
      if (v109)
      {
      }

      v156 = v107;
      v157 = v197;
      v158 = v208;
      v159 = v209;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v205, v206, v209, v208, v197, v208);
      v182 = v35;
      v183 = v213;
      MLS.IncomingDowngradeRecommended.init(identifier:sender:clientContext:)(v202, v156, v182, v157, v108, v159, v213, v158, v203);
      v214 = v108;
      v215 = v159;
      v216 = v183;
      v217 = v158;
      type metadata accessor for MLS.IncomingEventType(0, &v214);
    }

    else
    {
      if (v66 != 7)
      {
        if (v66 == 8)
        {
          v198 = v65;
          v201 = v64;
          v214 = v59;
          v215 = v58;
          v216 = v60;
          LOBYTE(v217) = v61;
          v83 = v213;
          v84 = *(v213 + 48);
          v85 = v56;

          outlined copy of MLS.AllMember(v59, v58);
          v86 = v200;
          v87 = v211;
          v88 = v210;
          v84(&v214, v211, v83);
          if (!v88)
          {
            v89 = v199;
            v90 = v208;
            v91 = v209;
            static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v205, v206, v209, v208, v199, v208);
            MLS.IncomingResendApplicationMessage.init(identifier:sender:clientContext:identifierToResend:)(v202, v85, v86, v89, v201, v198, v87, v91, v203, v83, v90);
            v214 = v87;
            v215 = v91;
            v216 = v83;
            v217 = v90;
            type metadata accessor for MLS.IncomingEventType(0, &v214);
            swift_storeEnumTagMultiPayload();
          }
        }

        v200 = v51;
        v214 = v59;
        v215 = v58;
        v216 = v60;
        LOBYTE(v217) = v61;
        v131 = v213;
        v132 = *(v213 + 48);
        v133 = v56;

        outlined copy of MLS.AllMember(v59, v58);
        v134 = v201;
        v135 = v211;
        v136 = v210;
        v132(&v214, v211, v131);
        if (!v136)
        {
          v153 = v200;
          v154 = v208;
          v155 = v209;
          static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v205, v206, v209, v208, v200, v208);
          MLS.IncomingInternalStateUpdated.init(identifier:sender:clientContext:)(v202, v133, v134, v153, v135, v155, v131, v154, v203);
          v214 = v135;
          v215 = v155;
          v216 = v131;
          v217 = v154;
          type metadata accessor for MLS.IncomingEventType(0, &v214);
          return swift_storeEnumTagMultiPayload();
        }
      }

      v214 = v59;
      v215 = v58;
      v216 = v60;
      LOBYTE(v217) = v61;
      v117 = v213;
      v118 = *(v213 + 48);
      v119 = v56;

      outlined copy of MLS.AllMember(v59, v58);
      v120 = v211;
      v121 = v210;
      v118(&v214, v211, v117);
      if (v121)
      {
      }

      v150 = v198;
      v151 = v208;
      v152 = v209;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v205, v206, v209, v208, v198, v208);
      v168 = v119;
      v169 = v213;
      MLS.IncomingApplicationSignatureVerified.init(identifier:sender:clientContext:)(v202, v168, v32, v150, v120, v152, v213, v151, v203);
      v214 = v120;
      v215 = v152;
      v216 = v169;
      v217 = v151;
      type metadata accessor for MLS.IncomingEventType(0, &v214);
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (v66 <= 1)
  {
    v201 = v64;
    v93 = v213;
    if (v66)
    {
      v198 = v48;
      v199 = v53;
      v200 = v45;
      v214 = v59;
      v215 = v58;
      v216 = v60;
      LOBYTE(v217) = v61;
      v137 = *(v213 + 48);
      v138 = v56;
      v139 = v52;

      outlined copy of MLS.AllMember(v59, v58);
      v140 = v211;
      v141 = v210;
      v137(&v214, v211, v93);
      if (!v141)
      {
        v210 = v139;
        v142 = v138;
        v143 = v208;
        v144 = static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v205, v206, v209, v208, v198, v208);
        v207 = &v193;
        v214 = v201;
        MEMORY[0x28223BE20](v144);
        *(&v193 - 6) = v140;
        *(&v193 - 5) = v177;
        v191 = v178;
        v192 = v143;

        v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
        v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v181 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
        v187 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:), (&v193 - 8), v179, v140, v180, v181, MEMORY[0x277D84950], &v218);

        v214 = v187;
        type metadata accessor for Array();
        v188 = v213;
        swift_getWitnessTable();
        v189 = Set.init<A>(_:)();
        v190 = v209;
        MLS.IncomingGroupCreated.init(identifier:sender:clientContext:otherMembers:)(v202, v142, v210, v198, v189, v140, v209, v188, v203, v143);
        v214 = v140;
        v215 = v190;
        v216 = v188;
        v217 = v143;
        type metadata accessor for MLS.IncomingEventType(0, &v214);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v94 = *(v7 + 88);
      v200 = *(v7 + 80);
      v198 = v65;
      v199 = v94;
      v214 = v59;
      v215 = v58;
      v216 = v60;
      LOBYTE(v217) = v61;
      v95 = v213;
      v96 = *(v213 + 48);
      v97 = v56;

      outlined copy of MLS.AllMember(v59, v58);
      v98 = v211;
      v99 = v210;
      v96(&v214, v211, v95);
      if (!v99)
      {
        v100 = v200;
        v101 = v97;
        v102 = v194;
        v103 = v208;
        v104 = v209;
        static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v205, v206, v209, v208, v194, v208);
        v212 = 0;
        v172 = v213;
        v173 = v55;
        v174 = v102;
        v175 = v201;
        v176 = v198;
        MLS.IncomingApplicationMessage.init(identifier:sender:clientContext:rawDecryptedData:messageIdentifier:)(v202, v101, v173, v174, v201, v198, v100, v199, v203, v98, v104, v213, v103);
        v214 = v98;
        v215 = v104;
        v216 = v172;
        v217 = v103;
        type metadata accessor for MLS.IncomingEventType(0, &v214);
        swift_storeEnumTagMultiPayload();
        outlined copy of Data._Representation(v175, v176);
      }
    }
  }

  v68 = v213;
  if (v66 == 2)
  {
    v198 = v47;
    v199 = v53;
    v200 = v45;
    v201 = v64;
    v214 = v59;
    v215 = v58;
    v216 = v60;
    LOBYTE(v217) = v61;
    v110 = *(v213 + 48);
    v111 = v56;
    v112 = v50;

    outlined copy of MLS.AllMember(v59, v58);
    v113 = v211;
    v114 = v210;
    v110(&v214, v211, v68);
    if (!v114)
    {
      v197 = v112;
      v210 = v111;
      v115 = v208;
      v116 = static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v205, v206, v209, v208, v198, v208);
      v207 = &v193;
      v214 = v201;
      MEMORY[0x28223BE20](v116);
      *(&v193 - 6) = v113;
      *(&v193 - 5) = v164;
      v191 = v68;
      v192 = v115;

      v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
      v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v167 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
      v184 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:), (&v193 - 8), v165, v113, v166, v167, MEMORY[0x277D84950], &v218);

      v214 = v184;
      type metadata accessor for Array();
      swift_getWitnessTable();
      v185 = Set.init<A>(_:)();
      v186 = v209;
      MLS.IncomingMemberAdded.init(identifier:sender:clientContext:addedMembers:)(v202, v210, v197, v198, v185, v113, v209, v68, v203, v115);
      v214 = v113;
      v215 = v186;
      v216 = v68;
      v217 = v115;
      type metadata accessor for MLS.IncomingEventType(0, &v214);
      return swift_storeEnumTagMultiPayload();
    }
  }

  if (v66 != 3)
  {
    v214 = v59;
    v215 = v58;
    v216 = v60;
    LOBYTE(v217) = v61;
    v122 = *(v213 + 48);
    v123 = v56;

    outlined copy of MLS.AllMember(v59, v58);
    v124 = v210;
    v125 = v68;
    v126 = v211;
    v122(&v214, v211, v125);
    if (v124)
    {
    }

    v127 = v123;
    v128 = v195;
    v129 = v208;
    v130 = v209;
    static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v205, v206, v209, v208, v195, v208);
    v170 = v127;
    v171 = v213;
    MLS.IncomingSelfKicked.init(identifier:sender:clientContext:)(v202, v170, v41, v128, v126, v130, v213, v129, v203);
    v214 = v126;
    v215 = v130;
    v216 = v171;
    v217 = v129;
    type metadata accessor for MLS.IncomingEventType(0, &v214);
    return swift_storeEnumTagMultiPayload();
  }

  v198 = v46;
  v199 = v53;
  v200 = v45;
  v201 = v64;
  v214 = v59;
  v215 = v58;
  v216 = v60;
  LOBYTE(v217) = v61;
  v69 = *(v213 + 48);
  v70 = v56;
  v71 = v49;

  outlined copy of MLS.AllMember(v59, v58);
  v72 = v211;
  v73 = v210;
  v69(&v214, v211, v68);
  if (v73)
  {
  }

  v197 = v71;
  v210 = v70;
  v74 = v208;
  v75 = static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v205, v206, v209, v208, v198, v208);
  v207 = &v193;
  v214 = v201;
  MEMORY[0x28223BE20](v75);
  *(&v193 - 6) = v72;
  *(&v193 - 5) = v76;
  v191 = v68;
  v192 = v74;

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v79 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
  v80 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:), (&v193 - 8), v77, v72, v78, v79, MEMORY[0x277D84950], &v218);

  v214 = v80;
  type metadata accessor for Array();
  swift_getWitnessTable();
  v81 = Set.init<A>(_:)();
  v82 = v209;
  MLS.IncomingMemberKicked.init(identifier:sender:clientContext:kickedMembers:)(v202, v210, v197, v198, v81, v72, v209, v68, v203, v74);
  v214 = v72;
  v215 = v82;
  v216 = v68;
  v217 = v74;
  type metadata accessor for MLS.IncomingEventType(0, &v214);
  return swift_storeEnumTagMultiPayload();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SD4KeysVyAHSayAF14KeyPackageInfoVG_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
  result = MEMORY[0x266754790](v2, &type metadata for MLS.AllMember, v3);
  v5 = 0;
  v18 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = outlined consume of MLS.AllMember(v17[0], v17[1]))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(a1 + 48) + ((v10 << 11) | (32 * v11));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    outlined copy of MLS.AllMember(*v12, v14);
    specialized Set._Variant.insert(_:)(v17, v13, v14, v15, v16);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v18;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v16[0] = *a1;
  v16[1] = v11;
  v16[2] = v12;
  v17 = v13;
  v14 = *(a5 + 48);
  outlined copy of MLS.AllMember(v16[0], v11);
  result = v14(v16, a3, a5);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

uint64_t MLS.IncomingEventType.allMemberEvent()@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v277 = a2;
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v285 = a1[2];
  v4 = v285;
  v286 = v3;
  v287 = v6;
  v288 = v5;
  v7 = type metadata accessor for MLS.IncomingInternalStateUpdated(0, &v285);
  v275 = *(v7 - 8);
  v276 = v7;
  MEMORY[0x28223BE20](v7);
  v273 = &v241 - v8;
  v285 = v4;
  v286 = v3;
  v287 = v6;
  v288 = v5;
  v274 = type metadata accessor for MLS.IncomingResendApplicationMessage(0, &v285);
  v272 = *(v274 - 8);
  MEMORY[0x28223BE20](v274);
  v250 = (&v241 - v9);
  v285 = v4;
  v286 = v3;
  v287 = v6;
  v288 = v5;
  v10 = type metadata accessor for MLS.IncomingApplicationSignatureVerified(0, &v285);
  v270 = *(v10 - 8);
  v271 = v10;
  MEMORY[0x28223BE20](v10);
  v269 = &v241 - v11;
  v285 = v4;
  v286 = v3;
  v287 = v6;
  v288 = v5;
  v266 = type metadata accessor for MLS.IncomingDowngradeRecommended(0, &v285);
  v265 = *(v266 - 8);
  MEMORY[0x28223BE20](v266);
  v262 = &v241 - v12;
  v285 = v4;
  v286 = v3;
  v287 = v6;
  v288 = v5;
  v263 = type metadata accessor for MLS.IncomingGroupNameChange(0, &v285);
  v261 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v249 = (&v241 - v13);
  v285 = v4;
  v286 = v3;
  v287 = v6;
  v288 = v5;
  v257 = type metadata accessor for MLS.IncomingSelfKicked(0, &v285);
  v255 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v253 = &v241 - v14;
  v285 = v4;
  v286 = v3;
  v287 = v6;
  v288 = v5;
  v268 = type metadata accessor for MLS.IncomingMemberKicked(0, &v285);
  v267 = *(v268 - 8);
  MEMORY[0x28223BE20](v268);
  v264 = &v241 - v15;
  v285 = v4;
  v286 = v3;
  v287 = v6;
  v288 = v5;
  v260 = type metadata accessor for MLS.IncomingMemberAdded(0, &v285);
  v259 = *(v260 - 8);
  MEMORY[0x28223BE20](v260);
  v258 = &v241 - v16;
  v285 = v4;
  v286 = v3;
  v287 = v6;
  v288 = v5;
  v256 = type metadata accessor for MLS.IncomingGroupCreated(0, &v285);
  v254 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v252 = &v241 - v17;
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  v281 = v18;
  v282 = v19;
  v20 = MEMORY[0x28223BE20](v18);
  v248 = &v241 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v247 = &v241 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v246 = &v241 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v245 = &v241 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v243 = &v241 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v244 = &v241 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v242 = &v241 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v241 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v241 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v241 - v40;
  v285 = v4;
  v286 = v3;
  v280 = v3;
  v287 = v6;
  v288 = v5;
  v278 = v5;
  v42 = type metadata accessor for MLS.IncomingApplicationMessage(0, &v285);
  v251 = *(v42 - 1);
  v43 = MEMORY[0x28223BE20](v42);
  v45 = (&v241 - v44);
  MEMORY[0x28223BE20](v43);
  v47 = &v241 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v48 + 16))(v47, v279, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v76 = v262;
        v77 = v266;
        (*(v265 + 32))(v262, v47, v266);
        v78 = v76[1];
        v276 = *v76;
        v79 = *(v6 + 40);

        v79(&v285, v4, v6);
        v81 = v285;
        v80 = v286;
        v82 = v287;
        LODWORD(v279) = v288;
        v83 = v76 + *(v77 + 56);
        v84 = v245;
        (*(v282 + 16))(v245, v83, v281);
        v85 = v280;
        v86 = *(v280 - 8);
        if ((*(v86 + 48))(v84, 1, v280) == 1)
        {
          v87 = 0;
          v88 = 0xF000000000000000;
        }

        else
        {
          v168 = v289;
          v169 = MLS.ClientContext.dataRepresentation.getter(v85, v278);
          v289 = v168;
          if (v168)
          {

            outlined consume of MLS.AllMember(v81, v80);
            v159 = *(v265 + 8);
            v160 = v262;
            v161 = &v290;
LABEL_46:
            v159(v160, *(v161 - 32));
            return (*(v86 + 8))(v84, v85);
          }

          v87 = v169;
          v88 = v170;
          v281 = v85;
          v282 = v86;
        }

        (*(v265 + 8))(v262, v266);
        result = (*(v282 + 8))(v84, v281);
        v190 = v277;
        *v277 = v276;
        v190[1] = v78;
        v190[2] = v81;
        v190[3] = v80;
        v190[4] = v82;
        *(v190 + 40) = v279;
        v190[6] = v87;
        v190[7] = v88;
        v191 = 5;
        goto LABEL_75;
      }

      v135 = v249;
      v136 = v263;
      (*(v261 + 32))(v249, v47, v263);
      v137 = v135[1];
      v275 = *v135;
      v138 = *(v6 + 40);

      v138(&v285, v4, v6);
      v276 = v285;
      v279 = v286;
      v139 = v287;
      v140 = v288;
      v65 = v243;
      (*(v282 + 16))(v243, v135 + *(v136 + 56), v281);
      v66 = v280;
      v67 = *(v280 - 8);
      if ((*(v67 + 48))(v65, 1, v280) == 1)
      {
        LODWORD(v278) = v140;
        v141 = 0;
        v142 = 0xF000000000000000;
      }

      else
      {
        v174 = v289;
        v175 = MLS.ClientContext.dataRepresentation.getter(v66, v278);
        v289 = v174;
        if (v174)
        {

          outlined consume of MLS.AllMember(v276, v279);
          (*(v261 + 8))(v135, v263);
          return (*(v67 + 8))(v65, v66);
        }

        v141 = v175;
        v142 = v176;
        LODWORD(v278) = v140;
        v281 = v66;
        v282 = v67;
      }

      (*(v282 + 8))(v65, v281);
      v234 = v263;
      v235 = (v135 + *(v263 + 60));
      v237 = *v235;
      v236 = v235[1];
      v238 = *(v261 + 8);

      result = v238(v135, v234);
      v190 = v277;
      v239 = v276;
      *v277 = v275;
      v190[1] = v137;
      v240 = v279;
      v190[2] = v239;
      v190[3] = v240;
      v190[4] = v139;
      *(v190 + 40) = v278;
      v190[6] = v141;
      v190[7] = v142;
      v190[8] = v237;
      v190[9] = v236;
      *(v190 + 5) = v283;
      v191 = 6;
      goto LABEL_75;
    }

    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v59 = v250;
        v60 = v274;
        (*(v272 + 32))(v250, v47, v274);
        v61 = v59[1];
        v275 = *v59;
        v62 = *(v6 + 40);

        v62(&v285, v4, v6);
        v276 = v285;
        v279 = v286;
        v63 = v287;
        v64 = v288;
        v65 = v247;
        (*(v282 + 16))(v247, v59 + *(v60 + 56), v281);
        v66 = v280;
        v67 = *(v280 - 8);
        if ((*(v67 + 48))(v65, 1, v280) == 1)
        {
          LODWORD(v278) = v64;
          v68 = 0;
          v69 = 0xF000000000000000;
LABEL_62:
          (*(v282 + 8))(v65, v281);
          v205 = v274;
          v206 = (v59 + *(v274 + 60));
          v208 = *v206;
          v207 = v206[1];
          v209 = *(v272 + 8);

          result = v209(v59, v205);
          v190 = v277;
          v210 = v276;
          *v277 = v275;
          v190[1] = v61;
          v211 = v279;
          v190[2] = v210;
          v190[3] = v211;
          v190[4] = v63;
          *(v190 + 40) = v278;
          v190[6] = v68;
          v190[7] = v69;
          v190[8] = v208;
          v190[9] = v207;
          *(v190 + 5) = v283;
          v191 = 8;
          goto LABEL_75;
        }

        v153 = v289;
        v154 = MLS.ClientContext.dataRepresentation.getter(v66, v278);
        v289 = v153;
        if (!v153)
        {
          v68 = v154;
          v69 = v155;
          LODWORD(v278) = v64;
          v281 = v66;
          v282 = v67;
          goto LABEL_62;
        }

        outlined consume of MLS.AllMember(v276, v279);
        (*(v272 + 8))(v59, v274);
        return (*(v67 + 8))(v65, v66);
      }

      v118 = v276;
      v119 = v273;
      (*(v275 + 32))(v273, v47, v276);
      v120 = v119[1];
      v274 = *v119;
      v121 = *(v6 + 40);

      v121(&v285, v4, v6);
      v123 = v285;
      v122 = v286;
      v124 = v287;
      LODWORD(v279) = v288;
      v125 = v119 + *(v118 + 56);
      v84 = v248;
      (*(v282 + 16))(v248, v125, v281);
      v85 = v280;
      v86 = *(v280 - 8);
      if ((*(v86 + 48))(v84, 1, v280) == 1)
      {
        v126 = 0;
        v127 = 0xF000000000000000;
LABEL_66:
        (*(v275 + 8))(v273, v276);
        result = (*(v282 + 8))(v84, v281);
        v190 = v277;
        *v277 = v274;
        v190[1] = v120;
        v190[2] = v123;
        v190[3] = v122;
        v190[4] = v124;
        *(v190 + 40) = v279;
        v190[6] = v126;
        v190[7] = v127;
        v191 = 9;
        goto LABEL_75;
      }

      v162 = v289;
      v163 = MLS.ClientContext.dataRepresentation.getter(v85, v278);
      v289 = v162;
      if (!v162)
      {
        v126 = v163;
        v127 = v164;
        v281 = v85;
        v282 = v86;
        goto LABEL_66;
      }

      outlined consume of MLS.AllMember(v123, v122);
      (*(v275 + 8))(v273, v276);
      return (*(v86 + 8))(v84, v85);
    }

    v98 = v269;
    v99 = v271;
    (*(v270 + 32))(v269, v47, v271);
    v100 = v98[1];
    v276 = *v98;
    v101 = *(v6 + 40);

    v101(&v285, v4, v6);
    v103 = v285;
    v102 = v286;
    v104 = v287;
    LODWORD(v279) = v288;
    v105 = v98 + *(v99 + 56);
    v84 = v246;
    (*(v282 + 16))(v246, v105, v281);
    v85 = v280;
    v86 = *(v280 - 8);
    if ((*(v86 + 48))(v84, 1, v280) == 1)
    {
      v106 = 0;
      v107 = 0xF000000000000000;
    }

    else
    {
      v147 = v289;
      v148 = MLS.ClientContext.dataRepresentation.getter(v85, v278);
      v289 = v147;
      if (v147)
      {

        outlined consume of MLS.AllMember(v103, v102);
        (*(v270 + 8))(v269, v271);
        return (*(v86 + 8))(v84, v85);
      }

      v106 = v148;
      v107 = v149;
      v281 = v85;
      v282 = v86;
    }

    (*(v270 + 8))(v269, v271);
    result = (*(v282 + 8))(v84, v281);
    v190 = v277;
    *v277 = v276;
    v190[1] = v100;
    v190[2] = v103;
    v190[3] = v102;
    v190[4] = v104;
    *(v190 + 40) = v279;
    v190[6] = v106;
    v190[7] = v107;
    v191 = 7;
LABEL_75:
    *(v190 + 96) = v191;
    return result;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v50 = v278;
    if (EnumCaseMultiPayload == 2)
    {
      v89 = v258;
      v90 = v260;
      (*(v259 + 32))(v258, v47, v260);
      v91 = v89[1];
      v274 = *v89;
      v92 = *(v6 + 40);
      v279 = v91;

      v92(&v285, v4, v6);
      v275 = v285;
      v276 = v286;
      v93 = v287;
      v94 = v288;
      (*(v282 + 16))(v36, v89 + *(v90 + 56), v281);
      v95 = v280;
      v96 = *(v280 - 8);
      if ((*(v96 + 48))(v36, 1, v280) == 1)
      {
        v271 = 0;
        v272 = v93;
        LODWORD(v273) = v94;
        v270 = 0xF000000000000000;
        v97 = v279;
      }

      else
      {
        v143 = v289;
        v144 = MLS.ClientContext.dataRepresentation.getter(v95, v50);
        v289 = v143;
        if (v143)
        {

          outlined consume of MLS.AllMember(v275, v276);
          (*(v259 + 8))(v258, v260);
          return (*(v96 + 8))(v36, v95);
        }

        v271 = v144;
        v272 = v93;
        LODWORD(v273) = v94;
        v281 = v95;
        v282 = v96;
        v97 = v279;
        v270 = v145;
      }

      v177 = (*(v282 + 8))(v36, v281);
      v178 = v260;
      v179 = v258;
      *&v283 = *&v258[*(v260 + 60)];
      MEMORY[0x28223BE20](v177);
      *(&v241 - 4) = v4;
      *(&v241 - 3) = v95;
      v180 = v278;
      *(&v241 - 2) = v6;
      *(&v241 - 1) = v180;
      v181 = type metadata accessor for Set();

      WitnessTable = swift_getWitnessTable();
      v184 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in MLS.IncomingEventType.allMemberEvent(), (&v241 - 6), v181, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v183);

      v185 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v184);

      result = (*(v259 + 8))(v179, v178);
      v186 = v277;
      v187 = v275;
      *v277 = v274;
      v186[1] = v97;
      v188 = v276;
      v186[2] = v187;
      v186[3] = v188;
      v186[4] = v272;
      *(v186 + 40) = v273;
      v189 = v270;
      v186[6] = v271;
      v186[7] = v189;
      v186[8] = v185;
      *(v186 + 9) = v283;
      v186[11] = v284;
      *(v186 + 96) = 2;
      return result;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v51 = v264;
      v52 = v268;
      (*(v267 + 32))(v264, v47, v268);
      v53 = v51[1];
      v274 = *v51;
      v54 = *(v6 + 40);

      v54(&v285, v4, v6);
      v275 = v285;
      v276 = v286;
      v279 = v287;
      v55 = v288;
      v56 = v242;
      (*(v282 + 16))(v242, v51 + *(v52 + 56), v281);
      v57 = v280;
      v58 = *(v280 - 8);
      if ((*(v58 + 48))(v56, 1, v280) == 1)
      {
        LODWORD(v272) = v55;
        v273 = v53;
        v270 = 0xF000000000000000;
        v271 = 0;
      }

      else
      {
        v150 = v289;
        v151 = MLS.ClientContext.dataRepresentation.getter(v57, v50);
        v289 = v150;
        if (v150)
        {

          outlined consume of MLS.AllMember(v275, v276);
          (*(v267 + 8))(v264, v268);
          return (*(v58 + 8))(v56, v57);
        }

        LODWORD(v272) = v55;
        v273 = v53;
        v281 = v57;
        v282 = v58;
        v270 = v152;
        v271 = v151;
      }

      v192 = (*(v282 + 8))(v56, v281);
      v193 = v268;
      v194 = v264;
      *&v283 = *&v264[*(v268 + 60)];
      MEMORY[0x28223BE20](v192);
      *(&v241 - 4) = v4;
      *(&v241 - 3) = v57;
      v195 = v278;
      *(&v241 - 2) = v6;
      *(&v241 - 1) = v195;
      v196 = type metadata accessor for Set();

      v197 = swift_getWitnessTable();
      v199 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType.allMemberEvent(), (&v241 - 6), v196, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], v197, MEMORY[0x277D84AC0], v198);

      v200 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v199);

      result = (*(v267 + 8))(v194, v193);
      v201 = v277;
      v202 = v273;
      *v277 = v274;
      v201[1] = v202;
      v203 = v276;
      v201[2] = v275;
      v201[3] = v203;
      v201[4] = v279;
      *(v201 + 40) = v272;
      v204 = v270;
      v201[6] = v271;
      v201[7] = v204;
      v201[8] = v200;
      *(v201 + 9) = v283;
      v201[11] = v284;
      *(v201 + 96) = 3;
      return result;
    }

    v108 = v253;
    v109 = v257;
    (*(v255 + 32))(v253, v47, v257);
    v110 = v108[1];
    v276 = *v108;
    v111 = *(v6 + 40);

    v111(&v285, v4, v6);
    v113 = v285;
    v112 = v286;
    v114 = v287;
    LODWORD(v279) = v288;
    v115 = v108 + *(v109 + 56);
    v84 = v244;
    (*(v282 + 16))(v244, v115, v281);
    v85 = v280;
    v86 = *(v280 - 8);
    if ((*(v86 + 48))(v84, 1, v280) == 1)
    {
      v116 = 0;
      v117 = 0xF000000000000000;
LABEL_64:
      (*(v255 + 8))(v253, v257);
      result = (*(v282 + 8))(v84, v281);
      v190 = v277;
      *v277 = v276;
      v190[1] = v110;
      v190[2] = v113;
      v190[3] = v112;
      v190[4] = v114;
      *(v190 + 40) = v279;
      v190[6] = v116;
      v190[7] = v117;
      v191 = 4;
      goto LABEL_75;
    }

    v156 = v289;
    v157 = MLS.ClientContext.dataRepresentation.getter(v85, v278);
    v289 = v156;
    if (!v156)
    {
      v116 = v157;
      v117 = v158;
      v281 = v85;
      v282 = v86;
      goto LABEL_64;
    }

    outlined consume of MLS.AllMember(v113, v112);
    v159 = *(v255 + 8);
    v160 = v253;
    v161 = &v288;
    goto LABEL_46;
  }

  v279 = v6 + 40;
  if (EnumCaseMultiPayload)
  {
    v128 = v252;
    v129 = v256;
    (*(v254 + 32))(v252, v47, v256);
    v130 = v128[1];
    v274 = *v128;
    v131 = *(v6 + 40);

    v131(&v285, v4, v6);
    v275 = v285;
    v276 = v286;
    v279 = v287;
    v132 = v288;
    (*(v282 + 16))(v39, v128 + *(v129 + 56), v281);
    v133 = v280;
    v134 = *(v280 - 8);
    if ((*(v134 + 48))(v39, 1, v280) == 1)
    {
      LODWORD(v273) = v132;
      v271 = 0xF000000000000000;
      v272 = 0;
    }

    else
    {
      v171 = v289;
      v172 = MLS.ClientContext.dataRepresentation.getter(v133, v278);
      v289 = v171;
      if (v171)
      {

        outlined consume of MLS.AllMember(v275, v276);
        (*(v254 + 8))(v252, v256);
        return (*(v134 + 8))(v39, v133);
      }

      LODWORD(v273) = v132;
      v281 = v133;
      v282 = v134;
      v271 = v173;
      v272 = v172;
    }

    v221 = (*(v282 + 8))(v39, v281);
    v222 = v256;
    v223 = v252;
    *&v283 = *&v252[*(v256 + 60)];
    MEMORY[0x28223BE20](v221);
    *(&v241 - 4) = v4;
    *(&v241 - 3) = v133;
    v224 = v278;
    *(&v241 - 2) = v6;
    *(&v241 - 1) = v224;
    v225 = type metadata accessor for Set();

    v226 = swift_getWitnessTable();
    v228 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType.allMemberEvent(), (&v241 - 6), v225, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], v226, MEMORY[0x277D84AC0], v227);

    v229 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v228);

    result = (*(v254 + 8))(v223, v222);
    v230 = v277;
    v231 = v275;
    *v277 = v274;
    v230[1] = v130;
    v232 = v276;
    v230[2] = v231;
    v230[3] = v232;
    v230[4] = v279;
    *(v230 + 40) = v273;
    v233 = v271;
    v230[6] = v272;
    v230[7] = v233;
    v230[8] = v229;
    *(v230 + 9) = v283;
    v230[11] = v284;
    *(v230 + 96) = 1;
    return result;
  }

  (*(v251 + 32))(v45, v47, v42);
  v71 = *v45;
  v70 = v45[1];
  v72 = *(v6 + 40);

  v72(&v285, v4, v6);
  v274 = v285;
  v275 = v286;
  v276 = v287;
  LODWORD(v279) = v288;
  (*(v282 + 16))(v41, v45 + v42[14], v281);
  v73 = v280;
  v74 = *(v280 - 8);
  if ((*(v74 + 48))(v41, 1, v280) == 1)
  {
    v278 = v71;
    v280 = 0;
    v75 = 0xF000000000000000;
  }

  else
  {
    v165 = v289;
    v166 = MLS.ClientContext.dataRepresentation.getter(v73, v278);
    if (v165)
    {

      outlined consume of MLS.AllMember(v274, v275);
      (*(v251 + 8))(v45, v42);
      return (*(v74 + 8))(v41, v73);
    }

    v75 = v167;
    v278 = v71;
    v289 = 0;
    v281 = v73;
    v282 = v74;
    v280 = v166;
  }

  (*(v282 + 8))(v41, v281);
  v212 = v42[16];
  v213 = (v45 + v42[15]);
  v214 = *v213;
  v215 = v213[1];
  v217 = *(v45 + v212);
  v216 = *(v45 + v212 + 8);
  outlined copy of Data._Representation(*v213, v215);
  v218 = *(v251 + 8);

  result = v218(v45, v42);
  v219 = v277;
  *v277 = v278;
  v219[1] = v70;
  v220 = v275;
  v219[2] = v274;
  v219[3] = v220;
  v219[4] = v276;
  *(v219 + 40) = v279;
  v219[6] = v280;
  v219[7] = v75;
  v219[8] = v214;
  v219[9] = v215;
  v219[10] = v217;
  v219[11] = v216;
  *(v219 + 96) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance Set<A>);
  }

  return result;
}

uint64_t partial apply for closure #3 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:)(uint64_t a1, void *a2)
{
  return closure #1 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:)(a1, v2[6], v2[2], v2[3], v2[4], v2[5], a2);
}

{
  return partial apply for closure #2 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:)(a1, a2);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
  result = MEMORY[0x266754790](v2, &type metadata for MLS.AllMember, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *(v5 - 3);
      v9 = *v5;
      v5 += 32;
      outlined copy of MLS.AllMember(v8, v7);
      specialized Set._Variant.insert(_:)(v10, v8, v7, v6, v9);
      outlined consume of MLS.AllMember(v10[0], v10[1]);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for MLS.IncomingResendApplicationMessage<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata completion function for MLS.IncomingEventType(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v19 = v4;
  result = type metadata accessor for MLS.IncomingApplicationMessage(319, &v16);
  if (v6 <= 0x3F)
  {
    v19 = v4;
    v20 = result;
    v16 = v1;
    v17 = v2;
    v18 = v3;
    result = type metadata accessor for MLS.IncomingGroupCreated(319, &v16);
    if (v7 <= 0x3F)
    {
      v21 = result;
      v16 = v1;
      v17 = v2;
      v18 = v3;
      v19 = v4;
      result = type metadata accessor for MLS.IncomingMemberAdded(319, &v16);
      if (v8 <= 0x3F)
      {
        v22 = result;
        v16 = v1;
        v17 = v2;
        v18 = v3;
        v19 = v4;
        result = type metadata accessor for MLS.IncomingMemberKicked(319, &v16);
        if (v9 <= 0x3F)
        {
          v23 = result;
          v16 = v1;
          v17 = v2;
          v18 = v3;
          v19 = v4;
          result = type metadata accessor for MLS.IncomingSelfKicked(319, &v16);
          if (v10 <= 0x3F)
          {
            v24 = result;
            v16 = v1;
            v17 = v2;
            v18 = v3;
            v19 = v4;
            result = type metadata accessor for MLS.IncomingDowngradeRecommended(319, &v16);
            if (v11 <= 0x3F)
            {
              v25 = result;
              v16 = v1;
              v17 = v2;
              v18 = v3;
              v19 = v4;
              result = type metadata accessor for MLS.IncomingGroupNameChange(319, &v16);
              if (v12 <= 0x3F)
              {
                v26 = result;
                v16 = v1;
                v17 = v2;
                v18 = v3;
                v19 = v4;
                result = type metadata accessor for MLS.IncomingApplicationSignatureVerified(319, &v16);
                if (v13 <= 0x3F)
                {
                  v27 = result;
                  v16 = v1;
                  v17 = v2;
                  v18 = v3;
                  v19 = v4;
                  result = type metadata accessor for MLS.IncomingResendApplicationMessage(319, &v16);
                  if (v14 <= 0x3F)
                  {
                    v28 = result;
                    v16 = v1;
                    v17 = v2;
                    v18 = v3;
                    v19 = v4;
                    result = type metadata accessor for MLS.IncomingInternalStateUpdated(319, &v16);
                    if (v15 <= 0x3F)
                    {
                      v29 = result;
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.IncomingEventType(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = (((*(*(*(a3 + 16) - 8) + 80) + 16) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64) + *(v3 + 80)) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  if (!*(v3 + 84))
  {
    ++v5;
  }

  v6 = v5 + v4;
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 + 8 > v8)
  {
    v8 = v7 + 8;
  }

  if (v6 > v8)
  {
    v8 = v6;
  }

  v9 = v7 + 16;
  if (v9 > v8)
  {
    v8 = v9;
  }

  if (v6 > v8)
  {
    v8 = v6;
  }

  if (v9 <= v8)
  {
    v9 = v8;
  }

  if (v6 > v9)
  {
    v9 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_37;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 246) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_37;
      }

      goto LABEL_26;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_37;
      }

      goto LABEL_26;
    }

    if (v14 < 2)
    {
LABEL_37:
      v16 = *(a1 + v9);
      if (v16 >= 0xA)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_37;
  }

LABEL_26:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 247;
}

void storeEnumTagSinglePayload for MLS.IncomingEventType(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = (((*(*(*(a4 + 16) - 8) + 80) + 16) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  if (!*(v5 + 84))
  {
    ++v7;
  }

  v8 = v7 + v6;
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 + 8 > v10)
  {
    v10 = v9 + 8;
  }

  if (v8 > v10)
  {
    v10 = v8;
  }

  v11 = v9 + 16;
  if (v11 > v10)
  {
    v10 = v11;
  }

  if (v8 > v10)
  {
    v10 = v8;
  }

  if (v11 <= v10)
  {
    v11 = v10;
  }

  if (v8 <= v11)
  {
    v8 = v11;
  }

  v12 = v8 + 1;
  if (a3 < 0xF7)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 + ~(-1 << (8 * v12)) - 246) >> (8 * v12)) + 1;
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

  if (a2 > 0xF6)
  {
    v14 = a2 - 247;
    if (v12 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }

    v15 = (v14 >> (8 * v12)) + 1;
    if (v8 != -1)
    {
      v18 = v14 & ~(-1 << (8 * v12));
      bzero(a1, v12);
      if (v12 != 3)
      {
        if (v12 == 2)
        {
          *a1 = v18;
          if (v13 > 1)
          {
LABEL_51:
            if (v13 == 2)
            {
              *&a1[v12] = v15;
            }

            else
            {
              *&a1[v12] = v15;
            }

            return;
          }
        }

        else
        {
          *a1 = v14;
          if (v13 > 1)
          {
            goto LABEL_51;
          }
        }

LABEL_48:
        if (v13)
        {
          a1[v12] = v15;
        }

        return;
      }

      *a1 = v18;
      a1[2] = BYTE2(v18);
    }

    if (v13 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      a1[v8] = -a2;
      return;
    }

LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (v13 == 2)
  {
    *&a1[v12] = 0;
    goto LABEL_36;
  }

  *&a1[v12] = 0;
  if (a2)
  {
    goto LABEL_37;
  }
}

uint64_t type metadata completion function for MLS.IncomingApplicationMessage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.IncomingApplicationMessage(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v6 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 80);
  v15 = *(*(*(a3 + 16) - 8) + 64);
  v16 = *(v8 + 80);
  v17 = 7;
  if (!v10)
  {
    v17 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 < a2)
  {
    v18 = ((((v17 + *(*(v7 - 8) + 64) + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v19 = a2 - v13;
    v20 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = v19 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v18);
        if (v24)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = *(a1 + v18);
        if (v24)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v18);
      if (v24)
      {
LABEL_27:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          v26 = *a1;
        }

        else
        {
          v26 = 0;
        }

        return v13 + (v26 | v25) + 1;
      }
    }
  }

  if ((v12 & 0x80000000) == 0)
  {
    v27 = *(a1 + 1);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  v29 = (a1 + v14 + 16) & ~v14;
  if (v6 != v13)
  {
    if (v10 >= 2)
    {
      v31 = (*(v9 + 48))((v29 + v15 + v16) & ~v16, v10, v7);
      if (v31 >= 2)
      {
        return v31 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = *(v5 + 48);

  return v30(v29);
}

void *storeEnumTagSinglePayload for MLS.IncomingApplicationMessage(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  v14 = v10 - 1;
  if (!v10)
  {
    v14 = 0;
  }

  if (v7 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(v6 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v10)
  {
    v17 = *(*(v8 - 8) + 64);
  }

  else
  {
    v17 = *(*(v8 - 8) + 64) + 1;
  }

  v18 = ((((v17 + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 < a3)
  {
    v19 = a3 - v16;
    if (((((v17 + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v5 = v21;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v16)
  {
    if (((((v17 + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v16;
    }

    else
    {
      v22 = 1;
    }

    if (((((v17 + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v16 + a2;
      v24 = result;
      bzero(result, v18);
      result = v24;
      *v24 = v23;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v18) = v22;
      }

      else
      {
        *(result + v18) = v22;
      }
    }

    else if (v5)
    {
      *(result + v18) = v22;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v18) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_42;
    }

    *(result + v18) = 0;
LABEL_41:
    if (!a2)
    {
      return result;
    }

    goto LABEL_42;
  }

  if (!v5)
  {
    goto LABEL_41;
  }

  *(result + v18) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_42:
  if ((v15 & 0x80000000) != 0)
  {
    result = ((result + v11 + 16) & ~v11);
    if (v7 == v16)
    {
      v25 = *(v6 + 56);

      return v25(result);
    }

    else if (v10 >= 2)
    {
      v26 = *(v9 + 56);
      v27 = (result + v12 + v13) & ~v13;
      v28 = a2 + 1;

      return v26(v27, v28, v10, v8);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    result[1] = a2 - 1;
  }

  return result;
}

uint64_t type metadata completion function for MLS.IncomingGroupCreated(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Set();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.IncomingGroupCreated(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v6 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 80);
  v15 = *(*(*(a3 + 16) - 8) + 64);
  v16 = *(v8 + 80);
  v17 = 7;
  if (!v10)
  {
    v17 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 < a2)
  {
    v18 = ((v17 + *(*(v7 - 8) + 64) + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v19 = a2 - v13;
    v20 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = v19 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v18);
        if (v24)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = *(a1 + v18);
        if (v24)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v18);
      if (v24)
      {
LABEL_27:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          v26 = *a1;
        }

        else
        {
          v26 = 0;
        }

        return v13 + (v26 | v25) + 1;
      }
    }
  }

  if ((v12 & 0x80000000) == 0)
  {
    v27 = *(a1 + 1);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  v29 = (a1 + v14 + 16) & ~v14;
  if (v6 != v13)
  {
    if (v10 >= 2)
    {
      v31 = (*(v9 + 48))((v29 + v15 + v16) & ~v16, v10, v7);
      if (v31 >= 2)
      {
        return v31 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = *(v5 + 48);

  return v30(v29);
}

void *storeEnumTagSinglePayload for MLS.IncomingGroupCreated(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  v14 = v10 - 1;
  if (!v10)
  {
    v14 = 0;
  }

  if (v7 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(v6 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v10)
  {
    v17 = *(*(v8 - 8) + 64);
  }

  else
  {
    v17 = *(*(v8 - 8) + 64) + 1;
  }

  v18 = ((v17 + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 < a3)
  {
    v19 = a3 - v16;
    if (((v17 + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v5 = v21;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v16)
  {
    if (((v17 + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v22 = a2 - v16;
    }

    else
    {
      v22 = 1;
    }

    if (((v17 + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v23 = ~v16 + a2;
      v24 = result;
      bzero(result, v18);
      result = v24;
      *v24 = v23;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v18) = v22;
      }

      else
      {
        *(result + v18) = v22;
      }
    }

    else if (v5)
    {
      *(result + v18) = v22;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v18) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_42;
    }

    *(result + v18) = 0;
LABEL_41:
    if (!a2)
    {
      return result;
    }

    goto LABEL_42;
  }

  if (!v5)
  {
    goto LABEL_41;
  }

  *(result + v18) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_42:
  if ((v15 & 0x80000000) != 0)
  {
    result = ((result + v11 + 16) & ~v11);
    if (v7 == v16)
    {
      v25 = *(v6 + 56);

      return v25(result);
    }

    else if (v10 >= 2)
    {
      v26 = *(v9 + 56);
      v27 = (result + v12 + v13) & ~v13;
      v28 = a2 + 1;

      return v26(v27, v28, v10, v8);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    result[1] = a2 - 1;
  }

  return result;
}

uint64_t type metadata completion function for MLS.IncomingResendApplicationMessage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.IncomingResendApplicationMessage(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v6 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 80);
  v15 = *(*(*(a3 + 16) - 8) + 64);
  v16 = *(v8 + 80);
  v17 = 7;
  if (!v10)
  {
    v17 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 < a2)
  {
    v18 = ((v17 + *(*(v7 - 8) + 64) + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v19 = a2 - v13;
    v20 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = v19 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v18);
        if (v24)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = *(a1 + v18);
        if (v24)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v18);
      if (v24)
      {
LABEL_27:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          v26 = *a1;
        }

        else
        {
          v26 = 0;
        }

        return v13 + (v26 | v25) + 1;
      }
    }
  }

  if ((v12 & 0x80000000) == 0)
  {
    v27 = *(a1 + 1);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  v29 = (a1 + v14 + 16) & ~v14;
  if (v6 != v13)
  {
    if (v10 >= 2)
    {
      v31 = (*(v9 + 48))((v29 + v15 + v16) & ~v16, v10, v7);
      if (v31 >= 2)
      {
        return v31 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = *(v5 + 48);

  return v30(v29);
}

void *storeEnumTagSinglePayload for MLS.IncomingResendApplicationMessage(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  v14 = v10 - 1;
  if (!v10)
  {
    v14 = 0;
  }

  if (v7 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(v6 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v10)
  {
    v17 = *(*(v8 - 8) + 64);
  }

  else
  {
    v17 = *(*(v8 - 8) + 64) + 1;
  }

  v18 = ((v17 + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 < a3)
  {
    v19 = a3 - v16;
    if (((v17 + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v5 = v21;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v16)
  {
    if (((v17 + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v16;
    }

    else
    {
      v22 = 1;
    }

    if (((v17 + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v16 + a2;
      v24 = result;
      bzero(result, v18);
      result = v24;
      *v24 = v23;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v18) = v22;
      }

      else
      {
        *(result + v18) = v22;
      }
    }

    else if (v5)
    {
      *(result + v18) = v22;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v18) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_42;
    }

    *(result + v18) = 0;
LABEL_41:
    if (!a2)
    {
      return result;
    }

    goto LABEL_42;
  }

  if (!v5)
  {
    goto LABEL_41;
  }

  *(result + v18) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_42:
  if ((v15 & 0x80000000) != 0)
  {
    result = ((result + v11 + 16) & ~v11);
    if (v7 == v16)
    {
      v25 = *(v6 + 56);

      return v25(result);
    }

    else if (v10 >= 2)
    {
      v26 = *(v9 + 56);
      v27 = (result + v12 + v13) & ~v13;
      v28 = a2 + 1;

      return v26(v27, v28, v10, v8);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    result[1] = a2 - 1;
  }

  return result;
}

uint64_t type metadata completion function for MLS.IncomingApplicationSignatureVerified(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.IncomingApplicationSignatureVerified(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v6 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 80);
  v15 = *(*(*(a3 + 16) - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(*(v7 - 8) + 64);
  if (!v10)
  {
    ++v17;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_35;
  }

  v19 = v17 + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((v18 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v23 < 2)
    {
LABEL_35:
      if ((v12 & 0x80000000) != 0)
      {
        v28 = (a1 + v14 + 16) & ~v14;
        if (v6 == v13)
        {
          v29 = *(v5 + 48);

          return v29(v28);
        }

        else
        {
          v30 = (*(v9 + 48))((v28 + v15 + v16) & ~v16, v10, v7);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v27 = *(a1 + 1);
        if (v27 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_35;
  }

LABEL_22:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v13 + (v26 | v24) + 1;
}

void storeEnumTagSinglePayload for MLS.IncomingApplicationSignatureVerified(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v7 + 80);
  v13 = *(v7 + 64);
  v14 = *(v10 + 80);
  v15 = v11 - 1;
  if (!v11)
  {
    v15 = 0;
  }

  if (v8 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v7 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v11)
  {
    v18 = *(*(v9 - 8) + 64);
  }

  else
  {
    v18 = *(*(v9 - 8) + 64) + 1;
  }

  v19 = ((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + v18;
  v20 = a3 >= v17;
  v21 = a3 - v17;
  if (v21 == 0 || !v20)
  {
LABEL_24:
    if (v17 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  if (v19 > 3)
  {
    v6 = 1;
    if (v17 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v22 = ((v21 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
  if (!HIWORD(v22))
  {
    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v6 = v23;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_24;
  }

  v6 = 4;
  if (v17 < a2)
  {
LABEL_25:
    v24 = ~v17 + a2;
    if (v19 < 4)
    {
      v25 = (v24 >> (8 * v19)) + 1;
      if (v19)
      {
        v26 = v24 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v26;
            if (v6 > 1)
            {
LABEL_59:
              if (v6 == 2)
              {
                *&a1[v19] = v25;
              }

              else
              {
                *&a1[v19] = v25;
              }

              return;
            }
          }

          else
          {
            *a1 = v24;
            if (v6 > 1)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_56;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v6 > 1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v24;
      v25 = 1;
      if (v6 > 1)
      {
        goto LABEL_59;
      }
    }

LABEL_56:
    if (v6)
    {
      a1[v19] = v25;
    }

    return;
  }

LABEL_34:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *&a1[v19] = 0;
  }

  else if (v6)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if ((v16 & 0x80000000) != 0)
  {
    v27 = &a1[v12 + 16] & ~v12;
    if (v8 == v17)
    {
      v28 = *(v7 + 56);

      v28(v27);
    }

    else
    {
      v29 = *(v10 + 56);
      v30 = (v27 + v13 + v14) & ~v14;
      v31 = a2 + 1;

      v29(v30, v31, v11, v9);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t getEnumTagSinglePayload for MLS.IncomingApplicationMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MLS.IncomingApplicationMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MLS.IncomingInternalStateUpdated.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MLS.IncomingInternalStateUpdated.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MLS.IncomingEventType.MatchableType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.IncomingEventType.MatchableType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.IncomingEventType.ApplicationMessageCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MLS.IncomingEventType.ApplicationMessageCodingKeys(_WORD *result, int a2, int a3)
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8SwiftMLS0C0O8IdentityO10CredentialO_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for MLS.Identity.Credential();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88], MEMORY[0x277D6AC90]);
  result = MEMORY[0x266754790](v9, v2, v10);
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
      v13(v6, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8SwiftMLS0C0O8IdentityO07SigningD0V_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for MLS.Identity.SigningIdentity();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60], MEMORY[0x277D6AC68]);
  result = MEMORY[0x266754790](v9, v2, v10);
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
      v13(v6, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266754790](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
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

unint64_t lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember()
{
  result = lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember;
  if (!lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember;
  if (!lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember;
  if (!lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember;
  if (!lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember;
  if (!lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();
  result = MEMORY[0x266754790](v2, &type metadata for MLS.UniqueClientIdentifier, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      specialized Set._Variant.insert(_:)(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier()
{
  result = lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier;
  if (!lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier;
  if (!lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier;
  if (!lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
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
    return 10;
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
    return 2;
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

uint64_t MLS.OutgoingMessage.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MLS.OutgoingMessage.rawMessageData.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

void MLS.OutgoingMessage.init(rawMessageData:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v7 = [v6 UUIDString];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *a3 = v8;
  a3[1] = v10;
  a3[2] = a1;
  a3[3] = a2;
}

uint64_t MLS.OutgoingMessage.convertToIncoming(sender:type:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *a2;
  v9 = *v3;
  v8 = v3[1];
  v11 = v3[2];
  v10 = v3[3];
  *(a3 + 32) = *a1;
  *(a3 + 40) = v5;
  *(a3 + 48) = v6;
  *(a3 + 56) = *(a1 + 24);
  *a3 = v11;
  *(a3 + 8) = v10;
  *(a3 + 16) = v9;
  *(a3 + 24) = v8;
  *(a3 + 57) = v7;

  outlined copy of Data._Representation(v11, v10);

  return outlined copy of MLS.AllMember(v4, v5);
}

uint64_t MLS.IncomingMessage.init(rawMessageData:identifier:sender:messageType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v12 = *a6;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v13 = type metadata accessor for MLS.IncomingMessage(0, a7, a8, a4);
  result = (*(*(a7 - 8) + 32))(&a9[*(v13 + 40)], a5, a7);
  a9[*(v13 + 44)] = v12;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.OutgoingMessage.CodingKeys()
{
  if (*v0)
  {
    return 0x617373654D776172;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingMessage.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617373654D776172 && a2 == 0xEE00617461446567)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO15OutgoingMessageV10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO15OutgoingMessageV10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  v8 = v13;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v8)
  {
    v14 = v12;
    v15 = v11;
    v16 = 1;
    outlined copy of Data._Representation(v12, v11);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v14, v15);
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys);
  }

  return result;
}

uint64_t MLS.OutgoingMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO15OutgoingMessageV10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO15OutgoingMessageV10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingMessage.CodingKeys and conformance MLS.OutgoingMessage.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v16[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v17 = 1;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v16[0];
  v14 = v16[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;

  outlined copy of Data._Representation(v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return outlined consume of Data._Representation(v13, v14);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.KeyPackageRetrievalContext.CodingKeys@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingMessageType.ApplicationMessageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageType.ApplicationMessageCodingKeys and conformance MLS.IncomingMessageType.ApplicationMessageCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingMessageType.ApplicationMessageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageType.ApplicationMessageCodingKeys and conformance MLS.IncomingMessageType.ApplicationMessageCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.IncomingMessageType.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x694C74696D6D6F63;
  v4 = 0x6C61736F706F7270;
  if (v1 != 3)
  {
    v4 = 0x656D6F636C6577;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingMessageType.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MLS.IncomingMessageType.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingMessageType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingMessageType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingMessageType.CommitListCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageType.CommitListCodingKeys and conformance MLS.IncomingMessageType.CommitListCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingMessageType.CommitListCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageType.CommitListCodingKeys and conformance MLS.IncomingMessageType.CommitListCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingMessageType.ProposalListCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageType.ProposalListCodingKeys and conformance MLS.IncomingMessageType.ProposalListCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingMessageType.ProposalListCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageType.ProposalListCodingKeys and conformance MLS.IncomingMessageType.ProposalListCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingMessageType.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageType.UnknownCodingKeys and conformance MLS.IncomingMessageType.UnknownCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingMessageType.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageType.UnknownCodingKeys and conformance MLS.IncomingMessageType.UnknownCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingMessageType.WelcomeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageType.WelcomeCodingKeys and conformance MLS.IncomingMessageType.WelcomeCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingMessageType.WelcomeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageType.WelcomeCodingKeys and conformance MLS.IncomingMessageType.WelcomeCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.IncomingMessageType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO17WelcomeCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO17WelcomeCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO22ProposalListCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO22ProposalListCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO20CommitListCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO20CommitListCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO011ApplicationH10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO011ApplicationH10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO17UnknownCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO17UnknownCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v15 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  lazy protocol witness table accessor for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys();
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
      lazy protocol witness table accessor for type MLS.IncomingMessageType.ApplicationMessageCodingKeys and conformance MLS.IncomingMessageType.ApplicationMessageCodingKeys();
      v31 = v45;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      lazy protocol witness table accessor for type MLS.IncomingMessageType.UnknownCodingKeys and conformance MLS.IncomingMessageType.UnknownCodingKeys();
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
      lazy protocol witness table accessor for type MLS.IncomingMessageType.CommitListCodingKeys and conformance MLS.IncomingMessageType.CommitListCodingKeys();
      v22 = v33;
      v23 = v45;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      lazy protocol witness table accessor for type MLS.IncomingMessageType.ProposalListCodingKeys and conformance MLS.IncomingMessageType.ProposalListCodingKeys();
      v22 = v36;
      v23 = v45;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      lazy protocol witness table accessor for type MLS.IncomingMessageType.WelcomeCodingKeys and conformance MLS.IncomingMessageType.WelcomeCodingKeys();
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

unint64_t lazy protocol witness table accessor for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.IncomingMessageType.WelcomeCodingKeys and conformance MLS.IncomingMessageType.WelcomeCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.WelcomeCodingKeys and conformance MLS.IncomingMessageType.WelcomeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.WelcomeCodingKeys and conformance MLS.IncomingMessageType.WelcomeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.WelcomeCodingKeys and conformance MLS.IncomingMessageType.WelcomeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.WelcomeCodingKeys and conformance MLS.IncomingMessageType.WelcomeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.WelcomeCodingKeys and conformance MLS.IncomingMessageType.WelcomeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.WelcomeCodingKeys and conformance MLS.IncomingMessageType.WelcomeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.WelcomeCodingKeys and conformance MLS.IncomingMessageType.WelcomeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.WelcomeCodingKeys and conformance MLS.IncomingMessageType.WelcomeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.WelcomeCodingKeys and conformance MLS.IncomingMessageType.WelcomeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.IncomingMessageType.ProposalListCodingKeys and conformance MLS.IncomingMessageType.ProposalListCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.ProposalListCodingKeys and conformance MLS.IncomingMessageType.ProposalListCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.ProposalListCodingKeys and conformance MLS.IncomingMessageType.ProposalListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.ProposalListCodingKeys and conformance MLS.IncomingMessageType.ProposalListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.ProposalListCodingKeys and conformance MLS.IncomingMessageType.ProposalListCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.ProposalListCodingKeys and conformance MLS.IncomingMessageType.ProposalListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.ProposalListCodingKeys and conformance MLS.IncomingMessageType.ProposalListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.ProposalListCodingKeys and conformance MLS.IncomingMessageType.ProposalListCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.ProposalListCodingKeys and conformance MLS.IncomingMessageType.ProposalListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.ProposalListCodingKeys and conformance MLS.IncomingMessageType.ProposalListCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.IncomingMessageType.CommitListCodingKeys and conformance MLS.IncomingMessageType.CommitListCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.CommitListCodingKeys and conformance MLS.IncomingMessageType.CommitListCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.CommitListCodingKeys and conformance MLS.IncomingMessageType.CommitListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.CommitListCodingKeys and conformance MLS.IncomingMessageType.CommitListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.CommitListCodingKeys and conformance MLS.IncomingMessageType.CommitListCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.CommitListCodingKeys and conformance MLS.IncomingMessageType.CommitListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.CommitListCodingKeys and conformance MLS.IncomingMessageType.CommitListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.CommitListCodingKeys and conformance MLS.IncomingMessageType.CommitListCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.CommitListCodingKeys and conformance MLS.IncomingMessageType.CommitListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.CommitListCodingKeys and conformance MLS.IncomingMessageType.CommitListCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.IncomingMessageType.ApplicationMessageCodingKeys and conformance MLS.IncomingMessageType.ApplicationMessageCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.ApplicationMessageCodingKeys and conformance MLS.IncomingMessageType.ApplicationMessageCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.ApplicationMessageCodingKeys and conformance MLS.IncomingMessageType.ApplicationMessageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.ApplicationMessageCodingKeys and conformance MLS.IncomingMessageType.ApplicationMessageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.ApplicationMessageCodingKeys and conformance MLS.IncomingMessageType.ApplicationMessageCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.ApplicationMessageCodingKeys and conformance MLS.IncomingMessageType.ApplicationMessageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.ApplicationMessageCodingKeys and conformance MLS.IncomingMessageType.ApplicationMessageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.ApplicationMessageCodingKeys and conformance MLS.IncomingMessageType.ApplicationMessageCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.ApplicationMessageCodingKeys and conformance MLS.IncomingMessageType.ApplicationMessageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.ApplicationMessageCodingKeys and conformance MLS.IncomingMessageType.ApplicationMessageCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.IncomingMessageType.UnknownCodingKeys and conformance MLS.IncomingMessageType.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.UnknownCodingKeys and conformance MLS.IncomingMessageType.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.UnknownCodingKeys and conformance MLS.IncomingMessageType.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.UnknownCodingKeys and conformance MLS.IncomingMessageType.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.UnknownCodingKeys and conformance MLS.IncomingMessageType.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.UnknownCodingKeys and conformance MLS.IncomingMessageType.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.UnknownCodingKeys and conformance MLS.IncomingMessageType.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType.UnknownCodingKeys and conformance MLS.IncomingMessageType.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType.UnknownCodingKeys and conformance MLS.IncomingMessageType.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType.UnknownCodingKeys and conformance MLS.IncomingMessageType.UnknownCodingKeys);
  }

  return result;
}

uint64_t MLS.IncomingMessageType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO17WelcomeCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO17WelcomeCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v45 = &v30[-v3];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO22ProposalListCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO22ProposalListCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v30[-v4];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO20CommitListCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO20CommitListCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v44 = &v30[-v5];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO011ApplicationH10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO011ApplicationH10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v30[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO17UnknownCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO17UnknownCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19IncomingMessageTypeO10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30[-v13];
  v15 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type MLS.IncomingMessageType.CodingKeys and conformance MLS.IncomingMessageType.CodingKeys();
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
      *v26 = &type metadata for MLS.IncomingMessageType;
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
          lazy protocol witness table accessor for type MLS.IncomingMessageType.ApplicationMessageCodingKeys and conformance MLS.IncomingMessageType.ApplicationMessageCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v34 + 8))(v7, v36);
        }

        else
        {
          v48 = 0;
          lazy protocol witness table accessor for type MLS.IncomingMessageType.UnknownCodingKeys and conformance MLS.IncomingMessageType.UnknownCodingKeys();
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
          lazy protocol witness table accessor for type MLS.IncomingMessageType.CommitListCodingKeys and conformance MLS.IncomingMessageType.CommitListCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v35 + 8))(v17, v37);
          (*(v28 + 8))(v19, v11);
        }

        else
        {
          if (v22 == 3)
          {
            v51 = 3;
            lazy protocol witness table accessor for type MLS.IncomingMessageType.ProposalListCodingKeys and conformance MLS.IncomingMessageType.ProposalListCodingKeys();
            v29 = v42;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v38 + 8))(v29, v40);
          }

          else
          {
            v52 = 4;
            lazy protocol witness table accessor for type MLS.IncomingMessageType.WelcomeCodingKeys and conformance MLS.IncomingMessageType.WelcomeCodingKeys();
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

  return __swift_destroy_boxed_opaque_existential_1Tm(v47);
}

uint64_t MLS.IncomingMessage.rawMessageData.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.IncomingMessage.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MLS.IncomingMessage.init(rawMessageData:identifier:sender:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v11 = type metadata accessor for MLS.IncomingMessage(0, a6, a7, a4);
  result = (*(*(a6 - 8) + 32))(&a8[*(v11 + 40)], a5, a6);
  a8[*(v11 + 44)] = 0;
  return result;
}

double MLS.IncomingMessage.allMemberIncomingMessage.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[3];
  v8 = *(a1 + 24);
  v9 = *(v8 + 40);
  v15 = v2[2];
  outlined copy of Data._Representation(*v2, v6);
  v10 = *(a1 + 16);

  v9(&v16, v10, v8);
  v11 = v17;
  v12 = v18;
  v13 = *(v2 + *(a1 + 44));
  result = *&v16;
  *(a2 + 32) = v16;
  *(a2 + 48) = v11;
  *(a2 + 56) = v12;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v15;
  *(a2 + 24) = v7;
  *(a2 + 57) = v13;
  return result;
}

uint64_t MLS.IncomingMessage.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(80);
  MEMORY[0x2667545A0](0xD00000000000001CLL, 0x80000002651E8570);
  MEMORY[0x2667545A0](v1[2], v1[3]);
  MEMORY[0x2667545A0](0x7265646E6573202CLL, 0xEA0000000000203ALL);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x2667545A0](0x67617373656D202CLL, 0xEF203A6570795465);
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x2667545A0](0xD000000000000012, 0x80000002651E8590);
  v3 = *v1;
  v4 = v1[1] >> 62;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = v3 + 16;
    v3 = *(v3 + 16);
    if (!__OFSUB__(*(v5 + 8), v3))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v3), v3))
  {
LABEL_9:
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v6);

    MEMORY[0x2667545A0](41, 0xE100000000000000);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t MLS.IncomingMessage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617373654D776172 && a2 == 0xEE00617461446567;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079)
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

uint64_t MLS.IncomingMessage.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x617373654D776172;
  v2 = 0x7265646E6573;
  if (a1 != 2)
  {
    v2 = 0x546567617373656DLL;
  }

  if (a1)
  {
    v1 = 0x696669746E656469;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingMessage<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.IncomingMessage.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.IncomingMessage<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized MLS.IncomingResendApplicationMessage.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingMessage<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingMessage<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingMessage.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v15[0] = *(a2 + 24);
  v15[1] = v6;
  type metadata accessor for MLS.IncomingMessage.CodingKeys(255, v6, v15[0], a4);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v15[2];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v11[1];
  v16 = *v11;
  v17 = v12;
  v18 = 0;
  outlined copy of Data._Representation(v16, v12);
  lazy protocol witness table accessor for type Data and conformance Data();
  v13 = v15[3];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v13)
  {
    outlined consume of Data._Representation(v16, v17);
  }

  else
  {
    outlined consume of Data._Representation(v16, v17);
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = *(v11 + *(a2 + 44));
    v18 = 3;
    lazy protocol witness table accessor for type MLS.IncomingMessageType and conformance MLS.IncomingMessageType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t lazy protocol witness table accessor for type MLS.IncomingMessageType and conformance MLS.IncomingMessageType()
{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType and conformance MLS.IncomingMessageType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType and conformance MLS.IncomingMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType and conformance MLS.IncomingMessageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType and conformance MLS.IncomingMessageType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType and conformance MLS.IncomingMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType and conformance MLS.IncomingMessageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageType and conformance MLS.IncomingMessageType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageType and conformance MLS.IncomingMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageType and conformance MLS.IncomingMessageType);
  }

  return result;
}

uint64_t MLS.IncomingMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v31 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MLS.IncomingMessage.CodingKeys(255, v8, v9, v10);
  swift_getWitnessTable();
  v34 = type metadata accessor for KeyedDecodingContainer();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v12 = &v27 - v11;
  v33 = a3;
  v14 = type metadata accessor for MLS.IncomingMessage(0, a2, a3, v13);
  v28 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v35 = v12;
  v17 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = v32;
  v19 = v16;
  v36 = a1;
  v20 = v14;
  v38 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  v21 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v19;
  *v19 = v37;
  LOBYTE(v37) = 1;
  *(v19 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v19 + 3) = v23;
  LOBYTE(v37) = 2;
  v24 = v30;
  v33 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v31 + 32))(&v22[*(v20 + 40)], v24, a2);
  v38 = 3;
  lazy protocol witness table accessor for type MLS.IncomingMessageType and conformance MLS.IncomingMessageType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v35, v21);
  v22[*(v20 + 44)] = v37;
  v25 = v28;
  (*(v28 + 16))(v29, v22, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return (*(v25 + 8))(v22, v20);
}

uint64_t MLS.IncomingFailureToDecrypt.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MLS.IncomingFailureToDecrypt.init(messageIdentifierToResend:identifier:sender:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  a8[2] = a1;
  a8[3] = a2;
  *a8 = a3;
  a8[1] = a4;
  v11 = type metadata accessor for MLS.IncomingFailureToDecrypt(0, a6, a7, a4);
  v12 = *(*(a6 - 8) + 32);
  v13 = a8 + *(v11 + 40);

  return v12(v13, a5, a6);
}

double MLS.IncomingFailureToDecrypt.allMemberIncomingFailureToDecrypt.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  v13 = v2[2];
  v6 = *v2;
  v5 = v2[1];
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(v7 + 40);

  v9(&v14, v8, v7);
  v10 = v15;
  v11 = v16;
  result = *&v14;
  *(a2 + 32) = v14;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v4;
  *a2 = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t MLS.IncomingFailureToDecrypt.description.getter(uint64_t a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(74);
  MEMORY[0x2667545A0](0xD000000000000025, 0x80000002651E85B0);
  MEMORY[0x2667545A0](*v2, v2[1]);
  MEMORY[0x2667545A0](0xD000000000000014, 0x80000002651E85E0);
  MEMORY[0x2667545A0](v2[2], v2[3]);
  MEMORY[0x2667545A0](0x7265646E6573202CLL, 0xEA0000000000203ALL);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0;
}

uint64_t MLS.IncomingFailureToDecrypt.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002651E8790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000)
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

uint64_t MLS.IncomingFailureToDecrypt.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0xD000000000000019;
  }

  return 0x7265646E6573;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingFailureToDecrypt<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.IncomingFailureToDecrypt.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.IncomingFailureToDecrypt<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized MLS.IncomingApplicationSignatureVerified.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingFailureToDecrypt<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingFailureToDecrypt<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingFailureToDecrypt.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v13[0] = *(a2 + 24);
  v13[1] = v6;
  type metadata accessor for MLS.IncomingFailureToDecrypt.CodingKeys(255, v6, v13[0], a4);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  v11 = v13[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v11)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t MLS.IncomingFailureToDecrypt.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v26 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v29 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MLS.IncomingFailureToDecrypt.CodingKeys(255, v8, v9, v10);
  swift_getWitnessTable();
  v32 = type metadata accessor for KeyedDecodingContainer();
  v28 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v12 = &v24 - v11;
  v30 = a3;
  v14 = type metadata accessor for MLS.IncomingFailureToDecrypt(0, a2, a3, v13);
  v25 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = (&v24 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = v12;
  v17 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v33 = a1;
  v18 = v28;
  v19 = v29;
  v36 = 0;
  *v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v16[1] = v20;
  v35 = 1;
  v16[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v16[3] = v21;
  v34 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v31, v32);
  (*(v26 + 32))(v16 + *(v14 + 40), v19, a2);
  v22 = v25;
  (*(v25 + 16))(v27, v16, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return (*(v22 + 8))(v16, v14);
}

uint64_t MLS.ErrorMessageFailureReason.init(encryptedRCSRawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x636572726F636E69 && a2 == 0xED00006172652D74;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x636572726F636E69 && a2 == 0xEF68636F70652D74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000002651E8600 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E8620 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002651E8640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002651E8660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002651E8680 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 7;
  }

  else if (a1 == 0x6E6569736E617274 && a2 == 0xEF726F7272652D74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 8;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002651E86A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 9;
  }

  else if (a1 == 0x2D64696C61766E69 && a2 == 0xEE0074696D6D6F63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002651E86C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 11;
  }

  else if (a1 == 0x2D64696C61766E69 && a2 == 0xED00007475706E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 12;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000002651E86E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 13;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002651E8700 == a2)
  {

    v8 = 14;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 14;
    }

    else
    {
      v8 = 16;
    }
  }

  *a3 = v8;
  return result;
}

unint64_t MLS.ErrorMessageFailureReason.CodingKeys.stringValue.getter(char a1)
{
  result = 0x636572726F636E69;
  switch(a1)
  {
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x50676E69646E6570;
      break;
    case 8:
      result = 0x6E6569736E617274;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0x4364696C61766E69;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x4964696C61766E69;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x526E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.ErrorMessageFailureReason.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MLS.ErrorMessageFailureReason.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys and conformance MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys and conformance MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys and conformance MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys and conformance MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys and conformance MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys and conformance MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.InvalidInputCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.InvalidInputCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidInputCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.InvalidInputCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.InvalidInputCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidInputCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys(uint64_t a1)
{
  HasEndMLSCodingKeys = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys();

  return MEMORY[0x2821FE718](a1, HasEndMLSCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys(uint64_t a1)
{
  HasEndMLSCodingKeys = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys();

  return MEMORY[0x2821FE720](a1, HasEndMLSCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys(uint64_t a1)
{
  found = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys();

  return MEMORY[0x2821FE718](a1, found);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys(uint64_t a1)
{
  found = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys();

  return MEMORY[0x2821FE720](a1, found);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.PendingProposalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.PendingProposalCodingKeys and conformance MLS.ErrorMessageFailureReason.PendingProposalCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.PendingProposalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.PendingProposalCodingKeys and conformance MLS.ErrorMessageFailureReason.PendingProposalCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.TransientErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.TransientErrorCodingKeys and conformance MLS.ErrorMessageFailureReason.TransientErrorCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.TransientErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.TransientErrorCodingKeys and conformance MLS.ErrorMessageFailureReason.TransientErrorCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys and conformance MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys and conformance MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.ErrorMessageFailureReason.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO07UnknownJ10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO07UnknownJ10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x28223BE20](v4);
  v93 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO27MlsGroupHasEndMLSCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO27MlsGroupHasEndMLSCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v91 = *(v6 - 8);
  v92 = v6;
  MEMORY[0x28223BE20](v6);
  v90 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO36EraAdvancementQuotaReachedCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO36EraAdvancementQuotaReachedCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x28223BE20](v8);
  v87 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO22InvalidInputCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO22InvalidInputCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v85 = *(v10 - 8);
  v86 = v10;
  MEMORY[0x28223BE20](v10);
  v84 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO26MlsGroupNotFoundCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO26MlsGroupNotFoundCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v82 = *(v12 - 8);
  v83 = v12;
  MEMORY[0x28223BE20](v12);
  v81 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO23InvalidCommitCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO23InvalidCommitCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v79 = *(v14 - 8);
  v80 = v14;
  MEMORY[0x28223BE20](v14);
  v78 = &v50 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO32EncryptionNotAvailableCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO32EncryptionNotAvailableCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v50 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO09TransientG10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO09TransientG10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v50 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO25PendingProposalCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO25PendingProposalCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v50 - v18;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO27UnparseableCommitCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO27UnparseableCommitCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v50 - v19;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO35MismatchedConfirmationTagCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO35MismatchedConfirmationTagCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v50 - v20;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO33MismatchedRCSGroupStateCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO33MismatchedRCSGroupStateCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v50 - v21;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO27ExpiredCredentialCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO27ExpiredCredentialCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v50 - v22;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO37IncorrectEpochAuthenticatorCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO37IncorrectEpochAuthenticatorCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v50 - v23;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO24IncorrectEpochCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO24IncorrectEpochCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v25 = &v50 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO22IncorrectEraCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO22IncorrectEraCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v51 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v50 - v27;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v29 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v31 = &v50 - v30;
  v32 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys();
  v96 = v31;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v32)
  {
    case 1:
      v99 = 1;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys();
      v33 = v96;
      v34 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = *(v52 + 8);
      v40 = v25;
      v41 = &v85;
      goto LABEL_19;
    case 2:
      v99 = 2;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys();
      v43 = v54;
      v33 = v96;
      v34 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = *(v55 + 8);
      v40 = v43;
      v41 = &v88;
      goto LABEL_19;
    case 3:
      v99 = 3;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys and conformance MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys();
      v44 = v57;
      v33 = v96;
      v34 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = *(v58 + 8);
      v40 = v44;
      v41 = &v91;
      goto LABEL_19;
    case 4:
      v99 = 4;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys();
      v38 = v60;
      v33 = v96;
      v34 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = *(v61 + 8);
      v40 = v38;
      v41 = &v94;
      goto LABEL_19;
    case 5:
      v99 = 5;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys();
      v46 = v63;
      v33 = v96;
      v34 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = *(v64 + 8);
      v40 = v46;
      v41 = &v97;
      goto LABEL_19;
    case 6:
      v99 = 6;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys();
      v47 = v66;
      v33 = v96;
      v34 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = *(v67 + 8);
      v40 = v47;
      v41 = &v98;
      goto LABEL_19;
    case 7:
      v99 = 7;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.PendingProposalCodingKeys and conformance MLS.ErrorMessageFailureReason.PendingProposalCodingKeys();
      v45 = v69;
      v33 = v96;
      v34 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = *(v70 + 8);
      v40 = v45;
      v41 = &v100;
      goto LABEL_19;
    case 8:
      v99 = 8;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.TransientErrorCodingKeys and conformance MLS.ErrorMessageFailureReason.TransientErrorCodingKeys();
      v48 = v72;
      v33 = v96;
      v34 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = *(v73 + 8);
      v40 = v48;
      v41 = &v101;
      goto LABEL_19;
    case 9:
      v99 = 9;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys and conformance MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys();
      v42 = v75;
      v33 = v96;
      v34 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = *(v76 + 8);
      v40 = v42;
      v41 = &v102;
LABEL_19:
      v39(v40, *(v41 - 32));
      return (*(v29 + 8))(v33, v34);
    case 10:
      v99 = 10;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys();
      v35 = v78;
      v33 = v96;
      v34 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v79;
      v36 = v80;
      goto LABEL_17;
    case 11:
      v99 = 11;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys();
      v35 = v81;
      v33 = v96;
      v34 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v82;
      v36 = v83;
      goto LABEL_17;
    case 12:
      v99 = 12;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.InvalidInputCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidInputCodingKeys();
      v35 = v84;
      v33 = v96;
      v34 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v85;
      v36 = v86;
      goto LABEL_17;
    case 13:
      v99 = 13;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys and conformance MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys();
      v35 = v87;
      v33 = v96;
      v34 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v88;
      v36 = v89;
      goto LABEL_17;
    case 14:
      v99 = 14;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys();
      v35 = v90;
      v33 = v96;
      v34 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v91;
      v36 = v92;
      goto LABEL_17;
    case 15:
      v99 = 15;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys and conformance MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys();
      v35 = v93;
      v33 = v96;
      v34 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v94;
      v36 = v95;
LABEL_17:
      (*(v37 + 8))(v35, v36);
      break;
    default:
      v99 = 0;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys();
      v33 = v96;
      v34 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v51 + 8))(v28, v26);
      break;
  }

  return (*(v29 + 8))(v33, v34);
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys and conformance MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys and conformance MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys and conformance MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys and conformance MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys and conformance MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys and conformance MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys and conformance MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys and conformance MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys and conformance MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys and conformance MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys and conformance MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys and conformance MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys and conformance MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys and conformance MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys and conformance MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys and conformance MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys and conformance MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys and conformance MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys and conformance MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys and conformance MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.InvalidInputCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidInputCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidInputCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidInputCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidInputCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidInputCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidInputCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidInputCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidInputCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidInputCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidInputCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidInputCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidInputCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidInputCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidInputCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidInputCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidInputCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidInputCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidInputCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidInputCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys and conformance MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys and conformance MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys and conformance MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys and conformance MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys and conformance MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys and conformance MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys and conformance MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys and conformance MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys and conformance MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys and conformance MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.TransientErrorCodingKeys and conformance MLS.ErrorMessageFailureReason.TransientErrorCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.TransientErrorCodingKeys and conformance MLS.ErrorMessageFailureReason.TransientErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.TransientErrorCodingKeys and conformance MLS.ErrorMessageFailureReason.TransientErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.TransientErrorCodingKeys and conformance MLS.ErrorMessageFailureReason.TransientErrorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.TransientErrorCodingKeys and conformance MLS.ErrorMessageFailureReason.TransientErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.TransientErrorCodingKeys and conformance MLS.ErrorMessageFailureReason.TransientErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.TransientErrorCodingKeys and conformance MLS.ErrorMessageFailureReason.TransientErrorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.TransientErrorCodingKeys and conformance MLS.ErrorMessageFailureReason.TransientErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.TransientErrorCodingKeys and conformance MLS.ErrorMessageFailureReason.TransientErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.TransientErrorCodingKeys and conformance MLS.ErrorMessageFailureReason.TransientErrorCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.PendingProposalCodingKeys and conformance MLS.ErrorMessageFailureReason.PendingProposalCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.PendingProposalCodingKeys and conformance MLS.ErrorMessageFailureReason.PendingProposalCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.PendingProposalCodingKeys and conformance MLS.ErrorMessageFailureReason.PendingProposalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.PendingProposalCodingKeys and conformance MLS.ErrorMessageFailureReason.PendingProposalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.PendingProposalCodingKeys and conformance MLS.ErrorMessageFailureReason.PendingProposalCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.PendingProposalCodingKeys and conformance MLS.ErrorMessageFailureReason.PendingProposalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.PendingProposalCodingKeys and conformance MLS.ErrorMessageFailureReason.PendingProposalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.PendingProposalCodingKeys and conformance MLS.ErrorMessageFailureReason.PendingProposalCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.PendingProposalCodingKeys and conformance MLS.ErrorMessageFailureReason.PendingProposalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.PendingProposalCodingKeys and conformance MLS.ErrorMessageFailureReason.PendingProposalCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys and conformance MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys and conformance MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys and conformance MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys and conformance MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys and conformance MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys and conformance MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys and conformance MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys and conformance MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys and conformance MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys and conformance MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys);
  }

  return result;
}

uint64_t MLS.ErrorMessageFailureReason.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v121 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO07UnknownJ10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO07UnknownJ10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v105 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v116 = &v71 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO27MlsGroupHasEndMLSCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO27MlsGroupHasEndMLSCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v103 = *(v4 - 8);
  v104 = v4;
  MEMORY[0x28223BE20](v4);
  v115 = &v71 - v5;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO36EraAdvancementQuotaReachedCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO36EraAdvancementQuotaReachedCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v114 = &v71 - v6;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO22InvalidInputCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO22InvalidInputCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v113 = &v71 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO26MlsGroupNotFoundCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO26MlsGroupNotFoundCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v112 = &v71 - v8;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO23InvalidCommitCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO23InvalidCommitCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v111 = &v71 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO32EncryptionNotAvailableCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO32EncryptionNotAvailableCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v110 = &v71 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO09TransientG10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO09TransientG10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v109 = &v71 - v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO25PendingProposalCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO25PendingProposalCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v108 = &v71 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO27UnparseableCommitCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO27UnparseableCommitCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v119 = &v71 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO35MismatchedConfirmationTagCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO35MismatchedConfirmationTagCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v118 = &v71 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO33MismatchedRCSGroupStateCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO33MismatchedRCSGroupStateCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v117 = &v71 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO27ExpiredCredentialCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO27ExpiredCredentialCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v107 = &v71 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO37IncorrectEpochAuthenticatorCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO37IncorrectEpochAuthenticatorCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v106 = &v71 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO24IncorrectEpochCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO24IncorrectEpochCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v19 = &v71 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO22IncorrectEraCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO22IncorrectEraCodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v76 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ErrorMessageFailureReasonO10CodingKeys33_5373148BE64ECCC8D1534E8349A6D513LLOGMR);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v71 - v25;
  v27 = a1[3];
  v123 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.CodingKeys and conformance MLS.ErrorMessageFailureReason.CodingKeys();
  v28 = v122;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
LABEL_39:
    v69 = v123;
    return __swift_destroy_boxed_opaque_existential_1Tm(v69);
  }

  v73 = v22;
  v72 = v20;
  v74 = v19;
  v29 = v117;
  v30 = v118;
  v31 = v119;
  v75 = 0;
  v33 = v120;
  v32 = v121;
  v122 = v24;
  v34 = v26;
  v35 = KeyedDecodingContainer.allKeys.getter();
  if (*(v35 + 16) != 1 || (v36 = *(v35 + 32), v36 == 16))
  {
    v39 = type metadata accessor for DecodingError();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v41 = &type metadata for MLS.ErrorMessageFailureReason;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v122 + 8))(v34, v23);
LABEL_38:
    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v71 = v35;
  switch(v36)
  {
    case 1:
      v124 = 1;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochCodingKeys();
      v59 = v74;
      v60 = v75;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v60)
      {
        goto LABEL_37;
      }

      (*(v77 + 8))(v59, v78);
      goto LABEL_42;
    case 2:
      v124 = 2;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEpochAuthenticatorCodingKeys();
      v51 = v106;
      v52 = v75;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v52)
      {
        goto LABEL_37;
      }

      (*(v79 + 8))(v51, v80);
      goto LABEL_42;
    case 3:
      v124 = 3;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys and conformance MLS.ErrorMessageFailureReason.ExpiredCredentialCodingKeys();
      v55 = v107;
      v56 = v75;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v56)
      {
        goto LABEL_37;
      }

      (*(v81 + 8))(v55, v82);
      goto LABEL_42;
    case 4:
      v124 = 4;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedRCSGroupStateCodingKeys();
      v46 = v75;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v46)
      {
        goto LABEL_37;
      }

      (*(v83 + 8))(v29, v84);
      goto LABEL_42;
    case 5:
      v124 = 5;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys and conformance MLS.ErrorMessageFailureReason.MismatchedConfirmationTagCodingKeys();
      v61 = v75;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v61)
      {
        goto LABEL_37;
      }

      (*(v86 + 8))(v30, v85);
      goto LABEL_42;
    case 6:
      v124 = 6;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.UnparseableCommitCodingKeys();
      v64 = v75;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v64)
      {
        goto LABEL_37;
      }

      (*(v88 + 8))(v31, v87);
      goto LABEL_42;
    case 7:
      v124 = 7;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.PendingProposalCodingKeys and conformance MLS.ErrorMessageFailureReason.PendingProposalCodingKeys();
      v57 = v108;
      v58 = v75;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v58)
      {
        goto LABEL_37;
      }

      (*(v89 + 8))(v57, v90);
      goto LABEL_42;
    case 8:
      v124 = 8;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.TransientErrorCodingKeys and conformance MLS.ErrorMessageFailureReason.TransientErrorCodingKeys();
      v67 = v109;
      v68 = v75;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v68)
      {
        goto LABEL_37;
      }

      (*(v91 + 8))(v67, v92);
      goto LABEL_42;
    case 9:
      v124 = 9;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys and conformance MLS.ErrorMessageFailureReason.EncryptionNotAvailableCodingKeys();
      v49 = v110;
      v50 = v75;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v50)
      {
        goto LABEL_37;
      }

      (*(v93 + 8))(v49, v94);
      goto LABEL_42;
    case 10:
      v124 = 10;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidCommitCodingKeys();
      v65 = v111;
      v66 = v75;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v66)
      {
        goto LABEL_37;
      }

      (*(v95 + 8))(v65, v96);
      goto LABEL_42;
    case 11:
      v124 = 11;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupNotFoundCodingKeys();
      v44 = v112;
      v45 = v75;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v45)
      {
        goto LABEL_37;
      }

      (*(v97 + 8))(v44, v98);
      goto LABEL_42;
    case 12:
      v124 = 12;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.InvalidInputCodingKeys and conformance MLS.ErrorMessageFailureReason.InvalidInputCodingKeys();
      v47 = v113;
      v48 = v75;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v48)
      {
        goto LABEL_37;
      }

      (*(v99 + 8))(v47, v100);
      goto LABEL_42;
    case 13:
      v124 = 13;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys and conformance MLS.ErrorMessageFailureReason.EraAdvancementQuotaReachedCodingKeys();
      v62 = v114;
      v63 = v75;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v63)
      {
        goto LABEL_37;
      }

      (*(v101 + 8))(v62, v102);
      goto LABEL_42;
    case 14:
      v124 = 14;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys and conformance MLS.ErrorMessageFailureReason.MlsGroupHasEndMLSCodingKeys();
      v42 = v115;
      v43 = v75;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v43)
      {
        goto LABEL_37;
      }

      (*(v103 + 8))(v42, v104);
      goto LABEL_42;
    case 15:
      v124 = 15;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys and conformance MLS.ErrorMessageFailureReason.UnknownReasonCodingKeys();
      v53 = v116;
      v54 = v75;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v54)
      {
        goto LABEL_37;
      }

      (*(v105 + 8))(v53, v33);
      goto LABEL_42;
    default:
      v124 = 0;
      lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys and conformance MLS.ErrorMessageFailureReason.IncorrectEraCodingKeys();
      v37 = v73;
      v38 = v75;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v38)
      {
LABEL_37:
        (*(v122 + 8))(v34, v23);
        goto LABEL_38;
      }

      (*(v76 + 8))(v37, v72);
LABEL_42:
      (*(v122 + 8))(v34, v23);
      swift_unknownObjectRelease();
      v69 = v123;
      *v32 = v36;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v69);
}

uint64_t MLS.IncomingErrorMessage.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MLS.IncomingErrorMessage.failedMessageIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MLS.IncomingErrorMessage.init(failedMessageIdentifier:identifier:failureReason:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *(a6 + 16) = result;
  *(a6 + 24) = a2;
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 32) = v6;
  return result;
}

uint64_t MLS.IncomingErrorMessage.allMemberIncomingErrorMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[3];
  v5 = *(v1 + 32);
  *(a1 + 16) = v1[2];
  *(a1 + 24) = v4;
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 32) = v5;
}

uint64_t MLS.IncomingErrorMessage.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  _StringGuts.grow(_:)(84);
  MEMORY[0x2667545A0](0xD000000000000021, 0x80000002651E8720);
  MEMORY[0x2667545A0](v1, v2);
  MEMORY[0x2667545A0](0xD00000000000001BLL, 0x80000002651E8750);
  MEMORY[0x2667545A0](v3, v4);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8770);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0;
}

uint64_t MLS.IncomingErrorMessage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002651E88D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x526572756C696166 && a2 == 0xED00006E6F736165)
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

uint64_t MLS.IncomingErrorMessage.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  return 0x526572756C696166;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.IncomingMessage<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingErrorMessage<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.IncomingErrorMessage.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingErrorMessage<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingErrorMessage<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingErrorMessage.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MLS.IncomingErrorMessage.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  v10 = *v4;
  v15[3] = v4[1];
  v15[4] = v10;
  v11 = v4[2];
  v15[1] = v4[3];
  v15[2] = v11;
  v16 = *(v4 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  v12 = v15[5];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    v13 = v16;
    v19 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v13;
    v17 = 2;
    lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason and conformance MLS.ErrorMessageFailureReason();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason and conformance MLS.ErrorMessageFailureReason()
{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason and conformance MLS.ErrorMessageFailureReason;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason and conformance MLS.ErrorMessageFailureReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason and conformance MLS.ErrorMessageFailureReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason and conformance MLS.ErrorMessageFailureReason;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason and conformance MLS.ErrorMessageFailureReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason and conformance MLS.ErrorMessageFailureReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason and conformance MLS.ErrorMessageFailureReason;
  if (!lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason and conformance MLS.ErrorMessageFailureReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ErrorMessageFailureReason and conformance MLS.ErrorMessageFailureReason);
  }

  return result;
}

uint64_t MLS.IncomingErrorMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a5;
  type metadata accessor for MLS.IncomingErrorMessage.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedDecodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = v8;
  v12 = v23;
  v27 = 0;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  v22 = v13;
  v26 = 1;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v16;
  v24 = 2;
  lazy protocol witness table accessor for type MLS.ErrorMessageFailureReason and conformance MLS.ErrorMessageFailureReason();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v11 + 8))(v10, v7);
  v17 = v25;
  v18 = v21;
  *v12 = v22;
  *(v12 + 8) = v15;
  *(v12 + 16) = v20;
  *(v12 + 24) = v18;
  *(v12 + 32) = v17;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for MLS.OutgoingMessage(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata completion function for MLS.IncomingMessage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.IncomingMessage(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 1;
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
      v15 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 16) & ~v6);
      }

      v16 = *(v15 + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
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

void storeEnumTagSinglePayload for MLS.IncomingMessage(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 32) & ~v9) + 1;
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
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 32) & ~v9) != -1)
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
  v19 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 16) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v19 = a2 & 0x7FFFFFFF;
    v19[1] = 0;
  }

  else
  {
    v19[1] = a2 - 1;
  }
}

uint64_t type metadata completion function for MLS.IncomingFailureToDecrypt(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.IncomingFailureToDecrypt(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void storeEnumTagSinglePayload for MLS.IncomingFailureToDecrypt(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
      if (v10)
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t type metadata instantiation function for MLS.IncomingErrorMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.IncomingErrorMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for MLS.IncomingErrorMessage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.ErrorMessageFailureReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.ErrorMessageFailureReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized MLS.IncomingMessageType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E8470 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x694C74696D6D6F63 && a2 == 0xEA00000000007473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61736F706F7270 && a2 == 0xEC0000007473694CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D6F636C6577 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized MLS.ErrorMessageFailureReason.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x636572726F636E69 && a2 == 0xEC00000061724574;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636572726F636E69 && a2 == 0xEE0068636F704574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002651E87B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E87D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002651E87F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002651E8810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E8830 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x50676E69646E6570 && a2 == 0xEF6C61736F706F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6569736E617274 && a2 == 0xEE00726F72724574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002651E8850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4364696C61766E69 && a2 == 0xED000074696D6D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002651E8870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4964696C61766E69 && a2 == 0xEC0000007475706ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002651E8890 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E88B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x526E776F6E6B6E75 && a2 == 0xED00006E6F736165)
  {

    return 15;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy8SwiftMLS0E0O8IdentityO07SigningF0VG_AJ10CredentialOs5NeverOTg50123_s15SecureMessaging3MLSO38UpdateOtherExpiredKeyPackagesOperationC016membersRequiringgH013swiftMLSGroupSayAC9AllMemberOGAC05d26M8Protocol_p_tYaKF0pC0ABO8f3O10h5OAO07G8R0VXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for MLS.Identity.SigningIdentity();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for MLS.Identity.Credential();
  v6 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v39 = v8;
    v31[1] = v1;
    v46 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v45 = v46;
    v43 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v11 = v6;
    v12 = result;
    v13 = 0;
    v37 = (v4 + 8);
    v38 = v4 + 16;
    v40 = v11;
    v35 = v3;
    v36 = v11 + 32;
    v32 = a1 + 64;
    v33 = v9;
    v34 = v4;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v43 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_26;
      }

      v42 = *(a1 + 36);
      (*(v4 + 16))(v44, *(a1 + 48) + *(v4 + 72) * v12, v3);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v17 = a1;
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v18 = v39;
      v19 = v44;
      MLS.Identity.SigningIdentity.credential.getter();
      (*v37)(v19, v3);
      v20 = v45;
      v46 = v45;
      v22 = *(v45 + 16);
      v21 = *(v45 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v20 = v46;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v45 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v18, v41);
      v14 = 1 << *(v17 + 32);
      if (v12 >= v14)
      {
        goto LABEL_27;
      }

      v24 = *(v43 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_28;
      }

      a1 = v17;
      if (v42 != *(v17 + 36))
      {
        goto LABEL_29;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v33;
        v4 = v34;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v15 = v33;
        v28 = (v32 + 8 * v16);
        v4 = v34;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v12, v42, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v12, v42, 0);
      }

LABEL_4:
      ++v13;
      v12 = v14;
      v3 = v35;
      if (v13 == v15)
      {
        return v45;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.errorHandlingPolicy.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[10] = a3;
  v5[11] = a5;
  v5[8] = a1;
  v5[9] = a2;
  v7 = *a5;
  v5[12] = *a5;
  v8 = *(v7 + 88);
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a4;
  v5[15] = v9;
  v5[16] = v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.errorHandlingPolicy.getter, v11, 0);
}

uint64_t closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.errorHandlingPolicy.getter()
{
  v37 = v0;
  v1 = *(v0 + 72);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v34 = *(v0 + 104);
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36[0] = v9;
    *v7 = 136315394;
    v10 = *(v5 + 112);
    v11 = (*(v10 + 16))(v34, v10);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v36);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_264F1F000, v3, v4, "UpdateOtherExpiredKeyPackagesOperation key package updates hit error. Downgrading { identifier: %s, error: %@ }", v7, 0x16u);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 96);

    v10 = *(v16 + 112);
  }

  v17 = *(v0 + 120);
  v18 = *(v0 + 128);
  v19 = *(v0 + 104);
  v20 = *(v0 + 112);
  v22 = *(v0 + 88);
  v21 = *(v0 + 96);
  v35 = *(v0 + 80);
  v23 = *(v0 + 64);
  v24 = *(v21 + 120);
  v25 = *(v21 + 96);
  *(v0 + 16) = *(v21 + 80);
  *(v0 + 24) = v19;
  *(v0 + 32) = v25;
  *(v0 + 48) = v10;
  *(v0 + 56) = v24;
  v26 = type metadata accessor for MLS.DowngradeOperation(0, v0 + 16);
  v27 = *(v22 + 2);
  v28 = *(v22 + 3);
  (*(v20 + 16))(v17, &v22[*(*v22 + 136)], v19);
  v29 = &v22[*(*v22 + 176)];
  v30 = v29[1];
  v36[0] = *v29;
  v36[1] = v30;

  v31 = MLS.DowngradeOperation.__allocating_init(group:context:clientIdentifier:shouldHeal:)(v27, v28, v17, v36, 0);
  *(v23 + 24) = v26;
  *(v23 + 32) = swift_getWitnessTable();
  *v23 = v31;
  outlined init with copy of MLS.OutgoingEventState?(v35, v23 + 40, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  *(v23 + 408) = 2;
  *(v23 + 424) = 0;
  *(v23 + 432) = 0;
  *(v23 + 416) = v18;

  v32 = *(v0 + 8);

  return v32();
}

uint64_t partial apply for closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.errorHandlingPolicy.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.errorHandlingPolicy.getter(a1, a2, a3, a4, v4);
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.group.getter()
{
  v1 = *(v0 + 16);

  return v1;
}