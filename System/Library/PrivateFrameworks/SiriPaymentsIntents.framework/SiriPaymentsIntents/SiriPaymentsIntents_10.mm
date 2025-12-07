uint64_t SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v45 = a1;
  v60 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31, v2);
  v35 = &v12 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36, v3);
  v40 = &v12 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO026RequestPaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO026RequestPaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41, v4);
  v49 = &v12 - v44;
  v46 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  v47 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v45, v5);
  v48 = &v12 - v47;
  v60 = v6;
  v51 = v6[3];
  v52 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v51);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys();
  v7 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v53 = v7;
  v54 = v7;
  if (v7)
  {
    v17 = v54;
    v18 = 0;
  }

  else
  {
    v27 = &v59;
    v59 = 0;
    lazy protocol witness table accessor for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>();
    v8 = v53;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = v8;
    v29 = v8;
    if (v8)
    {
      v16 = v29;
      (*(v42 + 8))(v49, v41);
      v17 = v16;
      v18 = 0;
    }

    else
    {
      (*(v37 + 32))(v48, v40, v36);
      v24 = &v58;
      v58 = 1;
      lazy protocol witness table accessor for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>();
      v9 = v28;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v25 = v9;
      v26 = v9;
      if (v9)
      {
        v15 = v26;
        (*(v42 + 8))(v49, v41);
        v17 = v15;
        v18 = 1;
      }

      else
      {
        (*(v32 + 32))(v48 + *(v46 + 20), v35, v31);
        v21 = &v56;
        v56 = 2;
        lazy protocol witness table accessor for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel();
        v10 = v25;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v22 = v10;
        v23 = v10;
        if (!v10)
        {
          v19 = __dst;
          v20 = 112;
          memcpy(__dst, __src, sizeof(__dst));
          memcpy((v48 + *(v46 + 24)), __dst, 0x70uLL);
          (*(v42 + 8))(v49, v41);
          outlined init with copy of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(v48, v30);
          __swift_destroy_boxed_opaque_existential_0(v45);
          return outlined destroy of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(v48);
        }

        v14 = v23;
        (*(v42 + 8))(v49, v41);
        v17 = v14;
        v18 = 3;
      }
    }
  }

  v13 = v18;
  v12 = v17;
  result = __swift_destroy_boxed_opaque_existential_0(v45);
  if (v13)
  {
    result = (*(v37 + 8))(v48, v36);
  }

  if ((v13 & 2) != 0)
  {
    return (*(v32 + 8))(v48 + *(v46 + 20), v31);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t SiriPaymentsSnippetModel.SendPaymentConfirmationModel.intent.setter(uint64_t a1)
{
  v9 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t SiriPaymentsSnippetModel.SendPaymentConfirmationModel.response.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SiriPaymentsSnippetModel.SendPaymentConfirmationModel;
  if (!type metadata singleton initialization cache for SiriPaymentsSnippetModel.SendPaymentConfirmationModel)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.SendPaymentConfirmationModel.response.setter(uint64_t a1)
{
  v9 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9);
  v5 = &v4 - v4;
  (*(v6 + 16))();
  v2 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  (*(v6 + 40))(v1 + *(v2 + 20), v5, v8);
  return (*(v6 + 8))(v9, v8);
}

void *SiriPaymentsSnippetModel.SendPaymentConfirmationModel.confirmation.setter(void *a1)
{
  outlined init with copy of SiriPaymentsSnippetModel.PaymentConfirmationModel(a1, v5);
  v2 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  outlined assign with take of SiriPaymentsSnippetModel.PaymentConfirmationModel(a1, (v1 + *(v2 + 24)));
  return outlined destroy of SiriPaymentsSnippetModel.PaymentConfirmationModel(a1);
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.SendPaymentConfirmationModel.encode(to:)(uint64_t a1)
{
  v31 = v55;
  v32 = a1;
  v55[1] = 0;
  v55[0] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v2);
  v29 = v12 - v28;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  v39 = *(v44 - 8);
  v40 = v44 - 8;
  v30 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44, v3);
  v46 = v12 - v30;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO023SendPaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO023SendPaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v33 = *(v43 - 8);
  v34 = v43 - 8;
  v35 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v32, v4);
  v38 = v12 - v35;
  v6[1] = v5;
  *v6 = v1;
  v36 = v5[3];
  v37 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v36);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v39 + 16))(v46, v41, v44);
  v42 = &v54;
  v54 = 0;
  lazy protocol witness table accessor for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>();
  v7 = v45;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v47 = v7;
  v48 = v7;
  if (v7)
  {
    v13 = v48;
    (*(v39 + 8))(v46, v44);
    result = (*(v33 + 8))(v38, v43);
    v14 = v13;
  }

  else
  {
    (*(v39 + 8))(v46, v44);
    v21 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
    (*(v26 + 16))(v29, v41 + *(v21 + 20), v25);
    v22 = &v53;
    v53 = 1;
    lazy protocol witness table accessor for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>();
    v8 = v47;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = v8;
    v24 = v8;
    if (v8)
    {
      v12[1] = v24;
      (*(v26 + 8))(v29, v25);
      return (*(v33 + 8))(v38, v43);
    }

    else
    {
      (*(v26 + 8))(v29, v25);
      v9 = (v41 + *(v21 + 24));
      v15 = __dst;
      v16 = 112;
      memcpy(__dst, v9, sizeof(__dst));
      outlined init with copy of SiriPaymentsSnippetModel.PaymentConfirmationModel(__dst, v51);
      v18 = v50;
      memcpy(v50, v15, v16);
      v17 = &v49;
      v49 = 2;
      lazy protocol witness table accessor for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel();
      v10 = v23;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v19 = v10;
      v20 = v10;
      if (v10)
      {
        v12[0] = v20;
      }

      outlined destroy of SiriPaymentsSnippetModel.PaymentConfirmationModel(v50);
      return (*(v33 + 8))(v38, v43);
    }
  }

  return result;
}

uint64_t SiriPaymentsSnippetModel.SendPaymentConfirmationModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v45 = a1;
  v60 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31, v2);
  v35 = &v12 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36, v3);
  v40 = &v12 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO023SendPaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO023SendPaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41, v4);
  v49 = &v12 - v44;
  v46 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  v47 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v45, v5);
  v48 = &v12 - v47;
  v60 = v6;
  v51 = v6[3];
  v52 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v51);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys();
  v7 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v53 = v7;
  v54 = v7;
  if (v7)
  {
    v17 = v54;
    v18 = 0;
  }

  else
  {
    v27 = &v59;
    v59 = 0;
    lazy protocol witness table accessor for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>();
    v8 = v53;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = v8;
    v29 = v8;
    if (v8)
    {
      v16 = v29;
      (*(v42 + 8))(v49, v41);
      v17 = v16;
      v18 = 0;
    }

    else
    {
      (*(v37 + 32))(v48, v40, v36);
      v24 = &v58;
      v58 = 1;
      lazy protocol witness table accessor for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>();
      v9 = v28;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v25 = v9;
      v26 = v9;
      if (v9)
      {
        v15 = v26;
        (*(v42 + 8))(v49, v41);
        v17 = v15;
        v18 = 1;
      }

      else
      {
        (*(v32 + 32))(v48 + *(v46 + 20), v35, v31);
        v21 = &v56;
        v56 = 2;
        lazy protocol witness table accessor for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel();
        v10 = v25;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v22 = v10;
        v23 = v10;
        if (!v10)
        {
          v19 = __dst;
          v20 = 112;
          memcpy(__dst, __src, sizeof(__dst));
          memcpy((v48 + *(v46 + 24)), __dst, 0x70uLL);
          (*(v42 + 8))(v49, v41);
          outlined init with copy of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(v48, v30);
          __swift_destroy_boxed_opaque_existential_0(v45);
          return outlined destroy of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(v48);
        }

        v14 = v23;
        (*(v42 + 8))(v49, v41);
        v17 = v14;
        v18 = 3;
      }
    }
  }

  v13 = v18;
  v12 = v17;
  result = __swift_destroy_boxed_opaque_existential_0(v45);
  if (v13)
  {
    result = (*(v37 + 8))(v48, v36);
  }

  if ((v13 & 2) != 0)
  {
    return (*(v32 + 8))(v48 + *(v46 + 20), v31);
  }

  return result;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.confirmLabel.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.cancelLabel.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.noteLabel.getter()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.feeLabel.getter()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.confirmDI.getter()
{
  v2 = *(v0 + 64);
  outlined copy of Data._Representation(v2, *(v0 + 72));
  return v2;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.cancelDI.getter()
{
  v2 = *(v0 + 80);
  outlined copy of Data._Representation(v2, *(v0 + 88));
  return v2;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.appId.getter()
{
  v2 = *(v0 + 96);

  return v2;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;

  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confirmLabel", 0xCuLL, 1);
  v30 = a1;
  v31 = a2;
  v13 = MEMORY[0x26D620740](v32._countAndFlagsBits, v32._object, a1, a2);
  outlined destroy of String.UTF8View(&v32);
  if (v13)
  {

    v35 = 0;
    v10 = 0;
LABEL_16:

    return v10;
  }

  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cancelLabel", 0xBuLL, 1);
  v27 = a1;
  v28 = a2;
  v9 = MEMORY[0x26D620740](v29._countAndFlagsBits, v29._object, a1, a2);
  outlined destroy of String.UTF8View(&v29);
  if (v9)
  {

    v35 = 1;
    v10 = 1;
    goto LABEL_16;
  }

  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("noteLabel", 9uLL, 1);
  v24 = a1;
  v25 = a2;
  v8 = MEMORY[0x26D620740](v26._countAndFlagsBits, v26._object, a1, a2);
  outlined destroy of String.UTF8View(&v26);
  if (v8)
  {

    v35 = 2;
    v10 = 2;
    goto LABEL_16;
  }

  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeLabel", 8uLL, 1);
  v21 = a1;
  v22 = a2;
  v7 = MEMORY[0x26D620740](v23._countAndFlagsBits, v23._object, a1, a2);
  outlined destroy of String.UTF8View(&v23);
  if (v7)
  {

    v35 = 3;
    v10 = 3;
    goto LABEL_16;
  }

  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confirmDI", 9uLL, 1);
  v18 = a1;
  v19 = a2;
  v6 = MEMORY[0x26D620740](v20._countAndFlagsBits, v20._object, a1, a2);
  outlined destroy of String.UTF8View(&v20);
  if (v6)
  {

    v35 = 4;
    v10 = 4;
    goto LABEL_16;
  }

  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cancelDI", 8uLL, 1);
  v15 = a1;
  v16 = a2;
  v5 = MEMORY[0x26D620740](v17._countAndFlagsBits, v17._object, a1, a2);
  outlined destroy of String.UTF8View(&v17);
  if (v5)
  {

    v35 = 5;
    v10 = 5;
    goto LABEL_16;
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appId", 5uLL, 1);
  v4 = MEMORY[0x26D620740](v14._countAndFlagsBits, v14._object, a1, a2);
  outlined destroy of String.UTF8View(&v14);
  if (v4)
  {

    v35 = 6;
    v10 = 6;
    goto LABEL_16;
  }

  return 7;
}

BOOL static SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      default:
        v4 = 6;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      default:
        v3 = 6;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confirmLabel", 0xCuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cancelLabel", 0xBuLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("noteLabel", 9uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeLabel", 8uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confirmDI", 9uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cancelDI", 8uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appId", 5uLL, 1)._countAndFlagsBits;
  }
}

uint64_t SiriPaymentsSnippetModel.PaymentConfirmationModel.encode(to:)(uint64_t a1)
{
  v43 = &v72;
  v44 = a1;
  v70 = 0;
  v69 = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO019PaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO019PaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v45 = *(v55 - 8);
  v46 = v55 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v50 = v13 - v47;
  v70 = MEMORY[0x28223BE20](v44, v2);
  v69 = v1;
  v48 = v70[3];
  v49 = v70[4];
  __swift_project_boxed_opaque_existential_1(v70, v48);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v3 = v52;
  v53 = *v51;
  v54 = v51[1];

  v68 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  v56 = v3;
  v57 = v3;
  if (v3)
  {
    v18 = v57;

    result = (*(v45 + 8))(v50, v55);
    v19 = v18;
  }

  else
  {

    v4 = v56;
    v39 = v51[2];
    v40 = v51[3];

    v67 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v41 = v4;
    v42 = v4;
    if (v4)
    {
      v17 = v42;

      result = (*(v45 + 8))(v50, v55);
      v19 = v17;
    }

    else
    {

      v5 = v41;
      v35 = v51[4];
      v36 = v51[5];

      v66 = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      v37 = v5;
      v38 = v5;
      if (v5)
      {
        v16 = v38;

        result = (*(v45 + 8))(v50, v55);
        v19 = v16;
      }

      else
      {

        v6 = v37;
        v31 = v51[6];
        v32 = v51[7];

        v65 = 3;
        KeyedEncodingContainer.encode(_:forKey:)();
        v33 = v6;
        v34 = v6;
        if (v6)
        {
          v15 = v34;

          result = (*(v45 + 8))(v50, v55);
          v19 = v15;
        }

        else
        {

          *v43 = *(v51 + 4);
          outlined init with copy of Data(&v72, &v64);
          v7 = *v43;
          v27 = &v63;
          v63 = v7;
          v26 = &v62;
          v62 = 4;
          v8 = lazy protocol witness table accessor for type Data and conformance Data();
          v9 = v33;
          v28 = v8;
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          v29 = v9;
          v30 = v9;
          if (v9)
          {
            v14 = v30;
            outlined destroy of Data(&v63);
            result = (*(v45 + 8))(v50, v55);
            v19 = v14;
          }

          else
          {
            outlined destroy of Data(&v63);
            v71 = *(v51 + 5);
            outlined init with copy of Data(&v71, &v61);
            v10 = v29;
            v60 = v71;
            v59 = 5;
            KeyedEncodingContainer.encode<A>(_:forKey:)();
            v24 = v10;
            v25 = v10;
            if (v10)
            {
              v13[2] = v25;
              outlined destroy of Data(&v60);
              return (*(v45 + 8))(v50, v55);
            }

            else
            {
              outlined destroy of Data(&v60);
              v11 = v24;
              v20 = v51[12];
              v21 = v51[13];

              v58 = 6;
              KeyedEncodingContainer.encode(_:forKey:)();
              v22 = v11;
              v23 = v11;
              if (v11)
              {
                v13[1] = v23;
              }

              return (*(v45 + 8))(v50, v55);
            }
          }
        }
      }
    }
  }

  return result;
}

void SiriPaymentsSnippetModel.PaymentConfirmationModel.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v51 = a1;
  v75 = 0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO019PaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO019PaymentConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = &v16 - v55;
  v75 = MEMORY[0x28223BE20](v51, v2);
  v58 = v75[3];
  v59 = v75[4];
  __swift_project_boxed_opaque_existential_1(v75, v58);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys();
  v3 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v60 = v3;
  v61 = v3;
  if (v3)
  {
    v19 = v61;
    v20 = 0;
  }

  else
  {
    v74 = 0;
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    v46 = 0;
    v47 = v4;
    v48 = v5;
    v49 = 0;
    v76[0] = v4;
    v76[1] = v5;
    v73 = 1;
    v6 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = 0;
    v43 = v6;
    v44 = v7;
    v45 = 0;
    v77[0] = v6;
    v77[1] = v7;
    v72 = 2;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v38 = 0;
    v39 = v8;
    v40 = v9;
    v41 = 0;
    v78[0] = v8;
    v78[1] = v9;
    v71 = 3;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = 0;
    v35 = v10;
    v36 = v11;
    v37 = 0;
    v79[0] = v10;
    v79[1] = v11;
    v30 = &v68;
    v68 = 4;
    v12 = lazy protocol witness table accessor for type Data and conformance Data();
    v13 = v34;
    v31 = v12;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v13;
    v33 = v13;
    if (!v13)
    {
      v80[0] = v69;
      v80[1] = v70;
      v65 = 5;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v28 = 0;
      v29 = 0;
      v81[0] = v66;
      v81[1] = v67;
      v64 = 6;
      v14 = KeyedDecodingContainer.decode(_:forKey:)();
      v24 = 0;
      v25 = v14;
      v26 = v15;
      v27 = 0;
      v21 = v76;
      v81[2] = v14;
      v81[3] = v15;
      (*(v53 + 8))(v56, v52);
      v22 = v63;
      v23 = 112;
      memcpy(v63, v21, sizeof(v63));
      outlined init with copy of SiriPaymentsSnippetModel.PaymentConfirmationModel(v63, v62);
      __swift_destroy_boxed_opaque_existential_0(v51);
      outlined destroy of SiriPaymentsSnippetModel.PaymentConfirmationModel(v21);
      memcpy(v50, v22, v23);
      return;
    }

    v18 = v33;
    (*(v53 + 8))(v56, v52);
    v19 = v18;
    v20 = 15;
  }

  v17 = v20;
  v16 = v19;
  __swift_destroy_boxed_opaque_existential_0(v51);
  if (v17)
  {
    outlined destroy of String.UTF8View(v76);
  }

  if ((v17 & 2) != 0)
  {
    outlined destroy of String.UTF8View(v77);
  }

  if ((v17 & 4) != 0)
  {
    outlined destroy of String.UTF8View(v78);
  }

  if ((v17 & 8) != 0)
  {
    outlined destroy of String.UTF8View(v79);
  }

  if ((v17 & 0x10) != 0)
  {
    outlined destroy of Data(v80);
  }

  if ((v17 & 0x20) != 0)
  {
    outlined destroy of Data(v81);
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

void protocol witness for Decodable.init(from:) in conformance SiriPaymentsSnippetModel.PaymentConfirmationModel(void *a1@<X0>, void *a2@<X8>)
{
  SiriPaymentsSnippetModel.PaymentConfirmationModel.init(from:)(a1, __src);
  if (!v2)
  {
    memcpy(a2, __src, 0x70uLL);
  }
}

uint64_t SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;

  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appDescription", 0xEuLL, 1);
  v10 = a1;
  v11 = a2;
  v8 = MEMORY[0x26D620740](v12._countAndFlagsBits, v12._object, a1, a2);
  outlined destroy of String.UTF8View(&v12);
  if (v8)
  {

    v15 = 0;
    v5 = 0;
LABEL_6:

    return v5;
  }

  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("prompt", 6uLL, 1);
  v4 = MEMORY[0x26D620740](v9._countAndFlagsBits, v9._object, a1, a2);
  outlined destroy of String.UTF8View(&v9);
  if (v4)
  {

    v15 = 1;
    v5 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("prompt", 6uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appDescription", 0xEuLL, 1)._countAndFlagsBits;
  }
}

uint64_t SiriPaymentsSnippetModel.AppDisambiguationModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v21 = a2;
  v12 = a3;
  v13 = a4;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO017AppDisambiguationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO017AppDisambiguationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v15 = *(v23 - 8);
  v16 = v23 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v10 - v17;
  v35 = MEMORY[0x28223BE20](v14, v21);
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v18 = v35[3];
  v19 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v18);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();

  v26 = &v31;
  v31 = v21;
  v22 = &v30;
  v30 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriPaymentsIntents14AppDescriptionVGMd, &_sSay19SiriPaymentsIntents14AppDescriptionVGMR);
  lazy protocol witness table accessor for type [AppDescription] and conformance <A> [A]();
  v7 = v25;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v27 = v7;
  v28 = v7;
  if (v7)
  {
    v10[1] = v28;
    outlined destroy of [SFCardSection](&v31);
    return (*(v15 + 8))(v20, v23);
  }

  else
  {
    outlined destroy of [SFCardSection](&v31);
    v8 = v27;

    v29 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[3] = v8;
    v11 = v8;
    if (v8)
    {
      v10[0] = v11;
    }

    return (*(v15 + 8))(v20, v23);
  }
}

uint64_t SiriPaymentsSnippetModel.AppDisambiguationModel.init(from:)(void *a1)
{
  v24 = a1;
  v38 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO017AppDisambiguationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO017AppDisambiguationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = v7 - v28;
  v38 = MEMORY[0x28223BE20](v24, v1);
  v31 = v38[3];
  v32 = v38[4];
  __swift_project_boxed_opaque_existential_1(v38, v31);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys();
  v2 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v33 = v2;
  v34 = v2;
  if (v2)
  {
    v10 = v34;
    v11 = 0;
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriPaymentsIntents14AppDescriptionVGMd, &_sSay19SiriPaymentsIntents14AppDescriptionVGMR);
    v20 = &v36;
    v36 = 0;
    lazy protocol witness table accessor for type [AppDescription] and conformance <A> [A]();
    v3 = v33;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v3;
    v23 = v3;
    if (!v3)
    {
      v39[0] = v37;
      v35 = 1;
      v4 = KeyedDecodingContainer.decode(_:forKey:)();
      v16 = 0;
      v17 = v4;
      v18 = v5;
      v19 = 0;
      v14 = v5;
      v13 = v4;
      v12 = v39;

      v39[1] = v13;
      v39[2] = v14;
      (*(v26 + 8))(v29, v25);
      v15 = v39[0];

      __swift_destroy_boxed_opaque_existential_0(v24);
      outlined destroy of SiriPaymentsSnippetModel.AppDisambiguationModel(v12);
      return v15;
    }

    v9 = v23;
    (*(v26 + 8))(v29, v25);
    v10 = v9;
    v11 = 0;
  }

  v8 = v11;
  v7[3] = v10;
  __swift_destroy_boxed_opaque_existential_0(v24);
  if (v8)
  {
    outlined destroy of [SFCardSection](v39);
  }

  return v7[2];
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance SiriPaymentsSnippetModel.AppDisambiguationModel@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SiriPaymentsSnippetModel.AppDisambiguationModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v4;
    a2[2] = v5;
  }

  return result;
}

uint64_t SiriPaymentsSnippetModel.BinaryConfirmationModel.primaryButtonDI.getter()
{
  v2 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v2;
}

uint64_t SiriPaymentsSnippetModel.BinaryConfirmationModel.secondaryButtonDI.getter()
{
  v2 = *(v0 + 32);
  outlined copy of Data._Representation(v2, *(v0 + 40));
  return v2;
}

uint64_t SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;

  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("primaryButtonDI", 0xFuLL, 1);
  v18 = a1;
  v19 = a2;
  v10 = MEMORY[0x26D620740](v20._countAndFlagsBits, v20._object, a1, a2);
  outlined destroy of String.UTF8View(&v20);
  if (v10)
  {

    v23 = 0;
    v7 = 0;
LABEL_10:

    return v7;
  }

  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("primaryButtonLabel", 0x12uLL, 1);
  v15 = a1;
  v16 = a2;
  v6 = MEMORY[0x26D620740](v17._countAndFlagsBits, v17._object, a1, a2);
  outlined destroy of String.UTF8View(&v17);
  if (v6)
  {

    v23 = 1;
    v7 = 1;
    goto LABEL_10;
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("secondaryButtonDI", 0x11uLL, 1);
  v12 = a1;
  v13 = a2;
  v5 = MEMORY[0x26D620740](v14._countAndFlagsBits, v14._object, a1, a2);
  outlined destroy of String.UTF8View(&v14);
  if (v5)
  {

    v23 = 2;
    v7 = 2;
    goto LABEL_10;
  }

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("secondaryButtonLabel", 0x14uLL, 1);
  v4 = MEMORY[0x26D620740](v11._countAndFlagsBits, v11._object, a1, a2);
  outlined destroy of String.UTF8View(&v11);
  if (v4)
  {

    v23 = 3;
    v7 = 3;
    goto LABEL_10;
  }

  return 4;
}

BOOL static SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys.__derived_enum_equals(_:_:)(char a1, char a2)
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

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("primaryButtonDI", 0xFuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("primaryButtonLabel", 0x12uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("secondaryButtonDI", 0x11uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("secondaryButtonLabel", 0x14uLL, 1)._countAndFlagsBits;
  }
}

uint64_t SiriPaymentsSnippetModel.BinaryConfirmationModel.encode(to:)(uint64_t a1)
{
  v23 = a1;
  v47 = 0;
  v46 = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO018BinaryConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, _ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO018BinaryConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v24 = *(v32 - 8);
  v25 = v32 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = v9 - v26;
  v47 = MEMORY[0x28223BE20](v23, v2);
  v46 = v1;
  v27 = v47[3];
  v28 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v27);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v49 = *v30;
  outlined init with copy of Data(&v49, &v45);
  v34 = &v44;
  v44 = v49;
  v31 = &v43;
  v43 = 0;
  v3 = lazy protocol witness table accessor for type Data and conformance Data();
  v4 = v33;
  v35 = v3;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v36 = v4;
  v37 = v4;
  if (v4)
  {
    v11 = v37;
    outlined destroy of Data(&v44);
    result = (*(v24 + 8))(v29, v32);
    v12 = v11;
  }

  else
  {
    outlined destroy of Data(&v44);
    v5 = v36;
    v19 = *(v30 + 2);
    v20 = *(v30 + 3);

    v42 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v5;
    v22 = v5;
    if (v5)
    {
      v10 = v22;

      result = (*(v24 + 8))(v29, v32);
      v12 = v10;
    }

    else
    {

      v48 = v30[2];
      outlined init with copy of Data(&v48, &v41);
      v6 = v21;
      v40 = v48;
      v39 = 2;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v17 = v6;
      v18 = v6;
      if (v6)
      {
        v9[2] = v18;
        outlined destroy of Data(&v40);
        return (*(v24 + 8))(v29, v32);
      }

      else
      {
        outlined destroy of Data(&v40);
        v7 = v17;
        v13 = *(v30 + 6);
        v14 = *(v30 + 7);

        v38 = 3;
        KeyedEncodingContainer.encode(_:forKey:)();
        v15 = v7;
        v16 = v7;
        if (v7)
        {
          v9[1] = v16;
        }

        return (*(v24 + 8))(v29, v32);
      }
    }
  }

  return result;
}

void SiriPaymentsSnippetModel.BinaryConfirmationModel.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v33 = a1;
  v54 = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO018BinaryConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO018BinaryConfirmationH0V10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = &v10 - v37;
  v54 = MEMORY[0x28223BE20](v33, v2);
  v40 = v54[3];
  v41 = v54[4];
  __swift_project_boxed_opaque_existential_1(v54, v40);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys();
  v3 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v42 = v3;
  v43 = v3;
  if (v3)
  {
    v13 = v43;
    v14 = 0;
  }

  else
  {
    v28 = &v51;
    v51 = 0;
    v4 = lazy protocol witness table accessor for type Data and conformance Data();
    v5 = v42;
    v29 = v4;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = v5;
    v31 = v5;
    if (!v5)
    {
      v55[0] = v52;
      v55[1] = v53;
      v50 = 1;
      v6 = KeyedDecodingContainer.decode(_:forKey:)();
      v24 = 0;
      v25 = v6;
      v26 = v7;
      v27 = 0;
      v56[0] = v6;
      v56[1] = v7;
      v47 = 2;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v22 = 0;
      v23 = 0;
      v57[0] = v48;
      v57[1] = v49;
      v46 = 3;
      v8 = KeyedDecodingContainer.decode(_:forKey:)();
      v18 = 0;
      v19 = v8;
      v20 = v9;
      v21 = 0;
      v15 = v55;
      v57[2] = v8;
      v57[3] = v9;
      (*(v35 + 8))(v38, v34);
      v16 = __dst;
      v17 = 64;
      memcpy(__dst, v15, sizeof(__dst));
      outlined init with copy of SiriPaymentsSnippetModel.BinaryConfirmationModel(__dst, &v44);
      __swift_destroy_boxed_opaque_existential_0(v33);
      outlined destroy of SiriPaymentsSnippetModel.BinaryConfirmationModel(v15);
      memcpy(v32, v16, v17);
      return;
    }

    v12 = v31;
    (*(v35 + 8))(v38, v34);
    v13 = v12;
    v14 = 0;
  }

  v11 = v14;
  v10 = v13;
  __swift_destroy_boxed_opaque_existential_0(v33);
  if (v11)
  {
    outlined destroy of Data(v55);
  }

  if ((v11 & 2) != 0)
  {
    outlined destroy of String.UTF8View(v56);
  }

  if ((v11 & 4) != 0)
  {
    outlined destroy of Data(v57);
  }
}

BOOL SiriPaymentsSnippetModel.AppDisambiguationCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v8 = a2;

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_0", 2uLL, 1);
  v5 = MEMORY[0x26D620740](v6._countAndFlagsBits, v6._object, a1, a2);
  outlined destroy of String.UTF8View(&v6);

  return (v5 & 1) == 0;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

void protocol witness for Decodable.init(from:) in conformance SiriPaymentsSnippetModel.BinaryConfirmationModel(void *a1@<X0>, void *a2@<X8>)
{
  SiriPaymentsSnippetModel.BinaryConfirmationModel.init(from:)(a1, __src);
  if (!v2)
  {
    memcpy(a2, __src, 0x40uLL);
  }
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

BOOL protocol witness for CodingKey.init(stringValue:) in conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriPaymentsSnippetModel.AppDisambiguationCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SiriPaymentsSnippetModel.AppDisambiguationCodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;

  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("requestPaymentConfirmation", 0x1AuLL, 1);
  v18 = a1;
  v19 = a2;
  v10 = MEMORY[0x26D620740](v20._countAndFlagsBits, v20._object, a1, a2);
  outlined destroy of String.UTF8View(&v20);
  if (v10)
  {

    v23 = 0;
    v7 = 0;
LABEL_10:

    return v7;
  }

  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sendPaymentConfirmation", 0x17uLL, 1);
  v15 = a1;
  v16 = a2;
  v6 = MEMORY[0x26D620740](v17._countAndFlagsBits, v17._object, a1, a2);
  outlined destroy of String.UTF8View(&v17);
  if (v6)
  {

    v23 = 1;
    v7 = 1;
    goto LABEL_10;
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appDisambiguation", 0x11uLL, 1);
  v12 = a1;
  v13 = a2;
  v5 = MEMORY[0x26D620740](v14._countAndFlagsBits, v14._object, a1, a2);
  outlined destroy of String.UTF8View(&v14);
  if (v5)
  {

    v23 = 2;
    v7 = 2;
    goto LABEL_10;
  }

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binaryConfirmation", 0x12uLL, 1);
  v4 = MEMORY[0x26D620740](v11._countAndFlagsBits, v11._object, a1, a2);
  outlined destroy of String.UTF8View(&v11);
  if (v4)
  {

    v23 = 3;
    v7 = 3;
    goto LABEL_10;
  }

  return 4;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("requestPaymentConfirmation", 0x1AuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sendPaymentConfirmation", 0x17uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appDisambiguation", 0x11uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binaryConfirmation", 0x12uLL, 1)._countAndFlagsBits;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriPaymentsSnippetModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriPaymentsSnippetModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriPaymentsSnippetModel.encode(to:)(uint64_t a1)
{
  v74 = v94;
  v75 = a1;
  v94[1] = 0;
  v94[0] = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO28BinaryConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO28BinaryConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46, v2);
  v50 = &v19 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO27AppDisambiguationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO27AppDisambiguationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51, v3);
  v55 = &v19 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO33SendPaymentConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO33SendPaymentConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56, v4);
  v60 = &v19 - v59;
  v69 = 0;
  v61 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  v62 = (*(*(v61 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61, v5);
  v63 = &v19 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO36RequestPaymentConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO36RequestPaymentConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v69, v6);
  v68 = &v19 - v67;
  v70 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(v7);
  v71 = (*(*(v70 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v69, v8);
  v72 = &v19 - v71;
  v84 = type metadata accessor for SiriPaymentsSnippetModel(v9);
  v73 = (*(*(v84 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v84, v10);
  v85 = (&v19 - v73);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v75, v11);
  v80 = &v19 - v79;
  v13[1] = v12;
  *v13 = v1;
  v81 = v12[3];
  v82 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v81);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of SiriPaymentsSnippetModel(v83, v85);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      outlined init with take of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(v85, v72);
      v42 = &v87;
      v87 = 0;
      lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
      v14 = v45;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v43 = v14;
      v44 = v14;
      if (v14)
      {
        v22 = v44;
        (*(v65 + 8))(v68, v64);
        outlined destroy of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(v72);
        result = (*(v77 + 8))(v80, v76);
        v23 = v22;
        return result;
      }

      (*(v65 + 8))(v68, v64);
      outlined destroy of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(v72);
      v41 = v43;
      goto LABEL_13;
    case 1:
      outlined init with take of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(v85, v63);
      v38 = &v88;
      v88 = 1;
      lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
      v15 = v45;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v39 = v15;
      v40 = v15;
      if (v15)
      {
        v21 = v40;
        (*(v57 + 8))(v60, v56);
        outlined destroy of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(v63);
        result = (*(v77 + 8))(v80, v76);
        v23 = v21;
        return result;
      }

      (*(v57 + 8))(v60, v56);
      outlined destroy of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(v63);
      v41 = v39;
      goto LABEL_13;
    case 2:
      v32 = *v85;
      v33 = v85[1];
      v34 = v85[2];
      v31 = &v90;
      v90 = 2;
      lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v89;
      v89[0] = v32;
      v89[1] = v33;
      v89[2] = v34;
      lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel();
      v16 = v45;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v36 = v16;
      v37 = v16;
      if (v16)
      {
        v20 = v37;
        (*(v52 + 8))(v55, v51);

        result = (*(v77 + 8))(v80, v76);
        v23 = v20;
        return result;
      }

      (*(v52 + 8))(v55, v51);

      v41 = v36;
LABEL_13:
      v24 = v41;
      return (*(v77 + 8))(v80, v76);
  }

  v26 = __dst;
  v27 = 64;
  memcpy(__dst, v85, sizeof(__dst));
  v25 = &v92;
  v92 = 3;
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v28 = v91;
  memcpy(v91, v26, v27);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel();
  v17 = v45;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v29 = v17;
  v30 = v17;
  if (!v17)
  {
    (*(v47 + 8))(v50, v46);
    outlined destroy of SiriPaymentsSnippetModel.BinaryConfirmationModel(__dst);
    v41 = v29;
    goto LABEL_13;
  }

  v19 = v30;
  (*(v47 + 8))(v50, v46);
  outlined destroy of SiriPaymentsSnippetModel.BinaryConfirmationModel(__dst);
  return (*(v77 + 8))(v80, v76);
}

uint64_t *SiriPaymentsSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v135 = &v152;
  v99 = a2;
  v124 = a1;
  v155 = 0;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO28BinaryConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO28BinaryConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v101 = *(v100 - 8);
  v102 = v100 - 8;
  v103 = (*(v101 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v100, v2);
  v104 = v43 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO27AppDisambiguationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO27AppDisambiguationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v105, v3);
  v109 = v43 - v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO33SendPaymentConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO33SendPaymentConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v111 = *(v110 - 8);
  v112 = v110 - 8;
  v113 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v110, v4);
  v114 = v43 - v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO36RequestPaymentConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO36RequestPaymentConfirmationCodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v116 = *(v115 - 8);
  v117 = v115 - 8;
  v118 = (*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v115, v5);
  v119 = v43 - v118;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0dE12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v121 = *(v120 - 8);
  v122 = v120 - 8;
  v123 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v120, v6);
  v137 = v43 - v123;
  v125 = type metadata accessor for SiriPaymentsSnippetModel(0);
  v126 = (*(*(v125 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v124, v7);
  v127 = v43 - v126;
  v128 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8, v43 - v126);
  v129 = v43 - v128;
  v130 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v131 = v43 - v130;
  v132 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x28223BE20](v13, v43 - v130);
  v133 = v43 - v132;
  v134 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x28223BE20](v15, v43 - v132);
  v136 = v43 - v134;
  *(v135 + 10) = v17;
  v139 = v17[3];
  v140 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v139);
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.CodingKeys and conformance SiriPaymentsSnippetModel.CodingKeys();
  v18 = v138;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v141 = v18;
  v142 = v18;
  if (v18)
  {
    v60 = v142;
    goto LABEL_33;
  }

  v19 = KeyedDecodingContainer.allKeys.getter();
  v95 = &v154;
  *(v135 + 5) = v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriPaymentsIntents0aB12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_sSay19SiriPaymentsIntents0aB12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  lazy protocol witness table accessor for type [SiriPaymentsSnippetModel.CodingKeys] and conformance [A]();
  v20 = ArraySlice.init<A>(_:)();
  v21 = v135;
  *(v135 + 6) = v20;
  *(v21 + 7) = v22;
  *(v21 + 8) = v23;
  *(v21 + 9) = v24;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVy19SiriPaymentsIntents0cD12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss10ArraySliceVy19SiriPaymentsIntents0cD12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v97 = lazy protocol witness table accessor for type ArraySlice<SiriPaymentsSnippetModel.CodingKeys> and conformance ArraySlice<A>();
  Collection<>.popFirst()();
  v98 = v153;
  if (v153 == 4 || (v93 = v98, v87 = v98, v91 = *(v135 + 6), v88 = *(v135 + 7), v89 = *(v135 + 8), v90 = *(v135 + 9), swift_unknownObjectRetain(), v25 = v88, v26 = v89, v27 = v135, v28 = v90, *v135 = v91, *(v27 + 1) = v25, *(v27 + 2) = v26, *(v27 + 3) = v28, v92 = Collection.isEmpty.getter(), swift_unknownObjectRelease(), (v92 & 1) == 0))
  {
    v54 = 0;
    v58 = type metadata accessor for DecodingError();
    v52 = 1;
    v59 = swift_allocError();
    v57 = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    v53 = v57 + *(v42 + 48);
    *v57 = v125;
    v55 = KeyedDecodingContainer.codingPath.getter();
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Invalid number of keys found, expected one.", 0x2BuLL, v52 & 1)._countAndFlagsBits;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v58 - 8) + 104))(v57, *MEMORY[0x277D84160]);
    swift_willThrow();
    outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>();
    (*(v121 + 8))(v137, v120);
    v60 = v59;
    goto LABEL_33;
  }

  if (!v87)
  {
    v84 = &v143;
    v143 = 0;
    lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys();
    v29 = v141;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v85 = v29;
    v86 = v29;
    if (v29)
    {
      v51 = v86;
      outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>();
      (*(v121 + 8))(v137, v120);
      v60 = v51;
      goto LABEL_33;
    }

    v81 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
    lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel();
    v30 = v85;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v82 = v30;
    v83 = v30;
    if (v30)
    {
      v50 = v83;
      (*(v116 + 8))(v119, v115);
      outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>();
      (*(v121 + 8))(v137, v120);
      v60 = v50;
      goto LABEL_33;
    }

    swift_storeEnumTagMultiPayload();
    outlined init with take of SiriPaymentsSnippetModel(v133, v136);
    (*(v116 + 8))(v119, v115);
    v80 = v82;
LABEL_22:
    v61 = v80;
    outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>();
    (*(v121 + 8))(v137, v120);
    outlined init with copy of SiriPaymentsSnippetModel(v136, v99);
    __swift_destroy_boxed_opaque_existential_0(v124);
    return outlined destroy of SiriPaymentsSnippetModel(v136);
  }

  if (v87 == 1)
  {
    v77 = &v144;
    v144 = v87;
    lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys();
    v31 = v141;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v78 = v31;
    v79 = v31;
    if (v31)
    {
      v49 = v79;
      outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>();
      (*(v121 + 8))(v137, v120);
      v60 = v49;
      goto LABEL_33;
    }

    v74 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
    lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel();
    v32 = v78;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v75 = v32;
    v76 = v32;
    if (v32)
    {
      v48 = v76;
      (*(v111 + 8))(v114, v110);
      outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>();
      (*(v121 + 8))(v137, v120);
      v60 = v48;
      goto LABEL_33;
    }

    swift_storeEnumTagMultiPayload();
    outlined init with take of SiriPaymentsSnippetModel(v131, v136);
    (*(v111 + 8))(v114, v110);
    v80 = v75;
    goto LABEL_22;
  }

  if (v87 == 2)
  {
    v71 = &v148;
    v148 = v87;
    lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationCodingKeys and conformance SiriPaymentsSnippetModel.AppDisambiguationCodingKeys();
    v33 = v141;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v72 = v33;
    v73 = v33;
    if (v33)
    {
      v47 = v73;
      outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>();
      (*(v121 + 8))(v137, v120);
      v60 = v47;
      goto LABEL_33;
    }

    lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel();
    v34 = v72;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v69 = v34;
    v70 = v34;
    if (v34)
    {
      v46 = v70;
      (*(v106 + 8))(v109, v105);
      outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>();
      (*(v121 + 8))(v137, v120);
      v60 = v46;
      goto LABEL_33;
    }

    v35 = v129;
    v36 = v146;
    v37 = v147;
    *v129 = v145;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    swift_storeEnumTagMultiPayload();
    outlined init with take of SiriPaymentsSnippetModel(v129, v136);
    (*(v106 + 8))(v109, v105);
    v80 = v69;
    goto LABEL_22;
  }

  v66 = &v151;
  v151 = v87;
  lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys and conformance SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys();
  v38 = v141;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v67 = v38;
  v68 = v38;
  if (v38)
  {
    v45 = v68;
    outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>();
    (*(v121 + 8))(v137, v120);
    v60 = v45;
  }

  else
  {
    lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel();
    v39 = v67;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v64 = v39;
    v65 = v39;
    if (!v39)
    {
      v62 = __dst;
      v63 = 64;
      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v127, __dst, 0x40uLL);
      swift_storeEnumTagMultiPayload();
      outlined init with take of SiriPaymentsSnippetModel(v127, v136);
      (*(v101 + 8))(v104, v100);
      v80 = v64;
      goto LABEL_22;
    }

    v44 = v65;
    (*(v101 + 8))(v104, v100);
    outlined destroy of ArraySlice<SiriPaymentsSnippetModel.CodingKeys>();
    (*(v121 + 8))(v137, v120);
    v60 = v44;
  }

LABEL_33:
  v43[1] = v60;
  return __swift_destroy_boxed_opaque_existential_0(v124);
}

uint64_t AppDescription.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;

  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appName", 7uLL, 1);
  v10 = a1;
  v11 = a2;
  v8 = MEMORY[0x26D620740](v12._countAndFlagsBits, v12._object, a1, a2);
  outlined destroy of String.UTF8View(&v12);
  if (v8)
  {

    v15 = 0;
    v5 = 0;
LABEL_6:

    return v5;
  }

  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appBundleId", 0xBuLL, 1);
  v4 = MEMORY[0x26D620740](v9._countAndFlagsBits, v9._object, a1, a2);
  outlined destroy of String.UTF8View(&v9);
  if (v4)
  {

    v15 = 1;
    v5 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t lazy protocol witness table accessor for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

uint64_t AppDescription.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appBundleId", 0xBuLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appName", 7uLL, 1)._countAndFlagsBits;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppDescription.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppDescription.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t AppDescription.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v24 = a2;
  v25 = a3;
  v14 = a4;
  v15 = a5;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents14AppDescriptionV10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents14AppDescriptionV10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v17 = *(v26 - 8);
  v18 = v26 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = v12 - v19;
  v33 = MEMORY[0x28223BE20](v16, v24);
  *&v31 = v5;
  *(&v31 + 1) = v6;
  *&v32 = v7;
  *(&v32 + 1) = v8;
  v20 = v33[3];
  v21 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v20);
  lazy protocol witness table accessor for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v23;

  v30 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  v27 = v9;
  v28 = v9;
  if (v9)
  {
    v12[2] = v28;

    return (*(v17 + 8))(v22, v26);
  }

  else
  {

    v10 = v27;

    v29 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[4] = v10;
    v13 = v10;
    if (v10)
    {
      v12[1] = v13;
    }

    return (*(v17 + 8))(v22, v26);
  }
}

uint64_t AppDescription.init(from:)(void *a1)
{
  v25 = a1;
  v38 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents14AppDescriptionV10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents14AppDescriptionV10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = v8 - v29;
  v38 = MEMORY[0x28223BE20](v25, v1);
  v32 = v38[3];
  v33 = v38[4];
  __swift_project_boxed_opaque_existential_1(v38, v32);
  lazy protocol witness table accessor for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys();
  v2 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v34 = v2;
  v35 = v2;
  if (v2)
  {
    v10 = v35;
    v11 = 0;
    v9 = 0;
    v8[2] = v35;
    __swift_destroy_boxed_opaque_existential_0(v25);
    if (v9)
    {
      outlined destroy of String.UTF8View(&v39);
    }

    return v8[0];
  }

  else
  {
    v37 = 0;
    v3 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = 0;
    v22 = v3;
    v23 = v4;
    v24 = 0;
    v39 = v3;
    v40 = v4;
    v36 = 1;
    v5 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = 0;
    v18 = v5;
    v19 = v6;
    v20 = 0;
    v15 = v6;
    v14 = v5;
    v12 = &v39;

    v41 = v14;
    v42 = v15;
    (*(v27 + 8))(v30, v26);
    v16 = v39;
    v13 = v40;

    __swift_destroy_boxed_opaque_existential_0(v25);
    outlined destroy of DIIdentifier(v12);
    return v16;
  }
}

uint64_t protocol witness for Decodable.init(from:) in conformance AppDescription@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AppDescription.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
  }

  return result;
}

uint64_t static SABaseCommand.from(data:)(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v21[2] = 0;
  v23 = a1;
  v24 = a2;
  v22 = 0;
  v16 = objc_opt_self();
  outlined copy of Data._Representation(a1, a2);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(a1, a2);
  type metadata accessor for NSPropertyListMutabilityOptions(0);
  _allocateUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v21[0] = 0;
  v19 = [v16 propertyListWithData:isa options:v21[1] format:0 error:v21];
  v17 = v21[0];
  MEMORY[0x277D82BE0](v21[0]);
  v2 = v22;
  v22 = v17;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](isa);
  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    if (swift_dynamicCast())
    {
      v13 = v20;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      swift_unknownObjectRelease();
      v10 = objc_opt_self();

      v11 = Dictionary._bridgeToObjectiveC()().super.isa;

      v12 = [v10 aceObjectWithDictionary_];
      MEMORY[0x277D82BD8](v11);
      if (v12)
      {
        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          v8 = v9;
        }

        else
        {
          MEMORY[0x277D82BD8](v12);
          v8 = 0;
        }

        v7 = v8;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return v7;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    v4 = v22;
    v5 = _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](v4);
    swift_willThrow();
    MEMORY[0x26D621420](v5);

    return 0;
  }
}

uint64_t type metadata accessor for SiriPaymentsSnippetModel(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SiriPaymentsSnippetModel;
  if (!type metadata singleton initialization cache for SiriPaymentsSnippetModel)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for SiriPaymentsSnippetModel(uint64_t a1)
{
  v4 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(319);
  if (v1 <= 0x3F)
  {
    v4 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_26883B618(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 20), a2, v5);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v4 = -1;
      if (*(a1 + *(a3 + 24) + 8) < 0x100000000uLL)
      {
        v4 = *(a1 + *(a3 + 24) + 8);
      }

      return (v4 + 1);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_26883B80C(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t type metadata completion function for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(uint64_t a1)
{
  v4 = type metadata accessor for CodableIntent<INRequestPaymentIntent>(319);
  if (v1 <= 0x3F)
  {
    v4 = type metadata accessor for CodableIntentResponse<INRequestPaymentIntentResponse>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t type metadata accessor for CodableIntent<INRequestPaymentIntent>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CodableIntent<INRequestPaymentIntent>;
  if (!lazy cache variable for type metadata for CodableIntent<INRequestPaymentIntent>)
  {
    type metadata accessor for INRequestPaymentIntent();
    v4 = type metadata accessor for CodableIntent();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for CodableIntent<INRequestPaymentIntent>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CodableIntentResponse<INRequestPaymentIntentResponse>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CodableIntentResponse<INRequestPaymentIntentResponse>;
  if (!lazy cache variable for type metadata for CodableIntentResponse<INRequestPaymentIntentResponse>)
  {
    type metadata accessor for INRequestPaymentIntentResponse();
    v4 = type metadata accessor for CodableIntentResponse();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for CodableIntentResponse<INRequestPaymentIntentResponse>);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_26883BC04(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 20), a2, v5);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v4 = -1;
      if (*(a1 + *(a3 + 24) + 8) < 0x100000000uLL)
      {
        v4 = *(a1 + *(a3 + 24) + 8);
      }

      return (v4 + 1);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_26883BDF8(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t type metadata completion function for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(uint64_t a1)
{
  v4 = type metadata accessor for CodableIntent<INSendPaymentIntent>(319);
  if (v1 <= 0x3F)
  {
    v4 = type metadata accessor for CodableIntentResponse<INSendPaymentIntentResponse>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t type metadata accessor for CodableIntent<INSendPaymentIntent>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CodableIntent<INSendPaymentIntent>;
  if (!lazy cache variable for type metadata for CodableIntent<INSendPaymentIntent>)
  {
    type metadata accessor for INSendPaymentIntent();
    v4 = type metadata accessor for CodableIntent();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for CodableIntent<INSendPaymentIntent>);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CodableIntentResponse<INSendPaymentIntentResponse>(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CodableIntentResponse<INSendPaymentIntentResponse>;
  if (!lazy cache variable for type metadata for CodableIntentResponse<INSendPaymentIntentResponse>)
  {
    type metadata accessor for INSendPaymentIntentResponse();
    v4 = type metadata accessor for CodableIntentResponse();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for CodableIntentResponse<INSendPaymentIntentResponse>);
      return v2;
    }
  }

  return v5;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(void *a1)
{
  if ((HIBYTE(a1[1]) >> 6) < 3u)
  {
    return HIBYTE(a1[1]) >> 6;
  }

  else
  {
    return *a1 + 3;
  }
}

uint64_t getEnumTagSinglePayload for SiriPaymentsSnippetModel.PaymentConfirmationModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriPaymentsSnippetModel.PaymentConfirmationModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF9)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 6) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 249;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 7;
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

_BYTE *storeEnumTagSinglePayload for SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF9)
  {
    v5 = ((a3 + 6) >> 8) + 1;
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

  if (a2 > 0xF9)
  {
    v4 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
      *result = a2 + 6;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t getEnumTagSinglePayload for SiriPaymentsSnippetModel.AppDisambiguationModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriPaymentsSnippetModel.AppDisambiguationModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriPaymentsSnippetModel.BinaryConfirmationModel(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 24) < 0x100000000uLL)
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriPaymentsSnippetModel.BinaryConfirmationModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriPaymentsSnippetModel.RequestPaymentConfirmationCodingKeys(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.BinaryConfirmationModel and conformance SiriPaymentsSnippetModel.BinaryConfirmationModel);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.AppDisambiguationModel and conformance SiriPaymentsSnippetModel.AppDisambiguationModel);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel)
  {
    type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel)
  {
    type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.SendPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.SendPaymentConfirmationModel);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel)
  {
    type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel)
  {
    type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.RequestPaymentConfirmationModel and conformance SiriPaymentsSnippetModel.RequestPaymentConfirmationModel);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [SiriPaymentsSnippetModel.CodingKeys] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SiriPaymentsSnippetModel.CodingKeys] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SiriPaymentsSnippetModel.CodingKeys] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents0aB12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_sSay19SiriPaymentsIntents0aB12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SiriPaymentsSnippetModel.CodingKeys] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<SiriPaymentsSnippetModel.CodingKeys> and conformance ArraySlice<A>()
{
  v2 = lazy protocol witness table cache variable for type ArraySlice<SiriPaymentsSnippetModel.CodingKeys> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<SiriPaymentsSnippetModel.CodingKeys> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVy19SiriPaymentsIntents0cD12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMd, &_ss10ArraySliceVy19SiriPaymentsIntents0cD12SnippetModelO10CodingKeys33_2A5FE8696FF126B7EA6A6F4EA8B5BF5FLLOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<SiriPaymentsSnippetModel.CodingKeys> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined init with take of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
  (*(*(v2 - 8) + 32))(a2, a1);
  v6 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  v5 = *(v6 + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
  (*(*(v3 - 8) + 32))(a2 + v5, a1 + v5);
  memcpy((a2 + *(v6 + 24)), (a1 + *(v6 + 24)), 0x70uLL);
  return a2;
}

uint64_t outlined init with take of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
  (*(*(v2 - 8) + 32))(a2, a1);
  v6 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  v5 = *(v6 + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
  (*(*(v3 - 8) + 32))(a2 + v5, a1 + v5);
  memcpy((a2 + *(v6 + 24)), (a1 + *(v6 + 24)), 0x70uLL);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>()
{
  v2 = lazy protocol witness table cache variable for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>;
  if (!lazy protocol witness table cache variable for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>;
  if (!lazy protocol witness table cache variable for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIntent<INRequestPaymentIntent> and conformance CodableIntent<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>()
{
  v2 = lazy protocol witness table cache variable for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>;
  if (!lazy protocol witness table cache variable for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>;
  if (!lazy protocol witness table cache variable for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIntentResponse<INRequestPaymentIntentResponse> and conformance CodableIntentResponse<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel()
{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel;
  if (!lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SiriPaymentsSnippetModel.PaymentConfirmationModel and conformance SiriPaymentsSnippetModel.PaymentConfirmationModel);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>()
{
  v2 = lazy protocol witness table cache variable for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>;
  if (!lazy protocol witness table cache variable for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>;
  if (!lazy protocol witness table cache variable for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIntent<INSendPaymentIntent> and conformance CodableIntent<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>()
{
  v2 = lazy protocol witness table cache variable for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>;
  if (!lazy protocol witness table cache variable for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>;
  if (!lazy protocol witness table cache variable for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CodableIntentResponse<INSendPaymentIntentResponse> and conformance CodableIntentResponse<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  v2 = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Data and conformance Data);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Data and conformance Data);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined init with copy of Data(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  outlined copy of Data._Representation(*a1, v4);
  result = a2;
  *a2 = v3;
  a2[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type [AppDescription] and conformance <A> [A]()
{
  v2 = lazy protocol witness table cache variable for type [AppDescription] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AppDescription] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents14AppDescriptionVGMd, &_sSay19SiriPaymentsIntents14AppDescriptionVGMR);
    lazy protocol witness table accessor for type AppDescription and conformance AppDescription();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [AppDescription] and conformance <A> [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [AppDescription] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AppDescription] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents14AppDescriptionVGMd, &_sSay19SiriPaymentsIntents14AppDescriptionVGMR);
    lazy protocol witness table accessor for type AppDescription and conformance AppDescription();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [AppDescription] and conformance <A> [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AppDescription and conformance AppDescription()
{
  v2 = lazy protocol witness table cache variable for type AppDescription and conformance AppDescription;
  if (!lazy protocol witness table cache variable for type AppDescription and conformance AppDescription)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AppDescription and conformance AppDescription);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AppDescription and conformance AppDescription;
  if (!lazy protocol witness table cache variable for type AppDescription and conformance AppDescription)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AppDescription and conformance AppDescription);
    return WitnessTable;
  }

  return v2;
}

uint64_t PaymentsError.errorDescription.getter()
{
  v279 = 0;
  v280 = 0;
  v273 = 0;
  v274 = 0;
  v267 = 0;
  v268 = 0;
  v261 = 0;
  v262 = 0;
  v256 = 0;
  v257 = 0;
  v250 = 0;
  v251 = 0;
  v244 = 0;
  v245 = 0;
  v238 = 0;
  v239 = 0;
  v236 = 0;
  v237 = 0;
  v234 = 0;
  v235 = 0;
  v224 = 0;
  v225 = 0;
  v222 = 0;
  v223 = 0;
  v214 = 0;
  v215 = 0;
  v208 = 0;
  v209 = 0;
  v202 = 0;
  v203 = 0;
  v200 = 0;
  v201 = 0;
  v192 = 0;
  v193 = 0;
  v186 = 0;
  v187 = 0;
  v184 = 0;
  v185 = 0;
  v176 = 0;
  v177 = 0;
  v174 = 0;
  v175 = 0;
  v166 = 0;
  v167 = 0;
  v160 = 0;
  v161 = 0;
  v281 = v0;
  memcpy(__dst, v0, 0x31uLL);
  switch(LOBYTE(__dst[6]))
  {
    case 1:
      v147 = __dst[0];
      v150 = __dst[1];

      v166 = v147;
      v167 = v150;
      v164 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v165 = v4;
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unable to extract ", 0x12uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](countAndFlagsBits);

      v162 = v147;
      v163 = v150;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from provided userData", 0x17uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v6);

      v149 = v164;
      v148 = v165;

      outlined destroy of String.UTF8View(&v164);
      v151 = MEMORY[0x26D620710](v149, v148);

      v157 = v151;
      break;
    case 2:
      v140 = __dst[0];
      v145 = __dst[1];
      v141 = __dst[2];
      v144 = __dst[3];

      v176 = v140;
      v177 = v145;
      v174 = v141;
      v175 = v144;
      v172 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v173 = v7;
      v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered invalid parameter: ", 0x1FuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v8);

      v170 = v140;
      v171 = v145;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" for intent: ", 0xDuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v9);

      v168 = v141;
      v169 = v144;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v10);

      v143 = v172;
      v142 = v173;

      outlined destroy of String.UTF8View(&v172);
      v146 = MEMORY[0x26D620710](v143, v142);

      v157 = v146;
      break;
    case 3:
      v133 = __dst[0];
      v138 = __dst[1];
      v134 = __dst[2];
      v137 = __dst[3];

      v186 = v133;
      v187 = v138;
      v184 = v134;
      v185 = v137;
      v182 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v183 = v11;
      v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered invalid unsupported reason: ", 0x28uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v12);

      v180 = v133;
      v181 = v138;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" for intent: ", 0xDuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v13);

      v178 = v134;
      v179 = v137;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v14);

      v136 = v182;
      v135 = v183;

      outlined destroy of String.UTF8View(&v182);
      v139 = MEMORY[0x26D620710](v136, v135);

      v157 = v139;
      break;
    case 4:
      v128 = __dst[0];
      v131 = __dst[1];

      v192 = v128;
      v193 = v131;
      v190 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v191 = v15;
      v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IntentHandler encountered invalid intent type: ", 0x2FuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v16);

      v188 = v128;
      v189 = v131;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v17);

      v130 = v190;
      v129 = v191;

      outlined destroy of String.UTF8View(&v190);
      v132 = MEMORY[0x26D620710](v130, v129);

      v157 = v132;
      break;
    case 5:
      v121 = __dst[0];
      v126 = __dst[1];
      v122 = __dst[2];
      v125 = __dst[3];

      v202 = v121;
      v203 = v126;
      v200 = v122;
      v201 = v125;
      v198 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v199 = v18;
      v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered error when transforming from ", 0x29uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v19);

      v196 = v121;
      v197 = v126;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v20);

      v194 = v122;
      v195 = v125;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v21);

      v124 = v198;
      v123 = v199;

      outlined destroy of String.UTF8View(&v198);
      v127 = MEMORY[0x26D620710](v124, v123);

      v157 = v127;
      break;
    case 6:
      v116 = __dst[0];
      v119 = __dst[1];

      v208 = v116;
      v209 = v119;
      v206 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v207 = v22;
      v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Error occurred when executing CAT: ", 0x23uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v23);

      v204 = v116;
      v205 = v119;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v24);

      v118 = v206;
      v117 = v207;

      outlined destroy of String.UTF8View(&v206);
      v120 = MEMORY[0x26D620710](v118, v117);

      v157 = v120;
      break;
    case 7:
      v111 = __dst[0];
      v114 = __dst[1];

      v214 = v111;
      v215 = v114;
      v212 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v213 = v25;
      v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered unexpected parse type: ", 0x23uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v26);

      v210 = v111;
      v211 = v114;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v27);

      v113 = v212;
      v112 = v213;

      outlined destroy of String.UTF8View(&v212);
      v115 = MEMORY[0x26D620710](v113, v112);

      v157 = v115;
      break;
    case 8:
      v104 = __dst[0];
      v109 = __dst[1];
      v105 = __dst[2];
      v108 = __dst[3];

      v224 = v104;
      v225 = v109;
      v222 = v105;
      v223 = v108;
      v220 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v221 = v28;
      v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered invalid slot ", 0x19uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v29);

      v218 = v104;
      v219 = v109;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" for intent ", 0xCuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v30);

      v216 = v105;
      v217 = v108;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v31);

      v107 = v220;
      v106 = v221;

      outlined destroy of String.UTF8View(&v220);
      v110 = MEMORY[0x26D620710](v107, v106);

      v157 = v110;
      break;
    case 9:
      v96 = __dst[0];
      v102 = __dst[1];
      v95 = __dst[2];
      v101 = __dst[3];
      v97 = __dst[4];
      v100 = __dst[5];

      v238 = v96;
      v239 = v102;
      v236 = v95;
      v237 = v101;
      v234 = v97;
      v235 = v100;
      v232 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v233 = v32;
      v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered invalid value ", 0x1AuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v33);

      v230 = v95;
      v231 = v101;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" for slot ", 0xAuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v34);

      v228 = v96;
      v229 = v102;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" in intent ", 0xBuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v35);

      v226 = v97;
      v227 = v100;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v36);

      v99 = v232;
      v98 = v233;

      outlined destroy of String.UTF8View(&v232);
      v103 = MEMORY[0x26D620710](v99, v98);

      v157 = v103;
      break;
    case 0xA:
      v90 = __dst[0];
      v93 = __dst[1];

      v244 = v90;
      v245 = v93;
      v242 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v243 = v37;
      v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to convert PaymentsNLIntent to ", 0x26uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v38);

      v240 = v90;
      v241 = v93;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v39);

      v92 = v242;
      v91 = v243;

      outlined destroy of String.UTF8View(&v242);
      v94 = MEMORY[0x26D620710](v92, v91);

      v157 = v94;
      break;
    case 0xB:
      v85 = __dst[0];
      v88 = __dst[1];

      v250 = v85;
      v251 = v88;
      v248 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v249 = v40;
      v41 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to get slot description for ", 0x23uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v41);

      v246 = v85;
      v247 = v88;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v42);

      v87 = v248;
      v86 = v249;

      outlined destroy of String.UTF8View(&v248);
      v89 = MEMORY[0x26D620710](v87, v86);

      v157 = v89;
      break;
    case 0xC:
      v80 = __dst[0];
      v83 = __dst[1];

      v256 = v80;
      v257 = v83;
      v254 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v255 = v43;
      v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to get paymentRecord for ", 0x20uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v44);

      v252 = v80;
      v253 = v83;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v45 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v45);

      v82 = v254;
      v81 = v255;

      outlined destroy of String.UTF8View(&v254);
      v84 = MEMORY[0x26D620710](v82, v81);

      v157 = v84;
      break;
    case 0xD:
      v75 = __dst[0];
      v78 = __dst[1];

      v261 = v75;
      v262 = v78;
      v259 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v260 = v46;
      v47 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to resolve disambiguation selection from personID: ", 0x3AuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v47);

      v258[2] = v75;
      v258[3] = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v258[0] = String.init<A>(describing:)();
      v258[1] = v48;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      outlined destroy of String.UTF8View(v258);
      v49 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v49);

      v77 = v259;
      v76 = v260;

      outlined destroy of String.UTF8View(&v259);
      v79 = MEMORY[0x26D620710](v77, v76);

      v157 = v79;
      break;
    case 0xE:
      v70 = __dst[0];
      v73 = __dst[1];

      v267 = v70;
      v268 = v73;
      v265 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v266 = v50;
      v51 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered unknown parameter: ", 0x1FuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v51);

      v263 = v70;
      v264 = v73;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v52 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v52);

      v72 = v265;
      v71 = v266;

      outlined destroy of String.UTF8View(&v265);
      v74 = MEMORY[0x26D620710](v72, v71);

      v157 = v74;
      break;
    case 0xF:
      v65 = __dst[0];
      v68 = __dst[1];

      v273 = v65;
      v274 = v68;
      v271 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v272 = v53;
      v54 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to obtain TCC confirmation response from user input for intent ", 0x46uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v54);

      v269 = v65;
      v270 = v68;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v55 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v55);

      v67 = v271;
      v66 = v272;

      outlined destroy of String.UTF8View(&v271);
      v69 = MEMORY[0x26D620710](v67, v66);

      v157 = v69;
      break;
    case 0x10:
      v60 = __dst[0];
      v63 = __dst[1];

      v279 = v60;
      v280 = v63;
      v277 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v278 = v56;
      v57 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered invalid intent type while trying to create error template: ", 0x47uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v57);

      v275 = v60;
      v276 = v63;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v58 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v58);

      v62 = v277;
      v61 = v278;

      outlined destroy of String.UTF8View(&v277);
      v64 = MEMORY[0x26D620710](v62, v61);

      v157 = v64;
      break;
    case 0x11:
      if (__dst[0] || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
      {
        if (__dst[0] != 1 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
        {
          if (__dst[0] != 2 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
          {
            if (__dst[0] != 3 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
            {
              if (__dst[0] != 4 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
              {
                if (__dst[0] != 5 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
                {
                  if (__dst[0] != 6 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
                  {
                    if (__dst[0] != 7 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
                    {
                      if (__dst[0] != 8 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
                      {
                        if (__dst[0] != 9 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
                        {
                          if (__dst[0] != 10 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
                          {
                            if (__dst[0] != 11 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
                            {
                              __break(1u);
                              goto LABEL_75;
                            }

                            v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("The child override should have been invoked", 0x2BuLL, 1)._countAndFlagsBits;
                          }

                          else
                          {
                            v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to obtain an app identifier during app resolution", 0x38uLL, 1)._countAndFlagsBits;
                          }
                        }

                        else
                        {
                          v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered an unspecified error", 0x20uLL, 1)._countAndFlagsBits;
                        }
                      }

                      else
                      {
                        v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to convert disambiguation item to INObject", 0x31uLL, 1)._countAndFlagsBits;
                      }
                    }

                    else
                    {
                      v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Received unexpected disambiguation item type", 0x2CuLL, 1)._countAndFlagsBits;
                    }
                  }

                  else
                  {
                    v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to get contactID from USO Identifiers", 0x2CuLL, 1)._countAndFlagsBits;
                  }
                }

                else
                {
                  v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to get NLUUserDialogAct from parse", 0x29uLL, 1)._countAndFlagsBits;
                }
              }

              else
              {
                v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to convert Parse to PaymentsNLIntent.", 0x2CuLL, 1)._countAndFlagsBits;
              }
            }

            else
            {
              v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to cast Any itemToConfirm to [INPerson]", 0x2EuLL, 1)._countAndFlagsBits;
            }
          }

          else
          {
            v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to cast Any disambiguation items to [INPerson]", 0x35uLL, 1)._countAndFlagsBits;
          }
        }

        else
        {
          v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered invalid SiriKit intent", 0x22uLL, 1)._countAndFlagsBits;
        }
      }

      else
      {
        v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to convert direct invocation", 0x23uLL, 1)._countAndFlagsBits;
      }

      break;
    default:
LABEL_75:
      v152 = __dst[0];
      v155 = __dst[1];

      v160 = v152;
      v161 = v155;
      v158 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v159 = v1;
      v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Received direct invocation we cannot handle: ", 0x2DuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v2);

      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v3);

      v154 = v158;
      v153 = v159;

      outlined destroy of String.UTF8View(&v158);
      v156 = MEMORY[0x26D620710](v154, v153);

      v157 = v156;
      break;
  }

  return v157;
}

uint64_t get_enum_tag_for_layout_string_19SiriPaymentsIntents0B5ErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 0x1Fu) < 0x11)
  {
    return *(a1 + 48) & 0x1F;
  }

  else
  {
    return *a1 + 17;
  }
}

uint64_t getEnumTagSinglePayload for PaymentsError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xEF && *(a1 + 49))
    {
      v4 = *a1 + 238;
    }

    else
    {
      v2 = *(a1 + 48) ^ 0xFF;
      if (v2 >= 0xEE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PaymentsError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 49);
  if (a2 > 0xEE)
  {
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 239;
    *(result + 48) = 0;
    if (a3 >= 0xEF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xEF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PaymentsError(uint64_t result, unsigned int a2)
{
  if (a2 < 0x11)
  {
    *(result + 48) = a2;
  }

  else
  {
    *result = a2 - 17;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 17;
  }

  return result;
}

uint64_t PaymentsAppLister.listApps(intentID:siriAuthorizationRestriction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v4[8] = a3;
  v4[6] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[7] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[7] = a3;
  return MEMORY[0x2822009F8](PaymentsAppLister.listApps(intentID:siriAuthorizationRestriction:), 0);
}

uint64_t PaymentsAppLister.listApps(intentID:siriAuthorizationRestriction:)()
{
  v8 = v0[9];
  v0[6] = v0;
  v0[4] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v0[5] = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  DefaultStringInterpolation.appendInterpolation(_:)(v8);
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v3);

  v10 = v0[4];
  v9 = v0[5];

  outlined destroy of String.UTF8View((v0 + 4));
  v13 = MEMORY[0x26D620710](v10, v9);
  v12 = v4;
  v0[10] = v4;
  v5 = swift_task_alloc();
  v11[11] = v5;
  *v5 = v11[6];
  v5[1] = PaymentsAppLister.listApps(intentID:siriAuthorizationRestriction:);
  v6 = v11[8];

  return MEMORY[0x2821B6980](v13, v12, v6);
}

uint64_t PaymentsAppLister.listApps(intentID:siriAuthorizationRestriction:)(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 48) = *v1;

  v2 = *(*(v4 + 48) + 8);

  return v2(a1);
}

uint64_t protocol witness for PaymentsAppListing.listApps(intentID:siriAuthorizationRestriction:) in conformance PaymentsAppLister<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v9 + 24) = v5;
  v6 = *(a4 + 16);
  *v5 = *(v9 + 16);
  v5[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>;

  return PaymentsAppLister.listApps(intentID:siriAuthorizationRestriction:)(a1, a2, a3, v6);
}

uint64_t UsoTask.eraseToAny.getter()
{

  static UsoTask_CodegenConverter.convert(task:)();
}

unint64_t UsoTask.siriKitIntentType.getter()
{
  v148 = 0;
  v123 = 0;
  v124 = type metadata accessor for Logger();
  v125 = *(v124 - 8);
  v126 = v125;
  v129 = *(v125 + 64);
  MEMORY[0x28223BE20](v124 - 8, v124);
  v131 = (v129 + 15) & 0xFFFFFFFFFFFFFFF0;
  v127 = &v25 - v131;
  MEMORY[0x28223BE20](&v25 - v131, v1);
  v128 = &v25 - v131;
  MEMORY[0x28223BE20](&v25 - v131, v2);
  v130 = &v25 - v131;
  MEMORY[0x28223BE20](&v25 - v131, v3);
  v132 = &v25 - v131;
  v148 = v0;
  UsoTask.eraseToAny.getter();
  if (v147[3])
  {
    v122 = v143;
    outlined init with copy of Any?(v147, v143);
    v121 = 0;
    type metadata accessor for UsoTask_requestMoney_common_Payment();
    if (swift_dynamicCast())
    {
      v4 = v132;
      v115 = v142[6];
      v5 = Logger.payments.unsafeMutableAddressor();
      (*(v126 + 16))(v4, v5, v124);
      v119 = Logger.logObject.getter();
      v116 = v119;
      v118 = static os_log_type_t.debug.getter();
      v117 = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v120 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v119, v118))
      {
        v6 = v123;
        v106 = static UnsafeMutablePointer.allocate(capacity:)();
        v102 = v106;
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v104 = 0;
        v107 = createStorage<A>(capacity:type:)(0, v103, v103);
        v105 = v107;
        v108 = createStorage<A>(capacity:type:)(v104, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v136[0] = v106;
        v135 = v107;
        v134 = v108;
        v109 = 0;
        v110 = v136;
        serialize(_:at:)(0, v136);
        serialize(_:at:)(v109, v110);
        v133 = v120;
        v111 = &v25;
        MEMORY[0x28223BE20](&v25, v7);
        v112 = &v25 - 6;
        *(&v25 - 4) = v8;
        *(&v25 - 3) = &v135;
        *(&v25 - 2) = &v134;
        v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v114 = v6;
        if (v6)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v116, v117, "#UsoTask siriKitIntentType returning Request intent", v102, 2u);
          v100 = 0;
          destroyStorage<A>(_:count:)(v105, 0, v103);
          destroyStorage<A>(_:count:)(v108, v100, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v102, MEMORY[0x277D84B78]);

          v101 = v114;
        }
      }

      else
      {

        v101 = v123;
      }

      v96 = v101;

      (*(v126 + 8))(v132, v124);
      v94 = type metadata accessor for INRequestPaymentIntent();
      v95 = v94;

      __swift_destroy_boxed_opaque_existential_0(v143);
      outlined destroy of FlowActivity?(v147);
      v97 = v95;
      v98 = &protocol witness table for INRequestPaymentIntent;
      v99 = v96;
      return v97;
    }

    v93 = 0;
    type metadata accessor for UsoTask_pay_common_Payment();
    if (swift_dynamicCast() || (v92 = 0, type metadata accessor for UsoTask_noVerb_common_Payment(), swift_dynamicCast()))
    {

      __swift_destroy_boxed_opaque_existential_0(v143);
      outlined destroy of FlowActivity?(v147);
      v9 = v130;
      v10 = Logger.payments.unsafeMutableAddressor();
      (*(v126 + 16))(v9, v10, v124);
      v90 = Logger.logObject.getter();
      v87 = v90;
      v89 = static os_log_type_t.debug.getter();
      v88 = v89;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v91 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v90, v89))
      {
        v11 = v123;
        v78 = static UnsafeMutablePointer.allocate(capacity:)();
        v74 = v78;
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v76 = 0;
        v79 = createStorage<A>(capacity:type:)(0, v75, v75);
        v77 = v79;
        v80 = createStorage<A>(capacity:type:)(v76, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v139[0] = v78;
        v138 = v79;
        v137 = v80;
        v81 = 0;
        v82 = v139;
        serialize(_:at:)(0, v139);
        serialize(_:at:)(v81, v82);
        v136[1] = v91;
        v83 = &v25;
        MEMORY[0x28223BE20](&v25, v12);
        v84 = &v25 - 6;
        *(&v25 - 4) = v13;
        *(&v25 - 3) = &v138;
        *(&v25 - 2) = &v137;
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v86 = v11;
        if (v11)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v87, v88, "#UsoTask siriKitIntentType returning Send intent", v74, 2u);
          v72 = 0;
          destroyStorage<A>(_:count:)(v77, 0, v75);
          destroyStorage<A>(_:count:)(v80, v72, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v74, MEMORY[0x277D84B78]);

          v73 = v86;
        }
      }

      else
      {

        v73 = v123;
      }

      v71 = v73;

      (*(v126 + 8))(v130, v124);
      v97 = type metadata accessor for INSendPaymentIntent();
      v98 = &protocol witness table for INSendPaymentIntent;
      v99 = v71;
      return v97;
    }

    v70 = 0;
    type metadata accessor for UsoTask_noVerb_common_PaymentAccount();
    if (swift_dynamicCast() || (v69 = 0, type metadata accessor for UsoTask_request_common_PaymentAccount(), swift_dynamicCast()) || (v68 = 0, type metadata accessor for UsoTask_summarise_common_PaymentAccount(), swift_dynamicCast()))
    {

      __swift_destroy_boxed_opaque_existential_0(v143);
      outlined destroy of FlowActivity?(v147);
      v14 = v128;
      v15 = Logger.payments.unsafeMutableAddressor();
      (*(v126 + 16))(v14, v15, v124);
      v66 = Logger.logObject.getter();
      v63 = v66;
      v65 = static os_log_type_t.debug.getter();
      v64 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v67 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v66, v65))
      {
        v16 = v123;
        v54 = static UnsafeMutablePointer.allocate(capacity:)();
        v50 = v54;
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v52 = 0;
        v55 = createStorage<A>(capacity:type:)(0, v51, v51);
        v53 = v55;
        v56 = createStorage<A>(capacity:type:)(v52, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v142[0] = v54;
        v141 = v55;
        v140 = v56;
        v57 = 0;
        v58 = v142;
        serialize(_:at:)(0, v142);
        serialize(_:at:)(v57, v58);
        v139[1] = v67;
        v59 = &v25;
        MEMORY[0x28223BE20](&v25, v17);
        v60 = &v25 - 6;
        *(&v25 - 4) = v18;
        *(&v25 - 3) = &v141;
        *(&v25 - 2) = &v140;
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v62 = v16;
        if (v16)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v63, v64, "#UsoTask siriKitIntentType returning SearchForAccounts intent", v50, 2u);
          v48 = 0;
          destroyStorage<A>(_:count:)(v53, 0, v51);
          destroyStorage<A>(_:count:)(v56, v48, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v50, MEMORY[0x277D84B78]);

          v49 = v62;
        }
      }

      else
      {

        v49 = v123;
      }

      v47 = v49;

      (*(v126 + 8))(v128, v124);
      v97 = type metadata accessor for INSearchForAccountsIntent();
      v98 = &protocol witness table for INSearchForAccountsIntent;
      v99 = v47;
      return v97;
    }

    __swift_destroy_boxed_opaque_existential_0(v143);
  }

  v19 = v127;
  v20 = Logger.payments.unsafeMutableAddressor();
  (*(v126 + 16))(v19, v20, v124);
  v45 = Logger.logObject.getter();
  v42 = v45;
  v44 = static os_log_type_t.debug.getter();
  v43 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v46 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v45, v44))
  {
    v21 = v123;
    v33 = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = v33;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v31 = 0;
    v34 = createStorage<A>(capacity:type:)(0, v30, v30);
    v32 = v34;
    v35 = createStorage<A>(capacity:type:)(v31, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v146 = v33;
    v145 = v34;
    v144 = v35;
    v36 = 0;
    v37 = &v146;
    serialize(_:at:)(0, &v146);
    serialize(_:at:)(v36, v37);
    v143[5] = v46;
    v38 = &v25;
    MEMORY[0x28223BE20](&v25, v22);
    v39 = &v25 - 6;
    *(&v25 - 4) = v23;
    *(&v25 - 3) = &v145;
    *(&v25 - 2) = &v144;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v41 = v21;
    if (v21)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v42, v43, "#UsoTask siriKitIntentType no known supported task type found, returning nil", v29, 2u);
      v27 = 0;
      destroyStorage<A>(_:count:)(v32, 0, v30);
      destroyStorage<A>(_:count:)(v35, v27, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v29, MEMORY[0x277D84B78]);

      v28 = v41;
    }
  }

  else
  {

    v28 = v123;
  }

  v26 = v28;

  (*(v126 + 8))(v127, v124);
  outlined destroy of FlowActivity?(v147);
  v97 = 0;
  v98 = 0;
  v99 = v26;
  return v97;
}

__int128 *String.APPLE_CARD_APPLY_LAUNCH_URL.unsafeMutableAddressor()
{
  if (one-time initialization token for APPLE_CARD_APPLY_LAUNCH_URL != -1)
  {
    swift_once();
  }

  return &static String.APPLE_CARD_APPLY_LAUNCH_URL;
}

__int128 *String.APPLE_CARD_INFO_LAUNCH_URL.unsafeMutableAddressor()
{
  if (one-time initialization token for APPLE_CARD_INFO_LAUNCH_URL != -1)
  {
    swift_once();
  }

  return &static String.APPLE_CARD_INFO_LAUNCH_URL;
}

uint64_t Constants.DirectInvocationPayloadKeys.rawValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("itemIdentifier", 0xEuLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("buttonPressed", 0xDuLL, 1)._countAndFlagsBits;
  }
}

uint64_t Constants.DirectInvocationButtonType.rawValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("reject", 6uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confirm", 7uLL, 1)._countAndFlagsBits;
  }
}

__int128 *Constants.intentAppIDAssociatedKey.unsafeMutableAddressor()
{
  if (one-time initialization token for intentAppIDAssociatedKey != -1)
  {
    swift_once();
  }

  return &static Constants.intentAppIDAssociatedKey;
}

uint64_t UsoIdentifierNamespace.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("item_id", 7uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("personRelationship", 0x12uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("phoneType", 9uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("emailType", 9uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("contactAttributes", 0x11uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("contactType", 0xBuLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._countAndFlagsBits;
  }
}

__int128 *String.NOT_YET_IMPLEMENTED.unsafeMutableAddressor()
{
  if (one-time initialization token for NOT_YET_IMPLEMENTED != -1)
  {
    swift_once();
  }

  return &static String.NOT_YET_IMPLEMENTED;
}

__int128 *String.APPLE_CARD_WEB_PAGE_LINK.unsafeMutableAddressor()
{
  if (one-time initialization token for APPLE_CARD_WEB_PAGE_LINK != -1)
  {
    swift_once();
  }

  return &static String.APPLE_CARD_WEB_PAGE_LINK;
}

uint64_t Constants.IntentTypeCATCode.rawValue.getter(char a1)
{
  if (!a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("request", 7uLL, 1)._countAndFlagsBits;
  }

  if (a1 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("send", 4uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("search", 6uLL, 1)._countAndFlagsBits;
  }
}

uint64_t Constants.DirectInvocationPayloadIdentifiers.rawValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.DirectInvocation.Payments.ItemSelection", 0x36uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.DirectInvocation.Payments.buttonPress", 0x34uLL, 1)._countAndFlagsBits;
  }
}

uint64_t static Constants.PaymentAccountBalanceType.fromINBalanceType(_:)(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || !a1)
  {
    return 3;
  }

  else
  {
    switch(a1)
    {
      case 1:
        return 1;
      case 2:
        return 2;
      case 3:
        return 0;
      default:
        return 3;
    }
  }
}

uint64_t Constants.PaymentAccountBalanceType.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("miles", 5uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("money", 5uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("points", 6uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unknown", 7uLL, 1)._countAndFlagsBits;
  }
}

uint64_t static Constants.PaymentAccountType.fromINAccountType(_:)(uint64_t a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        return 1;
      case 2:
        return 2;
      case 3:
        return 3;
      case 4:
        return 4;
      case 5:
        return 5;
      case 6:
        return 6;
      case 7:
        return 7;
      default:
        return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t Constants.PaymentAccountType.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unknown", 7uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("checking", 8uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("credit", 6uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("debit", 5uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("investment", 0xAuLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mortgage", 8uLL, 1)._countAndFlagsBits;
    case 6:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("prepaid", 7uLL, 1)._countAndFlagsBits;
    case 7:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("saving", 6uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("savings", 7uLL, 1)._countAndFlagsBits;
  }
}

uint64_t Constants.PaymentAccountType.asCATIDForLoc.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ACCOUNT_TYPE_CHECKING", 0x15uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ACCOUNT_TYPE_CREDIT", 0x13uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ACCOUNT_TYPE_DEBIT", 0x12uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ACCOUNT_TYPE_INVESTMENT", 0x17uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ACCOUNT_TYPE_MORTGAGE", 0x15uLL, 1)._countAndFlagsBits;
    case 6:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ACCOUNT_TYPE_PREPAID", 0x14uLL, 1)._countAndFlagsBits;
  }

  return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ACCOUNT_TYPE_SAVING", 0x13uLL, 1)._countAndFlagsBits;
}

uint64_t Constants.PaymentAccountBalanceType.asCATIDForLoc.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BALANCE_TYPE_MILES", 0x12uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BALANCE_TYPE_MONEY", 0x12uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BALANCE_TYPE_POINTS", 0x13uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BALANCE_TYPE_UNKNOWN", 0x14uLL, 1)._countAndFlagsBits;
  }
}

__int128 *String.EMPTY.unsafeMutableAddressor()
{
  if (one-time initialization token for EMPTY != -1)
  {
    swift_once();
  }

  return &static String.EMPTY;
}

SiriPaymentsIntents::Constants::DirectInvocationButtonType_optional __swiftcall Constants.DirectInvocationButtonType.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "confirm";
  *(v1 + 8) = 7;
  *(v1 + 16) = 2;
  *(v1 + 24) = "reject";
  *(v1 + 32) = 6;
  *(v1 + 40) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  if (!v7)
  {
    v5.value = SiriPaymentsIntents_Constants_DirectInvocationButtonType_confirm;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5.value = SiriPaymentsIntents_Constants_DirectInvocationButtonType_reject;
    goto LABEL_6;
  }

  return 2;
}

uint64_t Constants.DirectInvocationButtonType.confirmationResponse.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v5 = *MEMORY[0x277D5BED0];
    v4 = type metadata accessor for ConfirmationResponse();
    return (*(*(v4 - 8) + 104))(a2, v5);
  }

  else
  {
    v6 = *MEMORY[0x277D5BED8];
    v2 = type metadata accessor for ConfirmationResponse();
    return (*(*(v2 - 8) + 104))(a2, v6);
  }
}

uint64_t Constants.NLConstants.rawValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConfirmation", 0x14uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payments", 8uLL, 1)._countAndFlagsBits;
  }
}

uint64_t Constants.NLConstants.canonicalName.getter(char a1)
{
  v12 = a1 & 1;
  v10 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v11 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.nl.", 0x12uLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  Constants.NLConstants.rawValue.getter(a1 & 1);
  v3 = String.firstLetterCapitalized()();

  v9 = v3;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(&v9);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v4);

  v8 = v10;
  v7 = v11;

  outlined destroy of String.UTF8View(&v10);
  return MEMORY[0x26D620710](v8, v7);
}

uint64_t Constants.NLPaymentConfirmationValue.canonicalName.getter(char a1)
{
  v10 = a1;
  Constants.NLPaymentConfirmationValue.associatedSemantic.getter();
  Constants.NLPaymentConfirmationValue.rawValue.getter(a1);
  v1 = String.uppercased()();

  v9 = v1;
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1);
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_", 1uLL, 1);
  lazy protocol witness table accessor for type String and conformance String();
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v5._countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v5._object = v2;
  outlined destroy of String.UTF8View(&v7);
  outlined destroy of String.UTF8View(&v8);
  outlined destroy of String.UTF8View(&v9);
  countAndFlagsBits = Constants.NLConstants.boundValue(_:)(v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t one-time initialization function for EMPTY()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  result = v1._countAndFlagsBits;
  static String.EMPTY = v1;
  return result;
}

uint64_t static String.EMPTY.getter()
{
  v1 = *String.EMPTY.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for NOT_YET_IMPLEMENTED()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Not yet implemented", 0x13uLL, 1);
  result = v1._countAndFlagsBits;
  static String.NOT_YET_IMPLEMENTED = v1;
  return result;
}

uint64_t static String.NOT_YET_IMPLEMENTED.getter()
{
  v1 = *String.NOT_YET_IMPLEMENTED.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for WATCH_APP_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.NanoPassbook", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static String.WATCH_APP_BUNDLE_ID = v1;
  return result;
}

__int128 *String.WATCH_APP_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for WATCH_APP_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static String.WATCH_APP_BUNDLE_ID;
}

uint64_t static String.WATCH_APP_BUNDLE_ID.getter()
{
  v1 = *String.WATCH_APP_BUNDLE_ID.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for APP_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.Passbook", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static String.APP_BUNDLE_ID = v1;
  return result;
}

__int128 *String.APP_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for APP_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static String.APP_BUNDLE_ID;
}

uint64_t static String.APP_BUNDLE_ID.getter()
{
  v1 = *String.APP_BUNDLE_ID.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for APP_NAME_EN()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("passbook", 8uLL, 1);
  result = v1._countAndFlagsBits;
  static String.APP_NAME_EN = v1;
  return result;
}

__int128 *String.APP_NAME_EN.unsafeMutableAddressor()
{
  if (one-time initialization token for APP_NAME_EN != -1)
  {
    swift_once();
  }

  return &static String.APP_NAME_EN;
}

uint64_t static String.APP_NAME_EN.getter()
{
  v1 = *String.APP_NAME_EN.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for PASSKIT_EXTENSION_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.PassKit.PassKitIntentsExtension", 0x29uLL, 1);
  result = v1._countAndFlagsBits;
  static String.PASSKIT_EXTENSION_BUNDLE_ID = v1;
  return result;
}

__int128 *String.PASSKIT_EXTENSION_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for PASSKIT_EXTENSION_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static String.PASSKIT_EXTENSION_BUNDLE_ID;
}

uint64_t static String.PASSKIT_EXTENSION_BUNDLE_ID.getter()
{
  v1 = *String.PASSKIT_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for PASSKIT_UI_EXTENSION_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.PassKit.PassKitIntentsUIExtension", 0x2BuLL, 1);
  result = v1._countAndFlagsBits;
  static String.PASSKIT_UI_EXTENSION_BUNDLE_ID = v1;
  return result;
}

__int128 *String.PASSKIT_UI_EXTENSION_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for PASSKIT_UI_EXTENSION_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static String.PASSKIT_UI_EXTENSION_BUNDLE_ID;
}

uint64_t static String.PASSKIT_UI_EXTENSION_BUNDLE_ID.getter()
{
  v1 = *String.PASSKIT_UI_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for APPLE_CARD_INFO_LAUNCH_URL()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wallet://discovery/card/40cc8cf6-f7d2-407b-9426-0986d1f39178?referrer=cid%3Dapy-410-100001", 0x5AuLL, 1);
  result = v1._countAndFlagsBits;
  static String.APPLE_CARD_INFO_LAUNCH_URL = v1;
  return result;
}

uint64_t static String.APPLE_CARD_INFO_LAUNCH_URL.getter()
{
  v1 = *String.APPLE_CARD_INFO_LAUNCH_URL.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for APPLE_CARD_APPLY_LAUNCH_URL()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wallet://setup/feature/ccs?referrer=cid%3Dapy-410-100002", 0x38uLL, 1);
  result = v1._countAndFlagsBits;
  static String.APPLE_CARD_APPLY_LAUNCH_URL = v1;
  return result;
}

uint64_t static String.APPLE_CARD_APPLY_LAUNCH_URL.getter()
{
  v1 = *String.APPLE_CARD_APPLY_LAUNCH_URL.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for APPLE_CARD_WEB_PAGE_LINK()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("https://www.apple.com/apple-card/", 0x21uLL, 1);
  result = v1._countAndFlagsBits;
  static String.APPLE_CARD_WEB_PAGE_LINK = v1;
  return result;
}

uint64_t static String.APPLE_CARD_WEB_PAGE_LINK.getter()
{
  v1 = *String.APPLE_CARD_WEB_PAGE_LINK.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for intentAppIDAssociatedKey()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("intentAppIDAssociatedKey", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static Constants.intentAppIDAssociatedKey = v1;
  return result;
}

uint64_t static Constants.intentAppIDAssociatedKey.getter()
{
  v1 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static Constants.intentAppIDAssociatedKey.setter(uint64_t a1, uint64_t a2)
{
  v4 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();

  swift_beginAccess();
  *v4 = a1;
  *(v4 + 1) = a2;

  swift_endAccess();
}

uint64_t static Constants.defaultPaymentsApp.getter()
{
  type metadata accessor for App();
  String.APP_BUNDLE_ID.unsafeMutableAddressor();

  String.PASSKIT_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();

  String.PASSKIT_UI_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();

  return App.__allocating_init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
}

Swift::String __swiftcall Constants.NLConstants.boundValue(_:)(Swift::String a1)
{
  v10 = v1;
  v18 = a1;
  v17 = v1 & 1;
  v15 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v16 = v2;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  v14[0] = Constants.NLConstants.canonicalName.getter(v10 & 1);
  v14[1] = v4;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(v14);
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".Value.", 7uLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v5);

  v13 = String.uppercased()();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(&v13);
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v6);

  v12 = v15;
  v11 = v16;

  outlined destroy of String.UTF8View(&v15);
  v7 = MEMORY[0x26D620710](v12, v11);
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

SiriPaymentsIntents::Constants::NLConstants_optional __swiftcall Constants.NLConstants.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "payments";
  *(v1 + 8) = 8;
  *(v1 + 16) = 2;
  *(v1 + 24) = "paymentsConfirmation";
  *(v1 + 32) = 20;
  *(v1 + 40) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  if (!v7)
  {
    v5.value = SiriPaymentsIntents_Constants_NLConstants_payments;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5.value = SiriPaymentsIntents_Constants_NLConstants_paymentsConfirmation;
    goto LABEL_6;
  }

  return 2;
}

SiriPaymentsIntents::Constants::NLConstants_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.NLConstants@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::Constants::NLConstants_optional *a2@<X8>)
{
  result.value = Constants.NLConstants.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Constants.NLConstants@<X0>(uint64_t *a1@<X8>)
{
  result = Constants.NLConstants.rawValue.getter(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Constants.NLPaymentConfirmationValue.rawValue.getter(char a1)
{
  if (!a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("yes", 3uLL, 1)._countAndFlagsBits;
  }

  if (a1 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("no", 2uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cancel", 6uLL, 1)._countAndFlagsBits;
  }
}

unint64_t lazy protocol witness table accessor for type Constants.NLConstants and conformance Constants.NLConstants()
{
  v2 = lazy protocol witness table cache variable for type Constants.NLConstants and conformance Constants.NLConstants;
  if (!lazy protocol witness table cache variable for type Constants.NLConstants and conformance Constants.NLConstants)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.NLConstants and conformance Constants.NLConstants);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.NLConstants and conformance Constants.NLConstants;
  if (!lazy protocol witness table cache variable for type Constants.NLConstants and conformance Constants.NLConstants)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.NLConstants and conformance Constants.NLConstants);
    return WitnessTable;
  }

  return v2;
}

SiriPaymentsIntents::Constants::NLPaymentConfirmationValue_optional __swiftcall Constants.NLPaymentConfirmationValue.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "yes";
  *(v1 + 8) = 3;
  *(v1 + 16) = 2;
  *(v1 + 24) = "no";
  *(v1 + 32) = 2;
  *(v1 + 40) = 2;
  *(v1 + 48) = "cancel";
  *(v1 + 56) = 6;
  *(v1 + 64) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_Constants_NLPaymentConfirmationValue_yes;
LABEL_8:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_Constants_NLPaymentConfirmationValue_no;
      goto LABEL_8;
    case 2:
      v5.value = SiriPaymentsIntents_Constants_NLPaymentConfirmationValue_cancel;
      goto LABEL_8;
  }

  return 3;
}

void static Constants.NLPaymentConfirmationValue.allCases.getter()
{
  _allocateUninitializedArray<A>(_:)();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  _finalizeUninitializedArray<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue()
{
  v2 = lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue;
  if (!lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue;
  if (!lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue;
  if (!lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue;
  if (!lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue;
  if (!lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue;
  if (!lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue);
    return WitnessTable;
  }

  return v2;
}

SiriPaymentsIntents::Constants::NLPaymentConfirmationValue_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.NLPaymentConfirmationValue@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::Constants::NLPaymentConfirmationValue_optional *a2@<X8>)
{
  result.value = Constants.NLPaymentConfirmationValue.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Constants.NLPaymentConfirmationValue@<X0>(uint64_t *a1@<X8>)
{
  result = Constants.NLPaymentConfirmationValue.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance Constants.NLPaymentConfirmationValue(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue();
  lazy protocol witness table accessor for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue();
  lazy protocol witness table accessor for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue();
  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)();
}

SiriPaymentsIntents::Constants::PaymentAccountType_optional __swiftcall Constants.PaymentAccountType.init(from:)(Swift::String_optional from)
{
  countAndFlagsBits = from.value._countAndFlagsBits;
  object = from.value._object;
  v70 = partial apply for specialized implicit closure #8 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v71 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v72 = partial apply for closure #1 in OSLogArguments.append(_:);
  v73 = partial apply for closure #1 in OSLogArguments.append(_:);
  v74 = partial apply for closure #1 in OSLogArguments.append(_:);
  v100 = 0;
  v101 = 0;
  v99._countAndFlagsBits = 0;
  v99._object = 0;
  v75 = 0;
  v76 = 0;
  v77 = type metadata accessor for Logger();
  v78 = *(v77 - 8);
  v79 = v77 - 8;
  v80 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1);
  v81 = &v28[-v80];
  v83 = type metadata accessor for CharacterSet();
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](object, v2);
  v87 = &v28[-v86];
  v100 = v4;
  v101 = v3;

  if (!object)
  {
    goto LABEL_12;
  }

  v68 = countAndFlagsBits;
  v69 = object;
  v41._object = object;
  v41._countAndFlagsBits = countAndFlagsBits;

  v99 = v41;
  v46 = &v98;
  v98 = v41;
  v57 = 7;
  v43 = 1;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("account", 7uLL, 1);
  v45 = &v97;
  v97 = v5;
  v42 = 0;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v43 & 1);
  v44 = &v96;
  v96 = v6;
  v50 = lazy protocol witness table accessor for type String and conformance String();
  v49 = MEMORY[0x277D837D0];
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v48 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v47 = v7;
  outlined destroy of String.UTF8View(v44);
  outlined destroy of String.UTF8View(v45);
  outlined destroy of String.UTF8View(v46);
  v51 = v95;
  v95[0] = v48;
  v95[1] = v47;
  static CharacterSet.whitespacesAndNewlines.getter();
  v8 = StringProtocol.trimmingCharacters(in:)();
  v9 = v81;
  v52 = v8;
  v53 = v10;
  (*(v84 + 8))(v87, v83);
  outlined destroy of String.UTF8View(v51);
  v54 = String.lowercased()();

  v99 = v54;

  v11 = Logger.payments.unsafeMutableAddressor();
  (*(v78 + 16))(v9, v11, v77);

  v56 = 32;
  v12 = swift_allocObject();
  v13 = v54._object;
  v58 = v12;
  *(v12 + 16) = v54._countAndFlagsBits;
  *(v12 + 24) = v13;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  v55 = 17;
  v60 = swift_allocObject();
  *(v60 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v14 = swift_allocObject();
  v15 = v58;
  v59 = v14;
  *(v14 + 16) = v70;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v59;
  v63 = v16;
  *(v16 + 16) = v71;
  *(v16 + 24) = v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v62 = _allocateUninitializedArray<A>(_:)();
  v64 = v18;

  v19 = v60;
  v20 = v64;
  *v64 = v72;
  v20[1] = v19;

  v21 = v61;
  v22 = v64;
  v64[2] = v73;
  v22[3] = v21;

  v23 = v63;
  v24 = v64;
  v64[4] = v74;
  v24[5] = v23;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v66, v67))
  {
    v25 = v75;
    v34 = static UnsafeMutablePointer.allocate(capacity:)();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v35 = createStorage<A>(capacity:type:)(0, v33, v33);
    v36 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v37 = &v93;
    v93 = v34;
    v38 = &v92;
    v92 = v35;
    v39 = &v91;
    v91 = v36;
    serialize(_:at:)(2, &v93);
    serialize(_:at:)(1, v37);
    v89 = v72;
    v90 = v60;
    closure #1 in osLogInternal(_:log:type:)(&v89, v37, v38, v39);
    v40 = v25;
    if (v25)
    {

      __break(1u);
    }

    else
    {
      v89 = v73;
      v90 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v93, &v92, &v91);
      v32 = 0;
      v89 = v74;
      v90 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_2686B1000, v66, v67, "#PaymentAccountType initializing against cleaned candidate %s", v34, 0xCu);
      destroyStorage<A>(_:count:)(v35, 0, v33);
      destroyStorage<A>(_:count:)(v36, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v34, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v66);
  (*(v78 + 8))(v81, v77);
  v30 = &v94;
  swift_beginAccess();
  swift_endAccess();
  LOBYTE(v26) = Constants.PaymentAccountType.init(rawValue:)(v54);
  v31 = v26;
  if (v26 == 9)
  {
    outlined destroy of String.UTF8View(&v99);
LABEL_12:

    return 9;
  }

  v102 = v31;
  outlined destroy of String.UTF8View(&v99);

  return v31;
}

SiriPaymentsIntents::Constants::PaymentAccountType_optional __swiftcall Constants.PaymentAccountType.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "unknown";
  *(v1 + 8) = 7;
  *(v1 + 16) = 2;
  *(v1 + 24) = "checking";
  *(v1 + 32) = 8;
  *(v1 + 40) = 2;
  *(v1 + 48) = "credit";
  *(v1 + 56) = 6;
  *(v1 + 64) = 2;
  *(v1 + 72) = "debit";
  *(v1 + 80) = 5;
  *(v1 + 88) = 2;
  *(v1 + 96) = "investment";
  *(v1 + 104) = 10;
  *(v1 + 112) = 2;
  *(v1 + 120) = "mortgage";
  *(v1 + 128) = 8;
  *(v1 + 136) = 2;
  *(v1 + 144) = "prepaid";
  *(v1 + 152) = 7;
  *(v1 + 160) = 2;
  *(v1 + 168) = "saving";
  *(v1 + 176) = 6;
  *(v1 + 184) = 2;
  *(v1 + 192) = "savings";
  *(v1 + 200) = 7;
  *(v1 + 208) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_unknown;
LABEL_20:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_checking;
      goto LABEL_20;
    case 2:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_credit;
      goto LABEL_20;
    case 3:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_debit;
      goto LABEL_20;
    case 4:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_investment;
      goto LABEL_20;
    case 5:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_mortgage;
      goto LABEL_20;
    case 6:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_prepaid;
      goto LABEL_20;
    case 7:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_saving;
      goto LABEL_20;
    case 8:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_savings;
      goto LABEL_20;
  }

  return 9;
}

uint64_t Constants.PaymentAccountType.asINAccountType.getter(char a1)
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
    case 5:
      return 5;
    case 6:
      return 6;
  }

  return 7;
}

void static Constants.PaymentAccountType.allCases.getter()
{
  _allocateUninitializedArray<A>(_:)();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  v0[4] = 4;
  v0[5] = 5;
  v0[6] = 6;
  v0[7] = 7;
  v0[8] = 8;
  _finalizeUninitializedArray<A>(_:)();
}

SiriPaymentsIntents::Constants::DirectInvocationPayloadKeys_optional __swiftcall Constants.DirectInvocationPayloadKeys.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "buttonPressed";
  *(v1 + 8) = 13;
  *(v1 + 16) = 2;
  *(v1 + 24) = "itemIdentifier";
  *(v1 + 32) = 14;
  *(v1 + 40) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  if (!v7)
  {
    v5.value = SiriPaymentsIntents_Constants_DirectInvocationPayloadKeys_buttonPressed;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5.value = SiriPaymentsIntents_Constants_DirectInvocationPayloadKeys_itemIdentifier;
    goto LABEL_6;
  }

  return 2;
}

void static Constants.DirectInvocationPayloadKeys.allCases.getter()
{
  _allocateUninitializedArray<A>(_:)();
  *v0 = 0;
  v0[1] = 1;
  _finalizeUninitializedArray<A>(_:)();
}

SiriPaymentsIntents::Constants::DirectInvocationPayloadIdentifiers_optional __swiftcall Constants.DirectInvocationPayloadIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "com.apple.siri.DirectInvocation.Payments.buttonPress";
  *(v1 + 8) = 52;
  *(v1 + 16) = 2;
  *(v1 + 24) = "com.apple.siri.DirectInvocation.Payments.ItemSelection";
  *(v1 + 32) = 54;
  *(v1 + 40) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  if (!v7)
  {
    v5.value = SiriPaymentsIntents_Constants_DirectInvocationPayloadIdentifiers_buttonPress;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5.value = SiriPaymentsIntents_Constants_DirectInvocationPayloadIdentifiers_itemSelection;
    goto LABEL_6;
  }

  return 2;
}

void static Constants.DirectInvocationPayloadIdentifiers.allCases.getter()
{
  _allocateUninitializedArray<A>(_:)();
  *v0 = 0;
  v0[1] = 1;
  _finalizeUninitializedArray<A>(_:)();
}

void static Constants.DirectInvocationButtonType.allCases.getter()
{
  _allocateUninitializedArray<A>(_:)();
  *v0 = 0;
  v0[1] = 1;
  _finalizeUninitializedArray<A>(_:)();
}

SiriPaymentsIntents::Constants::PaymentAccountType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.PaymentAccountType@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::Constants::PaymentAccountType_optional *a2@<X8>)
{
  result.value = Constants.PaymentAccountType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Constants.PaymentAccountType@<X0>(uint64_t *a1@<X8>)
{
  result = Constants.PaymentAccountType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriPaymentsIntents::Constants::DirectInvocationPayloadKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.DirectInvocationPayloadKeys@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::Constants::DirectInvocationPayloadKeys_optional *a2@<X8>)
{
  result.value = Constants.DirectInvocationPayloadKeys.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Constants.DirectInvocationPayloadKeys@<X0>(uint64_t *a1@<X8>)
{
  result = Constants.DirectInvocationPayloadKeys.rawValue.getter(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriPaymentsIntents::Constants::DirectInvocationPayloadIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.DirectInvocationPayloadIdentifiers@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::Constants::DirectInvocationPayloadIdentifiers_optional *a2@<X8>)
{
  result.value = Constants.DirectInvocationPayloadIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Constants.DirectInvocationPayloadIdentifiers@<X0>(uint64_t *a1@<X8>)
{
  result = Constants.DirectInvocationPayloadIdentifiers.rawValue.getter(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriPaymentsIntents::Constants::DirectInvocationButtonType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.DirectInvocationButtonType@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::Constants::DirectInvocationButtonType_optional *a2@<X8>)
{
  result.value = Constants.DirectInvocationButtonType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Constants.DirectInvocationButtonType@<X0>(uint64_t *a1@<X8>)
{
  result = Constants.DirectInvocationButtonType.rawValue.getter(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Constants.PaymentAccountBalanceType.asINBalanceType.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 3;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 0;
}

SiriPaymentsIntents::Constants::PaymentAccountBalanceType_optional __swiftcall Constants.PaymentAccountBalanceType.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "miles";
  *(v1 + 8) = 5;
  *(v1 + 16) = 2;
  *(v1 + 24) = "money";
  *(v1 + 32) = 5;
  *(v1 + 40) = 2;
  *(v1 + 48) = "points";
  *(v1 + 56) = 6;
  *(v1 + 64) = 2;
  *(v1 + 72) = "unknown";
  *(v1 + 80) = 7;
  *(v1 + 88) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountBalanceType_miles;
LABEL_10:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountBalanceType_money;
      goto LABEL_10;
    case 2:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountBalanceType_points;
      goto LABEL_10;
    case 3:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountBalanceType_unknown;
      goto LABEL_10;
  }

  return 4;
}

void static Constants.PaymentAccountBalanceType.allCases.getter()
{
  _allocateUninitializedArray<A>(_:)();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  _finalizeUninitializedArray<A>(_:)();
}

SiriPaymentsIntents::Constants::PaymentAccountBalanceType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.PaymentAccountBalanceType@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::Constants::PaymentAccountBalanceType_optional *a2@<X8>)
{
  result.value = Constants.PaymentAccountBalanceType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Constants.PaymentAccountBalanceType@<X0>(uint64_t *a1@<X8>)
{
  result = Constants.PaymentAccountBalanceType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static Constants.IntentTypeCATCode.from(_:)(uint64_t a1)
{
  type metadata accessor for INRequestPaymentIntent();
  if (swift_dynamicCastMetatype())
  {
    return 0;
  }

  else
  {
    type metadata accessor for INSendPaymentIntent();
    if (swift_dynamicCastMetatype())
    {
      return 1;
    }

    else
    {
      type metadata accessor for INSearchForAccountsIntent();
      if (swift_dynamicCastMetatype())
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

SiriPaymentsIntents::Constants::IntentTypeCATCode_optional __swiftcall Constants.IntentTypeCATCode.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "request";
  *(v1 + 8) = 7;
  *(v1 + 16) = 2;
  *(v1 + 24) = "send";
  *(v1 + 32) = 4;
  *(v1 + 40) = 2;
  *(v1 + 48) = "search";
  *(v1 + 56) = 6;
  *(v1 + 64) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_Constants_IntentTypeCATCode_request;
LABEL_8:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_Constants_IntentTypeCATCode_send;
      goto LABEL_8;
    case 2:
      v5.value = SiriPaymentsIntents_Constants_IntentTypeCATCode_search;
      goto LABEL_8;
  }

  return 3;
}

void static Constants.IntentTypeCATCode.allCases.getter()
{
  _allocateUninitializedArray<A>(_:)();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  _finalizeUninitializedArray<A>(_:)();
}

SiriPaymentsIntents::UsoIdentifierNamespace_optional __swiftcall UsoIdentifierNamespace.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "item_id";
  *(v1 + 8) = 7;
  *(v1 + 16) = 2;
  *(v1 + 24) = "personRelationship";
  *(v1 + 32) = 18;
  *(v1 + 40) = 2;
  *(v1 + 48) = "phoneType";
  *(v1 + 56) = 9;
  *(v1 + 64) = 2;
  *(v1 + 72) = "emailType";
  *(v1 + 80) = 9;
  *(v1 + 88) = 2;
  *(v1 + 96) = "contactAttributes";
  *(v1 + 104) = 17;
  *(v1 + 112) = 2;
  *(v1 + 120) = "contactType";
  *(v1 + 128) = 11;
  *(v1 + 136) = 2;
  *(v1 + 144) = "name";
  *(v1 + 152) = 4;
  *(v1 + 160) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_UsoIdentifierNamespace_itemId;
LABEL_16:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_UsoIdentifierNamespace_personRelationship;
      goto LABEL_16;
    case 2:
      v5.value = SiriPaymentsIntents_UsoIdentifierNamespace_phoneType;
      goto LABEL_16;
    case 3:
      v5.value = SiriPaymentsIntents_UsoIdentifierNamespace_emailType;
      goto LABEL_16;
    case 4:
      v5.value = SiriPaymentsIntents_UsoIdentifierNamespace_contactAttributes;
      goto LABEL_16;
    case 5:
      v5.value = SiriPaymentsIntents_UsoIdentifierNamespace_contactType;
      goto LABEL_16;
    case 6:
      v5.value = SiriPaymentsIntents_UsoIdentifierNamespace_name;
      goto LABEL_16;
  }

  return 7;
}

SiriPaymentsIntents::Constants::IntentTypeCATCode_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.IntentTypeCATCode@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::Constants::IntentTypeCATCode_optional *a2@<X8>)
{
  result.value = Constants.IntentTypeCATCode.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Constants.IntentTypeCATCode@<X0>(uint64_t *a1@<X8>)
{
  result = Constants.IntentTypeCATCode.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriPaymentsIntents::UsoIdentifierNamespace_optional protocol witness for RawRepresentable.init(rawValue:) in conformance UsoIdentifierNamespace@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::UsoIdentifierNamespace_optional *a2@<X8>)
{
  result.value = UsoIdentifierNamespace.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UsoIdentifierNamespace@<X0>(uint64_t *a1@<X8>)
{
  result = UsoIdentifierNamespace.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Constants.DirectInvocationPayloadKeys and conformance Constants.DirectInvocationPayloadKeys()
{
  v2 = lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadKeys and conformance Constants.DirectInvocationPayloadKeys;
  if (!lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadKeys and conformance Constants.DirectInvocationPayloadKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadKeys and conformance Constants.DirectInvocationPayloadKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadKeys and conformance Constants.DirectInvocationPayloadKeys;
  if (!lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadKeys and conformance Constants.DirectInvocationPayloadKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadKeys and conformance Constants.DirectInvocationPayloadKeys);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Constants.DirectInvocationPayloadIdentifiers and conformance Constants.DirectInvocationPayloadIdentifiers()
{
  v2 = lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadIdentifiers and conformance Constants.DirectInvocationPayloadIdentifiers;
  if (!lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadIdentifiers and conformance Constants.DirectInvocationPayloadIdentifiers)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadIdentifiers and conformance Constants.DirectInvocationPayloadIdentifiers);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadIdentifiers and conformance Constants.DirectInvocationPayloadIdentifiers;
  if (!lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadIdentifiers and conformance Constants.DirectInvocationPayloadIdentifiers)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadIdentifiers and conformance Constants.DirectInvocationPayloadIdentifiers);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Constants.DirectInvocationButtonType and conformance Constants.DirectInvocationButtonType()
{
  v2 = lazy protocol witness table cache variable for type Constants.DirectInvocationButtonType and conformance Constants.DirectInvocationButtonType;
  if (!lazy protocol witness table cache variable for type Constants.DirectInvocationButtonType and conformance Constants.DirectInvocationButtonType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.DirectInvocationButtonType and conformance Constants.DirectInvocationButtonType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.DirectInvocationButtonType and conformance Constants.DirectInvocationButtonType;
  if (!lazy protocol witness table cache variable for type Constants.DirectInvocationButtonType and conformance Constants.DirectInvocationButtonType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.DirectInvocationButtonType and conformance Constants.DirectInvocationButtonType);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Constants.PaymentAccountBalanceType and conformance Constants.PaymentAccountBalanceType()
{
  v2 = lazy protocol witness table cache variable for type Constants.PaymentAccountBalanceType and conformance Constants.PaymentAccountBalanceType;
  if (!lazy protocol witness table cache variable for type Constants.PaymentAccountBalanceType and conformance Constants.PaymentAccountBalanceType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.PaymentAccountBalanceType and conformance Constants.PaymentAccountBalanceType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.PaymentAccountBalanceType and conformance Constants.PaymentAccountBalanceType;
  if (!lazy protocol witness table cache variable for type Constants.PaymentAccountBalanceType and conformance Constants.PaymentAccountBalanceType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.PaymentAccountBalanceType and conformance Constants.PaymentAccountBalanceType);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace()
{
  v2 = lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace;
  if (!lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace;
  if (!lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for Constants.PaymentAccountType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF7)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 8) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 247;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 9;
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

_BYTE *storeEnumTagSinglePayload for Constants.PaymentAccountType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF7)
  {
    v5 = ((a3 + 8) >> 8) + 1;
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

  if (a2 > 0xF7)
  {
    v4 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
      *result = a2 + 8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Constants.IntentTypeCATCode] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Constants.IntentTypeCATCode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Constants.IntentTypeCATCode] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents9ConstantsO17IntentTypeCATCodeOGMd, &_sSay19SiriPaymentsIntents9ConstantsO17IntentTypeCATCodeOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Constants.IntentTypeCATCode] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Constants.PaymentAccountBalanceType] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Constants.PaymentAccountBalanceType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Constants.PaymentAccountBalanceType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents9ConstantsO25PaymentAccountBalanceTypeOGMd, &_sSay19SiriPaymentsIntents9ConstantsO25PaymentAccountBalanceTypeOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Constants.PaymentAccountBalanceType] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Constants.DirectInvocationButtonType] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Constants.DirectInvocationButtonType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Constants.DirectInvocationButtonType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents9ConstantsO26DirectInvocationButtonTypeOGMd, &_sSay19SiriPaymentsIntents9ConstantsO26DirectInvocationButtonTypeOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Constants.DirectInvocationButtonType] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Constants.DirectInvocationPayloadIdentifiers] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Constants.DirectInvocationPayloadIdentifiers] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Constants.DirectInvocationPayloadIdentifiers] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents9ConstantsO34DirectInvocationPayloadIdentifiersOGMd, &_sSay19SiriPaymentsIntents9ConstantsO34DirectInvocationPayloadIdentifiersOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Constants.DirectInvocationPayloadIdentifiers] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Constants.DirectInvocationPayloadKeys] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Constants.DirectInvocationPayloadKeys] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Constants.DirectInvocationPayloadKeys] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents9ConstantsO27DirectInvocationPayloadKeysOGMd, &_sSay19SiriPaymentsIntents9ConstantsO27DirectInvocationPayloadKeysOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Constants.DirectInvocationPayloadKeys] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Constants.PaymentAccountType] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Constants.PaymentAccountType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Constants.PaymentAccountType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents9ConstantsO18PaymentAccountTypeOGMd, &_sSay19SiriPaymentsIntents9ConstantsO18PaymentAccountTypeOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Constants.PaymentAccountType] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Constants.NLPaymentConfirmationValue] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Constants.NLPaymentConfirmationValue] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Constants.NLPaymentConfirmationValue] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents9ConstantsO26NLPaymentConfirmationValueOGMd, &_sSay19SiriPaymentsIntents9ConstantsO26NLPaymentConfirmationValueOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Constants.NLPaymentConfirmationValue] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t SearchForAccountsHandleIntentStrategy.__allocating_init()()
{
  v39 = 0;
  v37 = 0;
  v17 = 0;
  v8 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v14 = &v7 - v8;
  v13 = type metadata accessor for Globals();
  v9 = v43;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v43);
  v10 = &v42;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v41;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v12 = &v40;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v1 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v9, v10, v11, v12);
  v29 = &v44;
  v45 = v13;
  v46 = &protocol witness table for Globals;
  v44 = v1;
  type metadata accessor for SearchForAccountsCATs(v17);
  default argument 0 of CATWrapper.init(options:globals:)();
  v28 = CATWrapper.__allocating_init(options:globals:)();
  v39 = v28;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMR);
  v15 = v38;
  outlined init with copy of GlobalsProviding(v29, v38);
  type metadata accessor for PaymentsBaseCATs(v17);
  default argument 0 of CATWrapper.init(options:globals:)();
  v16 = CATWrapper.__allocating_init(options:globals:)();

  v27 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v15, v16, v28);
  v37 = v27;
  v26 = v36;
  outlined init with copy of GlobalsProviding(v29, v36);

  NSJSONWritingOptions.init(rawValue:)(v2);
  v21 = v35;
  v35[3] = &type metadata for CommonLabelsProvider;
  v35[4] = &protocol witness table for CommonLabelsProvider;
  v3 = type metadata accessor for SiriKitContactResolver();
  v22 = v34;
  v34[3] = v3;
  v34[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v34);
  SiriKitContactResolver.init()();

  v23 = &v33;
  v33 = v27;

  v19 = v45;
  v18 = v46;
  __swift_project_boxed_opaque_existential_1(v29, v45);
  v4 = v18[2];
  v20 = &v31;
  v4(v19);
  v24 = v32;
  v32[3] = &type metadata for SearchForAccountsViewBuilder;
  v32[4] = &protocol witness table for SearchForAccountsViewBuilder;
  v32[0] = swift_allocObject();
  SearchForAccountsViewBuilder.init(catFamily:deviceState:)(v28, v20, (v32[0] + 16));
  v5 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSearchForAccountsIntent, INSearchForAccountsIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v30 = SearchForAccountsHandleIntentStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:viewBuilder:)(v26, v28, v21, v22, v23, v24, v25, v5);

  v47 = v30;

  __swift_destroy_boxed_opaque_existential_0(v29);

  return v30;
}

uint64_t SearchForAccountsHandleIntentStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:viewBuilder:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  v27 = a5;
  v24 = a6;
  v28 = a7;
  v22 = a8;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v45 = a7;
  v25 = *(a7 - 8);
  v26 = a7 - 8;
  v16 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](a6, a2);
  v21 = &v16 - v16;
  v43 = v10;
  v42 = v11;
  v41 = v12;
  v40 = v13;
  v39 = v14;
  v38 = v9;
  v44 = v8;
  v17 = v8;
  v18 = v37;
  outlined init with copy of GlobalsProviding(v9, v37);
  outlined init with take of CommonLabelsProviding(v18, (v17 + 184));
  v23 = v36;
  outlined init with copy of GlobalsProviding(v32, v36);

  v19 = v35;
  outlined init with copy of GlobalsProviding(v30, v35);
  v20 = v34;
  outlined init with copy of GlobalsProviding(v29, v34);
  (*(v25 + 16))(v21, v27, v28);
  v33 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v23, v31, v19, v20, v21, v28, v22);

  v44 = v33;
  __swift_destroy_boxed_opaque_existential_0(v24);
  (*(v25 + 8))(v27, v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v30);

  __swift_destroy_boxed_opaque_existential_0(v32);

  return v33;
}

uint64_t SearchForAccountsHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v4 = type metadata accessor for Logger();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](SearchForAccountsHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:), 0);
}

uint64_t SearchForAccountsHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  v36 = v0;
  v1 = v0[10];
  v15 = v0[9];
  v16 = v0[8];
  v17 = v0[7];
  v18 = v0[6];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v15 + 16))(v1, v2, v16);

  MEMORY[0x277D82BE0](v17);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for implicit closure #8 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
  *(v19 + 24) = v18;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v24 + 24) = v19;
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:);
  *(v21 + 24) = v20;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v27 + 24) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v28 = v3;

  *v28 = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[1] = v22;

  v28[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[3] = v23;

  v28[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[5] = v24;

  v28[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[7] = v25;

  v28[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[9] = v26;

  v28[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[11] = v27;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v29, v30))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v31 = buf;
    v32 = v12;
    v33 = v13;
    serialize(_:at:)(2, &v31);
    serialize(_:at:)(2, &v31);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v22;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    _os_log_impl(&dword_2686B1000, v29, v30, "#SearchForAccountsHandleIntentStrategy makeIntentExecutionBehavior app: %s, intent: %s", buf, 0x16u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v8 = v14[10];
  v7 = v14[8];
  v6 = v14[9];
  MEMORY[0x277D82BD8](v29);
  (*(v6 + 8))(v8, v7);
  type metadata accessor for SiriKitIntentExecutionBehavior();
  v9 = static SiriKitIntentExecutionBehavior.standard()();

  v4 = *(v14[2] + 8);

  return v4(v9);
}

uint64_t SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[72] = v2;
  v3[71] = a2;
  v3[70] = a1;
  v3[59] = v3;
  v3[60] = 0;
  v3[61] = 0;
  v3[62] = 0;
  v3[67] = 0;
  v3[68] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v3[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[74] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[75] = v4;
  v3[76] = *(v4 - 8);
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMR);
  v3[80] = v5;
  v8 = *(v5 - 8);
  v3[81] = v8;
  v3[82] = *(v8 + 64);
  v3[83] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[84] = v6;
  v3[85] = *(v6 - 8);
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v3[89] = swift_task_alloc();
  v3[60] = a2;
  v3[61] = v2;

  return MEMORY[0x2822009F8](SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0);
}

uint64_t SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  v97 = v0;
  v70 = v0[89];
  v1 = v0[88];
  v71 = v0[85];
  v72 = v0[84];
  v77 = v0[83];
  v75 = v0[81];
  v78 = v0[80];
  v74 = v0[71];
  v0[59] = v0;
  v2 = SignpostName.searchForAccountHandleIntent.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v70);
  v3 = Logger.payments.unsafeMutableAddressor();
  v73 = *(v71 + 16);
  v73(v1, v3, v72);
  (*(v75 + 16))(v77, v74, v78);
  v76 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v79 = swift_allocObject();
  (*(v75 + 32))(v79 + v76, v77, v78);
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.debug.getter();
  v81 = swift_allocObject();
  *(v81 + 16) = 32;
  v82 = swift_allocObject();
  *(v82 + 16) = 8;
  v80 = swift_allocObject();
  *(v80 + 16) = partial apply for implicit closure #1 in SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  *(v80 + 24) = v79;
  v83 = swift_allocObject();
  *(v83 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v83 + 24) = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v84 = v4;

  *v84 = partial apply for closure #1 in OSLogArguments.append(_:);
  v84[1] = v81;

  v84[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v84[3] = v82;

  v84[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v84[5] = v83;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v85, v86))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v67 = createStorage<A>(capacity:type:)(0, v65, v65);
    v68 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v92 = buf;
    v93 = v67;
    v94 = v68;
    serialize(_:at:)(2, &v92);
    serialize(_:at:)(1, &v92);
    v95 = partial apply for closure #1 in OSLogArguments.append(_:);
    v96 = v81;
    closure #1 in osLogInternal(_:log:type:)(&v95, &v92, &v93, &v94);
    v95 = partial apply for closure #1 in OSLogArguments.append(_:);
    v96 = v82;
    closure #1 in osLogInternal(_:log:type:)(&v95, &v92, &v93, &v94);
    v95 = partial apply for closure #1 in OSLogArguments.append(_:);
    v96 = v83;
    closure #1 in osLogInternal(_:log:type:)(&v95, &v92, &v93, &v94);
    _os_log_impl(&dword_2686B1000, v85, v86, "#SearchForAccountsHandleIntentStrategy makeIntentHandledResponse response: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v67, 0, v65);
    destroyStorage<A>(_:count:)(v68, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v60 = *(v69 + 704);
  v61 = *(v69 + 672);
  v59 = *(v69 + 680);
  MEMORY[0x277D82BD8](v85);
  v62 = *(v59 + 8);
  v62(v60, v61);
  v63 = IntentResolutionRecord.intentResponse.getter();
  v64 = [v63 code];
  *(v69 + 496) = v64;
  MEMORY[0x277D82BD8](v63);
  if (v64 == 3)
  {
    v57 = IntentResolutionRecord.intentResponse.getter();
    v58 = [v57 accounts];
    if (v58)
    {
      type metadata accessor for INPaymentAccount();
      v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v58);
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    MEMORY[0x277D82BD8](v57);
    v54 = Optional<A>.emptyToNil.getter(v56);
    *(v69 + 720) = v54;
    if (v54)
    {
      v5 = *(v69 + 696);
      v44 = *(v69 + 672);
      *(v69 + 536) = v54;

      v6 = Logger.payments.unsafeMutableAddressor();
      v73(v5, v6, v44);

      v45 = swift_allocObject();
      *(v45 + 16) = v54;

      v46 = swift_allocObject();
      *(v46 + 16) = partial apply for implicit closure #1 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
      *(v46 + 24) = v45;

      oslog = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      v48 = swift_allocObject();
      *(v48 + 16) = 32;
      v49 = swift_allocObject();
      *(v49 + 16) = 8;
      v47 = swift_allocObject();
      *(v47 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_1;
      *(v47 + 24) = v46;
      v50 = swift_allocObject();
      *(v50 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v50 + 24) = v47;
      _allocateUninitializedArray<A>(_:)();
      v51 = v7;

      *v51 = partial apply for closure #1 in OSLogArguments.append(_:);
      v51[1] = v48;

      v51[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v51[3] = v49;

      v51[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v51[5] = v50;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(oslog, v53))
      {
        v41 = static UnsafeMutablePointer.allocate(capacity:)();
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v42 = createStorage<A>(capacity:type:)(0, v40, v40);
        v43 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v87 = v41;
        v88 = v42;
        v89 = v43;
        serialize(_:at:)(2, &v87);
        serialize(_:at:)(1, &v87);
        v90 = partial apply for closure #1 in OSLogArguments.append(_:);
        v91 = v48;
        closure #1 in osLogInternal(_:log:type:)(&v90, &v87, &v88, &v89);
        v90 = partial apply for closure #1 in OSLogArguments.append(_:);
        v91 = v49;
        closure #1 in osLogInternal(_:log:type:)(&v90, &v87, &v88, &v89);
        v90 = partial apply for closure #1 in OSLogArguments.append(_:);
        v91 = v50;
        closure #1 in osLogInternal(_:log:type:)(&v90, &v87, &v88, &v89);
        _os_log_impl(&dword_2686B1000, oslog, v53, "#SearchForAccountsHandleIntentStrategy intent contained accounts: %s", v41, 0xCu);
        destroyStorage<A>(_:count:)(v42, 0, v40);
        destroyStorage<A>(_:count:)(v43, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v41, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v35 = *(v69 + 696);
      v36 = *(v69 + 672);
      v37 = *(v69 + 576);
      MEMORY[0x277D82BD8](oslog);
      v62(v35, v36);

      *(v69 + 728) = *(v37 + 16);

      IntentResolutionRecord.app.getter();
      v38 = App.sirikitApp.getter();
      *(v69 + 736) = v38;

      *(v69 + 744) = type metadata accessor for INPaymentAccount();
      v39 = MEMORY[0x26D620910](v54);
      v8 = swift_task_alloc();
      *(v69 + 752) = v8;
      *v8 = *(v69 + 472);
      v8[1] = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
      v9 = *(v69 + 632);

      return SearchForAccountsCATs.intentHandledResponse(app:bankAccounts:)(v9, v38, *&v39, 0);
    }

    else
    {
      v11 = *(v69 + 688);
      v31 = *(v69 + 672);

      v12 = Logger.payments.unsafeMutableAddressor();
      v73(v11, v12, v31);
      log = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      v34 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v32))
      {
        v27 = static UnsafeMutablePointer.allocate(capacity:)();
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v28 = createStorage<A>(capacity:type:)(0, v26, v26);
        v29 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v69 + 504) = v27;
        *(v69 + 512) = v28;
        *(v69 + 520) = v29;
        serialize(_:at:)(0, (v69 + 504));
        serialize(_:at:)(0, (v69 + 504));
        *(v69 + 528) = v34;
        v30 = swift_task_alloc();
        v30[2] = v69 + 504;
        v30[3] = v69 + 512;
        v30[4] = v69 + 520;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, log, v32, "#SearchForAccountsHandleIntentStrategy could not find accounts in the intent", v27, 2u);
        destroyStorage<A>(_:count:)(v28, 0, v26);
        destroyStorage<A>(_:count:)(v29, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v27, MEMORY[0x277D84B78]);
      }

      v22 = *(v69 + 688);
      v23 = *(v69 + 672);
      v24 = *(v69 + 576);
      MEMORY[0x277D82BD8](log);
      v62(v22, v23);

      *(v69 + 808) = *(v24 + 16);

      IntentResolutionRecord.app.getter();
      v25 = App.sirikitApp.getter();
      *(v69 + 816) = v25;

      v13 = swift_task_alloc();
      *(v69 + 824) = v13;
      *v13 = *(v69 + 472);
      v13[1] = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
      v14 = *(v69 + 624);

      return SearchForAccountsCATs.noResultsResponse(app:)(v14, v25);
    }
  }

  else
  {
    v18 = *(v69 + 576);

    outlined init with copy of GlobalsProviding(v18 + 144, v69 + 16);

    v19 = *(v69 + 40);
    v20 = *(v69 + 48);
    __swift_project_boxed_opaque_existential_1((v69 + 16), v19);
    v21 = (*(v20 + 48) + **(v20 + 48));
    v15 = swift_task_alloc();
    *(v69 + 840) = v15;
    *v15 = *(v69 + 472);
    v15[1] = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v16 = *(v69 + 584);
    v17 = *(v69 + 568);

    return v21(v16, v17, v19, v20);
  }
}

{
  v4 = *v1;
  *(v4 + 472) = *v1;
  *(v4 + 760) = v0;

  if (v0)
  {
    v2 = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {

    v2 = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v10 = v0[90];
  v1 = v0[72];
  v0[59] = v0;
  outlined init with copy of GlobalsProviding(v1 + 184, (v0 + 37));
  v7 = v0[40];
  v8 = v0[41];
  __swift_project_boxed_opaque_existential_1(v0 + 37, v7);
  v5 = IntentResolutionRecord.app.getter();
  v0[96] = v5;
  v6 = IntentResolutionRecord.intent.getter();
  v0[97] = v6;
  v9 = (*(v8 + 8) + **(v8 + 8));
  v2 = swift_task_alloc();
  *(v4 + 784) = v2;
  *v2 = *(v4 + 472);
  v2[1] = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);

  return v9(v10, v5, v6, v7, v8);
}

{
  v1 = v0[99];
  v15 = v0[89];
  v13 = v0[79];
  v12 = v0[76];
  v14 = v0[75];
  v11 = v0[74];
  v7 = v0[72];
  v10 = v0[70];
  v0[59] = v0;
  v0[68] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);

  outlined init with copy of GlobalsProviding(v7 + 104, (v0 + 42));

  v6 = v0[45];
  v5 = v0[46];
  __swift_project_boxed_opaque_existential_1(v0 + 42, v6);
  (*(v5 + 16))(v6);

  BaseStrategy.ttsEnabled.getter();

  Array.subscript.getter();
  v9 = v0[69];

  v8 = BaseStrategy.ttsEnabled.getter();

  static PaymentsContextProvider.handleSearchForAccounts(account:needsSDA:)(v9, v8 & 1, v11);
  MEMORY[0x277D82BD8](v9);
  v2 = type metadata accessor for NLContextUpdate();
  (*(*(v2 - 8) + 56))(v11, 0, 1);
  v0[52] = 0;
  v0[53] = 0;
  v0[54] = 0;
  v0[55] = 0;
  v0[56] = 0;
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v10[3] = type metadata accessor for AceOutput();
  v10[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v10);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 52);
  outlined destroy of NLContextUpdate?(v11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);

  (*(v12 + 8))(v13, v14);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v15);

  v3 = *(v0[59] + 8);

  return v3();
}

{
  v4 = *v1;
  *(v4 + 472) = *v1;
  *(v4 + 832) = v0;

  if (v0)
  {
    v2 = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {

    v2 = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v12 = v0[89];
  v10 = v0[78];
  v9 = v0[76];
  v11 = v0[75];
  v8 = v0[74];
  v6 = v0[72];
  v7 = v0[70];
  v0[59] = v0;

  outlined init with copy of GlobalsProviding(v6 + 104, (v0 + 22));

  v5 = v0[25];
  v4 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v5);
  (*(v4 + 16))(v5);

  BaseStrategy.ttsEnabled.getter();

  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v8, 1);
  v0[32] = 0;
  v0[33] = 0;
  v0[34] = 0;
  v0[35] = 0;
  v0[36] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v7[3] = type metadata accessor for AceOutput();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 32);
  outlined destroy of NLContextUpdate?(v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  (*(v9 + 8))(v10, v11);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v12);

  v2 = *(v0[59] + 8);

  return v2();
}

{
  v4 = *v1;
  *(v4 + 472) = *v1;
  *(v4 + 848) = v0;

  if (v0)
  {
    v2 = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v2 = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[73];
  v0[59] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v17 = v27[89];
    outlined destroy of TemplatingResult?(v27[73]);
    __swift_destroy_boxed_opaque_existential_0(v27 + 2);
    v27[57] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v27[58] = v6;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v8 = type metadata accessor for INSearchForAccountsIntent();
    DefaultStringInterpolation.appendInterpolation(_:)(v8);
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v9);

    v14 = v27[57];
    v13 = v27[58];

    outlined destroy of String.UTF8View((v27 + 57));
    v16 = MEMORY[0x26D620710](v14, v13);
    v15 = v10;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v11 = v16;
    *(v11 + 8) = v15;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = 16;
    swift_willThrow();
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v17);

    v5 = *(v27[59] + 8);
  }

  else
  {
    v26 = v27[89];
    v24 = v27[77];
    v25 = v27[75];
    v22 = v27[74];
    v20 = v27[72];
    v21 = v27[70];
    v23 = v27[76];
    (*(v23 + 32))();
    __swift_destroy_boxed_opaque_existential_0(v27 + 2);

    outlined init with copy of GlobalsProviding(v20 + 104, (v27 + 7));

    v19 = v27[10];
    v18 = v27[11];
    __swift_project_boxed_opaque_existential_1(v27 + 7, v19);
    (*(v18 + 16))(v19);

    BaseStrategy.ttsEnabled.getter();

    v4 = type metadata accessor for NLContextUpdate();
    (*(*(v4 - 8) + 56))(v22, 1);
    v27[17] = 0;
    v27[18] = 0;
    v27[19] = 0;
    v27[20] = 0;
    v27[21] = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v21[3] = type metadata accessor for AceOutput();
    v21[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v21);
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v27 + 17);
    outlined destroy of NLContextUpdate?(v22);
    __swift_destroy_boxed_opaque_existential_0(v27 + 12);
    __swift_destroy_boxed_opaque_existential_0(v27 + 7);
    (*(v23 + 8))(v24, v25);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v26);

    v5 = *(v27[59] + 8);
  }

  return v5();
}

{
  v3 = *(v0 + 712);
  *(v0 + 472) = v0;

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v3);

  v1 = *(*(v0 + 472) + 8);

  return v1();
}

{
  v3 = *(v0 + 712);
  *(v0 + 472) = v0;

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v3);

  v1 = *(*(v0 + 472) + 8);

  return v1();
}

{
  v1 = v0[97];
  v7 = v0[89];
  v5 = v0[79];
  v4 = v0[76];
  v6 = v0[75];
  v0[59] = v0;
  MEMORY[0x277D82BD8](v1);

  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  (*(v4 + 8))(v5, v6);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v7);

  v2 = *(v0[59] + 8);

  return v2();
}

{
  v3 = v0[89];
  v0[59] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v3);

  v1 = *(v0[59] + 8);

  return v1();
}

uint64_t SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1)
{
  v6 = *v2;
  v5 = *v2 + 16;
  v6[59] = *v2;
  v6[99] = a1;
  v6[100] = v1;

  if (v1)
  {
    v3 = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {

    v3 = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t implicit closure #1 in SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMR);
  IntentResolutionRecord.intentResponse.getter();
  type metadata accessor for INSearchForAccountsIntentResponse();
  lazy protocol witness table accessor for type INSearchForAccountsIntentResponse and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t SearchForAccountsHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMR);
  v3[8] = v4;
  v7 = *(v4 - 8);
  v3[9] = v7;
  v3[10] = *(v7 + 64);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](SearchForAccountsHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:), 0);
}

uint64_t SearchForAccountsHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  v36 = v0;
  v1 = v0[14];
  v16 = v0[13];
  v17 = v0[12];
  v21 = v0[11];
  v19 = v0[9];
  v22 = v0[8];
  v18 = v0[6];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  (*(v19 + 16))(v21, v18, v22);
  v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v23 = swift_allocObject();
  (*(v19 + 32))(v23 + v20, v21, v22);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = 64;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #1 in SearchForAccountsHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  *(v24 + 24) = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v27 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v28 = v3;

  *v28 = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[1] = v25;

  v28[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[3] = v26;

  v28[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[5] = v27;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v29, v30))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(1, v11, v11);
    v14 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v31 = buf;
    v32 = v13;
    v33 = v14;
    serialize(_:at:)(2, &v31);
    serialize(_:at:)(1, &v31);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    _os_log_impl(&dword_2686B1000, v29, v30, "#SearchForAccountsHandleIntentStrategy makeFailureHandlingIntentResponse response: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v13, 1, v11);
    destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = v15[14];
  v10 = v15[12];
  v8 = v15[13];
  MEMORY[0x277D82BD8](v29);
  (*(v8 + 8))(v9, v10);
  v4 = swift_task_alloc();
  v15[15] = v4;
  *v4 = v15[2];
  v4[1] = SearchForAccountsHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  v5 = v15[6];
  v6 = v15[5];

  return SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(v6, v5);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  v5 = v4 + 16;

  if (v0)
  {

    v2 = *(*v5 + 8);
  }

  else
  {

    v2 = *(*v5 + 8);
  }

  return v2();
}

uint64_t SearchForAccountsHandleIntentStrategy.deinit()
{
  v1 = BaseStrategy.deinit();
  __swift_destroy_boxed_opaque_existential_0((v1 + 184));
  return v1;
}

uint64_t sub_26884DF24()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  return swift_deallocObject();
}

uint64_t specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  Int.init(bitPattern:)(&v9);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20](v17, a2);
        v15 = partial apply for closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:);
        v16 = &v37;
        specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(partial apply for specialized closure #1 in StaticString.withUTF8Buffer<A>(_:), &v13, v11);
        return v10;
      }

      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/StaticString.swift", 24, 2, 148, 0);
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/AssertCommon.swift", 24, 2, 268, 0);
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/AssertCommon.swift", 24, 2, 269, 0);
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
                    __break(1u);
                  }

                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
                  __break(1u);
                }

                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
                __break(1u);
              }

              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
              __break(1u);
            }

            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
            __break(1u);
          }

          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
          __break(1u);
        }

        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
        __break(1u);
      }

      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/StaticString.swift", 24, 2, 136, 0);
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/AssertCommon.swift", 24, 2, 268, 0);
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/AssertCommon.swift", 24, 2, 269, 0);
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/AssertCommon.swift", 24, 2, 270, 0);
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
                __break(1u);
              }

              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
              __break(1u);
            }

            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
            __break(1u);
          }

          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
          __break(1u);
        }

        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
        __break(1u);
      }

      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
  __break(1u);
  return result;
}

uint64_t sub_26884F20C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMR);

  return implicit closure #1 in SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)();
}

uint64_t sub_26884F584()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in SearchForAccountsHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMR);

  return implicit closure #1 in SearchForAccountsHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)();
}

uint64_t type metadata accessor for SearchForAccountsHandleIntentStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SearchForAccountsHandleIntentStrategy;
  if (!type metadata singleton initialization cache for SearchForAccountsHandleIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for SearchForAccountsHandleIntentStrategy(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t RequestPaymentUnsupportedValueStrategy.__allocating_init()()
{
  v32 = 0;
  v18 = 0;
  v8 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v17 = &v7 - v8;
  v13 = type metadata accessor for Globals();
  v9 = v37;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v37);
  v10 = &v36;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v35;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v12 = &v34;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v1 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v9, v10, v11, v12);
  v26 = v38;
  v38[3] = v13;
  v38[4] = &protocol witness table for Globals;
  v38[0] = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMR);
  v16 = v33;
  outlined init with copy of GlobalsProviding(v26, v33);
  type metadata accessor for PaymentsBaseCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for INRequestPaymentIntent();
  v2 = type metadata accessor for INRequestPaymentIntentResponse();
  v3 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v14, v2);
  v25 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v16, v15, v3);
  v32 = v25;
  v24 = v31;
  outlined init with copy of GlobalsProviding(v26, v31);
  type metadata accessor for RequestPaymentCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v19 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v19);
  v20 = v30;
  v30[3] = &type metadata for CommonLabelsProvider;
  v30[4] = &protocol witness table for CommonLabelsProvider;
  v4 = type metadata accessor for SiriKitContactResolver();
  v21 = v29;
  v29[3] = v4;
  v29[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v29);
  SiriKitContactResolver.init()();

  v22 = &v28;
  v28 = v25;
  v5 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v27 = RequestPaymentUnsupportedValueStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v24, v19, v20, v21, v22, v23, v5);

  v38[5] = v27;

  __swift_destroy_boxed_opaque_existential_0(v26);

  return v27;
}

uint64_t RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 608) = v2;
  *(v3 + 600) = a2;
  *(v3 + 592) = a1;
  *(v3 + 488) = v3;
  *(v3 + 496) = 0;
  *(v3 + 504) = 0;
  *(v3 + 864) = 0;
  *(v3 + 512) = 0;
  *(v3 + 520) = 0;
  *(v3 + 472) = 0;
  *(v3 + 480) = 0;
  *(v3 + 528) = 0;
  *(v3 + 536) = 0;
  *(v3 + 544) = 0;
  *(v3 + 552) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  *(v3 + 616) = v4;
  v9 = *(v4 - 8);
  *(v3 + 624) = v9;
  *(v3 + 632) = *(v9 + 64);
  *(v3 + 640) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v3 + 648) = swift_task_alloc();
  *(v3 + 656) = swift_task_alloc();
  *(v3 + 664) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v3 + 672) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  *(v3 + 680) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  *(v3 + 688) = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  *(v3 + 696) = v5;
  *(v3 + 704) = *(v5 - 8);
  *(v3 + 712) = swift_task_alloc();
  *(v3 + 720) = swift_task_alloc();
  v6 = type metadata accessor for ParameterIdentifier();
  *(v3 + 728) = v6;
  *(v3 + 736) = *(v6 - 8);
  *(v3 + 744) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v3 + 752) = v7;
  *(v3 + 760) = *(v7 - 8);
  *(v3 + 768) = swift_task_alloc();
  *(v3 + 776) = swift_task_alloc();
  *(v3 + 496) = a2;
  *(v3 + 504) = v2;

  return MEMORY[0x2822009F8](RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:), 0);
}

uint64_t RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v69 = v0;
  v1 = v0[97];
  v58 = v0[95];
  v59 = v0[94];
  v0[61] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v60 = *(v58 + 16);
  v60(v1, v2, v59);
  v62 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v63 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v62, v61))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v54 = createStorage<A>(capacity:type:)(0, v52, v52);
    v55 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v57 + 560) = buf;
    *(v57 + 568) = v54;
    *(v57 + 576) = v55;
    serialize(_:at:)(0, (v57 + 560));
    serialize(_:at:)(0, (v57 + 560));
    *(v57 + 584) = v63;
    v56 = swift_task_alloc();
    v56[2] = v57 + 560;
    v56[3] = v57 + 568;
    v56[4] = v57 + 576;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v62, v61, "RequestPaymentUnsupportedValueStrategy makeUnsupportedValueOutput", buf, 2u);
    destroyStorage<A>(_:count:)(v54, 0, v52);
    destroyStorage<A>(_:count:)(v55, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v44 = *(v57 + 776);
  v45 = *(v57 + 752);
  v48 = *(v57 + 744);
  v49 = *(v57 + 728);
  v43 = *(v57 + 760);
  v47 = *(v57 + 736);
  MEMORY[0x277D82BD8](v62);
  v46 = *(v43 + 8);
  v46(v44, v45);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v3;
  v50 = *(v47 + 8);
  v50(v48, v49);
  v4.value = RequestPaymentSlots.init(rawValue:)(rawValue).value;
  *(v57 + 865) = v4;
  if (v4.value == SiriPaymentsIntents_RequestPaymentSlots_unknownDefault)
  {
    v9 = *(v57 + 768);
    v25 = *(v57 + 752);
    v29 = *(v57 + 640);
    v30 = *(v57 + 616);
    v27 = *(v57 + 600);
    v26 = *(v57 + 624);
    v10 = Logger.payments.unsafeMutableAddressor();
    v60(v9, v10, v25);
    (*(v26 + 16))(v29, v27, v30);
    v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v31 = swift_allocObject();
    (*(v26 + 32))(v31 + v28, v29, v30);
    oslog = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = 32;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = partial apply for implicit closure #1 in RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    *(v32 + 24) = v31;
    v35 = swift_allocObject();
    *(v35 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v35 + 24) = v32;
    _allocateUninitializedArray<A>(_:)();
    v36 = v11;

    *v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36[1] = v33;

    v36[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v36[3] = v34;

    v36[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v36[5] = v35;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v38))
    {
      v22 = static UnsafeMutablePointer.allocate(capacity:)();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v23 = createStorage<A>(capacity:type:)(0, v21, v21);
      v24 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v64 = v22;
      v65 = v23;
      v66 = v24;
      serialize(_:at:)(2, &v64);
      serialize(_:at:)(1, &v64);
      v67 = partial apply for closure #1 in OSLogArguments.append(_:);
      v68 = v33;
      closure #1 in osLogInternal(_:log:type:)(&v67, &v64, &v65, &v66);
      v67 = partial apply for closure #1 in OSLogArguments.append(_:);
      v68 = v34;
      closure #1 in osLogInternal(_:log:type:)(&v67, &v64, &v65, &v66);
      v67 = partial apply for closure #1 in OSLogArguments.append(_:);
      v68 = v35;
      closure #1 in osLogInternal(_:log:type:)(&v67, &v64, &v65, &v66);
      _os_log_impl(&dword_2686B1000, oslog, v38, "#RequestPaymentUnsupportedValueStrategy unknown parameter: %s", v22, 0xCu);
      destroyStorage<A>(_:count:)(v23, 0, v21);
      destroyStorage<A>(_:count:)(v24, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v22, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v15 = *(v57 + 768);
    v16 = *(v57 + 752);
    v17 = *(v57 + 744);
    v18 = *(v57 + 728);
    MEMORY[0x277D82BD8](oslog);
    v46(v15, v16);
    ParameterResolutionRecord.parameter.getter();
    v20 = ParameterIdentifier.name.getter();
    v19 = v12;
    v50(v17, v18);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v13 = v20;
    *(v13 + 8) = v19;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 48) = 14;
    swift_willThrow();

    v14 = *(*(v57 + 488) + 8);

    return v14();
  }

  else
  {
    v39 = *(v57 + 608);
    *(v57 + 864) = v4;

    outlined init with copy of GlobalsProviding(v39 + 144, v57 + 16);

    v40 = *(v57 + 40);
    v41 = *(v57 + 48);
    __swift_project_boxed_opaque_existential_1((v57 + 16), v40);
    v42 = (*(v41 + 56) + **(v41 + 56));
    v5 = swift_task_alloc();
    *(v57 + 784) = v5;
    *v5 = *(v57 + 488);
    v5[1] = RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    v6 = *(v57 + 688);
    v7 = *(v57 + 600);

    return v42(v6, v7, v40, v41);
  }
}

{
  v4 = *v1;
  *(v4 + 488) = *v1;
  *(v4 + 792) = v0;

  if (v0)
  {
    v2 = SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  else
  {
    v2 = RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v0[61] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    outlined destroy of TemplatingResult?(*(v48 + 688));
    __swift_destroy_boxed_opaque_existential_0((v48 + 16));
    ParameterResolutionRecord.app.getter();
    v37 = App.sirikitApp.getter();
    *(v48 + 800) = v37;
    *(v48 + 512) = v37;

    v38 = ParameterResolutionRecord.intent.getter();
    *(v48 + 808) = v38;
    *(v48 + 520) = v38;
    v39 = [v38 note];
    if (v39)
    {
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v7;
      MEMORY[0x277D82BD8](v39);
      v35 = v33;
      v36 = v34;
    }

    else
    {
      v35 = 0;
      v36 = 0;
    }

    *(v48 + 816) = v36;
    *(v48 + 472) = v35;
    *(v48 + 480) = v36;
    type metadata accessor for PaymentsDialogConcept.Builder(0);
    v31 = PaymentsDialogConcept.Builder.__allocating_init()();
    *(v48 + 824) = v31;
    *(v48 + 528) = v31;
    v32 = [v38 payer];
    if (v32)
    {
      v26 = *(v48 + 608);
      *(v48 + 552) = v32;
      type metadata accessor for DialogPerson();
      MEMORY[0x277D82BE0](v32);

      outlined init with copy of GlobalsProviding(v26 + 104, v48 + 176);

      v28 = *(v48 + 200);
      v27 = *(v48 + 208);
      __swift_project_boxed_opaque_existential_1((v48 + 176), v28);
      (*(v27 + 16))(v28);
      __swift_project_boxed_opaque_existential_1((v48 + 216), *(v48 + 240));
      dispatch thunk of DeviceState.siriLocale.getter();
      v30 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
      __swift_destroy_boxed_opaque_existential_0((v48 + 216));
      __swift_destroy_boxed_opaque_existential_0((v48 + 176));

      v29 = (v31 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName);
      swift_beginAccess();
      *v29 = v30;

      swift_endAccess();

      MEMORY[0x277D82BD8](v32);
    }

    v25 = [v38 currencyAmount];
    if (v25)
    {
      *(v48 + 544) = v25;
      type metadata accessor for DialogCurrency.Builder();
      DialogCurrency.Builder.__allocating_init()();
      v24 = [v25 amount];
      if (v24)
      {
        [v24 doubleValue];
        MEMORY[0x277D82BD8](v24);
      }

      dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

      v23 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

      swift_beginAccess();
      *(v31 + 16) = v23;

      swift_endAccess();

      MEMORY[0x277D82BD8](v25);
    }

    if (v36)
    {
      v22 = *(v48 + 664);
      String.toSpeakableString.getter();

      v8 = type metadata accessor for SpeakableString();
      (*(*(v8 - 8) + 56))(v22, 0, 1);
    }

    else
    {
      v14 = *(v48 + 664);
      v13 = type metadata accessor for SpeakableString();
      (*(*(v13 - 8) + 56))(v14, 1);
    }

    v19 = *(v48 + 865);
    v17 = *(v48 + 664);
    v15 = *(v48 + 656);
    v20 = *(v48 + 648);
    v18 = *(v48 + 608);
    outlined init with copy of SpeakableString?(v17, v15);
    v16 = (v31 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo);
    swift_beginAccess();
    outlined assign with take of SpeakableString?(v15, v16);
    swift_endAccess();
    outlined destroy of SpeakableString?(v17);

    swift_beginAccess();
    *(v31 + 24) = v37;

    swift_endAccess();

    v21 = PaymentsDialogConcept.Builder.build()();
    *(v48 + 832) = v21;
    *(v48 + 536) = v21;

    *(v48 + 840) = *(v18 + 16);

    RequestPaymentSlots.rawValue.getter(v19);
    String.toSpeakableString.getter();

    v9 = type metadata accessor for SpeakableString();
    (*(*(v9 - 8) + 56))(v20, 0, 1);

    v10 = swift_task_alloc();
    *(v48 + 848) = v10;
    *v10 = *(v48 + 488);
    v10[1] = SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    v11 = *(v48 + 712);
    v12 = *(v48 + 648);

    return RequestPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:)(v11, v12, v21);
  }

  else
  {
    v46 = *(v48 + 720);
    v47 = *(v48 + 696);
    v44 = *(v48 + 680);
    v42 = *(v48 + 608);
    v43 = *(v48 + 592);
    v45 = *(v48 + 704);
    (*(v45 + 32))();
    __swift_destroy_boxed_opaque_existential_0((v48 + 16));

    outlined init with copy of GlobalsProviding(v42 + 104, v48 + 256);

    v41 = *(v48 + 280);
    v40 = *(v48 + 288);
    __swift_project_boxed_opaque_existential_1((v48 + 256), v41);
    (*(v40 + 16))(v41);

    BaseStrategy.ttsEnabled.getter();

    v4 = type metadata accessor for NLContextUpdate();
    (*(*(v4 - 8) + 56))(v44, 1);
    *(v48 + 336) = 0;
    *(v48 + 344) = 0;
    *(v48 + 352) = 0;
    *(v48 + 360) = 0;
    *(v48 + 368) = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v43[3] = type metadata accessor for AceOutput();
    v43[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v43);
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?((v48 + 336));
    outlined destroy of NLContextUpdate?(v44);
    __swift_destroy_boxed_opaque_existential_0((v48 + 296));
    __swift_destroy_boxed_opaque_existential_0((v48 + 256));
    (*(v45 + 8))(v46, v47);

    v5 = *(*(v48 + 488) + 8);

    return v5();
  }
}

uint64_t implicit closure #1 in RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v8 = type metadata accessor for ParameterIdentifier();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v0);
  v7 = &v3 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v9 = ParameterIdentifier.name.getter();
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  return v9;
}

uint64_t RequestPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 112) = v2;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 232) = 0;
  v3 = type metadata accessor for ParameterIdentifier();
  *(v2 + 152) = v3;
  *(v2 + 160) = *(v3 - 8);
  *(v2 + 168) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  *(v2 + 176) = v4;
  v7 = *(v4 - 8);
  *(v2 + 184) = v7;
  *(v2 + 192) = *(v7 + 64);
  *(v2 + 200) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v2 + 208) = v5;
  *(v2 + 216) = *(v5 - 8);
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;

  return MEMORY[0x2822009F8](RequestPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:), 0);
}

uint64_t RequestPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  v88 = v0;
  v58 = v0[28];
  v61 = v0[27];
  v62 = v0[26];
  v67 = v0[25];
  v63 = v0[23];
  v68 = v0[22];
  v64 = v0[18];
  v0[14] = v0;
  v59 = ParameterResolutionRecord.intent.getter();
  v57 = type metadata accessor for INRequestPaymentIntent();
  v60 = SiriKitPaymentsIntent.clone()(v57);
  MEMORY[0x277D82BD8](v59);
  v0[17] = v60;
  v1 = Logger.payments.unsafeMutableAddressor();
  (*(v61 + 16))(v58, v1, v62);
  v65 = *(v63 + 16);
  v65(v67, v64, v68);
  v66 = *(v63 + 80);
  v70 = swift_allocObject();
  v69 = *(v63 + 32);
  v69(v70 + ((v66 + 16) & ~v66), v67, v68);
  v65(v67, v64, v68);
  v72 = swift_allocObject();
  v69(v72 + ((v66 + 16) & ~v66), v67, v68);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.debug.getter();
  v74 = swift_allocObject();
  *(v74 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = 8;
  v71 = swift_allocObject();
  *(v71 + 16) = partial apply for implicit closure #1 in RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  *(v71 + 24) = v70;
  v76 = swift_allocObject();
  *(v76 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v76 + 24) = v71;
  v77 = swift_allocObject();
  *(v77 + 16) = 32;
  v78 = swift_allocObject();
  *(v78 + 16) = 8;
  v73 = swift_allocObject();
  *(v73 + 16) = partial apply for implicit closure #2 in RequestPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:);
  *(v73 + 24) = v72;
  v79 = swift_allocObject();
  *(v79 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v79 + 24) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v80 = v2;

  *v80 = partial apply for closure #1 in OSLogArguments.append(_:);
  v80[1] = v74;

  v80[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v80[3] = v75;

  v80[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v80[5] = v76;

  v80[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v80[7] = v77;

  v80[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v80[9] = v78;

  v80[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v80[11] = v79;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v81, v82))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v54 = createStorage<A>(capacity:type:)(0, v52, v52);
    v55 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v83 = buf;
    v84 = v54;
    v85 = v55;
    serialize(_:at:)(2, &v83);
    serialize(_:at:)(2, &v83);
    v86 = partial apply for closure #1 in OSLogArguments.append(_:);
    v87 = v74;
    closure #1 in osLogInternal(_:log:type:)(&v86, &v83, &v84, &v85);
    v86 = partial apply for closure #1 in OSLogArguments.append(_:);
    v87 = v75;
    closure #1 in osLogInternal(_:log:type:)(&v86, &v83, &v84, &v85);
    v86 = partial apply for closure #1 in OSLogArguments.append(_:);
    v87 = v76;
    closure #1 in osLogInternal(_:log:type:)(&v86, &v83, &v84, &v85);
    v86 = partial apply for closure #1 in OSLogArguments.append(_:);
    v87 = v77;
    closure #1 in osLogInternal(_:log:type:)(&v86, &v83, &v84, &v85);
    v86 = partial apply for closure #1 in OSLogArguments.append(_:);
    v87 = v78;
    closure #1 in osLogInternal(_:log:type:)(&v86, &v83, &v84, &v85);
    v86 = partial apply for closure #1 in OSLogArguments.append(_:);
    v87 = v79;
    closure #1 in osLogInternal(_:log:type:)(&v86, &v83, &v84, &v85);
    _os_log_impl(&dword_2686B1000, v81, v82, "#RequestPaymentUnsupportedValueStrategy updating intent for slot '%s' with index '%s'", buf, 0x16u);
    destroyStorage<A>(_:count:)(v54, 0, v52);
    destroyStorage<A>(_:count:)(v55, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v43 = *(v56 + 224);
  v44 = *(v56 + 208);
  v46 = *(v56 + 168);
  v47 = *(v56 + 152);
  v42 = *(v56 + 216);
  v45 = *(v56 + 160);
  MEMORY[0x277D82BD8](v81);
  (*(v42 + 8))(v43, v44);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v3;
  v48 = *(v45 + 8);
  v48(v46, v47);
  v4.value = RequestPaymentSlots.init(rawValue:)(rawValue).value;
  value = v4.value;
  if (v4.value == SiriPaymentsIntents_RequestPaymentSlots_unknownDefault)
  {
    v20 = *(v56 + 168);
    v14 = *(v56 + 152);
    ParameterResolutionRecord.parameter.getter();
    v15 = ParameterIdentifier.name.getter();
    v16 = v10;
    v48(v20, v14);
    v19 = [swift_getObjCClassFromMetadata() description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v11;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v12 = v15;
    *(v12 + 8) = v16;
    *(v12 + 16) = v18;
    *(v12 + 24) = v17;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    *(v12 + 48) = 2;
    swift_willThrow();
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v60);

    v8 = v51;
    v9 = *(*(v56 + 112) + 8);
  }

  else
  {
    *(v56 + 232) = v4;
    if (v4.value)
    {
      if (v4.value == SiriPaymentsIntents_RequestPaymentSlots_currencyAmount)
      {
        *(v56 + 48) = 0;
        *(v56 + 56) = 0;
        *(v56 + 64) = 0;
        *(v56 + 72) = 0;
        if (*(v56 + 72))
        {
          v31 = *(v56 + 72);
          v29 = __swift_project_boxed_opaque_existential_1((v56 + 48), v31);
          v30 = *(v31 - 8);
          v32 = swift_task_alloc();
          (*(v30 + 16))(v32, v29, v31);
          v33 = _bridgeAnythingToObjectiveC<A>(_:)();
          (*(v30 + 8))(v32, v31);

          __swift_destroy_boxed_opaque_existential_0((v56 + 48));
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        *(v56 + 234) = value;
        lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
        lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
        v6 = Slot<>.propertyName.getter(&type metadata for RequestPaymentSlots, &protocol witness table for RequestPaymentSlots);
        v28 = MEMORY[0x26D620690](v6);

        [v60 setValue:v34 forKey:v28];
        MEMORY[0x277D82BD8](v28);
        swift_unknownObjectRelease();
      }

      else
      {
        *(v56 + 16) = 0;
        *(v56 + 24) = 0;
        *(v56 + 32) = 0;
        *(v56 + 40) = 0;
        if (*(v56 + 40))
        {
          v24 = *(v56 + 40);
          v22 = __swift_project_boxed_opaque_existential_1((v56 + 16), v24);
          v23 = *(v24 - 8);
          v25 = swift_task_alloc();
          (*(v23 + 16))(v25, v22, v24);
          v26 = _bridgeAnythingToObjectiveC<A>(_:)();
          (*(v23 + 8))(v25, v24);

          __swift_destroy_boxed_opaque_existential_0((v56 + 16));
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        *(v56 + 233) = value;
        lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
        lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
        v7 = Slot<>.propertyName.getter(&type metadata for RequestPaymentSlots, &protocol witness table for RequestPaymentSlots);
        v21 = MEMORY[0x26D620690](v7);

        [v60 setValue:v27 forKey:v21];
        MEMORY[0x277D82BD8](v21);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      *(v56 + 80) = 0;
      *(v56 + 88) = 0;
      *(v56 + 96) = 0;
      *(v56 + 104) = 0;
      if (*(v56 + 104))
      {
        v38 = *(v56 + 104);
        v36 = __swift_project_boxed_opaque_existential_1((v56 + 80), v38);
        v37 = *(v38 - 8);
        v39 = swift_task_alloc();
        (*(v37 + 16))(v39, v36, v38);
        v40 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v37 + 8))(v39, v38);

        __swift_destroy_boxed_opaque_existential_0((v56 + 80));
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      *(v56 + 235) = 0;
      lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
      lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
      v5 = Slot<>.propertyName.getter(&type metadata for RequestPaymentSlots, &protocol witness table for RequestPaymentSlots);
      v35 = MEMORY[0x26D620690](v5);

      [v60 setValue:v41 forKey:v35];
      MEMORY[0x277D82BD8](v35);
      swift_unknownObjectRelease();
    }

    v8 = v60;
    v9 = *(*(v56 + 112) + 8);
  }

  return v9(v8);
}

uint64_t implicit closure #2 in RequestPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  v8 = type metadata accessor for ParameterIdentifier();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v0);
  v7 = &v3 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v9 = ParameterIdentifier.multicardinalIndex.getter();
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  v11 = v9;
  v12 = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  return Optional.debugDescription.getter();
}

uint64_t sub_2688531C0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);

  return implicit closure #1 in RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)();
}

uint64_t RequestPaymentUnsupportedValueStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1, a2);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance RequestPaymentUnsupportedValueStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance RequestPaymentUnsupportedValueStrategy(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return RequestPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance RequestPaymentUnsupportedValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for RequestPaymentUnsupportedValueStrategy(0);
  *v5 = *(v8 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E00](a1, a2, v6, a4);
}

uint64_t sub_268853834()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_26885390C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in RequestPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);

  return implicit closure #2 in RequestPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)();
}

uint64_t type metadata accessor for RequestPaymentUnsupportedValueStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for RequestPaymentUnsupportedValueStrategy;
  if (!type metadata singleton initialization cache for RequestPaymentUnsupportedValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t SearchForAccountsUnsupportedValueStrategy.__allocating_init()()
{
  v32 = 0;
  v18 = 0;
  v8 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0);
  v17 = &v7 - v8;
  v13 = type metadata accessor for Globals();
  v9 = v37;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v37);
  v10 = &v36;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v35;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v12 = &v34;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v1 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v9, v10, v11, v12);
  v26 = v38;
  v38[3] = v13;
  v38[4] = &protocol witness table for Globals;
  v38[0] = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMR);
  v16 = v33;
  outlined init with copy of GlobalsProviding(v26, v33);
  type metadata accessor for PaymentsBaseCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for INSearchForAccountsIntent();
  v2 = type metadata accessor for INSearchForAccountsIntentResponse();
  v3 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v14, v2);
  v25 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v16, v15, v3);
  v32 = v25;
  v24 = v31;
  outlined init with copy of GlobalsProviding(v26, v31);
  type metadata accessor for SearchForAccountsCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v19 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v19);
  v20 = v30;
  v30[3] = &type metadata for CommonLabelsProvider;
  v30[4] = &protocol witness table for CommonLabelsProvider;
  v4 = type metadata accessor for SiriKitContactResolver();
  v21 = v29;
  v29[3] = v4;
  v29[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v29);
  SiriKitContactResolver.init()();

  v22 = &v28;
  v28 = v25;
  v5 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSearchForAccountsIntent, INSearchForAccountsIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v27 = SearchForAccountsUnsupportedValueStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v24, v19, v20, v21, v22, v23, v5);

  v38[5] = v27;

  __swift_destroy_boxed_opaque_existential_0(v26);

  return v27;
}

uint64_t SearchForAccountsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 240) = v2;
  *(v3 + 232) = a2;
  *(v3 + 224) = a1;
  *(v3 + 168) = v3;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 392) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  *(v3 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v3 + 256) = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  *(v3 + 264) = v4;
  *(v3 + 272) = *(v4 - 8);
  *(v3 + 280) = swift_task_alloc();
  v5 = type metadata accessor for ParameterIdentifier();
  *(v3 + 288) = v5;
  *(v3 + 296) = *(v5 - 8);
  *(v3 + 304) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 312) = v6;
  *(v3 + 320) = *(v6 - 8);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 176) = a2;
  *(v3 + 184) = v2;

  return MEMORY[0x2822009F8](SearchForAccountsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:), 0);
}

uint64_t SearchForAccountsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v91 = v0;
  v1 = v0[43];
  v75 = v0[40];
  v76 = v0[39];
  v0[21] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v77 = *(v75 + 16);
  v77(v1, v2, v76);
  v79 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v80 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v79, v78))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v71 = createStorage<A>(capacity:type:)(0, v69, v69);
    v72 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v74 + 192) = buf;
    *(v74 + 200) = v71;
    *(v74 + 208) = v72;
    serialize(_:at:)(0, (v74 + 192));
    serialize(_:at:)(0, (v74 + 192));
    *(v74 + 216) = v80;
    v73 = swift_task_alloc();
    v73[2] = v74 + 192;
    v73[3] = v74 + 200;
    v73[4] = v74 + 208;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v79, v78, "#SearchForAccountsUnsupportedValueStrategy makeUnsupportedValueOutput", buf, 2u);
    destroyStorage<A>(_:count:)(v71, 0, v69);
    destroyStorage<A>(_:count:)(v72, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v61 = *(v74 + 344);
  v62 = *(v74 + 312);
  v65 = *(v74 + 304);
  v66 = *(v74 + 288);
  v60 = *(v74 + 320);
  v64 = *(v74 + 296);
  MEMORY[0x277D82BD8](v79);
  v63 = *(v60 + 8);
  v63(v61, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v3;
  *(v74 + 352) = v3;
  *(v74 + 136) = rawValue._countAndFlagsBits;
  *(v74 + 144) = v3;
  (*(v64 + 8))(v65, v66);

  v4.value = SearchForAccountsSlots.init(rawValue:)(rawValue).value;
  value = v4.value;
  if (v4.value == SiriPaymentsIntents_SearchForAccountsSlots_unknownDefault)
  {
    v13 = *(v74 + 328);
    v33 = *(v74 + 312);
    v14 = Logger.payments.unsafeMutableAddressor();
    v77(v13, v14, v33);

    v34 = swift_allocObject();
    *(v34 + 16) = rawValue;
    log = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    v36 = swift_allocObject();
    *(v36 + 16) = 32;
    v37 = swift_allocObject();
    *(v37 + 16) = 8;
    v35 = swift_allocObject();
    *(v35 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
    *(v35 + 24) = v34;
    v38 = swift_allocObject();
    *(v38 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v38 + 24) = v35;
    _allocateUninitializedArray<A>(_:)();
    v39 = v15;

    *v39 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39[1] = v36;

    v39[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v39[3] = v37;

    v39[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v39[5] = v38;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v41))
    {
      v30 = static UnsafeMutablePointer.allocate(capacity:)();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v31 = createStorage<A>(capacity:type:)(0, v29, v29);
      v32 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v81 = v30;
      v82 = v31;
      v83 = v32;
      serialize(_:at:)(2, &v81);
      serialize(_:at:)(1, &v81);
      v84 = partial apply for closure #1 in OSLogArguments.append(_:);
      v85 = v36;
      closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
      v84 = partial apply for closure #1 in OSLogArguments.append(_:);
      v85 = v37;
      closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
      v84 = partial apply for closure #1 in OSLogArguments.append(_:);
      v85 = v38;
      closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
      _os_log_impl(&dword_2686B1000, log, v41, "#SearchForAccountsUnsupportedValueStrategy makeUnsupportedValueOutput parameter name %s was not a known slot", v30, 0xCu);
      destroyStorage<A>(_:count:)(v31, 0, v29);
      destroyStorage<A>(_:count:)(v32, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v30, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v23 = *(v74 + 328);
    v24 = *(v74 + 312);
    MEMORY[0x277D82BD8](log);
    v63(v23, v24);

    *(v74 + 152) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    *(v74 + 160) = v16;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v18 = type metadata accessor for INSearchForAccountsIntent();
    DefaultStringInterpolation.appendInterpolation(_:)(v18);
    v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v19);

    v26 = *(v74 + 152);
    v25 = *(v74 + 160);

    outlined destroy of String.UTF8View(v74 + 152);
    v28 = MEMORY[0x26D620710](v26, v25);
    v27 = v20;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v21 = rawValue;
    *(v21 + 16) = v28;
    *(v21 + 24) = v27;
    *(v21 + 32) = 0;
    *(v21 + 40) = 0;
    *(v21 + 48) = 2;
    swift_willThrow();

    v22 = *(*(v74 + 168) + 8);

    return v22();
  }

  else
  {
    v5 = *(v74 + 336);
    v51 = *(v74 + 312);
    *(v74 + 392) = v4;
    v6 = Logger.payments.unsafeMutableAddressor();
    v77(v5, v6, v51);
    v52 = swift_allocObject();
    *(v52 + 16) = value;
    oslog = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    v54 = swift_allocObject();
    *(v54 + 16) = 32;
    v55 = swift_allocObject();
    *(v55 + 16) = 8;
    v53 = swift_allocObject();
    *(v53 + 16) = partial apply for implicit closure #2 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    *(v53 + 24) = v52;
    v56 = swift_allocObject();
    *(v56 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v56 + 24) = v53;
    _allocateUninitializedArray<A>(_:)();
    v57 = v7;

    *v57 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57[1] = v54;

    v57[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v57[3] = v55;

    v57[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v57[5] = v56;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v59))
    {
      v48 = static UnsafeMutablePointer.allocate(capacity:)();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v49 = createStorage<A>(capacity:type:)(0, v47, v47);
      v50 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v86 = v48;
      v87 = v49;
      v88 = v50;
      serialize(_:at:)(2, &v86);
      serialize(_:at:)(1, &v86);
      v89 = partial apply for closure #1 in OSLogArguments.append(_:);
      v90 = v54;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v86, &v87, &v88);
      v89 = partial apply for closure #1 in OSLogArguments.append(_:);
      v90 = v55;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v86, &v87, &v88);
      v89 = partial apply for closure #1 in OSLogArguments.append(_:);
      v90 = v56;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v86, &v87, &v88);
      _os_log_impl(&dword_2686B1000, oslog, v59, "#SearchForAccountsUnsupportedValueStrategy Slot: %s", v48, 0xCu);
      destroyStorage<A>(_:count:)(v49, 0, v47);
      destroyStorage<A>(_:count:)(v50, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v48, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v42 = *(v74 + 336);
    v43 = *(v74 + 312);
    v45 = *(v74 + 256);
    v44 = *(v74 + 240);
    MEMORY[0x277D82BD8](oslog);
    v63(v42, v43);

    *(v74 + 360) = *(v44 + 16);

    ParameterResolutionRecord.app.getter();
    v46 = App.sirikitApp.getter();
    *(v74 + 368) = v46;

    SearchForAccountsSlots.rawValue.getter(value);
    SpeakableString.init(print:speak:)();
    v8 = type metadata accessor for SpeakableString();
    (*(*(v8 - 8) + 56))(v45, 0, 1);
    v9 = swift_task_alloc();
    *(v74 + 376) = v9;
    *v9 = *(v74 + 168);
    v9[1] = SearchForAccountsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    v10 = *(v74 + 280);
    v11 = *(v74 + 256);

    return SearchForAccountsCATs.unsupportedSlotValue(app:slot:)(v10, v46, v11);
  }
}

{
  v4 = *v1;
  v4[21] = *v1;
  v4[48] = v0;

  if (v0)
  {
    v2 = SearchForAccountsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  else
  {
    outlined destroy of SpeakableString?(v4[32]);

    v2 = SearchForAccountsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v10 = v0[35];
  v8 = v0[34];
  v9 = v0[33];
  v11 = v0[31];
  v6 = v0[30];
  v7 = v0[28];
  v0[21] = v0;

  outlined init with copy of GlobalsProviding(v6 + 104, (v0 + 2));

  v5 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v4 + 16))(v5);

  BaseStrategy.ttsEnabled.getter();

  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v11, 1);
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v7[3] = type metadata accessor for AceOutput();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 12);
  outlined destroy of NLContextUpdate?(v11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v8 + 8))(v10, v9);

  v2 = *(v0[21] + 8);

  return v2();
}

{
  v1 = *(v0 + 256);
  *(v0 + 168) = v0;
  outlined destroy of SpeakableString?(v1);

  v2 = *(*(v0 + 168) + 8);

  return v2();
}