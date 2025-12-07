void ContactsSnippetFlowState.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_44();
  v4 = v3;
  v51 = v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E16SnippetFlowStateO21UnsupportedCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E16SnippetFlowStateO21UnsupportedCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E16SnippetFlowStateO23IntentHandledCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E16SnippetFlowStateO23IntentHandledCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E16SnippetFlowStateO17ConfirmCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E16SnippetFlowStateO17ConfirmCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E16SnippetFlowStateO10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E16SnippetFlowStateO10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v11 = v10;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_16_0();
  v54 = v4;
  OUTLINED_FUNCTION_42(v4, v4[3]);
  lazy protocol witness table accessor for type ContactsSnippetFlowState.CodingKeys and conformance ContactsSnippetFlowState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v55 = v11;
    v13 = KeyedDecodingContainer.allKeys.getter();
    started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC18SiriContactsCommon34ModifyContactAttributeSnippetModelV0noeM0O10CodingKeys33_177E55D66B4B3431CB612B735686642ELLO_Tt1g5(v13, 0);
    if (v16 != v15 >> 1)
    {
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_79();
      if (v21 == v22)
      {
        __break(1u);
        return;
      }

      v23 = *(v20 + v18);
      specialized ArraySlice.subscript.getter(v18 + 1, v17, started, v20, v18, v19);
      v25 = v24;
      v27 = v26;
      swift_unknownObjectRelease();
      if (v25 == v27 >> 1)
      {
        if (v23)
        {
          v28 = v51;
          if (v23 == 1)
          {
            lazy protocol witness table accessor for type ContactsSnippetFlowState.IntentHandledCodingKeys and conformance ContactsSnippetFlowState.IntentHandledCodingKeys();
            OUTLINED_FUNCTION_57();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            swift_unknownObjectRelease();
            v29 = OUTLINED_FUNCTION_34();
            v30(v29);
            v31 = OUTLINED_FUNCTION_11_2();
            v32(v31);
            v33 = 0;
            v34 = 0uLL;
            v35 = 0xB000000000000000;
          }

          else
          {
            lazy protocol witness table accessor for type ContactsSnippetFlowState.UnsupportedCodingKeys and conformance ContactsSnippetFlowState.UnsupportedCodingKeys();
            OUTLINED_FUNCTION_57();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            swift_unknownObjectRelease();
            v43 = OUTLINED_FUNCTION_34();
            v44(v43, v52);
            v45 = OUTLINED_FUNCTION_11_2();
            v46(v45);
            v33 = 0;
            v34 = 0uLL;
            v35 = 0x7000000000000000;
          }

          v50 = v54;
        }

        else
        {
          LOBYTE(v57) = 0;
          lazy protocol witness table accessor for type ContactsSnippetFlowState.ConfirmCodingKeys and conformance ContactsSnippetFlowState.ConfirmCodingKeys();
          OUTLINED_FUNCTION_57();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          LOBYTE(v56) = 0;
          lazy protocol witness table accessor for type Data and conformance Data();
          OUTLINED_FUNCTION_52();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v33 = v57;
          v35 = v58;
          OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_68();
          v53 = v47;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v48 = OUTLINED_FUNCTION_56();
          v49(v48, v53);
          (*(v55 + 8))(v2, v9);
          v34 = v56;
          v50 = v54;
          v28 = v51;
        }

        *v28 = v33;
        *(v28 + 8) = v35;
        *(v28 + 16) = v34;
        __swift_destroy_boxed_opaque_existential_0(v50);
        goto LABEL_11;
      }
    }

    v36 = type metadata accessor for DecodingError();
    OUTLINED_FUNCTION_85(v36, MEMORY[0x277D841A0]);
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v38 = &type metadata for ContactsSnippetFlowState;
    v39 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_27(v39);
    OUTLINED_FUNCTION_26_0();
    (*(v40 + 104))(v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = OUTLINED_FUNCTION_11_2();
    v42(v41);
  }

  __swift_destroy_boxed_opaque_existential_0(v54);
LABEL_11:
  OUTLINED_FUNCTION_45();
}

void *GetContactSnippetModel.contact.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);

  return Loggable.wrappedValue.getter();
}

void *key path getter for GetContactSnippetModel.contact : GetContactSnippetModel@<X0>(void *a1@<X8>)
{
  result = GetContactSnippetModel.contact.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for GetContactSnippetModel.contact : GetContactSnippetModel(id *a1)
{
  v3 = *a1;
  v1 = v3;
  return GetContactSnippetModel.contact.setter(&v3);
}

uint64_t (*GetContactSnippetModel.contact.modify())()
{
  v1 = OUTLINED_FUNCTION_81();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  v2[4] = Loggable.wrappedValue.modify();
  return GetContactSnippetModel.contact.modify;
}

uint64_t GetContactSnippetModel.directInvocationsModel.getter()
{
  v0 = OUTLINED_FUNCTION_48();
  ContactSnippetModel = type metadata accessor for GetContactSnippetModel(v0);
  OUTLINED_FUNCTION_80(*(ContactSnippetModel + 20));
}

uint64_t GetContactSnippetModel.flowState.getter()
{
  v2 = OUTLINED_FUNCTION_48();
  ContactSnippetModel = type metadata accessor for GetContactSnippetModel(v2);
  v4 = OUTLINED_FUNCTION_50(v1 + *(ContactSnippetModel + 24));
  *v0 = v4;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;

  return outlined copy of ContactsSnippetFlowState(v4, v5, v6, v7);
}

void *GetContactSnippetModel.labelCATs.getter()
{
  v0 = OUTLINED_FUNCTION_48();
  type metadata accessor for GetContactSnippetModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMR);
  return OUTLINED_FUNCTION_111(v1);
}

double key path getter for GetContactSnippetModel.labelCATs : GetContactSnippetModel@<D0>(_OWORD *a1@<X8>)
{
  GetContactSnippetModel.labelCATs.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t GetContactSnippetModel.labelCATs.setter(__int128 *a1)
{
  type metadata accessor for GetContactSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*GetContactSnippetModel.labelCATs.modify())()
{
  v1 = OUTLINED_FUNCTION_81();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_47(v2);
  type metadata accessor for GetContactSnippetModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMR);
  *(v0 + 32) = OUTLINED_FUNCTION_72(v4);
  return GetContactSnippetModel.labelCATs.modify;
}

uint64_t GetContactSnippetModel.shouldDisplayLightText.setter(char a1)
{
  result = type metadata accessor for GetContactSnippetModel(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

void GetContactSnippetModel.init(contact:directInvocationsModel:flowState:labelCATs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_110();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = *v23;
  v28 = v23[1];
  v29 = v23[4];
  ContactSnippetModel = type metadata accessor for GetContactSnippetModel(0);
  *(v26 + ContactSnippetModel[8]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  Loggable.init(wrappedValue:)();
  v31 = v26 + ContactSnippetModel[5];
  *v31 = v27;
  *(v31 + 8) = v28;
  *(v31 + 16) = *(v24 + 1);
  *(v31 + 32) = v29;
  v32 = (v26 + ContactSnippetModel[6]);
  v33 = v22[1];
  *v32 = *v22;
  v32[1] = v33;
  Loggable.init(wrappedValue:)();
  OUTLINED_FUNCTION_109();
}

uint64_t GetContactSnippetModel.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ContactSnippetModel = type metadata accessor for GetContactSnippetModel(0);
  v21 = ContactSnippetModel[8];
  ContactAttributeSnippetModel = type metadata accessor for GetContactAttributeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  Loggable.wrappedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  Loggable.init(wrappedValue:)();
  v6 = (a1 + ContactAttributeSnippetModel[6]);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = v6[4];
  v12 = (a2 + ContactSnippetModel[5]);
  *v12 = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  v12[4] = v11;
  v13 = (a1 + ContactAttributeSnippetModel[7]);
  v14 = *v13;
  v15 = v13[1];
  v17 = v13[2];
  v16 = v13[3];
  v18 = (a2 + ContactSnippetModel[6]);
  *v18 = v14;
  v18[1] = v15;
  v18[2] = v17;
  v18[3] = v16;
  outlined copy of Data?(v7, v8);

  outlined copy of ContactsSnippetFlowState(v14, v15, v17, v16);

  Loggable.init(wrappedValue:)();
  LOBYTE(v16) = *(a1 + ContactAttributeSnippetModel[9]);
  OUTLINED_FUNCTION_0_8();
  result = outlined destroy of ModifyContactAttributeSnippetModel(a1, v19);
  *(a2 + v21) = v16;
  return result;
}

void *GetContactAttributeSnippetModel.contact.getter()
{
  v0 = OUTLINED_FUNCTION_48();
  type metadata accessor for GetContactAttributeSnippetModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  return OUTLINED_FUNCTION_111(v1);
}

uint64_t outlined init with take of ModifyContactAttributeSnippetModel(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v4(v3);
  OUTLINED_FUNCTION_6_5();
  v5 = OUTLINED_FUNCTION_6_2();
  v6(v5);
  return a2;
}

uint64_t outlined destroy of ModifyContactAttributeSnippetModel(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6_5();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t GetContactSnippetModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x8000000266863C80 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74617453776F6C66 && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x5441436C6562616CLL && a2 == 0xE900000000000073;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000016 && 0x8000000266863CA0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t GetContactSnippetModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x74617453776F6C66;
      break;
    case 3:
      result = 0x5441436C6562616CLL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GetContactSnippetModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = GetContactSnippetModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance GetContactSnippetModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = GetContactSnippetModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GetContactSnippetModel.CodingKeys(uint64_t a1)
{
  ContactSnippet = lazy protocol witness table accessor for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, ContactSnippet);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GetContactSnippetModel.CodingKeys(uint64_t a1)
{
  ContactSnippet = lazy protocol witness table accessor for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, ContactSnippet);
}

void GetContactSnippetModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_76();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon22GetContactSnippetModelV10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon22GetContactSnippetModelV10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_13();
  v26 = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_42(v26, v27);
  ContactSnippet = lazy protocol witness table accessor for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys();
  OUTLINED_FUNCTION_62(&unk_28781BF60, v29, ContactSnippet);
  LOBYTE(v49) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  OUTLINED_FUNCTION_3_7();
  lazy protocol witness table accessor for type Loggable<CodableContact<CNContact>> and conformance <A> Loggable<A>(v30);
  OUTLINED_FUNCTION_18_0(v24);
  if (!v23)
  {
    ContactSnippetModel = type metadata accessor for GetContactSnippetModel(0);
    v32 = OUTLINED_FUNCTION_9_2(*(ContactSnippetModel + 20));
    OUTLINED_FUNCTION_84(v32, v33, v34);
    OUTLINED_FUNCTION_51();
    outlined copy of Data?(v35, v36);
    ContactDirectInvocationsModel = lazy protocol witness table accessor for type GetContactDirectInvocationsModel and conformance GetContactDirectInvocationsModel();

    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_4_2();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (ContactDirectInvocationsModel)
    {
      outlined consume of Data?(v49, v51);
    }

    else
    {
      outlined consume of Data?(v49, v51);

      v50 = OUTLINED_FUNCTION_50(v24 + *(ContactSnippetModel + 24));
      v52 = v38;
      v53 = v39;
      v54 = v40;
      OUTLINED_FUNCTION_71();
      outlined copy of ContactsSnippetFlowState(v41, v42, v43, v44);
      lazy protocol witness table accessor for type ContactsSnippetFlowState and conformance ContactsSnippetFlowState();
      OUTLINED_FUNCTION_17();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      outlined consume of ContactsSnippetFlowState(v50, v52, v53, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMR);
      OUTLINED_FUNCTION_3_7();
      lazy protocol witness table accessor for type Loggable<ContactsLabelCATContainer> and conformance <A> Loggable<A>(v45);
      v46 = OUTLINED_FUNCTION_102();
      OUTLINED_FUNCTION_18_0(v46);
      OUTLINED_FUNCTION_17();
      KeyedEncodingContainer.encode(_:forKey:)();
    }
  }

  v47 = OUTLINED_FUNCTION_78();
  v48(v47);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_45();
}

void GetContactSnippetModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_44();
  v26 = v25;
  v49 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMR);
  OUTLINED_FUNCTION_11_0();
  v50 = v29;
  v51 = v28;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_16_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  OUTLINED_FUNCTION_11_0();
  v52 = v31;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19();
  v53 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon22GetContactSnippetModelV10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon22GetContactSnippetModelV10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_22_0();
  ContactSnippetModel = type metadata accessor for GetContactSnippetModel(0);
  OUTLINED_FUNCTION_6_5();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_3();
  v39 = v38 - v37;
  OUTLINED_FUNCTION_42(v26, v26[3]);
  lazy protocol witness table accessor for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    LOBYTE(v54) = 0;
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type Loggable<CodableContact<CNContact>> and conformance <A> Loggable<A>(v40);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v52 + 32))(v39, v53);
    OUTLINED_FUNCTION_51();
    lazy protocol witness table accessor for type GetContactDirectInvocationsModel and conformance GetContactDirectInvocationsModel();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v41 = v39 + ContactSnippetModel[5];
    *v41 = v54;
    *(v41 + 16) = v55;
    *(v41 + 32) = v56;
    OUTLINED_FUNCTION_71();
    lazy protocol witness table accessor for type ContactsSnippetFlowState and conformance ContactsSnippetFlowState();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v42 = (v39 + ContactSnippetModel[6]);
    *v42 = v54;
    v42[1] = v55;
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type Loggable<ContactsLabelCATContainer> and conformance <A> Loggable<A>(v43);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v50 + 32))(v39 + ContactSnippetModel[7], v24, v51);
    v44 = KeyedDecodingContainer.decode(_:forKey:)();
    v45 = ContactSnippetModel[8];
    v46 = OUTLINED_FUNCTION_98();
    v47(v46);
    *(v39 + v45) = v44 & 1;
    outlined init with copy of ContactsSnippetPluginModel(v39, v49);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_35();
    outlined destroy of ModifyContactAttributeSnippetModel(v39, v48);
  }

  OUTLINED_FUNCTION_45();
}

SiriContactsCommon::GetContactAttributeSnippetModel::DisplayAttribute::AttributeType_optional __swiftcall GetContactAttributeSnippetModel.DisplayAttribute.AttributeType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GetContactAttributeSnippetModel.DisplayAttribute.AttributeType.init(rawValue:), v3);

  v7 = 9;
  if (v5 < 9)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t GetContactAttributeSnippetModel.DisplayAttribute.AttributeType.rawValue.getter()
{
  result = 6645601;
  switch(*v0)
  {
    case 1:
      result = 0x7961646874726962;
      break;
    case 2:
      result = 0x6C69616D65;
      break;
    case 3:
      v2 = 0x614E6C6C7566;
      goto LABEL_6;
    case 4:
      v2 = 0x616E6B63696ELL;
LABEL_6:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 5:
      result = 0x617A696E6167726FLL;
      break;
    case 6:
      result = 0x6D754E656E6F6870;
      break;
    case 7:
      result = 0x64416C6174736F70;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance GetContactAttributeSnippetModel.DisplayAttribute.AttributeType@<X0>(uint64_t *a1@<X8>)
{
  result = GetContactAttributeSnippetModel.DisplayAttribute.AttributeType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void __swiftcall GetContactAttributeSnippetModel.DisplayAttribute.init(id:displayLabel:displayValue:type:)(SiriContactsCommon::GetContactAttributeSnippetModel::DisplayAttribute *__return_ptr retstr, Swift::String id, Swift::String_optional displayLabel, Swift::String_optional displayValue, SiriContactsCommon::GetContactAttributeSnippetModel::DisplayAttribute::AttributeType type)
{
  v5 = *type;
  retstr->id = id;
  retstr->displayLabel = displayLabel;
  retstr->displayValue = displayValue;
  retstr->type = v5;
}

uint64_t GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C79616C70736964 && a2 == 0xEC0000006C656261;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5679616C70736964 && a2 == 0xEC00000065756C61;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1701869940 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
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

uint64_t GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x4C79616C70736964;
      break;
    case 2:
      result = 0x5679616C70736964;
      break;
    case 3:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys(uint64_t a1)
{
  ContactAttributeSnippet = lazy protocol witness table accessor for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys();

  return MEMORY[0x2821FE718](a1, ContactAttributeSnippet);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys(uint64_t a1)
{
  ContactAttributeSnippet = lazy protocol witness table accessor for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys();

  return MEMORY[0x2821FE720](a1, ContactAttributeSnippet);
}

void GetContactAttributeSnippetModel.DisplayAttribute.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_44();
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon31GetContactAttributeSnippetModelV07DisplayI0V10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon31GetContactAttributeSnippetModelV07DisplayI0V10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v20 = v19;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_42(v17, v17[3]);
  lazy protocol witness table accessor for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_4_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_4_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    lazy protocol witness table accessor for type GetContactAttributeSnippetModel.DisplayAttribute.AttributeType and conformance GetContactAttributeSnippetModel.DisplayAttribute.AttributeType();
    OUTLINED_FUNCTION_4_2();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v20 + 8))(v15, v18);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_45();
}

void GetContactAttributeSnippetModel.DisplayAttribute.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_44();
  v28 = v27;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon31GetContactAttributeSnippetModelV07DisplayI0V10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon31GetContactAttributeSnippetModelV07DisplayI0V10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_42(v28, v28[3]);
  lazy protocol witness table accessor for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = v33;
    OUTLINED_FUNCTION_103();
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = v35;
    v40 = v34;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v36;
    lazy protocol witness table accessor for type GetContactAttributeSnippetModel.DisplayAttribute.AttributeType and conformance GetContactAttributeSnippetModel.DisplayAttribute.AttributeType();
    OUTLINED_FUNCTION_32();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37 = OUTLINED_FUNCTION_31();
    v38(v37);
    *v30 = v32;
    *(v30 + 8) = v43;
    *(v30 + 16) = v40;
    *(v30 + 24) = v42;
    *(v30 + 32) = v39;
    *(v30 + 40) = v41;
    *(v30 + 48) = a13;

    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_45();
}

uint64_t protocol witness for Identifiable.id.getter in conformance GetContactAttributeSnippetModel.DisplayAttribute@<X0>(uint64_t *a1@<X8>)
{
  result = GetContactAttributeSnippetModel.DisplayAttribute.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *key path getter for GetContactAttributeSnippetModel.contact : GetContactAttributeSnippetModel@<X0>(void *a1@<X8>)
{
  result = GetContactAttributeSnippetModel.contact.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for GetContactAttributeSnippetModel.contact : GetContactAttributeSnippetModel(id *a1)
{
  v3 = *a1;
  v1 = v3;
  return GetContactAttributeSnippetModel.contact.setter(&v3);
}

uint64_t GetContactAttributeSnippetModel.contact.setter(uint64_t *a1)
{
  type metadata accessor for GetContactAttributeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*GetContactAttributeSnippetModel.contact.modify())()
{
  v1 = OUTLINED_FUNCTION_81();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_47(v2);
  type metadata accessor for GetContactAttributeSnippetModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  *(v0 + 32) = OUTLINED_FUNCTION_72(v4);
  return GetContactSnippetModel.labelCATs.modify;
}

uint64_t GetContactAttributeSnippetModel.directInvocationsModel.getter()
{
  v0 = OUTLINED_FUNCTION_48();
  ContactAttributeSnippetModel = type metadata accessor for GetContactAttributeSnippetModel(v0);
  OUTLINED_FUNCTION_80(*(ContactAttributeSnippetModel + 24));
}

uint64_t GetContactAttributeSnippetModel.flowState.getter()
{
  return GetContactAttributeSnippetModel.flowState.getter();
}

{
  v2 = OUTLINED_FUNCTION_48();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_50(v1 + *(v4 + 28));
  *v0 = v5;
  v0[1] = v6;
  v0[2] = v7;
  v0[3] = v8;

  return outlined copy of ContactsSnippetFlowState(v5, v6, v7, v8);
}

uint64_t GetContactAttributeSnippetModel.labelCATs.getter()
{
  v2 = OUTLINED_FUNCTION_48();
  v3 = (v1 + *(type metadata accessor for GetContactAttributeSnippetModel(v2) + 32));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t GetContactAttributeSnippetModel.shouldDisplayLightText.setter(char a1)
{
  result = type metadata accessor for GetContactAttributeSnippetModel(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t GetContactAttributeSnippetModel.shouldRenderAsContactCard.getter()
{
  v1 = *v0;
  if (*(*v0 + 16) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 80);
  if (v2 == 9)
  {
    return ((*(v1 + 80) - 3) & 0xFD) == 0;
  }

  result = specialized == infix<A>(_:_:)(v2, 4);
  v4 = *(v1 + 16);
  if ((result & 1) == 0)
  {
    if (v4 == 1)
    {
      return ((*(v1 + 80) - 3) & 0xFD) == 0;
    }

    return 0;
  }

  if (v4)
  {
    v5 = *(v1 + 64);
    v6 = *(v1 + 72);

    return Optional<A>.isNilOrEmpty.getter(v5, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ContactsLabelCATContainer.empty.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = *algn_28009CAB8;
  *a1 = static ContactsLabelCATContainer.empty;
  a1[1] = v2;
}

void GetContactAttributeSnippetModel.init(attributes:contact:flowState:directInvocationsModel:labelCATs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_110();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = *v24;
  v33 = v24[1];
  v34 = v24[4];
  ContactAttributeSnippetModel = type metadata accessor for GetContactAttributeSnippetModel(0);
  *(v31 + ContactAttributeSnippetModel[9]) = 0;
  *v31 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  Loggable.init(wrappedValue:)();
  v36 = (v31 + ContactAttributeSnippetModel[7]);
  v37 = v27[1];
  *v36 = *v27;
  v36[1] = v37;
  v38 = v31 + ContactAttributeSnippetModel[6];
  *v38 = v32;
  *(v38 + 1) = v33;
  *(v38 + 1) = *(v25 + 1);
  *(v38 + 4) = v34;
  *(v31 + ContactAttributeSnippetModel[8]) = *v23;
  OUTLINED_FUNCTION_109();
}

uint64_t GetContactAttributeSnippetModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475626972747461 && a2 == 0xEA00000000007365;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x8000000266863C80 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74617453776F6C66 && a2 == 0xE900000000000065;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5441436C6562616CLL && a2 == 0xE900000000000073;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000016 && 0x8000000266863CA0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t GetContactAttributeSnippetModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7475626972747461;
  switch(a1)
  {
    case 1:
      result = 0x746361746E6F63;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x74617453776F6C66;
      break;
    case 4:
      result = 0x5441436C6562616CLL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GetContactAttributeSnippetModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = GetContactAttributeSnippetModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance GetContactAttributeSnippetModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = GetContactAttributeSnippetModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GetContactAttributeSnippetModel.CodingKeys(uint64_t a1)
{
  ContactAttributeSnippet = lazy protocol witness table accessor for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, ContactAttributeSnippet);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GetContactAttributeSnippetModel.CodingKeys(uint64_t a1)
{
  ContactAttributeSnippet = lazy protocol witness table accessor for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, ContactAttributeSnippet);
}

void GetContactAttributeSnippetModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_76();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon31GetContactAttributeSnippetModelV10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon31GetContactAttributeSnippetModelV10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_13();
  v26 = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_42(v26, v27);
  ContactAttributeSnippet = lazy protocol witness table accessor for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys();
  OUTLINED_FUNCTION_62(&unk_28781BE40, v29, ContactAttributeSnippet);
  v51 = *v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriContactsCommon31GetContactAttributeSnippetModelV07DisplayF0VGMd, &_sSay18SiriContactsCommon31GetContactAttributeSnippetModelV07DisplayF0VGMR);
  lazy protocol witness table accessor for type [GetContactAttributeSnippetModel.DisplayAttribute] and conformance <A> [A](&lazy protocol witness table cache variable for type [GetContactAttributeSnippetModel.DisplayAttribute] and conformance <A> [A]);
  OUTLINED_FUNCTION_18_0(&v51);
  if (!v23)
  {
    ContactAttributeSnippetModel = type metadata accessor for GetContactAttributeSnippetModel(0);
    LOBYTE(v51) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
    OUTLINED_FUNCTION_3_7();
    lazy protocol witness table accessor for type Loggable<CodableContact<CNContact>> and conformance <A> Loggable<A>(v31);
    v32 = OUTLINED_FUNCTION_102();
    OUTLINED_FUNCTION_18_0(v32);
    v33 = OUTLINED_FUNCTION_9_2(ContactAttributeSnippetModel[6]);
    OUTLINED_FUNCTION_84(v33, v34, v35);
    OUTLINED_FUNCTION_71();
    outlined copy of Data?(v36, v37);
    ContactDirectInvocationsModel = lazy protocol witness table accessor for type GetContactDirectInvocationsModel and conformance GetContactDirectInvocationsModel();

    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_4_2();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (ContactDirectInvocationsModel)
    {
      outlined consume of Data?(v51, v52);
    }

    else
    {
      outlined consume of Data?(v51, v52);

      v51 = OUTLINED_FUNCTION_50(v24 + ContactAttributeSnippetModel[7]);
      v52 = v39;
      v53 = v40;
      v54 = v41;
      OUTLINED_FUNCTION_73();
      outlined copy of ContactsSnippetFlowState(v42, v43, v44, v45);
      lazy protocol witness table accessor for type ContactsSnippetFlowState and conformance ContactsSnippetFlowState();
      OUTLINED_FUNCTION_17();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      outlined consume of ContactsSnippetFlowState(v51, v52, v53, v54);
      v46 = (v24 + ContactAttributeSnippetModel[8]);
      v47 = v46[1];
      v51 = *v46;
      v52 = v47;
      v48 = lazy protocol witness table accessor for type ContactsLabelCATContainer and conformance ContactsLabelCATContainer();

      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_4_2();
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      if (!v48)
      {
        LOBYTE(v51) = 5;
        OUTLINED_FUNCTION_17();
        KeyedEncodingContainer.encode(_:forKey:)();
      }
    }
  }

  v49 = OUTLINED_FUNCTION_78();
  v50(v49);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_45();
}

void GetContactAttributeSnippetModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_44();
  v26 = v25;
  v57 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  OUTLINED_FUNCTION_11_0();
  v58 = v29;
  v59 = v28;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon31GetContactAttributeSnippetModelV10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon31GetContactAttributeSnippetModelV10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v31);
  ContactAttributeSnippetModel = type metadata accessor for GetContactAttributeSnippetModel(0);
  OUTLINED_FUNCTION_6_5();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_3();
  v61 = (v34 - v33);
  v35 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_42(v35, v36);
  lazy protocol witness table accessor for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriContactsCommon31GetContactAttributeSnippetModelV07DisplayF0VGMd, &_sSay18SiriContactsCommon31GetContactAttributeSnippetModelV07DisplayF0VGMR);
    lazy protocol witness table accessor for type [GetContactAttributeSnippetModel.DisplayAttribute] and conformance <A> [A](&lazy protocol witness table cache variable for type [GetContactAttributeSnippetModel.DisplayAttribute] and conformance <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v61 = v62;
    LOBYTE(v62) = 1;
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type Loggable<CodableContact<CNContact>> and conformance <A> Loggable<A>(v37);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v58 + 32))(&v61[ContactAttributeSnippetModel[5]], v24, v59);
    OUTLINED_FUNCTION_71();
    ContactDirectInvocationsModel = lazy protocol witness table accessor for type GetContactDirectInvocationsModel and conformance GetContactDirectInvocationsModel();
    OUTLINED_FUNCTION_33(&type metadata for GetContactDirectInvocationsModel, v39, v40, v41, ContactDirectInvocationsModel);
    v42 = &v61[ContactAttributeSnippetModel[6]];
    *v42 = v62;
    *(v42 + 1) = v63;
    *(v42 + 4) = v64;
    OUTLINED_FUNCTION_73();
    v43 = lazy protocol witness table accessor for type ContactsSnippetFlowState and conformance ContactsSnippetFlowState();
    OUTLINED_FUNCTION_33(&type metadata for ContactsSnippetFlowState, v44, v45, v46, v43);
    v47 = &v61[ContactAttributeSnippetModel[7]];
    *v47 = v62;
    *(v47 + 1) = v63;
    v48 = lazy protocol witness table accessor for type ContactsLabelCATContainer and conformance ContactsLabelCATContainer();
    OUTLINED_FUNCTION_33(&type metadata for ContactsLabelCATContainer, v49, v50, v51, v48);
    *&v61[ContactAttributeSnippetModel[8]] = v62;
    v52 = KeyedDecodingContainer.decode(_:forKey:)();
    v53 = ContactAttributeSnippetModel[9];
    v54 = OUTLINED_FUNCTION_20_0();
    v55(v54);
    v61[v53] = v52 & 1;
    outlined init with copy of ContactsSnippetPluginModel(v61, v57);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_0_8();
    outlined destroy of ModifyContactAttributeSnippetModel(v61, v56);
  }

  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_45();
}

uint64_t ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E6B63696ELL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E6F6974616C6572;
  }

  else
  {
    return 0x656D616E6B63696ELL;
  }
}

uint64_t ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int ContactsSnippetPluginModel.GetContactAttributeCodingKeys.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_88(a1);
  MEMORY[0x26D5DE980](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s18SiriContactsCommon34ModifyContactAttributeSnippetModelV0ef2ToD0O22RelationshipCodingKeys33_177E55D66B4B3431CB612B735686642ELLOs0K3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5DE980](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void ModifyContactAttributeSnippetModel.ContactAttributeToModify.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV0hi2ToG0O22RelationshipCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV0hi2ToG0O22RelationshipCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v43 = v27;
  v44 = v26;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_104(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV0hi2ToG0O18NicknameCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV0hi2ToG0O18NicknameCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v40 = v31;
  v41 = v30;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_21_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV0hi2ToG0O10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV0hi2ToG0O10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v35 = v34;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_16_0();
  v37 = *(v23 + 16);
  v38 = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_42(v38, v39);
  lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v37)
  {
    OUTLINED_FUNCTION_51();
    lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys();
    OUTLINED_FUNCTION_52();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v43 + 8))(v42, v44);
  }

  else
  {
    lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys();
    OUTLINED_FUNCTION_52();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v40 + 8))(v25, v41);
  }

  (*(v35 + 8))(v24, v33);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_45();
}

void ModifyContactAttributeSnippetModel.ContactAttributeToModify.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_44();
  v68 = v22;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV0hi2ToG0O22RelationshipCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV0hi2ToG0O22RelationshipCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV0hi2ToG0O18NicknameCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV0hi2ToG0O18NicknameCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_16_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV0hi2ToG0O10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV0hi2ToG0O10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v67 = v28;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_42(v24, v24[3]);
  lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v69 = v24;
    v30 = KeyedDecodingContainer.allKeys.getter();
    started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC18SiriContactsCommon34ModifyContactAttributeSnippetModelV0noeM0O10CodingKeys33_177E55D66B4B3431CB612B735686642ELLO_Tt1g5(v30, 0);
    if (v33 != v32 >> 1)
    {
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_79();
      if (v38 == v39)
      {
        __break(1u);
        return;
      }

      v40 = *(v37 + v35);
      specialized ArraySlice.subscript.getter(v35 + 1, v34, started, v37, v35, v36);
      v42 = v41;
      v44 = v43;
      swift_unknownObjectRelease();
      if (v42 == v44 >> 1)
      {
        v45 = v27;
        v46 = v40;
        if (v40)
        {
          v65 = v40;
          OUTLINED_FUNCTION_51();
          lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys();
          OUTLINED_FUNCTION_75();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v47 = v68;
          v48 = v67;
          v57 = KeyedDecodingContainer.decode(_:forKey:)();
          v59 = v58;
          swift_unknownObjectRelease();
          v60 = OUTLINED_FUNCTION_91();
          v61(v60);
          v46 = v65;
        }

        else
        {
          lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys();
          OUTLINED_FUNCTION_75();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v47 = v68;
          v56 = KeyedDecodingContainer.decode(_:forKey:)();
          v59 = v62;
          v66 = v56;
          swift_unknownObjectRelease();
          v63 = OUTLINED_FUNCTION_69();
          v64(v63);
          v57 = v66;
          v48 = v67;
        }

        (*(v48 + 8))(v21, v45);
        *v47 = v57;
        *(v47 + 8) = v59;
        *(v47 + 16) = v46;
        __swift_destroy_boxed_opaque_existential_0(v69);
        goto LABEL_11;
      }
    }

    v49 = type metadata accessor for DecodingError();
    OUTLINED_FUNCTION_85(v49, MEMORY[0x277D841A0]);
    v51 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v51 = &type metadata for ModifyContactAttributeSnippetModel.ContactAttributeToModify;
    v52 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_27(v52);
    OUTLINED_FUNCTION_26_0();
    (*(v53 + 104))(v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    v54 = OUTLINED_FUNCTION_34();
    v55(v54, v27);
    v24 = v69;
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
LABEL_11:
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_45();
}

uint64_t ModifyContactAttributeSnippetModel.ModificationType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6579297 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6563616C706572 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6574656C6564 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
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

uint64_t ModifyContactAttributeSnippetModel.ModificationType.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 6579297;
      break;
    case 2:
      result = 0x6563616C706572;
      break;
    case 3:
      result = 0x6574656C6564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ModifyContactAttributeSnippetModel.ModificationType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void ModifyContactAttributeSnippetModel.ModificationType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO16DeleteCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO16DeleteCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v62 = v28;
  v63 = v27;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19();
  v61 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO17ReplaceCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO17ReplaceCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v59 = v32;
  v60 = v31;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_12_0(v34, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO13AddCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO13AddCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v56 = v36;
  v57 = v35;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_19();
  v55 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO17UnknownCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO17UnknownCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v53 = v40;
  v54 = v39;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22_0();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v44 = v43;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_46();
  v46 = *v24;
  v47 = OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_42(v47, v48);
  lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v46)
  {
    case 1:
      lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys();
      v49 = v55;
      OUTLINED_FUNCTION_52();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v51 = v56;
      v50 = v57;
      goto LABEL_6;
    case 2:
      lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys();
      v49 = v58;
      OUTLINED_FUNCTION_52();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v51 = v59;
      v50 = v60;
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_73();
      lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys();
      v49 = v61;
      OUTLINED_FUNCTION_52();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v51 = v62;
      v50 = v63;
LABEL_6:
      (*(v51 + 8))(v49, v50);
      break;
    default:
      lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys();
      OUTLINED_FUNCTION_52();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v53 + 8))(v25, v54);
      break;
  }

  (*(v44 + 8))(v26, v42);
  OUTLINED_FUNCTION_45();
}

void ModifyContactAttributeSnippetModel.ModificationType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_44();
  v27 = v26;
  v67 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO16DeleteCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO16DeleteCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO17ReplaceCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO17ReplaceCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_0(v31, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO13AddCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO13AddCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_16_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO17UnknownCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO17UnknownCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_22_0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV16ModificationTypeO10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v68 = v36;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_42(v27, v27[3]);
  lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    goto LABEL_9;
  }

  v69 = v27;
  v38 = v25;
  v39 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC18SiriContactsCommon34ModifyContactAttributeSnippetModelV0noeM0O10CodingKeys33_177E55D66B4B3431CB612B735686642ELLO_Tt1g5(v39, 0);
  if (v42 == v41 >> 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_79();
  if (v47 == v48)
  {
    __break(1u);
    JUMPOUT(0x2668550A0);
  }

  v49 = *(v46 + v44);
  specialized ArraySlice.subscript.getter(v44 + 1, v43, started, v46, v44, v45);
  v51 = v50;
  v53 = v52;
  swift_unknownObjectRelease();
  if (v51 != v53 >> 1)
  {
LABEL_8:
    v57 = type metadata accessor for DecodingError();
    OUTLINED_FUNCTION_85(v57, MEMORY[0x277D841A0]);
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v59 = &type metadata for ModifyContactAttributeSnippetModel.ModificationType;
    v60 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_27(v60);
    OUTLINED_FUNCTION_26_0();
    (*(v61 + 104))(v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    v62 = OUTLINED_FUNCTION_70();
    v63(v62);
    v27 = v69;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v27);
    goto LABEL_10;
  }

  switch(v49)
  {
    case 1:
      lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys();
      OUTLINED_FUNCTION_57();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      goto LABEL_14;
    case 2:
      lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys();
      OUTLINED_FUNCTION_57();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
LABEL_14:
      v54 = OUTLINED_FUNCTION_55();
      goto LABEL_15;
    case 3:
      OUTLINED_FUNCTION_73();
      lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys();
      OUTLINED_FUNCTION_57();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      v64 = OUTLINED_FUNCTION_70();
      v65(v64);
      goto LABEL_16;
    default:
      lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys();
      OUTLINED_FUNCTION_57();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      v54 = OUTLINED_FUNCTION_55();
      v56 = v33;
LABEL_15:
      v55(v54, v56);
LABEL_16:
      (*(v68 + 8))(v38, v35);
      *v67 = v49;
      __swift_destroy_boxed_opaque_existential_0(v69);
      break;
  }

LABEL_10:
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_45();
}

uint64_t ModifyContactAttributeSnippetModel.attributeToModify.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return outlined copy of ModifyContactAttributeSnippetModel.ContactAttributeToModify();
}

void *ModifyContactAttributeSnippetModel.contact.getter()
{
  v0 = OUTLINED_FUNCTION_48();
  type metadata accessor for ModifyContactAttributeSnippetModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  return OUTLINED_FUNCTION_111(v1);
}

void *key path getter for ModifyContactAttributeSnippetModel.contact : ModifyContactAttributeSnippetModel@<X0>(void *a1@<X8>)
{
  result = ModifyContactAttributeSnippetModel.contact.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for ModifyContactAttributeSnippetModel.contact : ModifyContactAttributeSnippetModel(id *a1)
{
  v3 = *a1;
  v1 = v3;
  return ModifyContactAttributeSnippetModel.contact.setter(&v3);
}

uint64_t ModifyContactAttributeSnippetModel.contact.setter(uint64_t *a1)
{
  type metadata accessor for ModifyContactAttributeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*ModifyContactAttributeSnippetModel.contact.modify())()
{
  v1 = OUTLINED_FUNCTION_81();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_47(v2);
  type metadata accessor for ModifyContactAttributeSnippetModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  *(v0 + 32) = OUTLINED_FUNCTION_72(v4);
  return GetContactSnippetModel.labelCATs.modify;
}

void *ModifyContactAttributeSnippetModel.labelCATs.getter()
{
  v0 = OUTLINED_FUNCTION_48();
  type metadata accessor for ModifyContactAttributeSnippetModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMR);
  return OUTLINED_FUNCTION_111(v1);
}

double key path getter for ModifyContactAttributeSnippetModel.labelCATs : ModifyContactAttributeSnippetModel@<D0>(_OWORD *a1@<X8>)
{
  ModifyContactAttributeSnippetModel.labelCATs.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for GetContactSnippetModel.labelCATs : GetContactSnippetModel(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;

  return a5(v8);
}

uint64_t ModifyContactAttributeSnippetModel.labelCATs.setter(__int128 *a1)
{
  type metadata accessor for ModifyContactAttributeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*ModifyContactAttributeSnippetModel.labelCATs.modify())()
{
  v1 = OUTLINED_FUNCTION_81();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_47(v2);
  type metadata accessor for ModifyContactAttributeSnippetModel(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMR);
  *(v0 + 32) = OUTLINED_FUNCTION_72(v4);
  return GetContactSnippetModel.labelCATs.modify;
}

void GetContactSnippetModel.contact.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t ModifyContactAttributeSnippetModel.meCardPunchout.getter()
{
  type metadata accessor for ModifyContactAttributeSnippetModel(0);
  v0 = OUTLINED_FUNCTION_6_2();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_6_2();
}

uint64_t ModifyContactAttributeSnippetModel.targetPunchout.getter()
{
  type metadata accessor for ModifyContactAttributeSnippetModel(0);
  v0 = OUTLINED_FUNCTION_6_2();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_6_2();
}

uint64_t ModifyContactAttributeSnippetModel.modificationDisplayString.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_105();
  outlined copy of ModifyContactAttributeSnippetModel.ContactAttributeToModify();
  return OUTLINED_FUNCTION_105();
}

void ModifyContactAttributeSnippetModel.init(attributeToModify:modificationType:contact:flowState:labelCATs:meCardPunchout:targetPunchout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_110();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  LOBYTE(v30) = *(v32 + 16);
  v34 = *v33;
  *v31 = *v32;
  *(v31 + 16) = v30;
  *(v31 + 17) = v34;
  v35 = type metadata accessor for ModifyContactAttributeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  Loggable.init(wrappedValue:)();
  v36 = (v31 + v35[7]);
  v37 = v29[1];
  *v36 = *v29;
  v36[1] = v37;
  Loggable.init(wrappedValue:)();
  v38 = (v31 + v35[9]);
  *v38 = v27;
  v38[1] = v25;
  v39 = (v31 + v35[10]);
  *v39 = v23;
  v39[1] = a22;
  OUTLINED_FUNCTION_109();
}

uint64_t ModifyContactAttributeSnippetModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000266863CC0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000266863CE0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74617453776F6C66 && a2 == 0xE900000000000065;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5441436C6562616CLL && a2 == 0xE900000000000073;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x755064726143656DLL && a2 == 0xEE0074756F68636ELL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x7550746567726174 && a2 == 0xEE0074756F68636ELL)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t ModifyContactAttributeSnippetModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0x74617453776F6C66;
      break;
    case 4:
      result = 0x5441436C6562616CLL;
      break;
    case 5:
      v3 = 0x64726143656DLL;
      goto LABEL_8;
    case 6:
      v3 = 0x746567726174;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7550000000000000;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ModifyContactAttributeSnippetModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ModifyContactAttributeSnippetModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ModifyContactAttributeSnippetModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ModifyContactAttributeSnippetModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModifyContactAttributeSnippetModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModifyContactAttributeSnippetModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ModifyContactAttributeSnippetModel.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_76();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v6 = v5;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13();
  v8 = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_42(v8, v9);
  v10 = lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys();
  OUTLINED_FUNCTION_62(&unk_28781BAF0, v11, v10);
  outlined copy of ModifyContactAttributeSnippetModel.ContactAttributeToModify();
  lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify();
  OUTLINED_FUNCTION_17();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of ModifyContactAttributeSnippetModel.ContactAttributeToModify();
  if (!v1)
  {
    OUTLINED_FUNCTION_51();
    lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType and conformance ModifyContactAttributeSnippetModel.ModificationType();
    OUTLINED_FUNCTION_17();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = type metadata accessor for ModifyContactAttributeSnippetModel(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
    OUTLINED_FUNCTION_3_7();
    lazy protocol witness table accessor for type Loggable<CodableContact<CNContact>> and conformance <A> Loggable<A>(v13);
    v14 = OUTLINED_FUNCTION_102();
    OUTLINED_FUNCTION_18_0(v14);
    v27 = OUTLINED_FUNCTION_50(v3 + v12[7]);
    v30 = v15;
    v33 = v16;
    v34 = v17;
    OUTLINED_FUNCTION_73();
    outlined copy of ContactsSnippetFlowState(v18, v19, v20, v21);
    lazy protocol witness table accessor for type ContactsSnippetFlowState and conformance ContactsSnippetFlowState();
    OUTLINED_FUNCTION_17();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of ContactsSnippetFlowState(v27, v30, v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMR);
    OUTLINED_FUNCTION_3_7();
    lazy protocol witness table accessor for type Loggable<ContactsLabelCATContainer> and conformance <A> Loggable<A>(v22);
    v23 = OUTLINED_FUNCTION_102();
    OUTLINED_FUNCTION_18_0(v23);
    v28 = OUTLINED_FUNCTION_9_2(v12[9]);
    v31 = v24;
    outlined copy of Data?(v28, v24);
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_4_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v28, v31);
    v29 = OUTLINED_FUNCTION_9_2(v12[10]);
    v32 = v25;
    outlined copy of Data?(v29, v25);
    OUTLINED_FUNCTION_4_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v29, v32);
  }

  return (*(v6 + 8))(v2, v4);
}

void ModifyContactAttributeSnippetModel.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_44();
  v5 = v4;
  v26 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMR);
  OUTLINED_FUNCTION_11_0();
  v27 = v8;
  v28 = v7;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  OUTLINED_FUNCTION_11_0();
  v29 = v11;
  v30 = v10;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22_0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon34ModifyContactAttributeSnippetModelV10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_21_0();
  v32 = type metadata accessor for ModifyContactAttributeSnippetModel(0);
  OUTLINED_FUNCTION_6_5();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_3();
  v17 = v16 - v15;
  v18 = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_42(v18, v19);
  lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify();
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_32();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v17 = v33;
    *(v17 + 16) = v34;
    OUTLINED_FUNCTION_51();
    lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType and conformance ModifyContactAttributeSnippetModel.ModificationType();
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_32();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v17 + 17) = v33;
    LOBYTE(v33) = 2;
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type Loggable<CodableContact<CNContact>> and conformance <A> Loggable<A>(v20);
    OUTLINED_FUNCTION_58();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v29 + 32))(v17 + v32[6], v3, v30);
    OUTLINED_FUNCTION_73();
    lazy protocol witness table accessor for type ContactsSnippetFlowState and conformance ContactsSnippetFlowState();
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_32();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = (v17 + v32[7]);
    *v21 = v33;
    v21[1] = v34;
    LOBYTE(v33) = 4;
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type Loggable<ContactsLabelCATContainer> and conformance <A> Loggable<A>(v22);
    OUTLINED_FUNCTION_58();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v27 + 32))(v17 + v32[8], v2, v28);
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_58();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v17 + v32[9]) = v33;
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_58();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = OUTLINED_FUNCTION_40();
    v24(v23, v31);
    *(v17 + v32[10]) = v33;
    outlined init with copy of ContactsSnippetPluginModel(v17, v26);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_4_6();
    outlined destroy of ModifyContactAttributeSnippetModel(v17, v25);
  }

  OUTLINED_FUNCTION_45();
}

uint64_t one-time initialization function for empty()
{
  lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType();
  v0 = Dictionary.init(dictionaryLiteral:)();
  result = Dictionary.init(dictionaryLiteral:)();
  static ContactsLabelCATContainer.empty = v0;
  *algn_28009CAB8 = result;
  return result;
}

SiriContactsCommon::ContactsLabelCATContainer __swiftcall ContactsLabelCATContainer.init(labels:localizedAttributeLabels:)(Swift::OpaquePointer labels, Swift::OpaquePointer localizedAttributeLabels)
{
  v2->_rawValue = labels._rawValue;
  v2[1]._rawValue = localizedAttributeLabels._rawValue;
  result.localizedAttributeLabels = localizedAttributeLabels;
  result.labels = labels;
  return result;
}

uint64_t ContactsLabelCATContainer.LabelType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7374696E55656761 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1819042147 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C65636E6163 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 28519 && a2 == 0xE200000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1818845549 && a2 == 0xE400000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1702257011 && a2 == 0xE400000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6465766173 && a2 == 0xE500000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

Swift::Int ContactsSnippetPluginModel.CodingKeys.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_88(a1);
  MEMORY[0x26D5DE980](v1);
  return Hasher._finalize()();
}

uint64_t ContactsLabelCATContainer.LabelType.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7374696E55656761;
  switch(a1)
  {
    case 1:
      result = 1819042147;
      break;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 28519;
      break;
    case 4:
      result = 1818845549;
      break;
    case 5:
      result = 0x6567617373656DLL;
      break;
    case 6:
      result = 1702257011;
      break;
    case 7:
      result = 0x6465766173;
      break;
    case 8:
      result = 0x6F65646976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys and conformance ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys and conformance ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsLabelCATContainer.LabelType.CallCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.CallCodingKeys and conformance ContactsLabelCATContainer.LabelType.CallCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsLabelCATContainer.LabelType.CallCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.CallCodingKeys and conformance ContactsLabelCATContainer.LabelType.CallCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsLabelCATContainer.LabelType.CancelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.CancelCodingKeys and conformance ContactsLabelCATContainer.LabelType.CancelCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsLabelCATContainer.LabelType.CancelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.CancelCodingKeys and conformance ContactsLabelCATContainer.LabelType.CancelCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ContactsLabelCATContainer.LabelType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ContactsLabelCATContainer.LabelType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ContactsLabelCATContainer.LabelType.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ContactsLabelCATContainer.LabelType.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsLabelCATContainer.LabelType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsLabelCATContainer.LabelType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsLabelCATContainer.LabelType.GoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.GoCodingKeys and conformance ContactsLabelCATContainer.LabelType.GoCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsLabelCATContainer.LabelType.GoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.GoCodingKeys and conformance ContactsLabelCATContainer.LabelType.GoCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsLabelCATContainer.LabelType.MailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.MailCodingKeys and conformance ContactsLabelCATContainer.LabelType.MailCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsLabelCATContainer.LabelType.MailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.MailCodingKeys and conformance ContactsLabelCATContainer.LabelType.MailCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsLabelCATContainer.LabelType.MessageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.MessageCodingKeys and conformance ContactsLabelCATContainer.LabelType.MessageCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsLabelCATContainer.LabelType.MessageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.MessageCodingKeys and conformance ContactsLabelCATContainer.LabelType.MessageCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsLabelCATContainer.LabelType.SaveCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.SaveCodingKeys and conformance ContactsLabelCATContainer.LabelType.SaveCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsLabelCATContainer.LabelType.SaveCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.SaveCodingKeys and conformance ContactsLabelCATContainer.LabelType.SaveCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsLabelCATContainer.LabelType.SavedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.SavedCodingKeys and conformance ContactsLabelCATContainer.LabelType.SavedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsLabelCATContainer.LabelType.SavedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.SavedCodingKeys and conformance ContactsLabelCATContainer.LabelType.SavedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsLabelCATContainer.LabelType.VideoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.VideoCodingKeys and conformance ContactsLabelCATContainer.LabelType.VideoCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsLabelCATContainer.LabelType.VideoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.VideoCodingKeys and conformance ContactsLabelCATContainer.LabelType.VideoCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContactsLabelCATContainer.LabelType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_44();
  a26 = v30;
  a27 = v31;
  v32 = v28;
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO15VideoCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO15VideoCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v100 = v36;
  v101 = v35;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_0(v38, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO15SavedCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO15SavedCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v98 = v40;
  v99 = v39;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19();
  v97 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO14SaveCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO14SaveCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v95 = v44;
  v96 = v43;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_19();
  v94 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO17MessageCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO17MessageCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v92 = v48;
  v93 = v47;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_19();
  v91 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO14MailCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO14MailCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v89 = v52;
  v90 = v51;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_19();
  v88 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO12GoCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO12GoCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v86 = v56;
  v87 = v55;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_19();
  v85 = v58;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO16CancelCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO16CancelCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v83 = v59;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_19();
  v82 = v61;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO14CallCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO14CallCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v80 = v62;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v63);
  v65 = &v79 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO18AgeUnitsCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO18AgeUnitsCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v79 = v67;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_77();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v70 = v69;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_46();
  v72 = *v32;
  OUTLINED_FUNCTION_42(v34, v34[3]);
  lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v73 = (v70 + 8);
  switch(v72)
  {
    case 1:
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.CallCodingKeys and conformance ContactsLabelCATContainer.LabelType.CallCodingKeys();
      v27 = v102;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v76 = *(v80 + 8);
      v75 = v65;
      v77 = &a22;
      goto LABEL_8;
    case 2:
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.CancelCodingKeys and conformance ContactsLabelCATContainer.LabelType.CancelCodingKeys();
      OUTLINED_FUNCTION_5_5();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v75 = OUTLINED_FUNCTION_55();
      v77 = &a25;
LABEL_8:
      v78 = *(v77 - 32);
      goto LABEL_13;
    case 3:
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.GoCodingKeys and conformance ContactsLabelCATContainer.LabelType.GoCodingKeys();
      OUTLINED_FUNCTION_5_5();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      goto LABEL_12;
    case 4:
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.MailCodingKeys and conformance ContactsLabelCATContainer.LabelType.MailCodingKeys();
      OUTLINED_FUNCTION_5_5();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      goto LABEL_12;
    case 5:
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.MessageCodingKeys and conformance ContactsLabelCATContainer.LabelType.MessageCodingKeys();
      OUTLINED_FUNCTION_5_5();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      goto LABEL_12;
    case 6:
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.SaveCodingKeys and conformance ContactsLabelCATContainer.LabelType.SaveCodingKeys();
      OUTLINED_FUNCTION_5_5();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      goto LABEL_12;
    case 7:
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.SavedCodingKeys and conformance ContactsLabelCATContainer.LabelType.SavedCodingKeys();
      OUTLINED_FUNCTION_5_5();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      goto LABEL_12;
    case 8:
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.VideoCodingKeys and conformance ContactsLabelCATContainer.LabelType.VideoCodingKeys();
      OUTLINED_FUNCTION_5_5();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
LABEL_12:
      v75 = OUTLINED_FUNCTION_55();
LABEL_13:
      v76(v75, v78);
      (*v73)(v29, v27);
      break;
    default:
      v103 = 0;
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys and conformance ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys();
      v74 = v102;
      OUTLINED_FUNCTION_52();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v79 + 8))(v27, v66);
      (*v73)(v29, v74);
      break;
  }

  OUTLINED_FUNCTION_45();
}

Swift::Int ModifyContactAttributeSnippetModel.ModificationType.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_88(a1);
  MEMORY[0x26D5DE980](v2);
  return Hasher._finalize()();
}

void ContactsLabelCATContainer.LabelType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_44();
  a26 = v30;
  a27 = v31;
  v128 = v27;
  v33 = v32;
  v125 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO15VideoCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO15VideoCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v119 = v36;
  v120 = v35;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_19();
  v124 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO15SavedCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO15SavedCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v117 = v40;
  v118 = v39;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19();
  v121 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO14SaveCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO14SaveCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v115 = v44;
  v116 = v43;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_19();
  v126 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO17MessageCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO17MessageCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v113 = v48;
  v114 = v47;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_104(v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO14MailCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO14MailCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v111 = v52;
  v112 = v51;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_19();
  v123 = v54;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO12GoCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO12GoCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v109 = v55;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_19();
  v122 = v57;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO16CancelCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO16CancelCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v107 = v58;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_12_0(v60, v99);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO14CallCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO14CallCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v105 = v61;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_16_0();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO18AgeUnitsCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO18AgeUnitsCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v104 = v64;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  v67 = v66;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_21_0();
  v69 = v33[3];
  v127 = v33;
  OUTLINED_FUNCTION_42(v33, v69);
  lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    goto LABEL_9;
  }

  v102 = v28;
  v101 = v63;
  v103 = v29;
  v128 = v67;
  v70 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC18SiriContactsCommon34ModifyContactAttributeSnippetModelV0noeM0O10CodingKeys33_177E55D66B4B3431CB612B735686642ELLO_Tt1g5(v70, 0);
  if (v73 == v72 >> 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_79();
  if (v78 == v79)
  {
    __break(1u);
    JUMPOUT(0x266857DECLL);
  }

  v100 = *(v77 + v75);
  specialized ArraySlice.subscript.getter(v75 + 1, v74, started, v77, v75, v76);
  v81 = v80;
  v83 = v82;
  swift_unknownObjectRelease();
  if (v81 != v83 >> 1)
  {
LABEL_8:
    v88 = type metadata accessor for DecodingError();
    OUTLINED_FUNCTION_85(v88, MEMORY[0x277D841A0]);
    v90 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v90 = &type metadata for ContactsLabelCATContainer.LabelType;
    v91 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_27(v91);
    OUTLINED_FUNCTION_26_0();
    (*(v92 + 104))(v90);
    swift_willThrow();
    swift_unknownObjectRelease();
    v93 = OUTLINED_FUNCTION_70();
    v94(v93);
LABEL_9:
    v95 = v127;
    goto LABEL_10;
  }

  v84 = v125;
  switch(v100)
  {
    case 1:
      a10 = 1;
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.CallCodingKeys and conformance ContactsLabelCATContainer.LabelType.CallCodingKeys();
      OUTLINED_FUNCTION_10_3(&unk_28781B980);
      swift_unknownObjectRelease();
      v85 = OUTLINED_FUNCTION_34();
      v87 = &a21;
      goto LABEL_16;
    case 2:
      a11 = 2;
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.CancelCodingKeys and conformance ContactsLabelCATContainer.LabelType.CancelCodingKeys();
      OUTLINED_FUNCTION_10_3(&unk_28781B9A0);
      swift_unknownObjectRelease();
      v85 = OUTLINED_FUNCTION_34();
      v87 = &a23;
      goto LABEL_16;
    case 3:
      a12 = 3;
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.GoCodingKeys and conformance ContactsLabelCATContainer.LabelType.GoCodingKeys();
      OUTLINED_FUNCTION_10_3(&unk_28781B9C0);
      swift_unknownObjectRelease();
      v85 = OUTLINED_FUNCTION_34();
      v87 = &a25;
      goto LABEL_16;
    case 4:
      a13 = 4;
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.MailCodingKeys and conformance ContactsLabelCATContainer.LabelType.MailCodingKeys();
      OUTLINED_FUNCTION_10_3(&unk_28781B9E0);
      swift_unknownObjectRelease();
      goto LABEL_20;
    case 5:
      a14 = 5;
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.MessageCodingKeys and conformance ContactsLabelCATContainer.LabelType.MessageCodingKeys();
      OUTLINED_FUNCTION_14_0(&unk_28781BA00);
      swift_unknownObjectRelease();
      goto LABEL_20;
    case 6:
      a15 = 6;
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.SaveCodingKeys and conformance ContactsLabelCATContainer.LabelType.SaveCodingKeys();
      OUTLINED_FUNCTION_14_0(&unk_28781BA20);
      swift_unknownObjectRelease();
      goto LABEL_20;
    case 7:
      a16 = 7;
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.SavedCodingKeys and conformance ContactsLabelCATContainer.LabelType.SavedCodingKeys();
      OUTLINED_FUNCTION_10_3(&unk_28781BA40);
      swift_unknownObjectRelease();
      goto LABEL_20;
    case 8:
      a17 = 8;
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.VideoCodingKeys and conformance ContactsLabelCATContainer.LabelType.VideoCodingKeys();
      OUTLINED_FUNCTION_10_3(&unk_28781BA60);
      swift_unknownObjectRelease();
LABEL_20:
      v85 = OUTLINED_FUNCTION_34();
      break;
    default:
      v129 = 0;
      lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys and conformance ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys();
      OUTLINED_FUNCTION_10_3(&unk_28781B960);
      swift_unknownObjectRelease();
      v85 = OUTLINED_FUNCTION_34();
      v87 = &a9;
LABEL_16:
      v96 = *(v87 - 32);
      break;
  }

  v86(v85, v96);
  v97 = OUTLINED_FUNCTION_90();
  v98(v97);
  v95 = v127;
  *v84 = v100;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_0(v95);
  OUTLINED_FUNCTION_45();
}

uint64_t ContactsLabelCATContainer.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736C6562616CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000266863D00 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int ContactsSnippetFlowState.ConfirmCodingKeys.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_88(a1);
  MEMORY[0x26D5DE980](v1 & 1);
  return Hasher._finalize()();
}

uint64_t ContactsLabelCATContainer.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x736C6562616CLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ContactsLabelCATContainer.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ContactsLabelCATContainer.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsLabelCATContainer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsLabelCATContainer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContactsLabelCATContainer.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_44();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon0E17LabelCATContainerV10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_13();
  v26 = *v20;
  v30 = v20[1];
  OUTLINED_FUNCTION_42(v24, v24[3]);
  v27 = lazy protocol witness table accessor for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  a10 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy18SiriContactsCommon0B17LabelCATContainerV0D4TypeOSSGMd, &_sSDy18SiriContactsCommon0B17LabelCATContainerV0D4TypeOSSGMR);
  lazy protocol witness table accessor for type [ContactsLabelCATContainer.LabelType : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [ContactsLabelCATContainer.LabelType : String] and conformance <> [A : B]);
  OUTLINED_FUNCTION_18_0(&a10);

  if (!v27)
  {
    a10 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_18_0(&a10);
  }

  v28 = OUTLINED_FUNCTION_78();
  v29(v28);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_45();
}

void ContactsLabelCATContainer.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_44();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E17LabelCATContainerV10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_42(v12, v12[3]);
  lazy protocol witness table accessor for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy18SiriContactsCommon0B17LabelCATContainerV0D4TypeOSSGMd, &_sSDy18SiriContactsCommon0B17LabelCATContainerV0D4TypeOSSGMR);
    v16 = lazy protocol witness table accessor for type [ContactsLabelCATContainer.LabelType : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [ContactsLabelCATContainer.LabelType : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_61(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    v17 = lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_61(v17);
    v18 = OUTLINED_FUNCTION_107();
    v19(v18);
    *v14 = a10;
    v14[1] = a10;

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_45();
}

BOOL CodableContact.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CodableContact.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CodableContact<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CodableContact<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CodableContact<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance CodableContact<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance CodableContact<A>.CodingKeys@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CodableContact.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

BOOL protocol witness for CodingKey.init(stringValue:) in conformance CodableContact<A>.CodingKeys@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = CodableContact.CodingKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableContact<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableContact<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

Swift::Int CodableContact.Error.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_88(a1);
  MEMORY[0x26D5DE980](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CodableContact<A>.Error(uint64_t a1)
{
  Hasher.init(_seed:)();
  CodableContact.Error.hash(into:)();
  return Hasher._finalize()();
}

void CodableContact.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_44();
  v21 = v20;
  v23 = v22;
  v52 = v25;
  v53 = v24;
  type metadata accessor for CodableContact.CodingKeys(255, v24, v26, v27);
  OUTLINED_FUNCTION_41();
  swift_getWitnessTable();
  type metadata accessor for KeyedDecodingContainer();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_21_0();
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_32();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    type metadata accessor for NSKeyedUnarchiver();
    v31 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v43 = v31;
    if (v31)
    {
      v44 = OUTLINED_FUNCTION_69();
      v45(v44);
      v46 = OUTLINED_FUNCTION_100();
      outlined consume of Data._Representation(v46, v47);
      goto LABEL_8;
    }

    v48 = type metadata accessor for CodableContact.Error(0, v53, v32, v33);
    WitnessTable = swift_getWitnessTable();
    v21 = OUTLINED_FUNCTION_85(v48, WitnessTable);
    swift_willThrow();
    v50 = OUTLINED_FUNCTION_100();
    outlined consume of Data._Representation(v50, v51);
    v29 = OUTLINED_FUNCTION_69();
    v30(v29);
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_8_5();
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.siriContacts);
  v35 = v21;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v54 = v39;
    *v38 = 136315138;
    swift_getErrorValue();
    v40 = Error.localizedDescription.getter();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v54);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_26683A000, v36, v37, "Failed to decode, will make an empty CNContact instead. Error: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x26D5DEEF0](v39, -1, -1);
    MEMORY[0x26D5DEEF0](v38, -1, -1);
  }

  v43 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_8:
  *v52 = v43;
  __swift_destroy_boxed_opaque_existential_0(v23);
  OUTLINED_FUNCTION_45();
}

void CodableContact.encode(to:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_44();
  v4 = v3;
  v20[2] = *MEMORY[0x277D85DE8];
  type metadata accessor for CodableContact.CodingKeys(255, *(v5 + 16), v6, v7);
  OUTLINED_FUNCTION_41();
  swift_getWitnessTable();
  type metadata accessor for KeyedEncodingContainer();
  OUTLINED_FUNCTION_11_0();
  v19 = v8;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_29();
  v10 = *v2;
  v20[0] = 0;
  v11 = [objc_opt_self() archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v20];
  v12 = v20[0];
  if (v11)
  {
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    OUTLINED_FUNCTION_42(v4, v4[3]);
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v20[0] = v13;
    v20[1] = v15;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = OUTLINED_FUNCTION_34();
    v17(v16, v19);
    outlined consume of Data._Representation(v13, v15);
  }

  else
  {
    v18 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_45();
}

uint64_t type metadata accessor for GetContactAttributeSnippetModel(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel and conformance ModifyContactAttributeSnippetModel(uint64_t a1)
{
  result = OUTLINED_FUNCTION_59(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys);
  }

  return result;
}

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC18SiriContactsCommon34ModifyContactAttributeSnippetModelV0noeM0O10CodingKeys33_177E55D66B4B3431CB612B735686642ELLO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsSnippetFlowState.CodingKeys and conformance ContactsSnippetFlowState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsSnippetFlowState.CodingKeys and conformance ContactsSnippetFlowState.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetFlowState.CodingKeys and conformance ContactsSnippetFlowState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetFlowState.CodingKeys and conformance ContactsSnippetFlowState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetFlowState.CodingKeys and conformance ContactsSnippetFlowState.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetFlowState.CodingKeys and conformance ContactsSnippetFlowState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetFlowState.CodingKeys and conformance ContactsSnippetFlowState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetFlowState.CodingKeys and conformance ContactsSnippetFlowState.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetFlowState.CodingKeys and conformance ContactsSnippetFlowState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetFlowState.CodingKeys and conformance ContactsSnippetFlowState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetFlowState.CodingKeys and conformance ContactsSnippetFlowState.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetFlowState.CodingKeys and conformance ContactsSnippetFlowState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetFlowState.CodingKeys and conformance ContactsSnippetFlowState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsSnippetFlowState.UnsupportedCodingKeys and conformance ContactsSnippetFlowState.UnsupportedCodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsSnippetFlowState.UnsupportedCodingKeys and conformance ContactsSnippetFlowState.UnsupportedCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetFlowState.UnsupportedCodingKeys and conformance ContactsSnippetFlowState.UnsupportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetFlowState.UnsupportedCodingKeys and conformance ContactsSnippetFlowState.UnsupportedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetFlowState.UnsupportedCodingKeys and conformance ContactsSnippetFlowState.UnsupportedCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetFlowState.UnsupportedCodingKeys and conformance ContactsSnippetFlowState.UnsupportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetFlowState.UnsupportedCodingKeys and conformance ContactsSnippetFlowState.UnsupportedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetFlowState.UnsupportedCodingKeys and conformance ContactsSnippetFlowState.UnsupportedCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetFlowState.UnsupportedCodingKeys and conformance ContactsSnippetFlowState.UnsupportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetFlowState.UnsupportedCodingKeys and conformance ContactsSnippetFlowState.UnsupportedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsSnippetFlowState.IntentHandledCodingKeys and conformance ContactsSnippetFlowState.IntentHandledCodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsSnippetFlowState.IntentHandledCodingKeys and conformance ContactsSnippetFlowState.IntentHandledCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetFlowState.IntentHandledCodingKeys and conformance ContactsSnippetFlowState.IntentHandledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetFlowState.IntentHandledCodingKeys and conformance ContactsSnippetFlowState.IntentHandledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetFlowState.IntentHandledCodingKeys and conformance ContactsSnippetFlowState.IntentHandledCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetFlowState.IntentHandledCodingKeys and conformance ContactsSnippetFlowState.IntentHandledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetFlowState.IntentHandledCodingKeys and conformance ContactsSnippetFlowState.IntentHandledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetFlowState.IntentHandledCodingKeys and conformance ContactsSnippetFlowState.IntentHandledCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetFlowState.IntentHandledCodingKeys and conformance ContactsSnippetFlowState.IntentHandledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetFlowState.IntentHandledCodingKeys and conformance ContactsSnippetFlowState.IntentHandledCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsSnippetFlowState.ConfirmCodingKeys and conformance ContactsSnippetFlowState.ConfirmCodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsSnippetFlowState.ConfirmCodingKeys and conformance ContactsSnippetFlowState.ConfirmCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetFlowState.ConfirmCodingKeys and conformance ContactsSnippetFlowState.ConfirmCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetFlowState.ConfirmCodingKeys and conformance ContactsSnippetFlowState.ConfirmCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetFlowState.ConfirmCodingKeys and conformance ContactsSnippetFlowState.ConfirmCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetFlowState.ConfirmCodingKeys and conformance ContactsSnippetFlowState.ConfirmCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetFlowState.ConfirmCodingKeys and conformance ContactsSnippetFlowState.ConfirmCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetFlowState.ConfirmCodingKeys and conformance ContactsSnippetFlowState.ConfirmCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetFlowState.ConfirmCodingKeys and conformance ContactsSnippetFlowState.ConfirmCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetFlowState.ConfirmCodingKeys and conformance ContactsSnippetFlowState.ConfirmCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetFlowState.ConfirmCodingKeys and conformance ContactsSnippetFlowState.ConfirmCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsSnippetFlowState.ConfirmCodingKeys and conformance ContactsSnippetFlowState.ConfirmCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetFlowState.ConfirmCodingKeys and conformance ContactsSnippetFlowState.ConfirmCodingKeys);
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t outlined copy of ContactsSnippetFlowState(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a2 & 0xF000000000000000) != 0xB000000000000000 && (a2 & 0xF000000000000000) != 0x7000000000000000)
  {
    outlined copy of Data?(result, a2);

    return outlined copy of Data?(a3, a4);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactSnippetModel.CodingKeys and conformance GetContactSnippetModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GetContactDirectInvocationsModel and conformance GetContactDirectInvocationsModel()
{
  result = lazy protocol witness table cache variable for type GetContactDirectInvocationsModel and conformance GetContactDirectInvocationsModel;
  if (!lazy protocol witness table cache variable for type GetContactDirectInvocationsModel and conformance GetContactDirectInvocationsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactDirectInvocationsModel and conformance GetContactDirectInvocationsModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactDirectInvocationsModel and conformance GetContactDirectInvocationsModel;
  if (!lazy protocol witness table cache variable for type GetContactDirectInvocationsModel and conformance GetContactDirectInvocationsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactDirectInvocationsModel and conformance GetContactDirectInvocationsModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsSnippetFlowState and conformance ContactsSnippetFlowState()
{
  result = lazy protocol witness table cache variable for type ContactsSnippetFlowState and conformance ContactsSnippetFlowState;
  if (!lazy protocol witness table cache variable for type ContactsSnippetFlowState and conformance ContactsSnippetFlowState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetFlowState and conformance ContactsSnippetFlowState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsSnippetFlowState and conformance ContactsSnippetFlowState;
  if (!lazy protocol witness table cache variable for type ContactsSnippetFlowState and conformance ContactsSnippetFlowState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsSnippetFlowState and conformance ContactsSnippetFlowState);
  }

  return result;
}

void outlined consume of ContactsSnippetFlowState(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a2 & 0xF000000000000000) != 0xB000000000000000 && (a2 & 0xF000000000000000) != 0x7000000000000000)
  {
    outlined consume of Data?(result, a2);

    outlined consume of Data?(a3, a4);
  }
}

unint64_t lazy protocol witness table accessor for type Loggable<ContactsLabelCATContainer> and conformance <A> Loggable<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_59(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMR);
    lazy protocol witness table accessor for type ContactsLabelCATContainer and conformance ContactsLabelCATContainer();
    lazy protocol witness table accessor for type ContactsLabelCATContainer and conformance ContactsLabelCATContainer();
    OUTLINED_FUNCTION_99();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATContainer and conformance ContactsLabelCATContainer()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer and conformance ContactsLabelCATContainer;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer and conformance ContactsLabelCATContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer and conformance ContactsLabelCATContainer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer and conformance ContactsLabelCATContainer;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer and conformance ContactsLabelCATContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer and conformance ContactsLabelCATContainer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Loggable<CodableContact<CNContact>> and conformance <A> Loggable<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_59(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
    lazy protocol witness table accessor for type CodableContact<CNContact> and conformance CodableContact<A>(&lazy protocol witness table cache variable for type CodableContact<CNContact> and conformance CodableContact<A>);
    lazy protocol witness table accessor for type CodableContact<CNContact> and conformance CodableContact<A>(&lazy protocol witness table cache variable for type CodableContact<CNContact> and conformance CodableContact<A>);
    OUTLINED_FUNCTION_99();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined init with copy of ContactsSnippetPluginModel(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v4(v3);
  OUTLINED_FUNCTION_6_5();
  v5 = OUTLINED_FUNCTION_6_2();
  v6(v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys and conformance GetContactAttributeSnippetModel.DisplayAttribute.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GetContactAttributeSnippetModel.DisplayAttribute.AttributeType and conformance GetContactAttributeSnippetModel.DisplayAttribute.AttributeType()
{
  result = lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.AttributeType and conformance GetContactAttributeSnippetModel.DisplayAttribute.AttributeType;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.AttributeType and conformance GetContactAttributeSnippetModel.DisplayAttribute.AttributeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.AttributeType and conformance GetContactAttributeSnippetModel.DisplayAttribute.AttributeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.AttributeType and conformance GetContactAttributeSnippetModel.DisplayAttribute.AttributeType;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.AttributeType and conformance GetContactAttributeSnippetModel.DisplayAttribute.AttributeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.AttributeType and conformance GetContactAttributeSnippetModel.DisplayAttribute.AttributeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.AttributeType and conformance GetContactAttributeSnippetModel.DisplayAttribute.AttributeType;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.AttributeType and conformance GetContactAttributeSnippetModel.DisplayAttribute.AttributeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.AttributeType and conformance GetContactAttributeSnippetModel.DisplayAttribute.AttributeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.AttributeType and conformance GetContactAttributeSnippetModel.DisplayAttribute.AttributeType;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.AttributeType and conformance GetContactAttributeSnippetModel.DisplayAttribute.AttributeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute.AttributeType and conformance GetContactAttributeSnippetModel.DisplayAttribute.AttributeType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.CodingKeys and conformance GetContactAttributeSnippetModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GetContactAttributeSnippetModel.DisplayAttribute and conformance GetContactAttributeSnippetModel.DisplayAttribute()
{
  result = lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute and conformance GetContactAttributeSnippetModel.DisplayAttribute;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute and conformance GetContactAttributeSnippetModel.DisplayAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute and conformance GetContactAttributeSnippetModel.DisplayAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute and conformance GetContactAttributeSnippetModel.DisplayAttribute;
  if (!lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute and conformance GetContactAttributeSnippetModel.DisplayAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactAttributeSnippetModel.DisplayAttribute and conformance GetContactAttributeSnippetModel.DisplayAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [GetContactAttributeSnippetModel.DisplayAttribute] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_59(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay18SiriContactsCommon31GetContactAttributeSnippetModelV07DisplayF0VGMd, &_sSay18SiriContactsCommon31GetContactAttributeSnippetModelV07DisplayF0VGMR);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.RelationshipCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify.NicknameCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.CodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.DeleteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.ReplaceCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.AddCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys and conformance ModifyContactAttributeSnippetModel.ModificationType.UnknownCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.CodingKeys and conformance ModifyContactAttributeSnippetModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ContactAttributeToModify and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ContactAttributeToModify and conformance ModifyContactAttributeSnippetModel.ContactAttributeToModify);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel.ModificationType and conformance ModifyContactAttributeSnippetModel.ModificationType()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType and conformance ModifyContactAttributeSnippetModel.ModificationType;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType and conformance ModifyContactAttributeSnippetModel.ModificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType and conformance ModifyContactAttributeSnippetModel.ModificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType and conformance ModifyContactAttributeSnippetModel.ModificationType;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType and conformance ModifyContactAttributeSnippetModel.ModificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType and conformance ModifyContactAttributeSnippetModel.ModificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType and conformance ModifyContactAttributeSnippetModel.ModificationType;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType and conformance ModifyContactAttributeSnippetModel.ModificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeSnippetModel.ModificationType and conformance ModifyContactAttributeSnippetModel.ModificationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CodingKeys and conformance ContactsLabelCATContainer.LabelType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.VideoCodingKeys and conformance ContactsLabelCATContainer.LabelType.VideoCodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.VideoCodingKeys and conformance ContactsLabelCATContainer.LabelType.VideoCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.VideoCodingKeys and conformance ContactsLabelCATContainer.LabelType.VideoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.VideoCodingKeys and conformance ContactsLabelCATContainer.LabelType.VideoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.VideoCodingKeys and conformance ContactsLabelCATContainer.LabelType.VideoCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.VideoCodingKeys and conformance ContactsLabelCATContainer.LabelType.VideoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.VideoCodingKeys and conformance ContactsLabelCATContainer.LabelType.VideoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.VideoCodingKeys and conformance ContactsLabelCATContainer.LabelType.VideoCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.VideoCodingKeys and conformance ContactsLabelCATContainer.LabelType.VideoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.VideoCodingKeys and conformance ContactsLabelCATContainer.LabelType.VideoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.SavedCodingKeys and conformance ContactsLabelCATContainer.LabelType.SavedCodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SavedCodingKeys and conformance ContactsLabelCATContainer.LabelType.SavedCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SavedCodingKeys and conformance ContactsLabelCATContainer.LabelType.SavedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SavedCodingKeys and conformance ContactsLabelCATContainer.LabelType.SavedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SavedCodingKeys and conformance ContactsLabelCATContainer.LabelType.SavedCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SavedCodingKeys and conformance ContactsLabelCATContainer.LabelType.SavedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SavedCodingKeys and conformance ContactsLabelCATContainer.LabelType.SavedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SavedCodingKeys and conformance ContactsLabelCATContainer.LabelType.SavedCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SavedCodingKeys and conformance ContactsLabelCATContainer.LabelType.SavedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SavedCodingKeys and conformance ContactsLabelCATContainer.LabelType.SavedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.SaveCodingKeys and conformance ContactsLabelCATContainer.LabelType.SaveCodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SaveCodingKeys and conformance ContactsLabelCATContainer.LabelType.SaveCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SaveCodingKeys and conformance ContactsLabelCATContainer.LabelType.SaveCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SaveCodingKeys and conformance ContactsLabelCATContainer.LabelType.SaveCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SaveCodingKeys and conformance ContactsLabelCATContainer.LabelType.SaveCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SaveCodingKeys and conformance ContactsLabelCATContainer.LabelType.SaveCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SaveCodingKeys and conformance ContactsLabelCATContainer.LabelType.SaveCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SaveCodingKeys and conformance ContactsLabelCATContainer.LabelType.SaveCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SaveCodingKeys and conformance ContactsLabelCATContainer.LabelType.SaveCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.SaveCodingKeys and conformance ContactsLabelCATContainer.LabelType.SaveCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.MessageCodingKeys and conformance ContactsLabelCATContainer.LabelType.MessageCodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MessageCodingKeys and conformance ContactsLabelCATContainer.LabelType.MessageCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MessageCodingKeys and conformance ContactsLabelCATContainer.LabelType.MessageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MessageCodingKeys and conformance ContactsLabelCATContainer.LabelType.MessageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MessageCodingKeys and conformance ContactsLabelCATContainer.LabelType.MessageCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MessageCodingKeys and conformance ContactsLabelCATContainer.LabelType.MessageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MessageCodingKeys and conformance ContactsLabelCATContainer.LabelType.MessageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MessageCodingKeys and conformance ContactsLabelCATContainer.LabelType.MessageCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MessageCodingKeys and conformance ContactsLabelCATContainer.LabelType.MessageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MessageCodingKeys and conformance ContactsLabelCATContainer.LabelType.MessageCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.MailCodingKeys and conformance ContactsLabelCATContainer.LabelType.MailCodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MailCodingKeys and conformance ContactsLabelCATContainer.LabelType.MailCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MailCodingKeys and conformance ContactsLabelCATContainer.LabelType.MailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MailCodingKeys and conformance ContactsLabelCATContainer.LabelType.MailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MailCodingKeys and conformance ContactsLabelCATContainer.LabelType.MailCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MailCodingKeys and conformance ContactsLabelCATContainer.LabelType.MailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MailCodingKeys and conformance ContactsLabelCATContainer.LabelType.MailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MailCodingKeys and conformance ContactsLabelCATContainer.LabelType.MailCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MailCodingKeys and conformance ContactsLabelCATContainer.LabelType.MailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.MailCodingKeys and conformance ContactsLabelCATContainer.LabelType.MailCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.GoCodingKeys and conformance ContactsLabelCATContainer.LabelType.GoCodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.GoCodingKeys and conformance ContactsLabelCATContainer.LabelType.GoCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.GoCodingKeys and conformance ContactsLabelCATContainer.LabelType.GoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.GoCodingKeys and conformance ContactsLabelCATContainer.LabelType.GoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.GoCodingKeys and conformance ContactsLabelCATContainer.LabelType.GoCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.GoCodingKeys and conformance ContactsLabelCATContainer.LabelType.GoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.GoCodingKeys and conformance ContactsLabelCATContainer.LabelType.GoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.GoCodingKeys and conformance ContactsLabelCATContainer.LabelType.GoCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.GoCodingKeys and conformance ContactsLabelCATContainer.LabelType.GoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.GoCodingKeys and conformance ContactsLabelCATContainer.LabelType.GoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.CancelCodingKeys and conformance ContactsLabelCATContainer.LabelType.CancelCodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CancelCodingKeys and conformance ContactsLabelCATContainer.LabelType.CancelCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CancelCodingKeys and conformance ContactsLabelCATContainer.LabelType.CancelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CancelCodingKeys and conformance ContactsLabelCATContainer.LabelType.CancelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CancelCodingKeys and conformance ContactsLabelCATContainer.LabelType.CancelCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CancelCodingKeys and conformance ContactsLabelCATContainer.LabelType.CancelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CancelCodingKeys and conformance ContactsLabelCATContainer.LabelType.CancelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CancelCodingKeys and conformance ContactsLabelCATContainer.LabelType.CancelCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CancelCodingKeys and conformance ContactsLabelCATContainer.LabelType.CancelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CancelCodingKeys and conformance ContactsLabelCATContainer.LabelType.CancelCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.CallCodingKeys and conformance ContactsLabelCATContainer.LabelType.CallCodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CallCodingKeys and conformance ContactsLabelCATContainer.LabelType.CallCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CallCodingKeys and conformance ContactsLabelCATContainer.LabelType.CallCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CallCodingKeys and conformance ContactsLabelCATContainer.LabelType.CallCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CallCodingKeys and conformance ContactsLabelCATContainer.LabelType.CallCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CallCodingKeys and conformance ContactsLabelCATContainer.LabelType.CallCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CallCodingKeys and conformance ContactsLabelCATContainer.LabelType.CallCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CallCodingKeys and conformance ContactsLabelCATContainer.LabelType.CallCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CallCodingKeys and conformance ContactsLabelCATContainer.LabelType.CallCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.CallCodingKeys and conformance ContactsLabelCATContainer.LabelType.CallCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys and conformance ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys and conformance ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys and conformance ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys and conformance ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys and conformance ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys and conformance ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys and conformance ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys and conformance ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys and conformance ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys and conformance ContactsLabelCATContainer.LabelType.AgeUnitsCodingKeys);
  }

  return result;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.CodingKeys and conformance ContactsLabelCATContainer.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType);
  }

  return result;
}

unint64_t type metadata accessor for NSKeyedUnarchiver()
{
  result = lazy cache variable for type metadata for NSKeyedUnarchiver;
  if (!lazy cache variable for type metadata for NSKeyedUnarchiver)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSKeyedUnarchiver);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableContact<CNContact> and conformance CodableContact<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_59(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void type metadata completion function for ContactsSnippetPluginModel(uint64_t a1)
{
  type metadata accessor for (model: GetContactSnippetModel)(319, &lazy cache variable for type metadata for (model: GetContactSnippetModel), type metadata accessor for GetContactSnippetModel);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (model: GetContactSnippetModel)(319, &lazy cache variable for type metadata for (model: GetContactAttributeSnippetModel), type metadata accessor for GetContactAttributeSnippetModel);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (model: GetContactSnippetModel)(319, &lazy cache variable for type metadata for (model: ModifyContactAttributeSnippetModel), type metadata accessor for ModifyContactAttributeSnippetModel);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (model: GetContactSnippetModel)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_18SiriContactsCommon0B16SnippetFlowStateO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  v2 = ((4 * v1) & 0xC) == 0;
  v3 = ((4 * v1) & 0xC | (v1 >> 2)) ^ 0xF;
  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for ContactsSnippetFlowState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xA && *(a1 + 32))
  {
    return (*a1 + 10);
  }

  v3 = *(a1 + 8) >> 60;
  v4 = ((4 * v3) & 0xC) == 0;
  v5 = ((4 * v3) & 0xC | (v3 >> 2)) ^ 0xF;
  if (v4)
  {
    v5 = 0;
  }

  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContactsSnippetFlowState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 9)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 10;
    if (a3 >= 0xA)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((13 - a2) >> 2) | (4 * (13 - a2))) << 60;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ContactsSnippetFlowState(void *result, unsigned int a2)
{
  if (a2 > 0xB)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 12;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
  }

  return result;
}

uint64_t sub_26685AAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_95();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  OUTLINED_FUNCTION_97();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_94(*(v4 + *(a3 + 20) + 16));
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMR);
    v9 = v4 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_26685ABBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_95();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  OUTLINED_FUNCTION_97();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + *(a4 + 20) + 16) = (v4 - 1);
      return;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMR);
    v11 = v5 + *(a4 + 28);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

void type metadata completion function for GetContactSnippetModel(uint64_t a1)
{
  type metadata accessor for Loggable<CodableContact<CNContact>>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Loggable<ContactsLabelCATContainer>(319, &lazy cache variable for type metadata for Loggable<ContactsLabelCATContainer>, &type metadata for ContactsLabelCATContainer, MEMORY[0x277D637C8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Loggable<CodableContact<CNContact>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Loggable<CodableContact<CNContact>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
    v1 = type metadata accessor for Loggable();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Loggable<CodableContact<CNContact>>);
    }
  }
}

uint64_t sub_26685ADDC(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_94(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  v5 = OUTLINED_FUNCTION_93(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_26685AE74()
{
  OUTLINED_FUNCTION_95();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
    v5 = OUTLINED_FUNCTION_93(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void type metadata completion function for GetContactAttributeSnippetModel(uint64_t a1)
{
  type metadata accessor for Loggable<ContactsLabelCATContainer>(319, &lazy cache variable for type metadata for [GetContactAttributeSnippetModel.DisplayAttribute], &type metadata for GetContactAttributeSnippetModel.DisplayAttribute, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Loggable<CodableContact<CNContact>>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for GetContactAttributeSnippetModel.DisplayAttribute(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GetContactAttributeSnippetModel.DisplayAttribute(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26685B0B0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 16);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
    OUTLINED_FUNCTION_97();
    if (*(v7 + 84) == a2)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMR);
      v8 = *(a3 + 32);
    }

    v9 = OUTLINED_FUNCTION_93(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_26685B198()
{
  OUTLINED_FUNCTION_95();
  if (v2 == 254)
  {
    *(v1 + 16) = -v0;
  }

  else
  {
    v4 = v3;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
    OUTLINED_FUNCTION_97();
    if (*(v6 + 84) == v5)
    {
      v7 = *(v4 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon0E17LabelCATContainerVGMR);
      v7 = *(v4 + 32);
    }

    v8 = OUTLINED_FUNCTION_93(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v0, v10);
  }
}

void type metadata completion function for ModifyContactAttributeSnippetModel(uint64_t a1)
{
  type metadata accessor for Loggable<CodableContact<CNContact>>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Loggable<ContactsLabelCATContainer>(319, &lazy cache variable for type metadata for Loggable<ContactsLabelCATContainer>, &type metadata for ContactsLabelCATContainer, MEMORY[0x277D637C8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Loggable<ContactsLabelCATContainer>(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Loggable<ContactsLabelCATContainer>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ModifyContactAttributeSnippetModel.ContactAttributeToModify(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ModifyContactAttributeSnippetModel.ContactAttributeToModify(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata instantiation function for CodableContact(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for CodableContact(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CodableContact(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GetContactAttributeSnippetModel.DisplayAttribute.AttributeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_66(-1);
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_66((*a1 | (v4 << 8)) - 9);
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

      return OUTLINED_FUNCTION_66((*a1 | (v4 << 8)) - 9);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_66((*a1 | (v4 << 8)) - 9);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_66(v8);
}

_BYTE *storeEnumTagSinglePayload for GetContactAttributeSnippetModel.DisplayAttribute.AttributeType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_65(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_63(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x26685B70CLL);
      case 4:
        result = OUTLINED_FUNCTION_64(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_53(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModifyContactAttributeSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x26685B8A0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GetContactAttributeSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GetContactAttributeSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x26685BAB4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModifyContactAttributeSnippetModel.ModificationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_66(-1);
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
      return OUTLINED_FUNCTION_66((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_66((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_66((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_66(v8);
}

_BYTE *storeEnumTagSinglePayload for ModifyContactAttributeSnippetModel.ModificationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_65(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_63(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x26685BC2CLL);
      case 4:
        result = OUTLINED_FUNCTION_64(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_53(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GetContactSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x26685BD30);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactsLabelCATContainer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_66(-1);
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
      return OUTLINED_FUNCTION_66((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_66((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_66((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_66(v8);
}

_BYTE *storeEnumTagSinglePayload for ContactsLabelCATContainer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_65(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_63(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x26685BEC0);
      case 4:
        result = OUTLINED_FUNCTION_64(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_53(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactsSnippetFlowState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_66(-1);
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
      return OUTLINED_FUNCTION_66((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_66((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_66((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_66(v8);
}

_BYTE *storeEnumTagSinglePayload for ContactsSnippetFlowState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_65(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_63(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x26685C058);
      case 4:
        result = OUTLINED_FUNCTION_64(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_53(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableContact.Error(unsigned __int8 *a1, int a2)
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

  return getEnumTag for SiriHighlightedPropertyType(a1);
}

_BYTE *storeEnumTagSinglePayload for CodableContact.Error(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x26685C198);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_3(uint64_t a1)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_27(uint64_t a1)
{

  return MEMORY[0x2821FD170](a1, 0xD00000000000002BLL, v1 | 0x8000000000000000, 0);
}

void *OUTLINED_FUNCTION_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void *OUTLINED_FUNCTION_61(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_62(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_72(uint64_t a1)
{

  return Loggable.wrappedValue.modify();
}

uint64_t OUTLINED_FUNCTION_80@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *v1 = *v3;
  v1[1] = v5;
  v1[2] = v6;
  v1[3] = v7;
  v1[4] = v8;
  outlined copy of Data?(v4, v5);
}

uint64_t OUTLINED_FUNCTION_84@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a3[2];
  v5 = a3[3];
  v6 = a3[4];
  *(v3 - 120) = result;
  *(v3 - 112) = a2;
  *(v3 - 104) = v4;
  *(v3 - 96) = v5;
  *(v3 - 88) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_85(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

void *OUTLINED_FUNCTION_88(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_94@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

void *OUTLINED_FUNCTION_111(uint64_t a1)
{

  return Loggable.wrappedValue.getter();
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = MEMORY[0x28211C760]();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}