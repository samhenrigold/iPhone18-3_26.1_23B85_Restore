uint64_t MLS.OutgoingEventState.eventStorageIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

double MLS.OutgoingEventState.eventSpecificState.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return outlined copy of MLS.OutgoingEventState.EventSpecificState(v2, v3, v4);
}

uint64_t MLS.OutgoingEventState.eventIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MLS.OutgoingEventState.clientContext.getter()
{
  v1 = *(v0 + 56);
  outlined copy of Data?(v1, *(v0 + 64));
  return v1;
}

uint64_t MLS.OutgoingEventState.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[5];
  v4 = v0[6];
  _StringGuts.grow(_:)(80);
  MEMORY[0x2667545A0](0xD00000000000001FLL, 0x80000002651E9CE0);
  MEMORY[0x2667545A0](v3, v4);
  MEMORY[0x2667545A0](0xD000000000000015, 0x80000002651E9D00);
  MEMORY[0x2667545A0](v1, v2);
  MEMORY[0x2667545A0](0xD000000000000016, 0x80000002651E9D20);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.OutgoingEventState.CodingKeys()
{
  v1 = 0x656449746E657665;
  if (*v0 != 2)
  {
    v1 = 0x6F43746E65696C63;
  }

  v2 = 0xD000000000000016;
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
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingEventState.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MLS.OutgoingEventState.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingEventState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = v7;
  v25 = *(v1 + 32);
  v8 = *(v1 + 40);
  v17 = *(v1 + 48);
  v18 = v8;
  v9 = *(v1 + 56);
  v15 = *(v1 + 64);
  v16 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys();
  v10 = v3;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  v11 = v21;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v11)
  {
    v13 = v15;
    v12 = v16;
    v22 = v20;
    v23 = v19;
    v24 = v25;
    v26 = 1;
    outlined copy of MLS.OutgoingEventState.EventSpecificState(v20, v19, v25);
    lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of MLS.OutgoingEventState.EventSpecificState(v22, v23, v24);
    LOBYTE(v22) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v12;
    v23 = v13;
    v26 = 3;
    outlined copy of Data?(v12, v13);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v22, v23);
  }

  return (*(v4 + 8))(v6, v10);
}

uint64_t MLS.OutgoingEventState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v30) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v10;
  LOBYTE(v25) = 1;
  lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v30;
  v39 = v31;
  LOBYTE(v30) = 2;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v11;
  v40 = 3;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v12 = v38;
  v20 = v37;
  v13 = v24;
  *&v25 = v9;
  *(&v25 + 1) = v24;
  v14 = v23;
  v26 = v23;
  v15 = v39;
  LOBYTE(v27) = v39;
  *(&v27 + 1) = v21;
  *&v28 = v22;
  *(&v28 + 1) = v37;
  v29 = v38;
  *(a2 + 64) = v38;
  v16 = v26;
  *a2 = v25;
  *(a2 + 16) = v16;
  v17 = v28;
  *(a2 + 32) = v27;
  *(a2 + 48) = v17;
  outlined init with copy of MLS.OutgoingEventState(&v25, &v30);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *&v30 = v9;
  *(&v30 + 1) = v13;
  v31 = v14;
  v32 = v15;
  v33 = v21;
  v34 = v22;
  v35 = v20;
  v36 = v12;
  return outlined destroy of MLS.OutgoingEventState(&v30);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO9AllMemberO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v6 = *(v3 - 3);
      v5 = *(v3 - 2);
      v17 = *(v3 - 1);
      v7 = *v3;
      v9 = *(v4 - 3);
      v8 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;
      if (v7 < 0)
      {
        if ((v11 & 0x80000000) == 0)
        {
LABEL_29:
          outlined copy of MLS.AllMember(*(v4 - 3), *(v4 - 2));
          outlined copy of MLS.AllMember(v6, v5);
          outlined consume of MLS.AllMember(v6, v5);
          outlined consume of MLS.AllMember(v9, v8);
          return 0;
        }

        if (v6 == v9 && v5 == v8)
        {
          outlined copy of MLS.AllMember(v6, v5);
          outlined copy of MLS.AllMember(v6, v5);
          outlined consume of MLS.AllMember(v6, v5);
          outlined consume of MLS.AllMember(v6, v5);
          if (v7)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of MLS.AllMember(v6, v5);
          outlined copy of MLS.AllMember(v9, v8);
          outlined consume of MLS.AllMember(v6, v5);
          outlined consume of MLS.AllMember(v9, v8);
          if ((v16 & 1) == 0)
          {
            return 0;
          }

          if (v7)
          {
LABEL_22:
            if ((v11 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_6;
          }
        }

        result = 0;
        if ((v11 & 1) != 0 || v17 != v10)
        {
          return result;
        }
      }

      else
      {
        if (v11 < 0)
        {
          goto LABEL_29;
        }

        if (v6 == v9 && v5 == v8)
        {
          outlined copy of MLS.AllMember(v6, v5);
          outlined copy of MLS.AllMember(v6, v5);
          outlined consume of MLS.AllMember(v6, v5);
          outlined consume of MLS.AllMember(v6, v5);
        }

        else
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of MLS.AllMember(v9, v8);
          outlined copy of MLS.AllMember(v6, v5);
          outlined consume of MLS.AllMember(v6, v5);
          outlined consume of MLS.AllMember(v9, v8);
          if ((v15 & 1) == 0)
          {
            return 0;
          }
        }
      }

LABEL_6:
      v3 += 32;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO14KeyPackageInfoV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          outlined copy of Data._Representation(v7, v6);
          outlined copy of Data._Representation(v9, v8);
          v22 = __DataStorage._bytes.getter();
          if (v22)
          {
            v23 = __DataStorage._offset.getter();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          MEMORY[0x2667538A0]();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        outlined copy of Data._Representation(v7, v6);
        outlined copy of Data._Representation(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          outlined copy of Data._Representation(v7, v6);
          outlined copy of Data._Representation(v9, v8);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          MEMORY[0x2667538A0]();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          closure #1 in static Data.== infix(_:_:)(v24, v25, v26, v33);
          outlined consume of Data._Representation(v9, v8);
          outlined consume of Data._Representation(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        outlined copy of Data._Representation(v7, v6);
        outlined copy of Data._Representation(v9, v8);
      }

      closure #1 in static Data.== infix(_:_:)(v33, v9, v8, &v32);
      outlined consume of Data._Representation(v9, v8);
      outlined consume of Data._Representation(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingCreateGroupState.CodingKeys(uint64_t a1)
{
  Group = lazy protocol witness table accessor for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys();

  return MEMORY[0x2821FE718](a1, Group);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingCreateGroupState.CodingKeys(uint64_t a1)
{
  Group = lazy protocol witness table accessor for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys();

  return MEMORY[0x2821FE720](a1, Group);
}

double MLS.OutgoingRecreateGroupState.keyPackageResult.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingRecreateGroupState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002651E9DA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingRecreateGroupState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingRecreateGroupState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingRecreateGroupState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO26OutgoingRecreateGroupStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO26OutgoingRecreateGroupStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
  _s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGAEy_xGSEAAWlTm_0(&lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>, &protocol conformance descriptor for MLS.KeyPackageRetrievalResult<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v6, v3);
}

uint64_t MLS.OutgoingRecreateGroupState.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO26OutgoingRecreateGroupStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO26OutgoingRecreateGroupStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
    _s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGAEy_xGSEAAWlTm_0(&lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>, &protocol conformance descriptor for MLS.KeyPackageRetrievalResult<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t _s15SecureMessaging3MLSO24OutgoingCreateGroupStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOs0H3KeyAAsAIP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    return 0x6D654D726568746FLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingCreateGroupState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002651E9D80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6D654D726568746FLL && a2 == 0xEC00000073726562)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingAddMemberState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingAddMemberState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingCreateGroupState.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  v11 = *v5;
  v14[0] = v5[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v11;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
  lazy protocol witness table accessor for type [MLS.KeyPackageInfo] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.KeyPackageInfo] and conformance <A> [A], lazy protocol witness table accessor for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo, MEMORY[0x277D83948]);
  v12 = v14[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v12)
  {
    v17 = v14[0];
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A], lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v15 + 8))(v10, v8);
}

uint64_t MLS.OutgoingCreateGroupState.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a6@<X8>)
{
  v19 = a6;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v12 = v9;
  v13 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
  v21 = 0;
  lazy protocol witness table accessor for type [MLS.KeyPackageInfo] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.KeyPackageInfo] and conformance <A> [A], lazy protocol witness table accessor for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo, MEMORY[0x277D83978]);
  v14 = v20;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  v21 = 1;
  lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A], lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D83978]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v11, v14);
  v16 = v22;
  *v13 = v15;
  v13[1] = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingKickMemberState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingKickMemberState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingKickMemberState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingKickMemberState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO23OutgoingKickMemberStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO23OutgoingKickMemberStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A], lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D83948]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v6, v3);
}

uint64_t MLS.OutgoingKickMemberState.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO23OutgoingKickMemberStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO23OutgoingKickMemberStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A], lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D83978]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingRemoveSelfState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingRemoveSelfState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingKeyUpdateState.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingKeyUpdateState.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingResyncState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingResyncState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingDowngradeState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingDowngradeState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingRemoveSelfState.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance MLS.OutgoingRemoveSelfState(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v10 + 8))(v12, v9);
}

double MLS.OutgoingReplaceExpiredCertsState.keyPackageResult.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t static MLS.OutgoingCreateGroupState.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void, void))
{
  v3 = a1[1];
  v4 = a2[1];
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO9AllMemberO_Tt1g5(v3, v4);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys()
{
  if (*v0)
  {
    return 0x654D746567726174;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002651E9DA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x654D746567726174 && a2 == 0xED0000737265626DLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingReplaceExpiredCertsState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO32OutgoingReplaceExpiredCertsStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO32OutgoingReplaceExpiredCertsStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
  _s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGAEy_xGSEAAWlTm_0(&lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>, &protocol conformance descriptor for MLS.KeyPackageRetrievalResult<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A], lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MLS.OutgoingReplaceExpiredCertsState.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO32OutgoingReplaceExpiredCertsStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO32OutgoingReplaceExpiredCertsStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
  v13 = 0;
  _s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGAEy_xGSEAAWlTm_0(&lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>, &protocol conformance descriptor for MLS.KeyPackageRetrievalResult<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  v13 = 1;
  lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A], lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D83978]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MLS.OutgoingCreateGroupState(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  v5 = a1[1];
  v6 = a2[1];
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO9AllMemberO_Tt1g5(v5, v6);
}

uint64_t MLS.OutgoingGroupNameChangeState.groupName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static MLS.OutgoingGroupNameChangeState.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingGroupNameChangeState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingGroupNameChangeState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingGroupNameChangeState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingGroupNameChangeState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28OutgoingGroupNameChangeStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28OutgoingGroupNameChangeStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t MLS.OutgoingGroupNameChangeState.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28OutgoingGroupNameChangeStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28OutgoingGroupNameChangeStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance MLS.OutgoingGroupNameChangeState(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28OutgoingGroupNameChangeStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28OutgoingGroupNameChangeStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

BOOL specialized static MLS.OutgoingEventState.EventSpecificState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (v4 <= 4)
  {
    if (*(a1 + 16) > 1u)
    {
      if (v4 != 2)
      {
        if (v4 == 3)
        {
          if (v7 == 3)
          {
            outlined consume of MLS.OutgoingEventState.EventSpecificState(*a1, v2, 3u);
            v8 = v6;
            v9 = v5;
            v10 = 3;
LABEL_45:
            outlined consume of MLS.OutgoingEventState.EventSpecificState(v8, v9, v10);
            return 1;
          }
        }

        else if (v7 == 4)
        {
          outlined consume of MLS.OutgoingEventState.EventSpecificState(*a1, v2, 4u);
          v8 = v6;
          v9 = v5;
          v10 = 4;
          goto LABEL_45;
        }

        goto LABEL_40;
      }

      if (v7 == 2)
      {
        outlined copy of MLS.OutgoingEventState.EventSpecificState(*a2, a2[1], 2u);
        outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 2u);
        outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 2u);
        outlined copy of MLS.OutgoingEventState.EventSpecificState(v6, v5, 2u);
        v12 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO9AllMemberO_Tt1g5(v3, v6);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 2u);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 2u);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 2u);
        v13 = v3;
        v14 = v2;
        v15 = 2;
LABEL_32:
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v13, v14, v15);
        return v12 & 1;
      }

      goto LABEL_39;
    }

    if (*(a1 + 16))
    {
      if (v7 == 1)
      {
        outlined copy of MLS.OutgoingEventState.EventSpecificState(*a2, a2[1], 1u);
        outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 1u);
        outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 1u);
        outlined copy of MLS.OutgoingEventState.EventSpecificState(v6, v5, 1u);
        if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO14KeyPackageInfoV_Tt1g5(v3, v6) & 1) == 0)
        {
          outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 1u);
          outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 1u);
          outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 1u);
          v19 = v3;
          v20 = v2;
          v21 = 1;
          goto LABEL_41;
        }

        v18 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO9AllMemberO_Tt1g5(v2, v5);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 1u);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 1u);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 1u);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 1u);
        result = 1;
        if (v18)
        {
          return result;
        }

        return 0;
      }
    }

    else if (!*(a2 + 16))
    {
      outlined copy of MLS.OutgoingEventState.EventSpecificState(*a2, a2[1], 0);
      outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 0);
      outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 0);
      outlined copy of MLS.OutgoingEventState.EventSpecificState(v6, v5, 0);
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO14KeyPackageInfoV_Tt1g5(v3, v6) & 1) == 0)
      {
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 0);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 0);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 0);
        v19 = v3;
        v20 = v2;
        v21 = 0;
        goto LABEL_41;
      }

      v11 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO9AllMemberO_Tt1g5(v2, v5);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 0);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 0);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 0);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 0);
      return (v11 & 1) != 0;
    }

    goto LABEL_38;
  }

  if (*(a1 + 16) <= 6u)
  {
    if (v4 == 5)
    {
      if (v7 == 5)
      {
        outlined consume of MLS.OutgoingEventState.EventSpecificState(*a1, v2, 5u);
        v8 = v6;
        v9 = v5;
        v10 = 5;
        goto LABEL_45;
      }
    }

    else if (v7 == 6)
    {
      outlined consume of MLS.OutgoingEventState.EventSpecificState(*a1, v2, 6u);
      v8 = v6;
      v9 = v5;
      v10 = 6;
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if (v4 == 7)
  {
    if (v7 == 7)
    {
      outlined copy of MLS.OutgoingEventState.EventSpecificState(*a2, a2[1], 7u);
      outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 7u);
      outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 7u);
      outlined copy of MLS.OutgoingEventState.EventSpecificState(v6, v5, 7u);
      if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt1g5(v3, v6) & 1) == 0)
      {
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 7u);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 7u);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 7u);
        v19 = v3;
        v20 = v2;
        v21 = 7;
        goto LABEL_41;
      }

      v16 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO9AllMemberO_Tt1g5(v2, v5);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 7u);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 7u);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 7u);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 7u);
      return (v16 & 1) != 0;
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v4 != 8)
  {
    if (v7 == 9)
    {
      outlined copy of MLS.OutgoingEventState.EventSpecificState(*a2, a2[1], 9u);
      outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 9u);
      outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 9u);
      outlined copy of MLS.OutgoingEventState.EventSpecificState(v6, v5, 9u);
      v12 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt1g5(v3, v6);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 9u);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 9u);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 9u);
      v13 = v3;
      v14 = v2;
      v15 = 9;
      goto LABEL_32;
    }

    goto LABEL_39;
  }

  if (v7 != 8)
  {
LABEL_39:

LABEL_40:
    outlined copy of MLS.OutgoingEventState.EventSpecificState(v6, v5, v7);
    outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, v4);
    v19 = v6;
    v20 = v5;
    v21 = v7;
LABEL_41:
    outlined consume of MLS.OutgoingEventState.EventSpecificState(v19, v20, v21);
    return 0;
  }

  if (v3 == v6 && v2 == v5)
  {
    outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 8u);
    outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 8u);
    outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 8u);
    v8 = v3;
    v9 = v2;
    v10 = 8;
    goto LABEL_45;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 8u);
  outlined copy of MLS.OutgoingEventState.EventSpecificState(v6, v5, 8u);
  outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 8u);
  outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 8u);
  result = 0;
  if (v22)
  {
    return 1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState);
  }

  return result;
}

double outlined copy of MLS.OutgoingEventState.EventSpecificState(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 6u)
  {
    if (a3 != 7)
    {
      if (a3 != 8 && a3 != 9)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }

    goto LABEL_10;
  }

LABEL_10:

  return result;
}

BOOL specialized static MLS.OutgoingEventState.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = a1[6];
  v18 = a1[7];
  v19 = a1[8];
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v16 = *(a2 + 56);
  v17 = *(a2 + 64);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v23 = v2;
  v24 = v3;
  v25 = v4;
  v20 = v8;
  v21 = v7;
  v22 = v9;
  outlined copy of MLS.OutgoingEventState.EventSpecificState(v2, v3, v4);
  outlined copy of MLS.OutgoingEventState.EventSpecificState(v8, v7, v9);
  v12 = specialized static MLS.OutgoingEventState.EventSpecificState.== infix(_:_:)(&v23, &v20);
  outlined consume of MLS.OutgoingEventState.EventSpecificState(v20, v21, v22);
  outlined consume of MLS.OutgoingEventState.EventSpecificState(v23, v24, v25);
  if (!v12 || (v5 != v10 || v6 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v19 >> 60 == 15)
  {
    v13 = v17;
    if (v17 >> 60 == 15)
    {
      outlined copy of Data?(v18, v19);
      outlined copy of Data?(v16, v17);
      outlined consume of Data?(v18, v19);
      return 1;
    }

    goto LABEL_12;
  }

  v13 = v17;
  if (v17 >> 60 == 15)
  {
LABEL_12:
    outlined copy of Data?(v18, v19);
    outlined copy of Data?(v16, v13);
    outlined consume of Data?(v18, v19);
    outlined consume of Data?(v16, v13);
    return 0;
  }

  outlined copy of Data?(v18, v19);
  outlined copy of Data?(v16, v17);
  v15 = specialized static Data.== infix(_:_:)(v18, v19, v16, v17);
  outlined consume of Data?(v16, v17);
  outlined consume of Data?(v18, v19);
  return v15;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys);
  }

  return result;
}

uint64_t _s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGAEy_xGSEAAWlTm_0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingEventState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for MLS.OutgoingEventState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingEventState.EventSpecificState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.OutgoingEventState.EventSpecificState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
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

uint64_t getEnumTagSinglePayload for MLS.OutgoingCreateGroupState(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MLS.OutgoingCreateGroupState(uint64_t result, int a2, int a3)
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

uint64_t specialized MLS.OutgoingEventState.EventSpecificState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461657263 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65626D654D646461 && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x626D654D6B63696BLL && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x655365766F6D6572 && a2 == 0xEA0000000000666CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746164705579656BLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E79736572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x646172676E776F64 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002651E9910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E616843656D616ELL && a2 == 0xEA00000000006567 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6574616572636572 && a2 == 0xED000070756F7247)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t specialized MLS.OutgoingEventState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000002651E9D40 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9D60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656449746E657665 && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
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

uint64_t outlined init with copy of MetricCollector.Event(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricCollector.Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: String, value: MetricCollector.Event)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetSgMd, &_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MetricCollector.Event(uint64_t a1)
{
  v2 = type metadata accessor for MetricCollector.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

unint64_t KDSRegistration.ClientCreationError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.ClientCreationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.ClientCreationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.ClientCreationError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO19ClientCreationErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO19ClientCreationErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.ClientCreationError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO19ClientCreationErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO19ClientCreationErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.ClientCreationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.ClientCreationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t KDSRegistration.UpdateSIMLabelIDError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO21UpdateSIMLabelIDErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO21UpdateSIMLabelIDErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.UpdateSIMLabelIDError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO21UpdateSIMLabelIDErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO21UpdateSIMLabelIDErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.UpdateSIMLabelIDError(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError();

  return MEMORY[0x28211F4B8](a1, updated);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.UpdateSIMLabelIDError(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError();

  return MEMORY[0x28211F4A8](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.UpdateSupportedStateError.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.UpdateSupportedStateError.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t KDSRegistration.UpdateSupportedStateError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO25UpdateSupportedStateErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO25UpdateSupportedStateErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.UpdateSupportedStateError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO25UpdateSupportedStateErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO25UpdateSupportedStateErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.UpdateSupportedStateError(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError();

  return MEMORY[0x28211F4B8](a1, updated);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.UpdateSupportedStateError(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError();

  return MEMORY[0x28211F4A8](a1, updated);
}

unint64_t KDSRegistration.IsRegisteredError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

_BYTE *KDSRegistration.IsRegisteredError.init(type:underlyingErrorDescription:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.IsRegisteredError.CodingKeys(uint64_t a1)
{
  IsRegistered = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys();

  return MEMORY[0x2821FE718](a1, IsRegistered);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.IsRegisteredError.CodingKeys(uint64_t a1)
{
  IsRegistered = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys();

  return MEMORY[0x2821FE720](a1, IsRegistered);
}

uint64_t KDSRegistration.IsRegisteredError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17IsRegisteredErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17IsRegisteredErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.IsRegisteredError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17IsRegisteredErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17IsRegisteredErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.IsRegisteredError(uint64_t a1)
{
  IsRegisteredError = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError();

  return MEMORY[0x28211F4B8](a1, IsRegisteredError);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.IsRegisteredError(uint64_t a1)
{
  IsRegisteredError = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError();

  return MEMORY[0x28211F4A8](a1, IsRegisteredError);
}

unint64_t KDSRegistration.SignWithParticipantKeyError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 8;
  if (result < 8)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.SignWithParticipantKeyError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO27SignWithParticipantKeyErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO27SignWithParticipantKeyErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.SignWithParticipantKeyError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO27SignWithParticipantKeyErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO27SignWithParticipantKeyErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.SignWithParticipantKeyError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.SignWithParticipantKeyError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t KDSRegistration.GetIdentityError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 9;
  if (result < 9)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.GetIdentityError.CodingKeys(uint64_t a1)
{
  Identity = lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys();

  return MEMORY[0x2821FE718](a1, Identity);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.GetIdentityError.CodingKeys(uint64_t a1)
{
  Identity = lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys();

  return MEMORY[0x2821FE720](a1, Identity);
}

uint64_t KDSRegistration.GetIdentityError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO16GetIdentityErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO16GetIdentityErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.GetIdentityError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO16GetIdentityErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO16GetIdentityErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = 0;
  lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v17;
  v15 = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.GetIdentityError(uint64_t a1)
{
  IdentityError = lazy protocol witness table accessor for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError();

  return MEMORY[0x28211F4B8](a1, IdentityError);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.GetIdentityError(uint64_t a1)
{
  IdentityError = lazy protocol witness table accessor for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError();

  return MEMORY[0x28211F4A8](a1, IdentityError);
}

unint64_t KDSRegistration.GetCredentialError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.GetCredentialError.CodingKeys(uint64_t a1)
{
  Credential = lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys();

  return MEMORY[0x2821FE718](a1, Credential);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.GetCredentialError.CodingKeys(uint64_t a1)
{
  Credential = lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys();

  return MEMORY[0x2821FE720](a1, Credential);
}

uint64_t KDSRegistration.GetCredentialError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO18GetCredentialErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO18GetCredentialErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.GetCredentialError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO18GetCredentialErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO18GetCredentialErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = 0;
  lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v17;
  v15 = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.GetCredentialError(uint64_t a1)
{
  CredentialError = lazy protocol witness table accessor for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError();

  return MEMORY[0x28211F4B8](a1, CredentialError);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.GetCredentialError(uint64_t a1)
{
  CredentialError = lazy protocol witness table accessor for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError();

  return MEMORY[0x28211F4A8](a1, CredentialError);
}

unint64_t KDSRegistration.GetClientIDError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 10;
  if (result < 0xA)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t KDSRegistration.GetClientIDError.underlyingErrorDescription.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t KDSRegistration.GetClientIDError.underlyingErrorDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

_BYTE *KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.GetClientIDError.CodingKeys(uint64_t a1)
{
  Client = lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys();

  return MEMORY[0x2821FE718](a1, Client);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.GetClientIDError.CodingKeys(uint64_t a1)
{
  Client = lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys();

  return MEMORY[0x2821FE720](a1, Client);
}

uint64_t KDSRegistration.GetClientIDError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO16GetClientIDErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO16GetClientIDErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.GetClientIDError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO16GetClientIDErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO16GetClientIDErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = 0;
  lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v17;
  v15 = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.GetClientIDError(uint64_t a1)
{
  ClientIDError = lazy protocol witness table accessor for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError();

  return MEMORY[0x28211F4B8](a1, ClientIDError);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.GetClientIDError(uint64_t a1)
{
  ClientIDError = lazy protocol witness table accessor for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError();

  return MEMORY[0x28211F4A8](a1, ClientIDError);
}

unint64_t KDSRegistration.RegisterKeyPackageError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 14;
  if (result < 0xE)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.RegisterKeyPackageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.RegisterKeyPackageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.RegisterKeyPackageError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO23RegisterKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO23RegisterKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.RegisterKeyPackageError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO23RegisterKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO23RegisterKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = 0;
  lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v17;
  v15 = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.RegisterKeyPackageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.RegisterKeyPackageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t KDSRegistration.DeregisterKeyPackageError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.DeregisterKeyPackageError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO25DeregisterKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO25DeregisterKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.DeregisterKeyPackageError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO25DeregisterKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO25DeregisterKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = 0;
  lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v17;
  v15 = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.DeregisterKeyPackageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.DeregisterKeyPackageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.QueryKeyPackageError.CodingKeys(uint64_t a1)
{
  KeyPackage = lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys();

  return MEMORY[0x2821FE718](a1, KeyPackage);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.QueryKeyPackageError.CodingKeys(uint64_t a1)
{
  KeyPackage = lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys();

  return MEMORY[0x2821FE720](a1, KeyPackage);
}

uint64_t KDSRegistration.QueryKeyPackageError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO20QueryKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO20QueryKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.QueryKeyPackageError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO20QueryKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO20QueryKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = 0;
  lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v17;
  v15 = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.QueryKeyPackageError(uint64_t a1)
{
  KeyPackage = lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError();

  return MEMORY[0x28211F4B8](a1, KeyPackage);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.QueryKeyPackageError(uint64_t a1)
{
  KeyPackage = lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError();

  return MEMORY[0x28211F4A8](a1, KeyPackage);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.RequestManagerError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.RequestManagerError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.RequestManagerError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO19RequestManagerErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO19RequestManagerErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.RequestManagerError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO19RequestManagerErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO19RequestManagerErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = 0;
  lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v17;
  v15 = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.RequestManagerError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.RequestManagerError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.IsRegisteredChangedError.CodingKeys(uint64_t a1)
{
  IsRegisteredChanged = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys();

  return MEMORY[0x2821FE718](a1, IsRegisteredChanged);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.IsRegisteredChangedError.CodingKeys(uint64_t a1)
{
  IsRegisteredChanged = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys();

  return MEMORY[0x2821FE720](a1, IsRegisteredChanged);
}

uint64_t KDSRegistration.IsRegisteredChangedError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO24IsRegisteredChangedErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO24IsRegisteredChangedErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.IsRegisteredChangedError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO24IsRegisteredChangedErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO24IsRegisteredChangedErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = 0;
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v17;
  v15 = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.IsRegisteredChangedError(uint64_t a1)
{
  IsRegisteredChangedError = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError();

  return MEMORY[0x28211F4B8](a1, IsRegisteredChangedError);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.IsRegisteredChangedError(uint64_t a1)
{
  IsRegisteredChangedError = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError();

  return MEMORY[0x28211F4A8](a1, IsRegisteredChangedError);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.ClientCreationError.ErrorType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v6 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v5, v6);
}

uint64_t static KDSRegistration.ClientCreationError.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a1 + 2);
    v4 = *(a2 + 2);
    if (v3)
    {
      if (v4)
      {
        v5 = *(a1 + 1) == *(a2 + 1) && v3 == v4;
        if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.ObtainPhoneAuthenticationInfoError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO34ObtainPhoneAuthenticationInfoErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO34ObtainPhoneAuthenticationInfoErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.ObtainPhoneAuthenticationInfoError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO34ObtainPhoneAuthenticationInfoErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO34ObtainPhoneAuthenticationInfoErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = 0;
  lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v17;
  v15 = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.ClientCreationError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.ClientCreationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.UpdateSIMLabelIDError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.UpdateSIMLabelIDError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.UpdateSupportedStateError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.UpdateSupportedStateError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.IsRegisteredError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.IsRegisteredError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.SignWithParticipantKeyError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.SignWithParticipantKeyError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.GetIdentityError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.GetIdentityError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.GetCredentialError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.GetCredentialError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.GetClientIDError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.GetClientIDError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.RegisterKeyPackageError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.RegisterKeyPackageError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.DeregisterKeyPackageError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.DeregisterKeyPackageError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.QueryKeyPackageError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.RequestManagerError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.RequestManagerError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.IsRegisteredChangedError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.IsRegisteredChangedError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.ObtainPhoneAuthenticationInfoError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for KDSRegistration.ClientCreationError(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.ObtainPhoneAuthenticationInfoError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.ObtainPhoneAuthenticationInfoError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t getEnumTagSinglePayload for KDSRegistration.RegisterKeyPackageError.ErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KDSRegistration.RegisterKeyPackageError.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d160Messaging3MLSO17SelfHealOperationC7perform2on15metricCollector16keyPackageResultAC05GroupfM0VAC21SwiftMLSGroupProtocol_pSg_AA06MetricJ0VAC03KeyL7FetcherC05Fetchw10VtYaKFAC15ih5VAC03G9W0OXEfU0_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v31;
  v4 = v3 + 56;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v24 = v3 + 64;
  v25 = v1;
  v26 = v3 + 56;
  v27 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v28 = v7;
    v29 = *(v3 + 36);
    v10 = *(v3 + 48) + 32 * v6;
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v30 = *(v10 + 24);
    outlined copy of MLS.AllMember(*v10, v11);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    result = swift_task_isCurrentExecutor();
    if ((result & 1) == 0)
    {
      result = swift_task_reportUnexpectedExecutor();
    }

    v15 = *(v31 + 16);
    v14 = *(v31 + 24);
    if (v15 >= v14 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
    }

    *(v31 + 16) = v15 + 1;
    v16 = v31 + 32 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v11;
    *(v16 + 48) = v13;
    *(v16 + 56) = v30;
    *(v16 + 57) = 0;
    v3 = v27;
    v8 = 1 << *(v27 + 32);
    if (v6 >= v8)
    {
      goto LABEL_26;
    }

    v4 = v26;
    v17 = *(v26 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_27;
    }

    if (v29 != *(v27 + 36))
    {
      goto LABEL_28;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (v24 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v6, v29, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v6, v29, 0);
    }

LABEL_4:
    v7 = v28 + 1;
    v6 = v8;
    if (v28 + 1 == v25)
    {
      return v2;
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
  return result;
}

uint64_t MLS.SelfHealOperation.__allocating_init(group:context:swiftMLSClient:groupLoader:persister:eventSender:keyPackageProvider:credentialProvider:selfMember:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, __int128 *a12, uint64_t *a13)
{
  v21 = swift_allocObject();
  MLS.SelfHealOperation.init(group:context:swiftMLSClient:groupLoader:persister:eventSender:keyPackageProvider:credentialProvider:selfMember:clientIdentifier:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  return v21;
}

uint64_t closure #1 in MLS.SelfHealOperation.errorHandlingPolicy.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[20] = a3;
  v5[21] = a5;
  v5[18] = a1;
  v5[19] = a2;
  v7 = *a5;
  v5[22] = *a5;
  v8 = *(v7 + 88);
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a4;
  v5[25] = v9;
  v5[26] = v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SelfHealOperation.errorHandlingPolicy.getter, v11, 0);
}

uint64_t closure #1 in MLS.SelfHealOperation.errorHandlingPolicy.getter()
{
  v59 = v0;
  outlined init with copy of MLS.SwiftMLSGroupProtocol?(*(v0 + 160), v0 + 104);
  v1 = *(v0 + 152);
  if (*(v0 + 128))
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 104), v0 + 64);

    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 176);
      v56 = *(v0 + 184);
      v6 = *(v0 + 152);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v58[0] = v9;
      *v7 = 136315394;
      v10 = *(v5 + 112);
      v11 = (*(v10 + 16))(v56, v10);
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v58);

      *(v7 + 4) = v13;
      *(v7 + 12) = 2112;
      v14 = v6;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v15;
      *v8 = v15;
      _os_log_impl(&dword_264F1F000, v3, v4, "SelfHealOperation hit error. Advancing Era { identifier: %s, error: %@ }", v7, 0x16u);
      outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x266755550](v9, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    else
    {
      v33 = *(v0 + 176);

      v10 = *(v33 + 112);
    }

    v34 = *(v0 + 200);
    v57 = *(v0 + 208);
    v54 = v34;
    v36 = *(v0 + 184);
    v35 = *(v0 + 192);
    v38 = *(v0 + 168);
    v37 = *(v0 + 176);
    v39 = *(v0 + 144);
    v40 = *(v37 + 120);
    v41 = *(v37 + 96);
    *(v0 + 16) = *(v37 + 80);
    *(v0 + 24) = v36;
    *(v0 + 32) = v41;
    *(v0 + 48) = v10;
    *(v0 + 56) = v40;
    v42 = type metadata accessor for MLS.EraAdvancementOperation(0, v0 + 16);
    v43 = *(v38 + 3);
    v55 = *(v38 + 2);
    (*(v35 + 16))(v34, &v38[*(*v38 + 136)], v36);
    v44 = &v38[*(*v38 + 160)];
    v45 = *v44;
    v46 = v44[1];
    v47 = &v38[*(*v38 + 168)];
    v48 = *v47;
    v49 = v47[1];
    v50 = &v38[*(*v38 + 200)];
    v51 = v50[1];
    v58[0] = *v50;
    v58[1] = v51;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v52 = MLS.EraAdvancementOperation.__allocating_init(group:context:persister:eventSender:clientIdentifier:)(v55, v43, v54, v45, v46, v48, v49, v58);
    *(v39 + 24) = v42;
    *(v39 + 32) = swift_getWitnessTable();
    *v39 = v52;
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 64), v39 + 40);
    *(v39 + 408) = 2;
    *(v39 + 424) = 0;
    *(v39 + 432) = 0;
    *(v39 + 416) = v57;

    v32 = *(v0 + 8);
  }

  else
  {
    outlined destroy of NSObject?(v0 + 104, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

    v16 = v1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 176);
      v20 = *(v0 + 184);
      v21 = *(v0 + 152);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v58[0] = v24;
      *v22 = 136315394;
      v25 = (*(*(v19 + 112) + 16))(v20);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v58);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2112;
      v28 = v21;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v29;
      *v23 = v29;
      _os_log_impl(&dword_264F1F000, v17, v18, "SelfHealOperation hit error without a group. Throwing error { identifier: %s, error: %@ }", v22, 0x16u);
      outlined destroy of NSObject?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x266755550](v24, -1, -1);
      MEMORY[0x266755550](v22, -1, -1);
    }

    v30 = *(v0 + 152);
    swift_willThrow();
    v31 = v30;

    v32 = *(v0 + 8);
  }

  return v32();
}

uint64_t MLS.SelfHealOperation.group.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MLS.SelfHealOperation.selfMember.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + *(*v1 + 192);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v2 + 24);
  return outlined copy of MLS.AllMember(v3, v4);
}

double MLS.SelfHealOperation.clientIdentifier.getter@<D0>(void *a1@<X8>)
{
  v2 = (v1 + *(*v1 + 200));
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;

  return result;
}

uint64_t MLS.SelfHealOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 208);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *MLS.SelfHealOperation.init(group:context:swiftMLSClient:groupLoader:persister:eventSender:keyPackageProvider:credentialProvider:selfMember:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, __int128 *a12, uint64_t *a13)
{
  v21 = *v13;
  v32 = *a12;
  v31 = *(a12 + 2);
  v30 = *(a12 + 24);
  v33 = a13[1];
  v34 = *a13;
  Logger.init(subsystem:category:)();
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  (*(*(*(v21 + 88) - 8) + 32))(&v13[*(*v13 + 136)], a3);
  v22 = &v13[*(*v13 + 144)];
  *(v22 + 25) = *(a4 + 25);
  v23 = a4[1];
  *v22 = *a4;
  *(v22 + 1) = v23;
  *&v13[*(*v13 + 152)] = a5;
  v24 = &v13[*(*v13 + 160)];
  *v24 = a6;
  *(v24 + 1) = a7;
  v25 = &v13[*(*v13 + 168)];
  *v25 = a8;
  *(v25 + 1) = a9;
  outlined init with take of MLS.KeyPackageProvider(a10, &v13[*(*v13 + 176)], type metadata accessor for MLS.KeyPackageProvider);
  outlined init with take of MLS.KeyUpdatePolicy(a11, &v13[*(*v13 + 184)]);
  v26 = &v13[*(*v13 + 192)];
  *v26 = v32;
  *(v26 + 2) = v31;
  v26[24] = v30;
  v27 = &v13[*(*v13 + 200)];
  *v27 = v34;
  *(v27 + 1) = v33;
  return v13;
}

uint64_t partial apply for closure #1 in MLS.SelfHealOperation.errorHandlingPolicy.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SelfHealOperation.errorHandlingPolicy.getter(a1, a2, a3, a4, v4);
}

uint64_t MLS.SelfHealOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[180] = v3;
  v4[179] = a2;
  v4[178] = a1;
  v6 = *v3;
  v4[181] = *v3;
  v7 = v6[11];
  v4[182] = v7;
  v4[183] = *(v7 - 8);
  v4[184] = swift_task_alloc();
  v8 = type metadata accessor for MLS.Group.Message();
  v4[185] = v8;
  v4[186] = *(v8 - 8);
  v4[187] = swift_task_alloc();
  type metadata accessor for MLS.Client.KeyPackage();
  v4[188] = swift_task_alloc();
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  v4[189] = v9;
  v4[190] = *(v9 - 8);
  v4[191] = swift_task_alloc();
  v10 = type metadata accessor for MLS.Client.Client.ResyncInput();
  v4[192] = v10;
  v4[193] = *(v10 - 8);
  v4[194] = swift_task_alloc();
  v4[195] = type metadata accessor for MetricCollector.Event(0);
  v4[196] = swift_task_alloc();
  v4[197] = swift_task_alloc();
  v11 = v6[13];
  v4[198] = v11;
  v4[199] = *(*(v11 + 8) + 8);
  v12 = v6[10];
  v4[200] = v12;
  v4[201] = swift_getAssociatedTypeWitness();
  v4[202] = swift_task_alloc();
  v4[203] = *(v12 - 8);
  v4[204] = swift_task_alloc();
  v4[205] = swift_task_alloc();
  v4[206] = swift_task_alloc();
  v4[207] = swift_task_alloc();
  v4[208] = swift_task_alloc();
  v4[209] = swift_task_alloc();
  v4[210] = swift_task_alloc();
  v4[211] = swift_task_alloc();
  v4[212] = swift_task_alloc();
  v4[213] = swift_task_alloc();
  v4[214] = swift_task_alloc();
  v4[215] = swift_task_alloc();
  v4[216] = swift_task_alloc();
  v4[217] = swift_task_alloc();
  v4[218] = swift_task_alloc();
  v4[219] = swift_task_alloc();
  v4[220] = swift_task_alloc();
  v4[221] = swift_task_alloc();
  v4[222] = swift_task_alloc();
  v4[223] = swift_task_alloc();
  v4[224] = swift_task_alloc();
  v4[225] = swift_task_alloc();
  v4[226] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  v4[227] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v13, 0);
}

uint64_t MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = v0[201];
  v2 = v0[200];
  v18 = v0[199];
  v17 = v0[202];
  v3 = v0[182];
  v4 = v0[181];
  v5 = v0[180];
  v6 = v0[179];
  v0[176] = v0[226];
  v0[228] = *(*v5 + 136);
  v7 = *(v4 + 112);
  v0[229] = v7;
  v8 = *(v7 + 16);

  v0[230] = v8(v3, v7);
  v0[231] = v9;
  v10 = swift_task_alloc();
  v0[232] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[233] = AssociatedConformanceWitness;
  v12 = *(AssociatedConformanceWitness + 56);
  v0[234] = v12;
  v0[235] = (AssociatedConformanceWitness + 56) & 0xFFFFFFFFFFFFLL | 0xE321000000000000;
  v12(v1, AssociatedConformanceWitness);
  VersatileError.init(type:)(v17, v2, v18);
  v13 = swift_task_alloc();
  v0[236] = v13;
  *v13 = v0;
  v13[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  v14 = v0[225];
  v15 = v0[200];

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 42), async function pointer to partial apply for implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v10, v14, 0, 0, v15);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1624);

  v4 = (v3 + 8);
  v2[237] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v5 = v2[227];
    v6 = v2[225];
    v7 = v2[200];
    v8 = *v4;
    v2[268] = *v4;
    v8(v6, v7);

    v9 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v10 = v5;
  }

  else
  {
    v11 = v2[227];
    v12 = v2[225];
    v13 = v2[200];
    v14 = *v4;
    v2[238] = *v4;
    v14(v12, v13);
    v9 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v10 = v11;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 1440);
  v2 = *(v0 + 352);
  *(v0 + 440) = *(v0 + 336);
  *(v0 + 456) = v2;
  *(v0 + 536) = *(v0 + 432);
  v3 = *(v0 + 416);
  *(v0 + 504) = *(v0 + 400);
  *(v0 + 520) = v3;
  v4 = *(v0 + 384);
  *(v0 + 472) = *(v0 + 368);
  *(v0 + 488) = v4;
  *(v0 + 1912) = *(*v1 + 208);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1848);
    v8 = *(v0 + 1840);
    v9 = *(v0 + 1440);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v21);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v9 + 16), *(v9 + 24), &v21);
    _os_log_impl(&dword_264F1F000, v5, v6, "SelfHealOperation fetching group info { identifier: %s, group: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v12 = (*(v0 + 1440) + *(**(v0 + 1440) + 168));
  *(v0 + 1920) = *v12;
  v13 = v12[1];
  *(v0 + 1928) = v13;
  ObjectType = swift_getObjectType();
  v15 = *(v0 + 456);
  *(v0 + 544) = *(v0 + 440);
  *(v0 + 560) = v15;
  *(v0 + 640) = *(v0 + 536);
  v16 = *(v0 + 520);
  *(v0 + 608) = *(v0 + 504);
  *(v0 + 624) = v16;
  v17 = *(v0 + 488);
  *(v0 + 576) = *(v0 + 472);
  *(v0 + 592) = v17;
  v20 = (*(v13 + 48) + **(v13 + 48));
  v18 = swift_task_alloc();
  *(v0 + 1936) = v18;
  *v18 = v0;
  v18[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v20(v0 + 1336, v0 + 544, ObjectType, v13);
}

{
  v1 = *(*v0 + 1816);

  return MEMORY[0x2822009F8](MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v1, 0);
}

{
  v58 = v0;
  *(v0 + 1944) = *(v0 + 1336);
  v1 = *(v0 + 1344);
  *(v0 + 1952) = v1;
  *(v0 + 1968) = *(v0 + 1360);
  if (v1 >> 60 == 15)
  {
    outlined init with copy of MLS.SwiftMLSGroupProtocol?(*(v0 + 1432), v0 + 1136);
    if (*(v0 + 1160))
    {
      outlined init with take of MLS.KeyUpdatePolicy((v0 + 1136), v0 + 1096);

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();

      v4 = os_log_type_enabled(v2, v3);
      v5 = *(v0 + 1848);
      if (v4)
      {
        v6 = *(v0 + 1840);
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v57[0] = v8;
        *v7 = 136315138;
        v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v57);

        *(v7 + 4) = v9;
        _os_log_impl(&dword_264F1F000, v2, v3, "SelfHealOperation failed to get groupRecoveryInfo. Advancing era { identifier: %s }", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x266755550](v8, -1, -1);
        MEMORY[0x266755550](v7, -1, -1);
      }

      else
      {
      }

      v56 = *(v0 + 1928);
      v27 = *(v0 + 1920);
      v28 = *(v0 + 1832);
      v29 = *(v0 + 1824);
      v30 = *(v0 + 1584);
      v31 = *(v0 + 1472);
      v32 = *(v0 + 1464);
      v33 = *(v0 + 1456);
      v34 = *(v0 + 1448);
      v35 = *(v0 + 1440);
      v36 = *(v0 + 1424);
      v37 = *(v34 + 96);
      v38 = *(v34 + 120);
      *(v0 + 1000) = *(v0 + 1600);
      *(v0 + 1008) = v33;
      *(v0 + 1016) = v37;
      *(v0 + 1024) = v30;
      *(v0 + 1032) = v28;
      *(v0 + 1040) = v38;
      v39 = type metadata accessor for MLS.EraAdvancementOperation(0, v0 + 1000);
      v40 = *(v35 + 3);
      v55 = *(v35 + 2);
      (*(v32 + 16))(v31, &v35[v29], v33);
      v41 = &v35[*(*v35 + 160)];
      v42 = *v41;
      v43 = v41[1];
      v44 = &v35[*(*v35 + 200)];
      v45 = v44[1];
      v57[0] = *v44;
      v57[1] = v45;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v46 = MLS.EraAdvancementOperation.__allocating_init(group:context:persister:eventSender:clientIdentifier:)(v55, v40, v31, v42, v43, v27, v56, v57);
      *(v36 + 24) = v39;
      *(v36 + 32) = swift_getWitnessTable();
      outlined destroy of MLS.Group(v0 + 440);
      *v36 = v46;
      outlined init with take of MLS.KeyUpdatePolicy((v0 + 1096), v36 + 40);
      *(v36 + 408) = 2;
      *(v36 + 416) = *(v0 + 1408);
      *(v36 + 424) = 0;
      *(v36 + 432) = 0;

      v47 = *(v0 + 8);
    }

    else
    {

      outlined destroy of NSObject?(v0 + 1136, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 1848);
      if (v21)
      {
        v23 = *(v0 + 1840);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v57[0] = v25;
        *v24 = 136315138;
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v57);

        *(v24 + 4) = v26;
        _os_log_impl(&dword_264F1F000, v19, v20, "SelfHealOperation failed to get groupRecoveryInfo and has no swiftMLSGroup. Failing { identifier: %s }", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x266755550](v25, -1, -1);
        MEMORY[0x266755550](v24, -1, -1);
      }

      else
      {
      }

      v48 = *(v0 + 1616);
      v49 = *(v0 + 1600);
      v50 = *(v0 + 1592);
      (*(*(v0 + 1864) + 136))();
      VersatileError.init(type:)(v48, v49, v50);
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
        (*(v0 + 1904))(*(v0 + 1688), *(v0 + 1600));
      }

      else
      {
        v51 = *(v0 + 1688);
        v52 = *(v0 + 1624);
        v53 = *(v0 + 1600);
        swift_allocError();
        (*(v52 + 32))(v54, v51, v53);
      }

      swift_willThrow();
      outlined destroy of MLS.Group(v0 + 440);

      v47 = *(v0 + 8);
    }

    return v47();
  }

  else
  {
    v10 = *(v0 + 1616);
    v11 = *(v0 + 1600);
    v12 = *(v0 + 1592);
    (*(*(v0 + 1864) + 120))();
    VersatileError.init(type:)(v10, v11, v12);
    v13 = swift_task_alloc();
    *(v0 + 1976) = v13;
    *v13 = v0;
    v13[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v14 = *(v0 + 1784);
    v15 = *(v0 + 1600);
    v16 = *(v0 + 1592);
    v17 = *(v0 + 1440);
    v61 = *(v0 + 1776);
    v60 = v16;

    return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 1392, &async function pointer to partial apply for implicit closure #4 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v17, v14, 0, 0, v15);
  }
}

{
  v2 = *v1;
  *(*v1 + 1984) = v0;

  if (v0)
  {
    v3 = *(v2 + 1816);
    (*(v2 + 1904))(*(v2 + 1784), *(v2 + 1600));

    v4 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 1816);
    (*(v2 + 1904))(*(v2 + 1784), *(v2 + 1600));
    v4 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v37 = v0;
  v1 = *(v0 + 1392);
  *(v0 + 1992) = v1;
  v2 = *(v0 + 1400);
  *(v0 + 2000) = v2;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1848);
    v6 = *(v0 + 1840);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v36);
    _os_log_impl(&dword_264F1F000, v3, v4, "SelfHealOperation calling resync { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = *(v0 + 1576);
  v10 = *(v0 + 1568);
  v11 = *(v0 + 1560);
  v12 = *(v0 + 1440);
  Date.init()();
  v13 = *(v11 + 20);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v9 + v13, 1, 1, v14);
  outlined init with take of MLS.KeyPackageProvider(v9, v10, type metadata accessor for MetricCollector.Event);
  v15 = *(v0 + 1408);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36[0] = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v17 = v36[0];

  *(v0 + 1408) = v17;
  outlined init with copy of MLS.SwiftMLSClientPicker(v12 + *(*v12 + 144), v0 + 1048);
  if (*(v0 + 1088))
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 1048), v0 + 1216);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 1048), v0 + 1296);
    v18 = *(v0 + 1320);
    v19 = *(v0 + 1328);
    v20 = __swift_project_boxed_opaque_existential_1((v0 + 1296), v18);
    *(v0 + 1240) = v18;
    *(v0 + 1248) = *(v19 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1216));
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v20, v18);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1296));
  }

  v22 = *(v0 + 1984);
  v23 = *(v0 + 1952);
  v24 = *(v0 + 1944);
  v25 = *(v0 + 1240);
  v26 = *(v0 + 1248);
  __swift_project_boxed_opaque_existential_1((v0 + 1216), v25);
  outlined copy of Data._Representation(v24, v23);
  MLS.Group.GroupInfo.init(fromRaw:)();
  v27 = *(v0 + 1968);
  v28 = *(v0 + 1960);
  if (v22)
  {
    v29 = *(v0 + 1952);
    v30 = *(v0 + 1944);

    outlined consume of Data._Representation(v1, v2);
    outlined destroy of MLS.Group(v0 + 440);
    outlined consume of MLS.GroupRecoveryInfo?(v30, v29, v28, v27);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1216));

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    outlined copy of Data?(v28, v27);
    outlined copy of Data._Representation(v1, v2);
    MLS.Client.KeyPackage.init(fromRaw:)();
    MLS.Client.Client.ResyncInput.init(groupInfo:ratchetTree:keyPackage:useReflection:)();
    v35 = (*(v26 + 80) + **(v26 + 80));
    v33 = swift_task_alloc();
    *(v0 + 2008) = v33;
    *v33 = v0;
    v33[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v34 = *(v0 + 1552);

    return v35(v0 + 1176, v34, v25, v26);
  }
}

{
  v2 = *v1;
  *(*v1 + 2016) = v0;

  if (v0)
  {
    v3 = v2[227];
    (*(v2[193] + 8))(v2[194], v2[192]);

    v4 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v5 = v3;
  }

  else
  {
    v6 = v2[227];
    (*(v2[193] + 8))(v2[194], v2[192]);
    v4 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = v0[233];
  v2 = v0[202];
  v3 = v0[201];
  v4 = v0[200];
  v5 = v0[199];
  v6 = v0[180];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 152);
  v7._countAndFlagsBits = 0x534C4D7466697753;
  v7._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v7);
  v8 = swift_task_alloc();
  v0[253] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v0 + 147;
  v9 = *(v1 + 96);
  v0[254] = v9;
  v0[255] = (v1 + 96) & 0xFFFFFFFFFFFFLL | 0xCA1B000000000000;
  v9(v3, v1);
  VersatileError.init(type:)(v2, v4, v5);
  v10 = swift_task_alloc();
  v0[256] = v10;
  *v10 = v0;
  v10[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  v11 = v0[221];
  v12 = v0[200];

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v10, &async function pointer to partial apply for implicit closure #6 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v8, v11, 0, 0, v12);
}

{
  v2 = *v1;

  v3 = *(v2 + 1816);
  (*(v2 + 1904))(*(v2 + 1768), *(v2 + 1600));
  if (v0)
  {

    v4 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {

    v4 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[233];
  v2 = v0[202];
  v3 = v0[201];
  v4 = v0[200];
  v5 = v0[199];
  v6 = v0[180];
  v7 = swift_task_alloc();
  v0[257] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v0 + 147;
  (*(v1 + 128))(v3, v1);
  VersatileError.init(type:)(v2, v4, v5);
  v8 = swift_task_alloc();
  v0[258] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
  *v8 = v0;
  v8[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  v9 = v0[219];
  v10 = v0[200];

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 177), async function pointer to partial apply for implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v7, v9, 0, 0, v10);
}

{
  v2 = *v1;
  *(*v1 + 2072) = v0;

  v3 = *(v2 + 1816);
  (*(v2 + 1904))(*(v2 + 1752), *(v2 + 1600));
  if (v0)
  {

    v4 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {

    v4 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v52 = v0;
  v1 = v0[259];
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d160Messaging3MLSO17SelfHealOperationC7perform2on15metricCollector16keyPackageResultAC05GroupfM0VAC21SwiftMLSGroupProtocol_pSg_AA06MetricJ0VAC03KeyL7FetcherC05Fetchw10VtYaKFAC15ih5VAC03G9W0OXEfU0_Tf1cn_n(v0[177]);
  v3 = result;
  v45 = *(result + 16);
  if (v45)
  {
    v4 = 0;
    v5 = (result + 57);
    v6 = MEMORY[0x277D84F90];
    v43 = result;
    v44 = v0;
    while (1)
    {
      if (v4 >= *(v3 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = v0[180];
      v8 = *v5;
      v9 = *(v5 - 9);
      v10 = *(v5 - 17);
      v47 = *(v5 - 25);
      v48 = v10;
      v49 = v9;
      v50 = *(v5 - 1);
      v51 = v8;
      outlined copy of MLS.AllMember(v47, v10);
      v11 = closure #3 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(&v47, v7);
      if (v1)
      {
        break;
      }

      v13 = v47;
      v12 = v48;
      v14 = v49;
      v15 = v50;
      if (v11)
      {
        v16 = v51;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
        }

        v18 = *(v6 + 16);
        v17 = *(v6 + 24);
        v19 = v6;
        if (v18 >= v17 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v19 = v6;
        }

        *(v19 + 16) = v18 + 1;
        v20 = v19 + 32 * v18;
        *(v20 + 32) = v13;
        *(v20 + 40) = v12;
        *(v20 + 48) = v14;
        *(v20 + 56) = v15;
        *(v20 + 57) = v16;
        v3 = v43;
        v0 = v44;
        v6 = v19;
      }

      else
      {
        result = outlined consume of MLS.AllMember(v47, v48);
      }

      v1 = 0;
      ++v4;
      v5 += 32;
      if (v45 == v4)
      {
        goto LABEL_14;
      }
    }

    outlined consume of MLS.AllMember(v47, v48);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_14:
    v0[260] = v6;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    v46 = v6;
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[231];
      v24 = v0[230];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = v26;
      *v25 = 136315394;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, &v47);
      *(v25 + 12) = 2080;
      lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
      v27 = Set.description.getter();
      v29 = v28;

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v47);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_264F1F000, v21, v22, "SelfHealOperation updating membership list { identifier: %s, resyncMembers: %s }", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v26, -1, -1);
      MEMORY[0x266755550](v25, -1, -1);
    }

    else
    {
    }

    v31 = v0[254];
    v32 = v0[233];
    v33 = v0[202];
    v34 = v0[201];
    v35 = v0[200];
    v36 = v0[199];
    v37 = v0[180];
    v38 = swift_task_alloc();
    v0[261] = v38;
    *(v38 + 16) = v37;
    *(v38 + 24) = v46;
    v31(v34, v32);
    VersatileError.init(type:)(v33, v35, v36);
    v39 = swift_task_alloc();
    v0[262] = v39;
    *v39 = v0;
    v39[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v40 = v0[217];
    v41 = v0[216];
    v42 = v0[200];
    v54 = v0[199];
    v55 = v41;

    return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v39, &async function pointer to partial apply for implicit closure #10 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v38, v40, 0, 0, v42);
  }
}

{
  v2 = *v1;

  v3 = *(v2 + 1816);
  (*(v2 + 1904))(*(v2 + 1736), *(v2 + 1600));

  if (v0)
  {

    v4 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {

    v4 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[233];
  v2 = v0[202];
  v3 = v0[201];
  v4 = v0[200];
  v13 = v0[199];
  v14 = v0[234];
  v5 = v0[180];
  v6 = v0[150];
  v7 = v0[151];
  __swift_project_boxed_opaque_existential_1(v0 + 147, v6);
  (*(v7 + 8))(v6, v7);
  v8 = swift_task_alloc();
  v0[263] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v0 + 147;
  v14(v3, v1);
  VersatileError.init(type:)(v2, v4, v13);
  v9 = swift_task_alloc();
  v0[264] = v9;
  *v9 = v0;
  v9[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  v10 = v0[215];
  v11 = v0[200];

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 81), &async function pointer to partial apply for implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v8, v10, 0, 0, v11);
}

{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[227];
  (v3[238])(v2[215], v2[200]);
  if (v0)
  {

    v5 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v5 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 1848);
  v35 = *(v0 + 1840);
  v39 = *(v0 + 1872);
  v36 = *(v0 + 1616);
  v37 = *(v0 + 1600);
  v38 = *(v0 + 1592);
  v2 = *(v0 + 1496);
  v3 = *(v0 + 1488);
  v31 = *(v0 + 1480);
  v40 = *(v0 + 1440);
  v4 = *(v0 + 664);
  *(v0 + 752) = *(v0 + 648);
  *(v0 + 768) = v4;
  v5 = *(v0 + 680);
  v6 = *(v0 + 696);
  v7 = *(v0 + 712);
  v8 = *(v0 + 728);
  *(v0 + 848) = *(v0 + 744);
  *(v0 + 816) = v7;
  *(v0 + 832) = v8;
  *(v0 + 784) = v5;
  *(v0 + 800) = v6;
  v34 = *(v0 + 1408);
  v9 = *(v0 + 1200);
  v10 = *(v0 + 1208);
  __swift_project_boxed_opaque_existential_1((v0 + 1176), v9);
  v11 = *(v10 + 16);
  swift_bridgeObjectRetain_n();

  v11(v9, v10);
  v12 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v32 = v13;
  v33 = v12;
  (*(v3 + 8))(v2, v31);
  v14 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v15 = [v14 UUIDString];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = *(v0 + 808);
  v20 = *(v0 + 816);
  v21 = *(v0 + 824);
  v22 = *(v0 + 832);
  v23 = *(v0 + 792);
  v24 = *(v0 + 800);
  *(v0 + 200) = v35;
  *(v0 + 208) = v1;
  *(v0 + 216) = v35;
  *(v0 + 224) = v1;
  *(v0 + 232) = xmmword_2651B5F50;
  *(v0 + 248) = v34;
  *(v0 + 256) = v16;
  *(v0 + 264) = v18;
  *(v0 + 272) = v33;
  *(v0 + 280) = v32;
  *(v0 + 288) = v19;
  *(v0 + 296) = v20;
  *(v0 + 304) = v21;
  *(v0 + 312) = v22;
  *(v0 + 320) = v23;
  *(v0 + 328) = v24;
  *(v0 + 856) = v35;
  *(v0 + 864) = v1;
  *(v0 + 872) = 0u;
  *(v0 + 888) = 5;
  *(v0 + 896) = v35;
  *(v0 + 904) = v1;
  *(v0 + 912) = xmmword_2651B5F50;
  v25 = swift_task_alloc();
  *(v0 + 2120) = v25;
  *(v25 + 16) = v0 + 1256;
  outlined copy of Data._Representation(v19, v20);
  outlined copy of Data._Representation(v21, v22);
  outlined copy of Data._Representation(v23, v24);
  swift_bridgeObjectRetain_n();
  v39();
  VersatileError.init(type:)(v36, v37, v38);
  v26 = swift_allocObject();
  *(v0 + 2128) = v26;
  v26[2] = v40;
  v26[3] = v35;
  v26[4] = v1;

  v27 = swift_task_alloc();
  *(v0 + 2136) = v27;
  *v27 = v0;
  v27[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  v28 = *(v0 + 1704);
  v29 = *(v0 + 1600);

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 1368, &async function pointer to partial apply for implicit closure #12 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v25, v28, partial apply for closure #4 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v26, v29);
}

{
  v2 = *v1;

  v3 = *(v2 + 1816);
  (*(v2 + 1904))(*(v2 + 1704), *(v2 + 1600));

  if (v0)
  {

    v4 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {

    v4 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v45 = v0;
  v1 = *(v0 + 1368);
  v43 = *(v0 + 1376);
  v42 = *(v0 + 1384);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 2000);
  v6 = *(v0 + 1992);
  v41 = *(v0 + 1968);
  v7 = *(v0 + 1960);
  v8 = *(v0 + 1952);
  v9 = *(v0 + 1944);
  v10 = *(v0 + 1848);
  if (v4)
  {
    v39 = *(v0 + 2000);
    v11 = *(v0 + 1840);
    v38 = *(v0 + 1992);
    v12 = swift_slowAlloc();
    v40 = v1;
    v13 = swift_slowAlloc();
    v44 = v13;
    *v12 = 136315138;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v44);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_264F1F000, v2, v3, "SelfHealOperation returning operation result { identifier: %s }", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    v15 = v13;
    v1 = v40;
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
    outlined destroy of MLS.Group(v0 + 440);
    outlined destroy of MLS.Group(v0 + 752);
    outlined consume of MLS.GroupRecoveryInfo?(v9, v8, v7, v41);
    outlined consume of Data._Representation(v38, v39);
  }

  else
  {
    outlined destroy of MLS.Group(v0 + 440);
    outlined destroy of MLS.Group(v0 + 752);
    outlined consume of MLS.GroupRecoveryInfo?(v9, v8, v7, v41);
    outlined consume of Data._Representation(v6, v5);
  }

  v16 = *(v0 + 1424);
  *(v0 + 144) = *(v0 + 328);
  v17 = *(v0 + 216);
  v18 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v18;
  *(v0 + 16) = *(v0 + 200);
  *(v0 + 32) = v17;
  v19 = *(v0 + 312);
  *(v0 + 112) = *(v0 + 296);
  *(v0 + 128) = v19;
  v20 = *(v0 + 280);
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = v20;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi4_(v0 + 16);
  v21 = *(v0 + 16);
  v22 = *(v0 + 32);
  v23 = *(v0 + 64);
  *(v16 + 32) = *(v0 + 48);
  *(v16 + 48) = v23;
  *v16 = v21;
  *(v16 + 16) = v22;
  v24 = *(v0 + 80);
  v25 = *(v0 + 96);
  v26 = *(v0 + 128);
  *(v16 + 96) = *(v0 + 112);
  *(v16 + 112) = v26;
  *(v16 + 64) = v24;
  *(v16 + 80) = v25;
  v27 = *(v0 + 144);
  v28 = *(v0 + 160);
  v29 = *(v0 + 176);
  *(v16 + 176) = *(v0 + 192);
  *(v16 + 144) = v28;
  *(v16 + 160) = v29;
  *(v16 + 128) = v27;
  *(v16 + 184) = *(v0 + 856);
  v30 = *(v0 + 872);
  v31 = *(v0 + 888);
  v32 = *(v0 + 904);
  *(v16 + 248) = *(v0 + 920);
  *(v16 + 232) = v32;
  *(v16 + 216) = v31;
  *(v16 + 200) = v30;
  *(v16 + 256) = 0;
  *(v16 + 264) = v1;
  *(v16 + 272) = v43;
  *(v16 + 280) = v42;
  *(v16 + 288) = *(v0 + 856);
  v33 = *(v0 + 872);
  v34 = *(v0 + 888);
  v35 = *(v0 + 904);
  *(v16 + 352) = *(v0 + 920);
  *(v16 + 320) = v34;
  *(v16 + 336) = v35;
  *(v16 + 304) = v33;
  *(v16 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v0 + 1256, v16 + 368);
  *(v16 + 408) = 0;
  *(v16 + 416) = *(v0 + 1408);
  *(v16 + 424) = 0;
  *(v16 + 432) = 0;
  outlined init with copy of MLS.OutgoingEventState(v0 + 856, v0 + 928);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1256));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1176));

  v36 = *(v0 + 8);

  return v36();
}

{
  v1 = *(*(v0 + 1624) + 32);
  v1(*(v0 + 1680), *(v0 + 1792), *(v0 + 1600));
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0 + 2144))(*(v0 + 1680), *(v0 + 1600));
  }

  else
  {
    v2 = *(v0 + 1680);
    v3 = *(v0 + 1600);
    swift_allocError();
    v1(v4, v2, v3);
  }

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(*(v0 + 1624) + 32);
  v1(*(v0 + 1672), *(v0 + 1776), *(v0 + 1600));
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0 + 1904))(*(v0 + 1672), *(v0 + 1600));
  }

  else
  {
    v2 = *(v0 + 1672);
    v3 = *(v0 + 1600);
    swift_allocError();
    v1(v4, v2, v3);
  }

  v5 = *(v0 + 1968);
  v6 = *(v0 + 1960);
  v7 = *(v0 + 1952);
  v8 = *(v0 + 1944);
  outlined destroy of MLS.Group(v0 + 440);
  outlined consume of MLS.GroupRecoveryInfo?(v8, v7, v6, v5);

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = v0[246];
  v2 = v0[245];
  v3 = v0[244];
  v4 = v0[243];
  outlined consume of Data._Representation(v0[249], v0[250]);
  outlined destroy of MLS.Group((v0 + 55));
  outlined consume of MLS.GroupRecoveryInfo?(v4, v3, v2, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 152);

  v5 = v0[1];

  return v5();
}

{
  v1 = *(*(v0 + 1624) + 32);
  v1(*(v0 + 1664), *(v0 + 1760), *(v0 + 1600));
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0 + 1904))(*(v0 + 1664), *(v0 + 1600));
  }

  else
  {
    v2 = *(v0 + 1664);
    v3 = *(v0 + 1600);
    swift_allocError();
    v1(v4, v2, v3);
  }

  v5 = *(v0 + 1968);
  v6 = *(v0 + 1960);
  v7 = *(v0 + 1952);
  v8 = *(v0 + 1944);
  outlined consume of Data._Representation(*(v0 + 1992), *(v0 + 2000));
  outlined destroy of MLS.Group(v0 + 440);
  outlined consume of MLS.GroupRecoveryInfo?(v8, v7, v6, v5);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1176));

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(*(v0 + 1624) + 32);
  v1(*(v0 + 1656), *(v0 + 1744), *(v0 + 1600));
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0 + 1904))(*(v0 + 1656), *(v0 + 1600));
  }

  else
  {
    v2 = *(v0 + 1656);
    v3 = *(v0 + 1600);
    swift_allocError();
    v1(v4, v2, v3);
  }

  v5 = *(v0 + 1968);
  v6 = *(v0 + 1960);
  v7 = *(v0 + 1952);
  v8 = *(v0 + 1944);
  outlined consume of Data._Representation(*(v0 + 1992), *(v0 + 2000));
  outlined destroy of MLS.Group(v0 + 440);
  outlined consume of MLS.GroupRecoveryInfo?(v8, v7, v6, v5);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1176));

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(*(v0 + 1624) + 32);
  v1(*(v0 + 1648), *(v0 + 1728), *(v0 + 1600));
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0 + 1904))(*(v0 + 1648), *(v0 + 1600));
  }

  else
  {
    v2 = *(v0 + 1648);
    v3 = *(v0 + 1600);
    swift_allocError();
    v1(v4, v2, v3);
  }

  v5 = *(v0 + 1968);
  v6 = *(v0 + 1960);
  v7 = *(v0 + 1952);
  v8 = *(v0 + 1944);
  outlined consume of Data._Representation(*(v0 + 1992), *(v0 + 2000));
  outlined destroy of MLS.Group(v0 + 440);
  outlined consume of MLS.GroupRecoveryInfo?(v8, v7, v6, v5);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1176));

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(*(v0 + 1624) + 32);
  v1(*(v0 + 1640), *(v0 + 1712), *(v0 + 1600));
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0 + 1904))(*(v0 + 1640), *(v0 + 1600));
  }

  else
  {
    v2 = *(v0 + 1640);
    v3 = *(v0 + 1600);
    swift_allocError();
    v1(v4, v2, v3);
  }

  v5 = *(v0 + 1968);
  v6 = *(v0 + 1960);
  v7 = *(v0 + 1952);
  v8 = *(v0 + 1944);
  outlined consume of Data._Representation(*(v0 + 1992), *(v0 + 2000));
  outlined destroy of MLS.Group(v0 + 440);
  outlined consume of MLS.GroupRecoveryInfo?(v8, v7, v6, v5);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1256));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1176));

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(*(v0 + 1624) + 32);
  v1(*(v0 + 1632), *(v0 + 1696), *(v0 + 1600));
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0 + 1904))(*(v0 + 1632), *(v0 + 1600));
  }

  else
  {
    v2 = *(v0 + 1632);
    v3 = *(v0 + 1600);
    swift_allocError();
    v1(v4, v2, v3);
  }

  v5 = *(v0 + 1968);
  v6 = *(v0 + 1960);
  v7 = *(v0 + 1952);
  v8 = *(v0 + 1944);
  outlined consume of Data._Representation(*(v0 + 1992), *(v0 + 2000));
  outlined destroy of MLS.OutgoingEventState(v0 + 856);
  outlined destroy of MLS.Group(v0 + 440);
  outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO14OutgoingResyncVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO14OutgoingResyncVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of MLS.Group(v0 + 752);
  outlined consume of MLS.GroupRecoveryInfo?(v8, v7, v6, v5);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1256));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1176));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(a1, a2, a3);
}

uint64_t closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[59] = a2;
  v3[60] = a3;
  v3[58] = a1;
  v4 = type metadata accessor for MLS.Group.GroupInfo();
  v3[61] = v4;
  v3[62] = *(v4 - 8);
  v3[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  outlined init with copy of MLS.SwiftMLSGroupProtocol?(*(v0 + 472), v0 + 368);
  if (*(v0 + 392))
  {
    v1 = *(v0 + 480);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 368), v0 + 328);
    *(v0 + 512) = v1[2];
    *(v0 + 520) = v1[3];
    outlined init with copy of ServerBag.MLS(v0 + 328, v0 + 408);
    v2 = *v1;
    v3 = (v1 + *(*v1 + 160));
    *(v0 + 528) = *v3;
    *(v0 + 536) = v3[1];
    v4 = (v1 + *(v2 + 200));
    *(v0 + 544) = *v4;
    *(v0 + 552) = v4[1];
    v5 = *(v0 + 432);
    v6 = *(v0 + 440);
    __swift_project_boxed_opaque_existential_1((v0 + 408), v5);
    v7 = *(v6 + 32);

    v14 = (v7 + *v7);
    v8 = swift_task_alloc();
    *(v0 + 560) = v8;
    *v8 = v0;
    v8[1] = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

    return v14(v5, v6);
  }

  else
  {
    v10 = *(v0 + 480);
    v11 = *(v0 + 464);
    outlined destroy of NSObject?(v0 + 368, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v12 = *(v10 + 24);
    *v11 = *(v10 + 16);
    *(v11 + 8) = v12;
    *(v11 + 16) = 1;
    *(v11 + 24) = 1;
    *(v11 + 32) = xmmword_2651CBEF0;
    *(v11 + 48) = xmmword_2651CBF00;
    *(v11 + 64) = xmmword_2651CBF00;
    *(v11 + 80) = xmmword_2651CBF00;
    *(v11 + 96) = 0xF000000000000000;

    v13 = *(v0 + 8);

    return v13();
  }
}

{
  v1 = v0[54];
  v2 = v0[55];
  __swift_project_boxed_opaque_existential_1(v0 + 51, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[73] = v3;
  *v3 = v0;
  v3[1] = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v5(v1, v2);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 51);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  v1 = v0[1];

  return v1();
}

{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v2 = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[54];
  v2 = v0[55];
  __swift_project_boxed_opaque_existential_1(v0 + 51, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[82] = v3;
  *v3 = v0;
  v3[1] = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v5(v1, v2);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 51);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[81];
  v2 = v0[78];
  v3 = v0[77];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[81];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[80];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 51);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 672);
  v4 = *(v0 + 648);
  v5 = *(v0 + 624);
  v25 = v5;
  v26 = v1;
  v6 = *(v0 + 616);
  v24 = v6;
  v7 = *(v0 + 592);
  v8 = *(v0 + 576);
  v9 = *(v0 + 520);
  v10 = *(v0 + 512);
  v11 = *(v0 + 464);
  if (v3 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = *(v0 + 672);
  }

  if (v3 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 680);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = *(v0 + 648);
  }

  if (v4 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + 640);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v8;
  }

  *(v0 + 120) = v10;
  *(v0 + 128) = v9;
  *(v0 + 136) = v16;
  *(v0 + 144) = v16;
  *(v0 + 152) = v7;
  *(v0 + 160) = v6;
  *(v0 + 168) = v5;
  *(v0 + 176) = v15;
  *(v0 + 184) = v14;
  *(v0 + 192) = v13;
  *(v0 + 200) = v12;
  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  v17 = *(v0 + 120);
  v18 = *(v0 + 152);
  *(v11 + 16) = *(v0 + 136);
  *(v11 + 32) = v18;
  *v11 = v17;
  v19 = *(v0 + 200);
  v20 = *(v0 + 168);
  v21 = *(v0 + 184);
  *(v11 + 96) = v2;
  *(v11 + 48) = v20;
  *(v11 + 64) = v21;
  *(v11 + 80) = v19;
  outlined init with copy of MLS.Group(v0 + 120, v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 408));
  *(v0 + 16) = v10;
  *(v0 + 24) = v9;
  *(v0 + 32) = v16;
  *(v0 + 40) = v16;
  *(v0 + 48) = v7;
  *(v0 + 56) = v24;
  *(v0 + 64) = v25;
  *(v0 + 72) = v15;
  *(v0 + 80) = v14;
  *(v0 + 88) = v13;
  *(v0 + 96) = v12;
  *(v0 + 104) = v26;
  *(v0 + 112) = v2;
  outlined destroy of MLS.Group(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 328));

  v22 = *(v0 + 8);

  return v22();
}

{
  v1 = v0[84];
  v2 = v0[81];
  v3 = v0[78];
  v4 = v0[77];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[84];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[85];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[81];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[80];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 51);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 568) = v1;

  if (v1)
  {
    v5 = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    *(v4 + 576) = a1;
    v5 = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  *(*v1 + 592) = a1;

  return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v3 = v1[62];
  v2 = v1[63];
  v4 = v1[61];
  v1[77] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[78] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[54];
  v7 = v1[55];
  __swift_project_boxed_opaque_existential_1(v1 + 51, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[79] = v8;
  *v8 = v1;
  v8[1] = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v10(v6, v7);
}

void closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  if ((v0[74] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[54];
    v2 = v0[55];
    __swift_project_boxed_opaque_existential_1(v0 + 51, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[75] = v3;
    *v3 = v0;
    v3[1] = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v4 = v0[63];

    v5(v4, v1, v2);
  }
}

uint64_t closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 640) = a1;
  *(v3 + 648) = a2;

  return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v6 = *v3;
  v6[83] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
  }

  else
  {
    v7 = v6[69];
    v8 = v6[68];
    v16 = v6[67];
    v6[84] = a2;
    v6[85] = a1;
    ObjectType = swift_getObjectType();
    v6[56] = v8;
    v6[57] = v7;
    v15 = (*(v16 + 64) + **(v16 + 64));
    v10 = swift_task_alloc();
    v6[86] = v10;
    *v10 = v6;
    v10[1] = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v11 = v6[67];
    v12 = v6[65];
    v13 = v6[64];

    return v15(v13, v12, v6 + 56, ObjectType, v11);
  }
}

{
  v6 = *v3;
  *(*v3 + 696) = v2;

  if (v2)
  {
    v7 = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    *(v6 + 704) = a2;
    *(v6 + 712) = a1;
    v7 = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t implicit closure #4 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(a1, 1);
}

uint64_t implicit closure #6 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](implicit closure #6 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #6 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = *(v2 + *(*v2 + 152));
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 8))(v4, v5);
  v6 = v2[2];
  v7 = v2[3];
  v10 = (*(*v3 + 160) + **(*v3 + 160));
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = implicit closure #6 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v10(v0 + 2, v6, v7);
}

{
  v2 = *v1;
  v2[10] = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), 0, 0);
  }

  else
  {
    v3 = v2[1];

    return v3();
  }
}

uint64_t implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return MEMORY[0x2822009F8](implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = *(v0 + 112);
  outlined init with copy of ServerBag.MLS(*(v0 + 104) + *(**(v0 + 104) + 184), v0 + 16);
  v2 = *(v0 + 40);
  *(v0 + 120) = v2;
  *(v0 + 136) = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 8))(v3, v4);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.memberCredentials.getter(v6, v5);
}

{
  v1 = v0[16];
  v0[21] = *(v1 + 8);
  v0[22] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x6C1D000000000000;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;

  return MEMORY[0x2822009F8](implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v2, 0);
}

{
  v1 = *(v0 + 160);
  *(v0 + 184) = (*(v0 + 168))(*(v0 + 152), *(v0 + 120), *(v0 + 128));
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v2 = implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  **(v0 + 96) = *(v0 + 184);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v4 = implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t closure #3 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (a2 + *(*a2 + 192));
  if (v3 == *v5 && v4 == v5[1])
  {
    v7 = 0;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  return v7 & 1;
}

uint64_t implicit closure #10 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return MEMORY[0x2822009F8](implicit closure #10 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #10 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = v0[4];
  v2 = *v1;
  v3 = *(v1 + *(*v1 + 160) + 8);
  ObjectType = swift_getObjectType();
  v5 = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = (v1 + *(v5 + 200));
  v9 = v8[1];
  v0[2] = *v8;
  v0[3] = v9;
  v10 = *(v3 + 88);

  v14 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = implicit closure #10 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  v12 = v0[5];

  return (v14)(v6, v7, v12, v0 + 2, ObjectType, v3);
}

{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](specialized implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[52] = a2;
  v3[53] = a3;
  v3[51] = a1;
  v4 = type metadata accessor for MLS.Group.GroupInfo();
  v3[54] = v4;
  v3[55] = *(v4 - 8);
  v3[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v2 = v0[52];
  v1 = v0[53];
  v0[57] = v2[2];
  v0[58] = v2[3];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 8))(v3, v4);
  v5 = *v2;
  v6 = (v2 + *(*v2 + 160));
  v0[59] = *v6;
  v0[60] = v6[1];
  v7 = (v2 + *(v5 + 200));
  v0[61] = *v7;
  v0[62] = v7[1];
  v8 = v0[44];
  v9 = v0[45];
  __swift_project_boxed_opaque_existential_1(v0 + 41, v8);
  v10 = *(v9 + 32);

  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[63] = v11;
  *v11 = v0;
  v11[1] = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v13(v8, v9);
}

{
  v1 = v0[44];
  v2 = v0[45];
  __swift_project_boxed_opaque_existential_1(v0 + 41, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[65] = v3;
  *v3 = v0;
  v3[1] = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v5(v1, v2);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 328));

  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v2 = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[44];
  v2 = v0[45];
  __swift_project_boxed_opaque_existential_1(v0 + 41, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[74] = v3;
  *v3 = v0;
  v3[1] = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v5(v1, v2);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 328));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[73];
  v2 = v0[70];
  v3 = v0[69];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[73];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[72];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);

  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 608);
  v5 = *(v0 + 584);
  v6 = *(v0 + 560);
  v25 = v6;
  v26 = v1;
  v7 = *(v0 + 552);
  v24 = v7;
  v8 = *(v0 + 528);
  v10 = *(v0 + 456);
  v9 = *(v0 + 464);
  v11 = *(v0 + 408);
  if ((v3 & 0x100000000) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = v3;
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 608);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 616);
  }

  if (v5 >> 60 == 15)
  {
    v15 = 0xC000000000000000;
  }

  else
  {
    v15 = *(v0 + 584);
  }

  if (v5 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v0 + 576);
  }

  *(v0 + 120) = v10;
  *(v0 + 128) = v9;
  *(v0 + 136) = v12;
  *(v0 + 144) = v12;
  *(v0 + 152) = v8;
  *(v0 + 160) = v7;
  *(v0 + 168) = v6;
  *(v0 + 176) = v16;
  *(v0 + 184) = v15;
  *(v0 + 192) = v14;
  *(v0 + 200) = v13;
  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  v17 = *(v0 + 184);
  v18 = *(v0 + 168);
  v19 = *(v0 + 200);
  *(v11 + 96) = v2;
  *(v11 + 64) = v17;
  *(v11 + 80) = v19;
  *(v11 + 48) = v18;
  v20 = *(v0 + 120);
  v21 = *(v0 + 152);
  *(v11 + 16) = *(v0 + 136);
  *(v11 + 32) = v21;
  *v11 = v20;
  outlined init with copy of MLS.Group(v0 + 120, v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 328));
  *(v0 + 16) = v10;
  *(v0 + 24) = v9;
  *(v0 + 32) = v12;
  *(v0 + 40) = v12;
  *(v0 + 48) = v8;
  *(v0 + 56) = v24;
  *(v0 + 64) = v25;
  *(v0 + 72) = v16;
  *(v0 + 80) = v15;
  *(v0 + 88) = v14;
  *(v0 + 96) = v13;
  *(v0 + 104) = v26;
  *(v0 + 112) = v2;
  outlined destroy of MLS.Group(v0 + 16);

  v22 = *(v0 + 8);

  return v22();
}

{
  v1 = v0[76];
  v2 = v0[73];
  v3 = v0[70];
  v4 = v0[69];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[76];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[77];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[73];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[72];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);

  v9 = v0[1];

  return v9();
}

uint64_t implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v3 = *v2;
  v3[46] = v2;
  v3[47] = a1;
  v3[48] = v1;
  v3[64] = v1;

  if (v1)
  {
    v4 = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v4 = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  *(*v1 + 528) = a1;

  return MEMORY[0x2822009F8](implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v3 = v1[55];
  v2 = v1[56];
  v4 = v1[54];
  v1[69] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[70] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[44];
  v7 = v1[45];
  __swift_project_boxed_opaque_existential_1(v1 + 41, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[71] = v8;
  *v8 = v1;
  v8[1] = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v10(v6, v7);
}

void implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  if ((v0[66] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[44];
    v2 = v0[45];
    __swift_project_boxed_opaque_existential_1(v0 + 41, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[67] = v3;
    *v3 = v0;
    v3[1] = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v4 = v0[56];

    v5(v4, v1, v2);
  }
}

uint64_t implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = a2;

  return MEMORY[0x2822009F8](implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v6 = *v3;
  v6[75] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
  }

  else
  {
    v8 = v6[61];
    v7 = v6[62];
    v16 = v6[60];
    v6[76] = a2;
    v6[77] = a1;
    ObjectType = swift_getObjectType();
    v6[49] = v8;
    v6[50] = v7;
    v15 = (*(v16 + 64) + **(v16 + 64));
    v10 = swift_task_alloc();
    v6[78] = v10;
    *v10 = v6;
    v10[1] = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v11 = v6[60];
    v12 = v6[58];
    v13 = v6[57];

    return v15(v13, v12, v6 + 49, ObjectType, v11);
  }
}

{
  v6 = *v3;
  *(*v3 + 632) = v2;

  if (v2)
  {
    v7 = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v6[80] = v6[47];
    v6[81] = a2;
    v6[82] = a1;
    v7 = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t implicit closure #12 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](implicit closure #12 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #12 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = v0[3];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = implicit closure #12 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  v5 = v0[2];

  return MLS.SwiftMLSGroupProtocol.groupVersion.getter(v5, v3, v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void closure #4 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v13);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v13);
    _os_log_impl(&dword_264F1F000, oslog, v9, "SelfHealOperation failed to obtain era { identifier: %s, error: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }
}

char *MLS.SelfHealOperation.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));
  outlined destroy of MLS.SwiftMLSClientPicker(v0 + *(*v0 + 144));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  outlined destroy of MLS.KeyPackageProvider(v0 + *(*v0 + 176));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 184)));
  outlined consume of MLS.AllMember(*(v0 + *(*v0 + 192)), *(v0 + *(*v0 + 192) + 8));

  v2 = *(*v0 + 208);
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t MLS.SelfHealOperation.__deallocating_deinit()
{
  MLS.SelfHealOperation.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.OptionalGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.SelfHealOperation<A, B, C>(uint64_t a1)
{
  v6 = (*(**v1 + 272) + **(**v1 + 272));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t protocol witness for MLS.OptionalGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.SelfHealOperation<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 280) + **(**v4 + 280));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.SelfHealOperation<A, B, C>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 208);
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t partial apply for implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(a1, v5, v4);
}

uint64_t partial apply for implicit closure #4 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #4 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(a1);
}

uint64_t outlined consume of MLS.GroupRecoveryInfo?(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    outlined consume of Data._Representation(result, a2);

    return outlined consume of Data?(a3, a4);
  }

  return result;
}

uint64_t partial apply for implicit closure #6 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #6 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(a1, v5, v4);
}

uint64_t partial apply for implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(a1, v5, v4);
}

uint64_t partial apply for implicit closure #10 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #10 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(a1, v5, v4);
}

uint64_t partial apply for implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(a1, v5, v4);
}