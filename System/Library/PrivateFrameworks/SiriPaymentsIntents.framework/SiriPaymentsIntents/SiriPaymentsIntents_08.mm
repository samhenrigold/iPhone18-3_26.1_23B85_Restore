uint64_t static PaymentsContextProvider.appConfirmationContextUpdate(app:locale:intentType:isRequestAccount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v44 = a6;
  v38 = a1;
  v39 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v33 = 0;
  v46 = type metadata accessor for NLContextUpdate();
  v42 = *(v46 - 8);
  v43 = v46 - 8;
  v26 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = &v25 - v26;
  v52 = &v25 - v26;
  v51 = MEMORY[0x28223BE20](v38, v39);
  v50 = v6;
  v48 = v7;
  v49 = v8;
  v29 = 1;
  v47 = v9 & 1;
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  static PaymentsContextProvider.targetDomain.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v32 = MEMORY[0x277D837D0];
  v28 = _allocateUninitializedArray<A>(_:)();
  v27 = v10;
  v11 = Constants.NLPaymentConfirmationValue.canonicalName.getter(0);
  v12 = v27;
  v13 = v11;
  LOBYTE(v11) = v29;
  *v27 = v13;
  v12[1] = v14;
  v15 = Constants.NLPaymentConfirmationValue.canonicalName.getter(v11);
  v16 = v27;
  v27[2] = v15;
  v16[3] = v17;
  v18 = Constants.NLPaymentConfirmationValue.canonicalName.getter(2);
  v19 = v27;
  v27[4] = v18;
  v19[5] = v20;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  v34 = 1;
  v31 = _allocateUninitializedArray<A>(_:)();
  v30 = v21;
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appName", 7uLL, v29 & 1);
  *v30 = v22;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  v41 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v40 = _allocateUninitializedArray<A>(_:)();
  static PaymentsContextProvider.makeSDAForAppConfirmation(_:locale:intentType:isRequestAccount:)(v38, v39, v35, v36, v37 & 1, v23);
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v42 + 32))(v44, v45, v46);
}

uint64_t static PaymentsContextProvider.appDisambiguationContextUpdate(apps:locale:intentType:isRequestAccount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v20 = a6;
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v42 = partial apply for closure #1 in static PaymentsContextProvider.appDisambiguationContextUpdate(apps:locale:intentType:isRequestAccount:);
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v49 = 0;
  v38 = 0;
  v21 = type metadata accessor for NLContextUpdate();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v18 - v24;
  v56 = v18 - v24;
  v55 = MEMORY[0x28223BE20](v33, v34);
  v54 = v6;
  v52 = v7;
  v53 = v8;
  v29 = 1;
  v51 = v9 & 1;
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  static PaymentsContextProvider.targetDomain.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v28 = 1;
  v32 = MEMORY[0x277D837D0];
  v26 = _allocateUninitializedArray<A>(_:)();
  v25 = v10;
  v11 = Constants.NLPaymentConfirmationValue.canonicalName.getter(2);
  v12 = v25;
  *v25 = v11;
  v12[1] = v13;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  v31 = _allocateUninitializedArray<A>(_:)();
  v30 = v14;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appName", 7uLL, v29 & 1);
  *v30 = v15;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  v50 = v33;
  v39 = &v44;
  v45 = v34;
  v46 = v35;
  v47 = v36;
  v48 = v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  v41 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  lazy protocol witness table accessor for type [App] and conformance [A]();
  v43 = Sequence.compactMap<A>(_:)();
  v19 = v43;
  v49 = v43;
  v18[2] = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v18[1] = _allocateUninitializedArray<A>(_:)();
  static PaymentsContextProvider.makeSDAForAppDisambiguation(choices:)(v19, v16);
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.nluSystemDialogActs.setter();
  static RREntity.makeDisambiguationGroup(with:locale:)(v33, v34);
  NLContextUpdate.rrEntities.setter();
  (*(v22 + 16))(v20, v27, v21);

  return (*(v22 + 8))(v27, v21);
}

uint64_t static PaymentsContextProvider.handleRequestPayment(paymentRecord:needsSDA:)@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = a3;
  v14 = a1;
  v15 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v8 = type metadata accessor for NLContextUpdate();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v6 - v11;
  v18 = v6 - v11;
  v17 = MEMORY[0x28223BE20](v14, v15);
  v12 = 1;
  v16 = v3 & 1;
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  static PaymentsContextProvider.targetDomain.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  static RREntity.makeEntities(for:)(v14);
  NLContextUpdate.rrEntities.setter();
  if (v15)
  {
    v6[1] = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
    v6[0] = _allocateUninitializedArray<A>(_:)();
    static PaymentsContextProvider.makeSDAForRequestPayment()(v4);
    _finalizeUninitializedArray<A>(_:)();
    NLContextUpdate.nluSystemDialogActs.setter();
  }

  return (*(v9 + 32))(v7, v13, v8);
}

uint64_t static PaymentsContextProvider.personDisambiguationContextUpdate(persons:isSend:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v32 = a1;
  v33 = a2;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v31 = 0;
  v40 = type metadata accessor for NLContextUpdate();
  v36 = *(v40 - 8);
  v37 = v40 - 8;
  v22 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = &v22 - v22;
  v43 = &v22 - v22;
  v42 = MEMORY[0x28223BE20](v32, v33);
  v25 = 1;
  v41 = v3 & 1;
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  v26 = 2;
  v30 = MEMORY[0x277D837D0];
  v24 = _allocateUninitializedArray<A>(_:)();
  v23 = v4;
  v27 = 0;
  v5 = Constants.NLPaymentConfirmationValue.canonicalName.getter(0);
  v6 = v23;
  v7 = v5;
  LOBYTE(v5) = v25;
  *v23 = v7;
  v6[1] = v8;
  v9 = Constants.NLPaymentConfirmationValue.canonicalName.getter(v5);
  v10 = v23;
  v23[2] = v9;
  v10[3] = v11;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.nl.Payments", 0x1AuLL, v25 & 1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v29 = _allocateUninitializedArray<A>(_:)();
  v28 = v12;
  v13 = SendPaymentSlots.canonicalName.getter(v27);
  v14 = v28;
  v15 = v13;
  LOBYTE(v13) = v27;
  *v28 = v15;
  v14[1] = v16;
  v17 = RequestPaymentSlots.canonicalName.getter(v13);
  v18 = v28;
  v28[2] = v17;
  v18[3] = v19;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  static RREntity.makeDisambiguationGroup(with:)(v32);
  NLContextUpdate.rrEntities.setter();
  v35 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v34 = _allocateUninitializedArray<A>(_:)();
  static PaymentsContextProvider.makeSDAForDisambiguatePerson(persons:isSend:)(v32, v33 & 1, v20);
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v36 + 32))(v38, v39, v40);
}

uint64_t static PaymentsContextProvider.tccAcceptanceContextUpdate(app:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v17 = a1;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v25 = 0;
  v34 = type metadata accessor for NLContextUpdate();
  v31 = *(v34 - 8);
  v32 = v34 - 8;
  v11[0] = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = v11 - v11[0];
  v37 = v11 - v11[0];
  v36 = MEMORY[0x28223BE20](v17, v2);
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  static PaymentsContextProvider.targetDomain.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  type metadata accessor for SAAceConfirmationContext();
  v30 = SAUIAppPunchOut.__allocating_init()();
  v35 = v30;
  v12 = *MEMORY[0x277D47C00];
  MEMORY[0x277D82BE0](v12);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11[1] = v4;
  v13 = MEMORY[0x26D620690](v3);

  MEMORY[0x277D82BD8](v12);
  [v30 setReason_];
  MEMORY[0x277D82BD8](v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17SAAceSerializable_pMd, &_sSo17SAAceSerializable_pMR);
  v26 = 1;
  v16 = _allocateUninitializedArray<A>(_:)();
  v14 = v5;
  MEMORY[0x277D82BE0](v30);
  *v14 = v30;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.conversationStateAttachments.setter();
  type metadata accessor for MachineUtteranceBuilder();
  v21 = MachineUtteranceBuilder.__allocating_init()();
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appName", 7uLL, 1);
  countAndFlagsBits = v6._countAndFlagsBits;
  object = v6._object;
  App.appIdentifier.getter();
  v19 = v7;
  v22 = dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();

  v23 = dispatch thunk of MachineUtteranceBuilder.build()();
  v24 = v8;

  NLContextUpdate.nlInput.setter();
  v28 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v27 = _allocateUninitializedArray<A>(_:)();
  static PaymentsContextProvider.makeSDAForTCCAcceptance()(v9);
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.nluSystemDialogActs.setter();
  (*(v31 + 16))(v29, v33, v34);
  MEMORY[0x277D82BD8](v30);
  return (*(v31 + 8))(v33, v34);
}

uint64_t static PaymentsContextProvider.needsValueContextUpdate(value:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v15 = a1;
  v24 = 0;
  v27 = closure #1 in static PaymentsContextProvider.needsValueContextUpdate(value:);
  v31 = 0;
  v30 = 0;
  v16 = type metadata accessor for NLContextUpdate();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = v13 - v19;
  v31 = v13 - v19;
  v30 = MEMORY[0x28223BE20](v15, v2);
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  v26 = MEMORY[0x277D837D0];
  v21 = _allocateUninitializedArray<A>(_:)();
  v20 = v3;
  v23 = 1;
  v4 = Constants.NLPaymentConfirmationValue.canonicalName.getter(1);
  v5 = v20;
  *v20 = v4;
  v5[1] = v6;
  v7 = Constants.NLPaymentConfirmationValue.canonicalName.getter(2);
  v8 = v20;
  v20[2] = v7;
  v8[3] = v9;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.nl.Payments", 0x1AuLL, v23 & 1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  static SearchForAccountsSlots.allCases.getter();
  v29 = v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriPaymentsIntents22SearchForAccountsSlotsOGMd, &_sSay19SiriPaymentsIntents22SearchForAccountsSlotsOGMR);
  lazy protocol witness table accessor for type [SearchForAccountsSlots] and conformance [A]();
  v28 = Sequence.compactMap<A>(_:)();
  v13[1] = v28;
  outlined destroy of [SFCardSection](&v29);
  NLContextUpdate.weightedPromptResponseTargets.setter();
  v13[3] = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v13[2] = _allocateUninitializedArray<A>(_:)();
  static PaymentsContextProvider.makeSDAForSearchForAccountNeedsValue(_:)(v15, v11);
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v17 + 32))(v14, v22, v16);
}

{
  v14 = a2;
  v15 = a1;
  v24 = 0;
  v27 = closure #1 in static PaymentsContextProvider.needsValueContextUpdate(value:);
  v31 = 0;
  v30 = 0;
  v16 = type metadata accessor for NLContextUpdate();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = v13 - v19;
  v31 = v13 - v19;
  v30 = MEMORY[0x28223BE20](v15, v2);
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  v26 = MEMORY[0x277D837D0];
  v21 = _allocateUninitializedArray<A>(_:)();
  v20 = v3;
  v23 = 1;
  v4 = Constants.NLPaymentConfirmationValue.canonicalName.getter(1);
  v5 = v20;
  *v20 = v4;
  v5[1] = v6;
  v7 = Constants.NLPaymentConfirmationValue.canonicalName.getter(2);
  v8 = v20;
  v20[2] = v7;
  v8[3] = v9;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.nl.Payments", 0x1AuLL, v23 & 1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  static RequestPaymentSlots.allCases.getter();
  v29 = v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriPaymentsIntents19RequestPaymentSlotsOGMd, &_sSay19SiriPaymentsIntents19RequestPaymentSlotsOGMR);
  lazy protocol witness table accessor for type [RequestPaymentSlots] and conformance [A]();
  v28 = Sequence.compactMap<A>(_:)();
  v13[1] = v28;
  outlined destroy of [SFCardSection](&v29);
  NLContextUpdate.weightedPromptResponseTargets.setter();
  v13[3] = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v13[2] = _allocateUninitializedArray<A>(_:)();
  static PaymentsContextProvider.makeSDAForRequestPaymentNeedsValue(_:)(v15, v11);
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v17 + 32))(v14, v22, v16);
}

uint64_t static PaymentsContextProvider.makeSDAForConfirm(isSend:)@<X0>(unsigned int a1@<W0>, char *a2@<X8>)
{
  v54 = a2;
  v83 = a1;
  v55 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v56 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v57 = partial apply for closure #1 in OSLogArguments.append(_:);
  v58 = partial apply for closure #1 in OSLogArguments.append(_:);
  v59 = partial apply for closure #1 in OSLogArguments.append(_:);
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v60 = 0;
  v75 = 0;
  v61 = type metadata accessor for Logger();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v65 = v26 - v64;
  v66 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v68 = *(v66 - 8);
  v67 = v66 - 8;
  v69 = v68;
  v70 = *(v68 + 64);
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v75, v3);
  v72 = v26 - v71;
  v73 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v26 - v71);
  v74 = v26 - v73;
  v97 = v26 - v73;
  v76 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v75, v6);
  v80 = v26 - v79;
  v81 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v26 - v79);
  v82 = v26 - v81;
  v96 = v26 - v81;
  v84 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v83, v9);
  v88 = v26 - v87;
  v95 = v26 - v87;
  v94 = v10 & 1;
  if (v10)
  {
    type metadata accessor for UsoTaskBuilder_pay_common_Payment();
    v53 = UsoTaskBuilder_pay_common_Payment.__allocating_init()();
  }

  else
  {
    type metadata accessor for UsoTaskBuilder_requestMoney_common_Payment();
    v53 = UsoTaskBuilder_requestMoney_common_Payment.__allocating_init()();
  }

  v11 = v65;
  v35 = v53;
  static Siri_Nlu_External_UserWantedToProceed.from(_:)(v53, v88);

  static Siri_Nlu_External_SystemOffered.from(_:)(v88, v82);
  (*(v77 + 16))(v80, v82, v76);
  Siri_Nlu_External_SystemDialogAct.init(systemOffered:)(v80, v74);
  v12 = Logger.payments.unsafeMutableAddressor();
  (*(v62 + 16))(v11, v12, v61);
  v38 = v69;
  v36 = *(v68 + 16);
  v37 = v68 + 16;
  v36(v72, v74, v66);
  v39 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v42 = 7;
  v43 = swift_allocObject();
  (*(v68 + 32))(v43 + v39, v72, v66);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  v40 = 17;
  v45 = swift_allocObject();
  *(v45 + 16) = 32;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v41 = 32;
  v13 = swift_allocObject();
  v14 = v43;
  v44 = v13;
  *(v13 + 16) = v55;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v44;
  v48 = v15;
  *(v15 + 16) = v56;
  *(v15 + 24) = v16;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v47 = _allocateUninitializedArray<A>(_:)();
  v49 = v17;

  v18 = v45;
  v19 = v49;
  *v49 = v57;
  v19[1] = v18;

  v20 = v46;
  v21 = v49;
  v49[2] = v58;
  v21[3] = v20;

  v22 = v48;
  v23 = v49;
  v49[4] = v59;
  v23[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v51, v52))
  {
    v24 = v60;
    v28 = static UnsafeMutablePointer.allocate(capacity:)();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v29 = createStorage<A>(capacity:type:)(0, v27, v27);
    v30 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v31 = &v93;
    v93 = v28;
    v32 = &v92;
    v92 = v29;
    v33 = &v91;
    v91 = v30;
    serialize(_:at:)(2, &v93);
    serialize(_:at:)(1, v31);
    v89 = v57;
    v90 = v45;
    closure #1 in osLogInternal(_:log:type:)(&v89, v31, v32, v33);
    v34 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v89 = v58;
      v90 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v93, &v92, &v91);
      v26[1] = 0;
      v89 = v59;
      v90 = v48;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_2686B1000, v51, v52, "#PaymentsContextProvider returning SystemOffered for confirm intent %s", v28, 0xCu);
      destroyStorage<A>(_:count:)(v29, 0, v27);
      destroyStorage<A>(_:count:)(v30, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v28, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v51);
  (*(v62 + 8))(v65, v61);
  v36(v54, v74, v66);
  (*(v68 + 8))(v74, v66);
  (*(v77 + 8))(v82, v76);
  return (*(v85 + 8))(v88, v84);
}

uint64_t static PaymentsContextProvider.handleSendPayment(paymentRecord:needsSDA:)@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = a3;
  v14 = a1;
  v15 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v8 = type metadata accessor for NLContextUpdate();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v6 - v11;
  v18 = v6 - v11;
  v17 = MEMORY[0x28223BE20](v14, v15);
  v12 = 1;
  v16 = v3 & 1;
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  static PaymentsContextProvider.targetDomain.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  static RREntity.makeEntities(for:)(v14);
  NLContextUpdate.rrEntities.setter();
  if (v15)
  {
    v6[1] = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
    v6[0] = _allocateUninitializedArray<A>(_:)();
    static PaymentsContextProvider.makeSDAForSendPayment()(v4);
    _finalizeUninitializedArray<A>(_:)();
    NLContextUpdate.nluSystemDialogActs.setter();
  }

  return (*(v9 + 32))(v7, v13, v8);
}

uint64_t static PaymentsContextProvider.makeSDAForSendPayment()@<X0>(char *a1@<X8>)
{
  v30 = a1;
  v55 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v59 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v61 = partial apply for closure #1 in OSLogArguments.append(_:);
  v63 = partial apply for closure #1 in OSLogArguments.append(_:);
  v66 = partial apply for closure #1 in OSLogArguments.append(_:);
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v31 = 0;
  v36 = 0;
  v43 = type metadata accessor for Logger();
  v41 = *(v43 - 8);
  v42 = v43 - 8;
  v32 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1);
  v38 = v21 - v32;
  v33 = (*(*(type metadata accessor for Siri_Nlu_External_SystemPrompted() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36, v2);
  v40 = v21 - v33;
  v53 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v49 = *(v53 - 8);
  v50 = v53 - 8;
  v47 = v49;
  v48 = *(v49 + 64);
  v34 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v36, v3);
  v52 = v21 - v34;
  v35 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v21 - v34);
  v44 = v21 - v35;
  v79 = v21 - v35;
  type metadata accessor for UsoTaskBuilder_pay_common_Payment();
  v39 = UsoTaskBuilder_pay_common_Payment.__allocating_init()();
  v78 = v39;
  type metadata accessor for UsoEntityBuilder_common_Payment();
  v37 = UsoEntityBuilder_common_Payment.__allocating_init()();
  v77 = v37;
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  v6 = v38;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v39, v40);
  Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(v40, v44);
  v7 = Logger.payments.unsafeMutableAddressor();
  (*(v41 + 16))(v6, v7, v43);
  v45 = *(v49 + 16);
  v46 = v49 + 16;
  v45(v52, v44, v53);
  v51 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v57 = 7;
  v58 = swift_allocObject();
  (*(v49 + 32))(v58 + v51, v52, v53);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  v54 = 17;
  v62 = swift_allocObject();
  *(v62 + 16) = 32;
  v64 = swift_allocObject();
  *(v64 + 16) = 8;
  v56 = 32;
  v8 = swift_allocObject();
  v9 = v58;
  v60 = v8;
  *(v8 + 16) = v55;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v60;
  v67 = v10;
  *(v10 + 16) = v59;
  *(v10 + 24) = v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v65 = _allocateUninitializedArray<A>(_:)();
  v68 = v12;

  v13 = v62;
  v14 = v68;
  *v68 = v61;
  v14[1] = v13;

  v15 = v64;
  v16 = v68;
  v68[2] = v63;
  v16[3] = v15;

  v17 = v67;
  v18 = v68;
  v68[4] = v66;
  v18[5] = v17;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v70, v71))
  {
    v19 = v31;
    v23 = static UnsafeMutablePointer.allocate(capacity:)();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v24 = createStorage<A>(capacity:type:)(0, v22, v22);
    v25 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v26 = &v76;
    v76 = v23;
    v27 = &v75;
    v75 = v24;
    v28 = &v74;
    v74 = v25;
    serialize(_:at:)(2, &v76);
    serialize(_:at:)(1, v26);
    v72 = v61;
    v73 = v62;
    closure #1 in osLogInternal(_:log:type:)(&v72, v26, v27, v28);
    v29 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v72 = v63;
      v73 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v72, &v76, &v75, &v74);
      v21[0] = 0;
      v72 = v66;
      v73 = v67;
      closure #1 in osLogInternal(_:log:type:)(&v72, &v76, &v75, &v74);
      _os_log_impl(&dword_2686B1000, v70, v71, "#PaymentsContextProvider returning SystemPrompted for handle SendPayment intent %s", v23, 0xCu);
      destroyStorage<A>(_:count:)(v24, 0, v22);
      destroyStorage<A>(_:count:)(v25, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v23, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v70);
  (*(v41 + 8))(v38, v43);
  v45(v30, v44, v53);
  (*(v49 + 8))(v44, v53);
}

uint64_t static PaymentsContextProvider.makeSDAForRequestPayment()@<X0>(char *a1@<X8>)
{
  v30 = a1;
  v55 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v59 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v61 = partial apply for closure #1 in OSLogArguments.append(_:);
  v63 = partial apply for closure #1 in OSLogArguments.append(_:);
  v66 = partial apply for closure #1 in OSLogArguments.append(_:);
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v31 = 0;
  v36 = 0;
  v43 = type metadata accessor for Logger();
  v41 = *(v43 - 8);
  v42 = v43 - 8;
  v32 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1);
  v38 = v21 - v32;
  v33 = (*(*(type metadata accessor for Siri_Nlu_External_SystemPrompted() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36, v2);
  v40 = v21 - v33;
  v53 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v49 = *(v53 - 8);
  v50 = v53 - 8;
  v47 = v49;
  v48 = *(v49 + 64);
  v34 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v36, v3);
  v52 = v21 - v34;
  v35 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v21 - v34);
  v44 = v21 - v35;
  v79 = v21 - v35;
  type metadata accessor for UsoTaskBuilder_requestMoney_common_Payment();
  v39 = UsoTaskBuilder_requestMoney_common_Payment.__allocating_init()();
  v78 = v39;
  type metadata accessor for UsoEntityBuilder_common_Payment();
  v37 = UsoEntityBuilder_common_Payment.__allocating_init()();
  v77 = v37;
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  v6 = v38;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v39, v40);
  Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(v40, v44);
  v7 = Logger.payments.unsafeMutableAddressor();
  (*(v41 + 16))(v6, v7, v43);
  v45 = *(v49 + 16);
  v46 = v49 + 16;
  v45(v52, v44, v53);
  v51 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v57 = 7;
  v58 = swift_allocObject();
  (*(v49 + 32))(v58 + v51, v52, v53);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  v54 = 17;
  v62 = swift_allocObject();
  *(v62 + 16) = 32;
  v64 = swift_allocObject();
  *(v64 + 16) = 8;
  v56 = 32;
  v8 = swift_allocObject();
  v9 = v58;
  v60 = v8;
  *(v8 + 16) = v55;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v60;
  v67 = v10;
  *(v10 + 16) = v59;
  *(v10 + 24) = v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v65 = _allocateUninitializedArray<A>(_:)();
  v68 = v12;

  v13 = v62;
  v14 = v68;
  *v68 = v61;
  v14[1] = v13;

  v15 = v64;
  v16 = v68;
  v68[2] = v63;
  v16[3] = v15;

  v17 = v67;
  v18 = v68;
  v68[4] = v66;
  v18[5] = v17;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v70, v71))
  {
    v19 = v31;
    v23 = static UnsafeMutablePointer.allocate(capacity:)();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v24 = createStorage<A>(capacity:type:)(0, v22, v22);
    v25 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v26 = &v76;
    v76 = v23;
    v27 = &v75;
    v75 = v24;
    v28 = &v74;
    v74 = v25;
    serialize(_:at:)(2, &v76);
    serialize(_:at:)(1, v26);
    v72 = v61;
    v73 = v62;
    closure #1 in osLogInternal(_:log:type:)(&v72, v26, v27, v28);
    v29 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v72 = v63;
      v73 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v72, &v76, &v75, &v74);
      v21[0] = 0;
      v72 = v66;
      v73 = v67;
      closure #1 in osLogInternal(_:log:type:)(&v72, &v76, &v75, &v74);
      _os_log_impl(&dword_2686B1000, v70, v71, "#PaymentsContextProvider returning SystemPrompted for handle RequestPayment intent %s", v23, 0xCu);
      destroyStorage<A>(_:count:)(v24, 0, v22);
      destroyStorage<A>(_:count:)(v25, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v23, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v70);
  (*(v41 + 8))(v38, v43);
  v45(v30, v44, v53);
  (*(v49 + 8))(v44, v53);
}

uint64_t static PaymentsContextProvider.handleSearchForAccounts(account:needsSDA:)@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = a3;
  v14 = a1;
  v15 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v8 = type metadata accessor for NLContextUpdate();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v6 - v11;
  v18 = v6 - v11;
  v17 = MEMORY[0x28223BE20](v14, v15);
  v12 = 1;
  v16 = v3 & 1;
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  static PaymentsContextProvider.targetDomain.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  static RREntity.makeEntities(for:)(v14);
  NLContextUpdate.rrEntities.setter();
  if (v15)
  {
    v6[1] = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
    v6[0] = _allocateUninitializedArray<A>(_:)();
    static PaymentsContextProvider.makeSDAForSearchForAccount()(v4);
    _finalizeUninitializedArray<A>(_:)();
    NLContextUpdate.nluSystemDialogActs.setter();
  }

  return (*(v9 + 32))(v7, v13, v8);
}

uint64_t static PaymentsContextProvider.makeSDAForSearchForAccount()@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v55 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v59 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v61 = partial apply for closure #1 in OSLogArguments.append(_:);
  v63 = partial apply for closure #1 in OSLogArguments.append(_:);
  v66 = partial apply for closure #1 in OSLogArguments.append(_:);
  v78 = 0;
  v77 = 0;
  v32 = 0;
  v35 = 0;
  v43 = type metadata accessor for Logger();
  v41 = *(v43 - 8);
  v42 = v43 - 8;
  v33 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1);
  v38 = v22 - v33;
  v34 = (*(*(type metadata accessor for Siri_Nlu_External_SystemPrompted() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35, v2);
  v40 = v22 - v34;
  v53 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v49 = *(v53 - 8);
  v50 = v53 - 8;
  v47 = v49;
  v48 = *(v49 + 64);
  v36 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v35, v3);
  v52 = v22 - v36;
  v37 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v22 - v36);
  v44 = v22 - v37;
  v78 = v22 - v37;
  type metadata accessor for UsoTaskBuilder_summarise_common_PaymentAccount();
  v6 = UsoTaskBuilder_summarise_common_PaymentAccount.__allocating_init()();
  v7 = v38;
  v39 = v6;
  v77 = v6;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v6, v40);
  Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(v40, v44);
  v8 = Logger.payments.unsafeMutableAddressor();
  (*(v41 + 16))(v7, v8, v43);
  v45 = *(v49 + 16);
  v46 = v49 + 16;
  v45(v52, v44, v53);
  v51 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v57 = 7;
  v58 = swift_allocObject();
  (*(v49 + 32))(v58 + v51, v52, v53);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  v54 = 17;
  v62 = swift_allocObject();
  *(v62 + 16) = 32;
  v64 = swift_allocObject();
  *(v64 + 16) = 8;
  v56 = 32;
  v9 = swift_allocObject();
  v10 = v58;
  v60 = v9;
  *(v9 + 16) = v55;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v60;
  v67 = v11;
  *(v11 + 16) = v59;
  *(v11 + 24) = v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v65 = _allocateUninitializedArray<A>(_:)();
  v68 = v13;

  v14 = v62;
  v15 = v68;
  *v68 = v61;
  v15[1] = v14;

  v16 = v64;
  v17 = v68;
  v68[2] = v63;
  v17[3] = v16;

  v18 = v67;
  v19 = v68;
  v68[4] = v66;
  v19[5] = v18;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v70, v71))
  {
    v20 = v32;
    v24 = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = createStorage<A>(capacity:type:)(0, v23, v23);
    v26 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v27 = &v76;
    v76 = v24;
    v28 = &v75;
    v75 = v25;
    v29 = &v74;
    v74 = v26;
    serialize(_:at:)(2, &v76);
    serialize(_:at:)(1, v27);
    v72 = v61;
    v73 = v62;
    closure #1 in osLogInternal(_:log:type:)(&v72, v27, v28, v29);
    v30 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v72 = v63;
      v73 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v72, &v76, &v75, &v74);
      v22[0] = 0;
      v72 = v66;
      v73 = v67;
      closure #1 in osLogInternal(_:log:type:)(&v72, &v76, &v75, &v74);
      _os_log_impl(&dword_2686B1000, v70, v71, "#PaymentsContextProvider returning SystemPrompted for handle Search for Accounts intent %s", v24, 0xCu);
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v26, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v24, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v70);
  (*(v41 + 8))(v38, v43);
  v45(v31, v44, v53);
  (*(v49 + 8))(v44, v53);
}

uint64_t closure #1 in static PaymentsContextProvider.needsValueContextUpdate(value:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SearchForAccountsSlots.canonicalName.getter(*a1);
  *a2 = result;
  a2[1] = v3;
  return result;
}

{
  result = RequestPaymentSlots.canonicalName.getter(*a1);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t static PaymentsContextProvider.makeSDAForSearchForAccountNeedsValue(_:)@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v53 = a2;
  v78 = a1;
  v54 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v55 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v56 = partial apply for closure #1 in OSLogArguments.append(_:);
  v57 = partial apply for closure #1 in OSLogArguments.append(_:);
  v58 = partial apply for closure #1 in OSLogArguments.append(_:);
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v59 = 0;
  v80 = 0;
  v76 = 0;
  v60 = type metadata accessor for Logger();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v64 = v22 - v63;
  v65 = (*(*(type metadata accessor for Siri_Nlu_External_SystemPrompted() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76, v3);
  v66 = v22 - v65;
  v67 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v69 = *(v67 - 8);
  v68 = v67 - 8;
  v70 = v69;
  v72 = *(v69 + 64);
  v71 = (v72 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v76, v4);
  v73 = v22 - v71;
  v74 = (v72 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v22 - v71);
  v75 = v22 - v74;
  v89 = v22 - v74;
  v88 = v6;
  type metadata accessor for UsoTaskBuilder_summarise_common_PaymentAccount();
  v77 = UsoTaskBuilder_summarise_common_PaymentAccount.__allocating_init()();
  v87 = v77;
  type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
  v79 = UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
  v86 = v79;
  if (v78)
  {
    if (v78 == 1)
    {
      v49 = 0;
      type metadata accessor for UsoEntityBuilder_common_PaymentAccountType();
      v51 = UsoEntityBuilder_common_PaymentAccountType.__allocating_init()();
      v80 = v51;
      object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v49, 1)._object;
      dispatch thunk of UsoEntityBuilder_common_PaymentAccountType.setName(value:)();

      dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setAccountType(value:)();
    }

    else if (v78 == 2)
    {
      v48 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._object;
      dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setOrganization(value:)();
    }
  }

  else
  {
    v52 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._object;
    dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setNickname(value:)();
  }

  dispatch thunk of Uso_VerbTemplateBuilder_Reference.setReference(value:)();
  v7 = v64;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v77, v66);
  Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(v66, v75);
  v8 = Logger.payments.unsafeMutableAddressor();
  (*(v61 + 16))(v7, v8, v60);
  v33 = v70;
  v31 = *(v69 + 16);
  v32 = v69 + 16;
  v31(v73, v75, v67);
  v34 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v37 = 7;
  v38 = swift_allocObject();
  (*(v69 + 32))(v38 + v34, v73, v67);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  v35 = 17;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v36 = 32;
  v9 = swift_allocObject();
  v10 = v38;
  v39 = v9;
  *(v9 + 16) = v54;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v39;
  v43 = v11;
  *(v11 + 16) = v55;
  *(v11 + 24) = v12;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v42 = _allocateUninitializedArray<A>(_:)();
  v44 = v13;

  v14 = v40;
  v15 = v44;
  *v44 = v56;
  v15[1] = v14;

  v16 = v41;
  v17 = v44;
  v44[2] = v57;
  v17[3] = v16;

  v18 = v43;
  v19 = v44;
  v44[4] = v58;
  v19[5] = v18;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v46, v47))
  {
    v20 = v59;
    v24 = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = createStorage<A>(capacity:type:)(0, v23, v23);
    v26 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v27 = &v85;
    v85 = v24;
    v28 = &v84;
    v84 = v25;
    v29 = &v83;
    v83 = v26;
    serialize(_:at:)(2, &v85);
    serialize(_:at:)(1, v27);
    v81 = v56;
    v82 = v40;
    closure #1 in osLogInternal(_:log:type:)(&v81, v27, v28, v29);
    v30 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v81 = v57;
      v82 = v41;
      closure #1 in osLogInternal(_:log:type:)(&v81, &v85, &v84, &v83);
      v22[1] = 0;
      v81 = v58;
      v82 = v43;
      closure #1 in osLogInternal(_:log:type:)(&v81, &v85, &v84, &v83);
      _os_log_impl(&dword_2686B1000, v46, v47, "#PaymentsContextProvider returning SystemPrompted for handle Search for Accounts intent %s", v24, 0xCu);
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v26, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v24, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v46);
  (*(v61 + 8))(v64, v60);
  v31(v53, v75, v67);
  (*(v69 + 8))(v75, v67);
}

uint64_t static PaymentsContextProvider.needsValueContextUpdate(value:isVerbless:)@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v17 = a3;
  v19 = a1;
  v18 = a2;
  v28 = 0;
  v31 = closure #1 in static PaymentsContextProvider.needsValueContextUpdate(value:isVerbless:);
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v20 = type metadata accessor for NLContextUpdate();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = v16 - v23;
  v36 = v16 - v23;
  v35 = MEMORY[0x28223BE20](v19, v18);
  v27 = 1;
  v34 = v3 & 1;
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  v30 = MEMORY[0x277D837D0];
  v25 = _allocateUninitializedArray<A>(_:)();
  v24 = v4;
  v5 = Constants.NLPaymentConfirmationValue.canonicalName.getter(v27);
  v6 = v24;
  *v24 = v5;
  v6[1] = v7;
  v8 = Constants.NLPaymentConfirmationValue.canonicalName.getter(2);
  v9 = v24;
  v24[2] = v8;
  v9[3] = v10;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.nl.Payments", 0x1AuLL, v27 & 1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  static SendPaymentSlots.allCases.getter();
  v33 = v11;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriPaymentsIntents16SendPaymentSlotsOGMd, &_sSay19SiriPaymentsIntents16SendPaymentSlotsOGMR);
  lazy protocol witness table accessor for type [SendPaymentSlots] and conformance [A]();
  v32 = Sequence.compactMap<A>(_:)();
  v16[6] = v32;
  outlined destroy of [SFCardSection](&v33);
  NLContextUpdate.weightedPromptResponseTargets.setter();
  if (v18)
  {
    v16[4] = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
    v16[3] = _allocateUninitializedArray<A>(_:)();
    static PaymentsContextProvider.makeSDAForVerblessSendPaymentNeedsValue(_:)(v19, v12);
  }

  else
  {
    v16[2] = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
    v16[1] = _allocateUninitializedArray<A>(_:)();
    static PaymentsContextProvider.makeSDAForSendPaymentNeedsValue(_:)(v19, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  v16[5] = v13;
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v21 + 32))(v17, v26, v20);
}

uint64_t closure #1 in static PaymentsContextProvider.needsValueContextUpdate(value:isVerbless:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SendPaymentSlots.canonicalName.getter(*a1);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t static PaymentsContextProvider.makeSDAForVerblessSendPaymentNeedsValue(_:)@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v51 = a2;
  v76 = a1;
  v52 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v53 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v54 = partial apply for closure #1 in OSLogArguments.append(_:);
  v55 = partial apply for closure #1 in OSLogArguments.append(_:);
  v56 = partial apply for closure #1 in OSLogArguments.append(_:);
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v57 = 0;
  v79 = 0;
  v78 = 0;
  v74 = 0;
  v58 = type metadata accessor for Logger();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v62 = v22 - v61;
  v63 = (*(*(type metadata accessor for Siri_Nlu_External_SystemPrompted() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74, v3);
  v64 = v22 - v63;
  v65 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v67 = *(v65 - 8);
  v66 = v65 - 8;
  v68 = v67;
  v70 = *(v67 + 64);
  v69 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v74, v4);
  v71 = v22 - v69;
  v72 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v22 - v69);
  v73 = v22 - v72;
  v88 = v22 - v72;
  v87 = v6;
  type metadata accessor for UsoTaskBuilder_noVerb_common_Payment();
  v75 = UsoTaskBuilder_noVerb_common_Payment.__allocating_init()();
  v86 = v75;
  type metadata accessor for UsoEntityBuilder_common_Payment();
  v77 = UsoEntityBuilder_common_Payment.__allocating_init()();
  v85 = v77;
  if (v76)
  {
    if (v76 == 1)
    {
      type metadata accessor for UsoEntityBuilder_common_CurrencyAmount();
      v49 = UsoEntityBuilder_common_CurrencyAmount.__allocating_init()();
      v79 = v49;

      dispatch thunk of UsoEntityBuilder_common_Payment.setAmount(value:)();
    }

    else
    {
      object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._object;
      dispatch thunk of UsoEntityBuilder_common_Payment.setMemo(value:)();
    }
  }

  else
  {
    type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
    v50 = UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
    v78 = v50;

    dispatch thunk of UsoEntityBuilder_common_Payment.setPayee(value:)();
  }

  dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
  v7 = v62;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v75, v64);
  Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(v64, v73);
  v8 = Logger.payments.unsafeMutableAddressor();
  (*(v59 + 16))(v7, v8, v58);
  v33 = v68;
  v31 = *(v67 + 16);
  v32 = v67 + 16;
  v31(v71, v73, v65);
  v34 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v37 = 7;
  v38 = swift_allocObject();
  (*(v67 + 32))(v38 + v34, v71, v65);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  v35 = 17;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v36 = 32;
  v9 = swift_allocObject();
  v10 = v38;
  v39 = v9;
  *(v9 + 16) = v52;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v39;
  v43 = v11;
  *(v11 + 16) = v53;
  *(v11 + 24) = v12;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v42 = _allocateUninitializedArray<A>(_:)();
  v44 = v13;

  v14 = v40;
  v15 = v44;
  *v44 = v54;
  v15[1] = v14;

  v16 = v41;
  v17 = v44;
  v44[2] = v55;
  v17[3] = v16;

  v18 = v43;
  v19 = v44;
  v44[4] = v56;
  v19[5] = v18;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v46, v47))
  {
    v20 = v57;
    v24 = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = createStorage<A>(capacity:type:)(0, v23, v23);
    v26 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v27 = &v84;
    v84 = v24;
    v28 = &v83;
    v83 = v25;
    v29 = &v82;
    v82 = v26;
    serialize(_:at:)(2, &v84);
    serialize(_:at:)(1, v27);
    v80 = v54;
    v81 = v40;
    closure #1 in osLogInternal(_:log:type:)(&v80, v27, v28, v29);
    v30 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v80 = v55;
      v81 = v41;
      closure #1 in osLogInternal(_:log:type:)(&v80, &v84, &v83, &v82);
      v22[0] = 0;
      v80 = v56;
      v81 = v43;
      closure #1 in osLogInternal(_:log:type:)(&v80, &v84, &v83, &v82);
      _os_log_impl(&dword_2686B1000, v46, v47, "#PaymentsContextProvider returning SystemPrompted for handle verbless Send Payment intent %s", v24, 0xCu);
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v26, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v24, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v46);
  (*(v59 + 8))(v62, v58);
  v31(v51, v73, v65);
  (*(v67 + 8))(v73, v65);
}

uint64_t static PaymentsContextProvider.makeSDAForSendPaymentNeedsValue(_:)@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v51 = a2;
  v76 = a1;
  v52 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v53 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v54 = partial apply for closure #1 in OSLogArguments.append(_:);
  v55 = partial apply for closure #1 in OSLogArguments.append(_:);
  v56 = partial apply for closure #1 in OSLogArguments.append(_:);
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v57 = 0;
  v79 = 0;
  v78 = 0;
  v74 = 0;
  v58 = type metadata accessor for Logger();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v62 = v22 - v61;
  v63 = (*(*(type metadata accessor for Siri_Nlu_External_SystemPrompted() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74, v3);
  v64 = v22 - v63;
  v65 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v67 = *(v65 - 8);
  v66 = v65 - 8;
  v68 = v67;
  v70 = *(v67 + 64);
  v69 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v74, v4);
  v71 = v22 - v69;
  v72 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v22 - v69);
  v73 = v22 - v72;
  v88 = v22 - v72;
  v87 = v6;
  type metadata accessor for UsoTaskBuilder_pay_common_Payment();
  v75 = UsoTaskBuilder_pay_common_Payment.__allocating_init()();
  v86 = v75;
  type metadata accessor for UsoEntityBuilder_common_Payment();
  v77 = UsoEntityBuilder_common_Payment.__allocating_init()();
  v85 = v77;
  if (v76)
  {
    if (v76 == 1)
    {
      type metadata accessor for UsoEntityBuilder_common_CurrencyAmount();
      v49 = UsoEntityBuilder_common_CurrencyAmount.__allocating_init()();
      v79 = v49;

      dispatch thunk of UsoEntityBuilder_common_Payment.setAmount(value:)();
    }

    else
    {
      object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._object;
      dispatch thunk of UsoEntityBuilder_common_Payment.setMemo(value:)();
    }
  }

  else
  {
    type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
    v50 = UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
    v78 = v50;

    dispatch thunk of UsoEntityBuilder_common_Payment.setPayee(value:)();
  }

  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  v7 = v62;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v75, v64);
  Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(v64, v73);
  v8 = Logger.payments.unsafeMutableAddressor();
  (*(v59 + 16))(v7, v8, v58);
  v33 = v68;
  v31 = *(v67 + 16);
  v32 = v67 + 16;
  v31(v71, v73, v65);
  v34 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v37 = 7;
  v38 = swift_allocObject();
  (*(v67 + 32))(v38 + v34, v71, v65);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  v35 = 17;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v36 = 32;
  v9 = swift_allocObject();
  v10 = v38;
  v39 = v9;
  *(v9 + 16) = v52;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v39;
  v43 = v11;
  *(v11 + 16) = v53;
  *(v11 + 24) = v12;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v42 = _allocateUninitializedArray<A>(_:)();
  v44 = v13;

  v14 = v40;
  v15 = v44;
  *v44 = v54;
  v15[1] = v14;

  v16 = v41;
  v17 = v44;
  v44[2] = v55;
  v17[3] = v16;

  v18 = v43;
  v19 = v44;
  v44[4] = v56;
  v19[5] = v18;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v46, v47))
  {
    v20 = v57;
    v24 = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = createStorage<A>(capacity:type:)(0, v23, v23);
    v26 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v27 = &v84;
    v84 = v24;
    v28 = &v83;
    v83 = v25;
    v29 = &v82;
    v82 = v26;
    serialize(_:at:)(2, &v84);
    serialize(_:at:)(1, v27);
    v80 = v54;
    v81 = v40;
    closure #1 in osLogInternal(_:log:type:)(&v80, v27, v28, v29);
    v30 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v80 = v55;
      v81 = v41;
      closure #1 in osLogInternal(_:log:type:)(&v80, &v84, &v83, &v82);
      v22[0] = 0;
      v80 = v56;
      v81 = v43;
      closure #1 in osLogInternal(_:log:type:)(&v80, &v84, &v83, &v82);
      _os_log_impl(&dword_2686B1000, v46, v47, "#PaymentsContextProvider returning SystemPrompted for handle Send Payment intent %s", v24, 0xCu);
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v26, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v24, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v46);
  (*(v59 + 8))(v62, v58);
  v31(v51, v73, v65);
  (*(v67 + 8))(v73, v65);
}

uint64_t static PaymentsContextProvider.makeSDAForRequestPaymentNeedsValue(_:)@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v51 = a2;
  v76 = a1;
  v52 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v53 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v54 = partial apply for closure #1 in OSLogArguments.append(_:);
  v55 = partial apply for closure #1 in OSLogArguments.append(_:);
  v56 = partial apply for closure #1 in OSLogArguments.append(_:);
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v57 = 0;
  v79 = 0;
  v78 = 0;
  v74 = 0;
  v58 = type metadata accessor for Logger();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v62 = v22 - v61;
  v63 = (*(*(type metadata accessor for Siri_Nlu_External_SystemPrompted() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74, v3);
  v64 = v22 - v63;
  v65 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v67 = *(v65 - 8);
  v66 = v65 - 8;
  v68 = v67;
  v70 = *(v67 + 64);
  v69 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v74, v4);
  v71 = v22 - v69;
  v72 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v22 - v69);
  v73 = v22 - v72;
  v88 = v22 - v72;
  v87 = v6;
  type metadata accessor for UsoTaskBuilder_requestMoney_common_Payment();
  v75 = UsoTaskBuilder_requestMoney_common_Payment.__allocating_init()();
  v86 = v75;
  type metadata accessor for UsoEntityBuilder_common_Payment();
  v77 = UsoEntityBuilder_common_Payment.__allocating_init()();
  v85 = v77;
  if (v76)
  {
    if (v76 == 1)
    {
      type metadata accessor for UsoEntityBuilder_common_CurrencyAmount();
      v49 = UsoEntityBuilder_common_CurrencyAmount.__allocating_init()();
      v79 = v49;

      dispatch thunk of UsoEntityBuilder_common_Payment.setAmount(value:)();
    }

    else
    {
      object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._object;
      dispatch thunk of UsoEntityBuilder_common_Payment.setMemo(value:)();
    }
  }

  else
  {
    type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
    v50 = UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
    v78 = v50;

    dispatch thunk of UsoEntityBuilder_common_Payment.setPayer(value:)();
  }

  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  v7 = v62;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v75, v64);
  Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(v64, v73);
  v8 = Logger.payments.unsafeMutableAddressor();
  (*(v59 + 16))(v7, v8, v58);
  v33 = v68;
  v31 = *(v67 + 16);
  v32 = v67 + 16;
  v31(v71, v73, v65);
  v34 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v37 = 7;
  v38 = swift_allocObject();
  (*(v67 + 32))(v38 + v34, v71, v65);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  v35 = 17;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v36 = 32;
  v9 = swift_allocObject();
  v10 = v38;
  v39 = v9;
  *(v9 + 16) = v52;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v39;
  v43 = v11;
  *(v11 + 16) = v53;
  *(v11 + 24) = v12;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v42 = _allocateUninitializedArray<A>(_:)();
  v44 = v13;

  v14 = v40;
  v15 = v44;
  *v44 = v54;
  v15[1] = v14;

  v16 = v41;
  v17 = v44;
  v44[2] = v55;
  v17[3] = v16;

  v18 = v43;
  v19 = v44;
  v44[4] = v56;
  v19[5] = v18;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v46, v47))
  {
    v20 = v57;
    v24 = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = createStorage<A>(capacity:type:)(0, v23, v23);
    v26 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v27 = &v84;
    v84 = v24;
    v28 = &v83;
    v83 = v25;
    v29 = &v82;
    v82 = v26;
    serialize(_:at:)(2, &v84);
    serialize(_:at:)(1, v27);
    v80 = v54;
    v81 = v40;
    closure #1 in osLogInternal(_:log:type:)(&v80, v27, v28, v29);
    v30 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v80 = v55;
      v81 = v41;
      closure #1 in osLogInternal(_:log:type:)(&v80, &v84, &v83, &v82);
      v22[0] = 0;
      v80 = v56;
      v81 = v43;
      closure #1 in osLogInternal(_:log:type:)(&v80, &v84, &v83, &v82);
      _os_log_impl(&dword_2686B1000, v46, v47, "#PaymentsContextProvider returning SystemPrompted for handle Request Payment intent %s", v24, 0xCu);
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v26, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v24, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v46);
  (*(v59 + 8))(v62, v58);
  v31(v51, v73, v65);
  (*(v67 + 8))(v73, v65);
}

uint64_t *static PaymentsContextProvider.makeSDAForDisambiguatePerson(persons:isSend:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v59 = a1;
  v49 = a3;
  v50 = a2;
  v87 = 0;
  v86 = 0;
  v51 = 0;
  v84 = 0;
  v58 = type metadata accessor for Logger();
  v53 = v58;
  v54 = *(v58 - 8);
  v57 = v54;
  v55 = v54;
  v3 = MEMORY[0x28223BE20](v59, v52);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v5;
  v87 = v3;
  v86 = v6;
  v7 = Logger.payments.unsafeMutableAddressor();
  (*(v57 + 16))(v5, v7, v58);

  v67 = 7;
  v68 = swift_allocObject();
  *(v68 + 16) = v59;
  v78 = Logger.logObject.getter();
  v60 = v78;
  v77 = static os_log_type_t.debug.getter();
  v61 = v77;
  v62 = 17;
  v71 = swift_allocObject();
  v63 = v71;
  v64 = 32;
  *(v71 + 16) = 32;
  v8 = swift_allocObject();
  v9 = v64;
  v72 = v8;
  v65 = v8;
  *(v8 + 16) = 8;
  v66 = v9;
  v10 = swift_allocObject();
  v11 = v68;
  v69 = v10;
  *(v10 + 16) = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForDisambiguatePerson(persons:isSend:);
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v69;
  v75 = v12;
  v70 = v12;
  *(v12 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v12 + 24) = v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v73 = _allocateUninitializedArray<A>(_:)();
  v74 = v14;

  v15 = v71;
  v16 = v74;
  *v74 = partial apply for closure #1 in OSLogArguments.append(_:);
  v16[1] = v15;

  v17 = v72;
  v18 = v74;
  v74[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v18[3] = v17;

  v19 = v74;
  v20 = v75;
  v74[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v19[5] = v20;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v78, v77))
  {
    v21 = v51;
    v42 = static UnsafeMutablePointer.allocate(capacity:)();
    v39 = v42;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v43 = createStorage<A>(capacity:type:)(0, v40, v40);
    v41 = v43;
    v45 = 1;
    v44 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v83 = v42;
    v82 = v43;
    v81 = v44;
    v46 = &v83;
    serialize(_:at:)(2, &v83);
    serialize(_:at:)(v45, v46);
    v79 = partial apply for closure #1 in OSLogArguments.append(_:);
    v80 = v63;
    closure #1 in osLogInternal(_:log:type:)(&v79, v46, &v82, &v81);
    v47 = v21;
    v48 = v21;
    if (v21)
    {
      v37 = 0;

      __break(1u);
    }

    else
    {
      v79 = partial apply for closure #1 in OSLogArguments.append(_:);
      v80 = v65;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v83, &v82, &v81);
      v35 = 0;
      v36 = 0;
      v79 = partial apply for closure #1 in OSLogArguments.append(_:);
      v80 = v70;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v83, &v82, &v81);
      v33 = 0;
      v34 = 0;
      _os_log_impl(&dword_2686B1000, v60, v61, "#PaymentsContextProvider creating SDAs for contact disambiguation %s", v39, 0xCu);
      destroyStorage<A>(_:count:)(v41, 0, v40);
      destroyStorage<A>(_:count:)(v44, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v39, MEMORY[0x277D84B78]);

      v38 = v33;
    }
  }

  else
  {
    v22 = v51;

    v38 = v22;
  }

  v23 = v38;

  (*(v55 + 8))(v56, v53);
  v85 = v59;
  v28 = &v27;
  MEMORY[0x28223BE20](&v27, v24);
  v29 = &v27 - 4;
  *(&v27 - 16) = v25 & 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  v31 = type metadata accessor for UsoTaskBuilder();
  lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  v32 = Sequence.compactMap<A>(_:)();
  if (v23)
  {
    result = v28;
    __break(1u);
  }

  else
  {
    v27 = v32;
    v84 = v32;
    static PaymentsContextProvider.makeDisambiguationAct(for:)(v32, v49);
  }

  return result;
}

uint64_t static PaymentsContextProvider.makeSDAForAppConfirmation(_:locale:intentType:isRequestAccount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, char *a6@<X8>)
{
  v75 = a6;
  v103 = a1;
  v106 = a2;
  v113 = a3;
  v104 = a4;
  v105 = a5;
  v76 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v77 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v78 = partial apply for closure #1 in OSLogArguments.append(_:);
  v79 = partial apply for closure #1 in OSLogArguments.append(_:);
  v80 = partial apply for closure #1 in OSLogArguments.append(_:);
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v128 = 0;
  v129 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v81 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v107 = 0;
  v82 = type metadata accessor for Logger();
  v83 = *(v82 - 8);
  v84 = v82 - 8;
  v85 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v6);
  v86 = v33 - v85;
  v87 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v89 = *(v87 - 8);
  v88 = v87 - 8;
  v90 = v89;
  v91 = *(v89 + 64);
  v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v107, v7);
  v93 = v33 - v92;
  v94 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v33 - v92);
  v95 = v33 - v94;
  v134 = v33 - v94;
  v96 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v97 = *(v96 - 8);
  v98 = v96 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v107, v10);
  v100 = v33 - v99;
  v101 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v33 - v99);
  v102 = v33 - v101;
  v133 = v33 - v101;
  v108 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v109 = *(v108 - 8);
  v110 = v108 - 8;
  v111 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v107, v106);
  v112 = v33 - v111;
  v132 = v33 - v111;
  v131 = v13;
  v130 = v14;
  v128 = v15;
  v129 = v16;
  v127 = v17 & 1;
  type metadata accessor for INRequestPaymentIntent();
  if (swift_dynamicCastMetatype())
  {
    v70 = 0;
    type metadata accessor for UsoTaskBuilder_requestMoney_common_Payment();
    v73 = UsoTaskBuilder_requestMoney_common_Payment.__allocating_init()();
    v115 = v73;
    type metadata accessor for UsoEntityBuilder_common_Payment();
    v72 = UsoEntityBuilder_common_Payment.__allocating_init()();
    v114 = v72;
    v71 = App.toUsoEntityBuilder(locale:)(v106);
    dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoAssociatedApp(value:)();

    dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();

    v126 = v73;

    v74 = v73;
  }

  else
  {
    type metadata accessor for INSendPaymentIntent();
    if (swift_dynamicCastMetatype())
    {
      v66 = 0;
      type metadata accessor for UsoTaskBuilder_pay_common_Payment();
      v69 = UsoTaskBuilder_pay_common_Payment.__allocating_init()();
      v117 = v69;
      type metadata accessor for UsoEntityBuilder_common_Payment();
      v68 = UsoEntityBuilder_common_Payment.__allocating_init()();
      v116 = v68;
      v67 = App.toUsoEntityBuilder(locale:)(v106);
      dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoAssociatedApp(value:)();

      dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();

      v126 = v69;

      v74 = v69;
    }

    else
    {
      type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
      v64 = UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
      v125 = v64;
      v65 = App.toUsoEntityBuilder(locale:)(v106);
      dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoAssociatedApp(value:)();

      if (v105)
      {
        type metadata accessor for UsoTaskBuilder_request_common_PaymentAccount();
        v62 = UsoTaskBuilder_request_common_PaymentAccount.__allocating_init()();
        v118 = v62;
        dispatch thunk of Uso_VerbTemplateBuilder_ReferenceSelect.setReference(value:)();

        v126 = v62;

        v63 = v62;
      }

      else
      {
        type metadata accessor for UsoTaskBuilder_summarise_common_PaymentAccount();
        v61 = UsoTaskBuilder_summarise_common_PaymentAccount.__allocating_init()();
        v124 = v61;
        dispatch thunk of Uso_VerbTemplateBuilder_Reference.setReference(value:)();

        v126 = v61;

        v63 = v61;
      }

      v60 = v63;

      v74 = v60;
    }
  }

  v18 = v86;
  v42 = v74;
  static Siri_Nlu_External_UserWantedToProceed.from(_:)(v74, v112);

  static Siri_Nlu_External_SystemOffered.from(_:)(v112, v102);
  (*(v97 + 16))(v100, v102, v96);
  Siri_Nlu_External_SystemDialogAct.init(systemOffered:)(v100, v95);
  v19 = Logger.payments.unsafeMutableAddressor();
  (*(v83 + 16))(v18, v19, v82);
  v45 = v90;
  v43 = *(v89 + 16);
  v44 = v89 + 16;
  v43(v93, v95, v87);
  v46 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v49 = 7;
  v50 = swift_allocObject();
  (*(v89 + 32))(v50 + v46, v93, v87);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  v47 = 17;
  v52 = swift_allocObject();
  *(v52 + 16) = 32;
  v53 = swift_allocObject();
  *(v53 + 16) = 8;
  v48 = 32;
  v20 = swift_allocObject();
  v21 = v50;
  v51 = v20;
  *(v20 + 16) = v76;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v51;
  v55 = v22;
  *(v22 + 16) = v77;
  *(v22 + 24) = v23;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v54 = _allocateUninitializedArray<A>(_:)();
  v56 = v24;

  v25 = v52;
  v26 = v56;
  *v56 = v78;
  v26[1] = v25;

  v27 = v53;
  v28 = v56;
  v56[2] = v79;
  v28[3] = v27;

  v29 = v55;
  v30 = v56;
  v56[4] = v80;
  v30[5] = v29;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v58, v59))
  {
    v31 = v81;
    v35 = static UnsafeMutablePointer.allocate(capacity:)();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v36 = createStorage<A>(capacity:type:)(0, v34, v34);
    v37 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v38 = &v123;
    v123 = v35;
    v39 = &v122;
    v122 = v36;
    v40 = &v121;
    v121 = v37;
    serialize(_:at:)(2, &v123);
    serialize(_:at:)(1, v38);
    v119 = v78;
    v120 = v52;
    closure #1 in osLogInternal(_:log:type:)(&v119, v38, v39, v40);
    v41 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v119 = v79;
      v120 = v53;
      closure #1 in osLogInternal(_:log:type:)(&v119, &v123, &v122, &v121);
      v33[1] = 0;
      v119 = v80;
      v120 = v55;
      closure #1 in osLogInternal(_:log:type:)(&v119, &v123, &v122, &v121);
      _os_log_impl(&dword_2686B1000, v58, v59, "#PaymentsContextProvider returning SystemOffered for confirm intent %s", v35, 0xCu);
      destroyStorage<A>(_:count:)(v36, 0, v34);
      destroyStorage<A>(_:count:)(v37, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v35, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v58);
  (*(v83 + 8))(v86, v82);
  v43(v75, v95, v87);
  (*(v89 + 8))(v95, v87);
  (*(v97 + 8))(v102, v96);
  (*(v109 + 8))(v112, v108);
}

uint64_t closure #1 in static PaymentsContextProvider.appDisambiguationContextUpdate(apps:locale:intentType:isRequestAccount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v32 = a6;
  v21 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v19 = 0;
  v36 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v18 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v6);
  v35 = &v17 - v18;
  v47 = &v17 - v18;
  v20 = (*(*(type metadata accessor for Siri_Nlu_External_UsoGraph() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v7);
  v29 = &v17 - v20;
  v40 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  v22 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v21, v25);
  v30 = &v17 - v22;
  v23 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v39 = &v17 - v23;
  v46 = &v17 - v23;
  v24 = *v11;
  v45 = v24;
  v44 = v12;
  v42 = v13;
  v43 = v14;
  v31 = 1;
  v41 = v15 & 1;
  Siri_Nlu_External_UserStatedTask.init()();
  static PaymentsContextProvider.createUsoGraph(for:locale:intentType:isRequestAccount:)(v25, v28 & 1, v29);
  Siri_Nlu_External_UserStatedTask.task.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v37 + 16))(v30, v39, v40);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  (*(v33 + 16))(v32, v35, v36);
  (*(v33 + 56))(v32, 0, v31, v36);
  (*(v33 + 8))(v35, v36);
  return (*(v37 + 8))(v39, v40);
}

uint64_t static PaymentsContextProvider.createUsoGraph(for:locale:intentType:isRequestAccount:)@<X0>(uint64_t a1@<X1>, char a3@<W4>, uint64_t a4@<X8>)
{
  type metadata accessor for INRequestPaymentIntent();
  if (swift_dynamicCastMetatype())
  {
    type metadata accessor for UsoTaskBuilder_requestMoney_common_Payment();
    UsoTaskBuilder_requestMoney_common_Payment.__allocating_init()();
    type metadata accessor for UsoEntityBuilder_common_Payment();
    UsoEntityBuilder_common_Payment.__allocating_init()();
    App.toUsoEntityBuilder(locale:)(a1);
    dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoAssociatedApp(value:)();

    dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
    UsoTaskBuilder.asUsoGraph()(a4);
  }

  else
  {
    type metadata accessor for INSendPaymentIntent();
    if (swift_dynamicCastMetatype())
    {
      type metadata accessor for UsoTaskBuilder_pay_common_Payment();
      UsoTaskBuilder_pay_common_Payment.__allocating_init()();
      type metadata accessor for UsoEntityBuilder_common_Payment();
      UsoEntityBuilder_common_Payment.__allocating_init()();
      App.toUsoEntityBuilder(locale:)(a1);
      dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoAssociatedApp(value:)();

      dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
      UsoTaskBuilder.asUsoGraph()(a4);
    }

    else
    {
      type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
      UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
      App.toUsoEntityBuilder(locale:)(a1);
      dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoAssociatedApp(value:)();

      if (a3)
      {
        type metadata accessor for UsoTaskBuilder_request_common_PaymentAccount();
        UsoTaskBuilder_request_common_PaymentAccount.__allocating_init()();
        dispatch thunk of Uso_VerbTemplateBuilder_ReferenceSelect.setReference(value:)();
      }

      else
      {
        type metadata accessor for UsoTaskBuilder_summarise_common_PaymentAccount();
        UsoTaskBuilder_summarise_common_PaymentAccount.__allocating_init()();
        dispatch thunk of Uso_VerbTemplateBuilder_Reference.setReference(value:)();
      }

      UsoTaskBuilder.asUsoGraph()(a4);
    }
  }
}

uint64_t static PaymentsContextProvider.makeSDAForAppDisambiguation(choices:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v42 = a1;
  v63 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v67 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v69 = partial apply for closure #1 in OSLogArguments.append(_:);
  v71 = partial apply for closure #1 in OSLogArguments.append(_:);
  v74 = partial apply for closure #1 in OSLogArguments.append(_:);
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v35 = 0;
  v37 = 0;
  v51 = type metadata accessor for Logger();
  v49 = *(v51 - 8);
  v50 = v51 - 8;
  v36 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v43 = v25 - v36;
  v61 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v57 = *(v61 - 8);
  v58 = v61 - 8;
  v55 = v57;
  v56 = *(v57 + 64);
  v38 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v37, v3);
  v60 = v25 - v38;
  v39 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v25 - v38);
  v52 = v25 - v39;
  v87 = v25 - v39;
  v47 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v44 = *(v47 - 8);
  v45 = v47 - 8;
  v40 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v42, v6);
  v48 = v25 - v40;
  v41 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7, v25 - v40);
  v46 = v25 - v41;
  v86 = v25 - v41;
  v85 = v9;
  Siri_Nlu_External_SystemGaveOptions.init()();

  MEMORY[0x26D61F470](v42);
  v10 = v43;
  (*(v44 + 16))(v48, v46, v47);
  Siri_Nlu_External_SystemDialogAct.init(gaveOptions:)(v48, v52);
  v11 = Logger.payments.unsafeMutableAddressor();
  (*(v49 + 16))(v10, v11, v51);
  v53 = *(v57 + 16);
  v54 = v57 + 16;
  v53(v60, v52, v61);
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v65 = 7;
  v66 = swift_allocObject();
  (*(v57 + 32))(v66 + v59, v60, v61);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();
  v62 = 17;
  v70 = swift_allocObject();
  *(v70 + 16) = 32;
  v72 = swift_allocObject();
  *(v72 + 16) = 8;
  v64 = 32;
  v12 = swift_allocObject();
  v13 = v66;
  v68 = v12;
  *(v12 + 16) = v63;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v68;
  v75 = v14;
  *(v14 + 16) = v67;
  *(v14 + 24) = v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v73 = _allocateUninitializedArray<A>(_:)();
  v76 = v16;

  v17 = v70;
  v18 = v76;
  *v76 = v69;
  v18[1] = v17;

  v19 = v72;
  v20 = v76;
  v76[2] = v71;
  v20[3] = v19;

  v21 = v75;
  v22 = v76;
  v76[4] = v74;
  v22[5] = v21;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v78, v79))
  {
    v23 = v35;
    v27 = static UnsafeMutablePointer.allocate(capacity:)();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v28 = createStorage<A>(capacity:type:)(0, v26, v26);
    v29 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v30 = &v84;
    v84 = v27;
    v31 = &v83;
    v83 = v28;
    v32 = &v82;
    v82 = v29;
    serialize(_:at:)(2, &v84);
    serialize(_:at:)(1, v30);
    v80 = v69;
    v81 = v70;
    closure #1 in osLogInternal(_:log:type:)(&v80, v30, v31, v32);
    v33 = v23;
    if (v23)
    {

      __break(1u);
    }

    else
    {
      v80 = v71;
      v81 = v72;
      closure #1 in osLogInternal(_:log:type:)(&v80, &v84, &v83, &v82);
      v25[0] = 0;
      v80 = v74;
      v81 = v75;
      closure #1 in osLogInternal(_:log:type:)(&v80, &v84, &v83, &v82);
      _os_log_impl(&dword_2686B1000, v78, v79, "#PaymentsContextProvider returning SystemGaveOptions for confirm intent %s", v27, 0xCu);
      destroyStorage<A>(_:count:)(v28, 0, v26);
      destroyStorage<A>(_:count:)(v29, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v27, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v78);
  (*(v49 + 8))(v43, v51);
  v53(v34, v52, v61);
  (*(v57 + 8))(v52, v61);
  return (*(v44 + 8))(v46, v47);
}

unint64_t type metadata accessor for SAAceConfirmationContext()
{
  v2 = lazy cache variable for type metadata for SAAceConfirmationContext;
  if (!lazy cache variable for type metadata for SAAceConfirmationContext)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAAceConfirmationContext);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t implicit closure #1 in static PaymentsContextProvider.makeSDAForAppConfirmation(_:locale:intentType:isRequestAccount:)(uint64_t a1)
{
  v3 = a1;
  v6 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v3);
  v7 = &v2 - v4;
  (*(v5 + 16))();
  return String.init<A>(describing:)();
}

uint64_t sub_2687EF39C()
{
  v2 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:)()
{
  v1 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in static PaymentsContextProvider.makeSDAForAppConfirmation(_:locale:intentType:isRequestAccount:)(v2);
}

uint64_t static PaymentsContextProvider.makeSDAForConfirmSearchForAccount(isRequest:)@<X0>(unsigned int a1@<W0>, char *a2@<X8>)
{
  v54 = a2;
  v83 = a1;
  v55 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v56 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v57 = partial apply for closure #1 in OSLogArguments.append(_:);
  v58 = partial apply for closure #1 in OSLogArguments.append(_:);
  v59 = partial apply for closure #1 in OSLogArguments.append(_:);
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v60 = 0;
  v75 = 0;
  v61 = type metadata accessor for Logger();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v65 = v26 - v64;
  v66 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v68 = *(v66 - 8);
  v67 = v66 - 8;
  v69 = v68;
  v70 = *(v68 + 64);
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v75, v3);
  v72 = v26 - v71;
  v73 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v26 - v71);
  v74 = v26 - v73;
  v97 = v26 - v73;
  v76 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v75, v6);
  v80 = v26 - v79;
  v81 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v26 - v79);
  v82 = v26 - v81;
  v96 = v26 - v81;
  v84 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v83, v9);
  v88 = v26 - v87;
  v95 = v26 - v87;
  v94 = v10 & 1;
  if (v10)
  {
    type metadata accessor for UsoTaskBuilder_request_common_PaymentAccount();
    v53 = UsoTaskBuilder_request_common_PaymentAccount.__allocating_init()();
  }

  else
  {
    type metadata accessor for UsoTaskBuilder_summarise_common_PaymentAccount();
    v53 = UsoTaskBuilder_summarise_common_PaymentAccount.__allocating_init()();
  }

  v11 = v65;
  v35 = v53;
  static Siri_Nlu_External_UserWantedToProceed.from(_:)(v53, v88);

  static Siri_Nlu_External_SystemOffered.from(_:)(v88, v82);
  (*(v77 + 16))(v80, v82, v76);
  Siri_Nlu_External_SystemDialogAct.init(systemOffered:)(v80, v74);
  v12 = Logger.payments.unsafeMutableAddressor();
  (*(v62 + 16))(v11, v12, v61);
  v38 = v69;
  v36 = *(v68 + 16);
  v37 = v68 + 16;
  v36(v72, v74, v66);
  v39 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v42 = 7;
  v43 = swift_allocObject();
  (*(v68 + 32))(v43 + v39, v72, v66);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  v40 = 17;
  v45 = swift_allocObject();
  *(v45 + 16) = 32;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v41 = 32;
  v13 = swift_allocObject();
  v14 = v43;
  v44 = v13;
  *(v13 + 16) = v55;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v44;
  v48 = v15;
  *(v15 + 16) = v56;
  *(v15 + 24) = v16;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v47 = _allocateUninitializedArray<A>(_:)();
  v49 = v17;

  v18 = v45;
  v19 = v49;
  *v49 = v57;
  v19[1] = v18;

  v20 = v46;
  v21 = v49;
  v49[2] = v58;
  v21[3] = v20;

  v22 = v48;
  v23 = v49;
  v49[4] = v59;
  v23[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v51, v52))
  {
    v24 = v60;
    v28 = static UnsafeMutablePointer.allocate(capacity:)();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v29 = createStorage<A>(capacity:type:)(0, v27, v27);
    v30 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v31 = &v93;
    v93 = v28;
    v32 = &v92;
    v92 = v29;
    v33 = &v91;
    v91 = v30;
    serialize(_:at:)(2, &v93);
    serialize(_:at:)(1, v31);
    v89 = v57;
    v90 = v45;
    closure #1 in osLogInternal(_:log:type:)(&v89, v31, v32, v33);
    v34 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v89 = v58;
      v90 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v93, &v92, &v91);
      v26[1] = 0;
      v89 = v59;
      v90 = v48;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_2686B1000, v51, v52, "#PaymentsContextProvider returning SystemOffered for confirm Search for Accounts intent %s", v28, 0xCu);
      destroyStorage<A>(_:count:)(v29, 0, v27);
      destroyStorage<A>(_:count:)(v30, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v28, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v51);
  (*(v62 + 8))(v65, v61);
  v36(v54, v74, v66);
  (*(v68 + 8))(v74, v66);
  (*(v77 + 8))(v82, v76);
  return (*(v85 + 8))(v88, v84);
}

uint64_t closure #1 in static PaymentsContextProvider.makeSDAForDisambiguatePerson(persons:isSend:)@<X0>(id *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v19 = *a1;
  v18 = a2 & 1;
  type metadata accessor for UsoEntityBuilder_common_Payment();
  v17 = UsoEntityBuilder_common_Payment.__allocating_init()();
  type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
  v16 = UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
  type metadata accessor for UsoEntityBuilder_common_Person();
  v15 = UsoEntityBuilder_common_Person.__allocating_init()();
  INPerson.uniqueContactIdentifier.getter();
  dispatch thunk of UsoEntityBuilder_common_Person.setName(value:)();

  v14 = [v19 personHandle];
  if (v14)
  {
    v7 = v14;
    MEMORY[0x277D82BE0](v14);
    outlined destroy of SFRichText?(&v14);
    v8 = [v7 value];
    if (v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v3;
      MEMORY[0x277D82BD8](v8);
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x277D82BD8](v7);
    v9 = v6;
  }

  else
  {
    outlined destroy of SFRichText?(&v14);
    v9 = 0;
  }

  if (v9)
  {
    type metadata accessor for UsoEntityBuilder_common_ContactAddress();
    UsoEntityBuilder_common_ContactAddress.__allocating_init()();
    dispatch thunk of UsoEntityBuilder_common_ContactAddress.setValue(value:)();

    dispatch thunk of UsoEntityBuilder_common_Person.setSpecifyingContactAddress(value:)();
  }

  dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setHolder(value:)();

  if (a2)
  {
    dispatch thunk of UsoEntityBuilder_common_Payment.setPayee(value:)();

    type metadata accessor for UsoTaskBuilder_pay_common_Payment();
    v12 = UsoTaskBuilder_pay_common_Payment.__allocating_init()();
    dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();

    *a3 = v12;
  }

  else
  {
    dispatch thunk of UsoEntityBuilder_common_Payment.setPayer(value:)();

    type metadata accessor for UsoTaskBuilder_requestMoney_common_Payment();
    v13 = UsoTaskBuilder_requestMoney_common_Payment.__allocating_init()();
    dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();

    *a3 = v13;
  }
}

void static PaymentsContextProvider.makeDisambiguationAct(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v49 = a1;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v50 = v55;
  v55[0] = 0;
  v55[1] = 0;
  v52 = 0;
  v40 = 0;
  v19 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v23 = &v13 - v22;
  v61 = &v13 - v22;
  v24 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v40, v3);
  v28 = &v13 - v27;
  v29 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, &v13 - v27);
  v30 = &v13 - v29;
  v60 = &v13 - v29;
  v39 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v31 = *(v39 - 8);
  v32 = v39 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v40, v6);
  v34 = &v13 - v33;
  v35 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, &v13 - v33);
  v36 = &v13 - v35;
  v59 = &v13 - v35;
  v37 = (*(*(type metadata accessor for Siri_Nlu_External_UsoGraph() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40, v9);
  v38 = &v13 - v37;
  v41 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v45 = *(v42 + 64);
  v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v40, v39);
  v46 = &v13 - v44;
  v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v11);
  v48 = &v13 - v47;
  v58 = &v13 - v47;
  v57 = v12;
  v56 = _allocateUninitializedArray<A>(_:)();

  v54 = v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology14UsoTaskBuilderCGMd, &_sSay12SiriOntology14UsoTaskBuilderCGMR);
  lazy protocol witness table accessor for type [UsoTaskBuilder] and conformance [A]();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay12SiriOntology14UsoTaskBuilderCGGMd, _ss16IndexingIteratorVySay12SiriOntology14UsoTaskBuilderCGGMR);
    IndexingIterator.next()();
    v17 = v53;
    if (!v53)
    {
      break;
    }

    v16 = v17;
    v15 = v17;
    v52 = v17;
    Siri_Nlu_External_UserStatedTask.init()();
    UsoTaskBuilder.asUsoGraph()(v38);
    Siri_Nlu_External_UserStatedTask.task.setter();
    Siri_Nlu_External_UserDialogAct.init()();
    (*(v42 + 16))(v46, v48, v41);
    Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
    (*(v31 + 16))(v34, v36, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
    Array.append(_:)();
    (*(v31 + 8))(v36, v39);
    (*(v42 + 8))(v48, v41);
  }

  outlined destroy of [SFCardSection](v55);
  Siri_Nlu_External_SystemGaveOptions.init()();
  v14 = &v56;
  v13 = v56;

  MEMORY[0x26D61F470](v13);
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v25 + 16))(v28, v30, v24);
  Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
  (*(v20 + 32))(v18, v23, v19);
  (*(v25 + 8))(v30, v24);
  outlined destroy of [SFCardSection](v14);
}

uint64_t sub_2687F0B34()
{
  v2 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2687F0CD8()
{
  v2 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2687F0E7C()
{
  v2 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2687F1020()
{
  v2 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2687F124C()
{
  v2 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2687F13F0()
{
  v2 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2687F161C()
{
  v2 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2687F190C()
{
  v2 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2687F1AB0()
{
  v2 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2687F1C54()
{
  v2 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [UsoTaskBuilder] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [UsoTaskBuilder] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoTaskBuilder] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology14UsoTaskBuilderCGMd, &_sSay12SiriOntology14UsoTaskBuilderCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UsoTaskBuilder] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t PaymentsLabelCATs.accountType(accountTypeLabel:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v16 = a2;
  v17 = a3;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v15 - v18;
  v32 = MEMORY[0x28223BE20](v23, v16);
  v30 = v4;
  v31 = v5;
  v29 = v3;
  v24 = 1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AccountType", 0x19uLL, 1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountTypeLabel", 0x10uLL, v24 & 1);
  v8 = v23;
  v9 = v25;
  *v22 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v26 = type metadata accessor for SpeakableString();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  if ((*(v27 + 48))(v25, v24) == 1)
  {
    outlined destroy of SpeakableString?(v25);
    v14 = v22;
    v22[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v22;
    v22[2]._object = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
  }

  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsLabelCATs.accountType(accountTypeLabel:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](PaymentsLabelCATs.accountType(accountTypeLabel:), 0);
}

uint64_t PaymentsLabelCATs.accountType(accountTypeLabel:)()
{
  v13 = v0[8];
  v12 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AccountType", 0x19uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountTypeLabel", 0x10uLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v10[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v9 = v10[8];
    p_countAndFlagsBits[5] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v15 + 32))(boxed_opaque_existential_1, v9, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[10] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[11] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v5 = v10[5];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t PaymentsLabelCATs.accountType(accountTypeLabel:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[2] = a2;
  v19 = a1;
  v26 = 0;
  v25 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v13 - v14;
  v26 = MEMORY[0x28223BE20](v19, v3);
  v25 = v2;
  v20 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AccountType", 0x19uLL, 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountTypeLabel", 0x10uLL, v20 & 1);
  v6 = v19;
  v7 = v21;
  *v18 = v5;
  outlined init with copy of SpeakableString?(v6, v7);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v21, v20) == 1)
  {
    outlined destroy of SpeakableString?(v21);
    v12 = v18;
    v18[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  else
  {
    v8 = v18;
    v18[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v21, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v13[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsLabelCATs.amountDisambiguation(amountType:paymentAmount:completion:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v33 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v34 = v22 - v33;
  v45 = MEMORY[0x28223BE20](v40, v30);
  v44 = v5;
  v42 = v6;
  v43 = v7;
  v41 = v4;
  v37 = 1;
  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AmountDisambiguation", 0x22uLL, 1);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v38 = _allocateUninitializedArray<A>(_:)();
  v39 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, v37 & 1);
  *v39 = v9;

  if (v40)
  {
    v29 = v40;
    v28 = v40;
    v10 = type metadata accessor for DialogCurrency();
    v11 = v39;
    v12 = v28;
    v39[2]._object = v10;
    v11[1]._countAndFlagsBits = v12;
  }

  else
  {
    v21 = v39;
    v39[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  v23 = v39 + 4;
  v24 = 1;
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentAmount", 0xDuLL, 1);
  v14 = v30;
  v15 = v34;
  v39[3] = v13;
  outlined init with copy of SpeakableString?(v14, v15);
  v25 = type metadata accessor for SpeakableString();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  if ((*(v26 + 48))(v34, v24) == 1)
  {
    outlined destroy of SpeakableString?(v34);
    v20 = v39;
    v39[4]._countAndFlagsBits = 0;
    v20[4]._object = 0;
    v20[5]._countAndFlagsBits = 0;
    v20[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v23->_countAndFlagsBits;
    v39[5]._object = v25;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v26 + 32))(boxed_opaque_existential_1, v34, v25);
  }

  _finalizeUninitializedArray<A>(_:)();
  v22[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsLabelCATs.amountDisambiguation(amountType:paymentAmount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4[10] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](PaymentsLabelCATs.amountDisambiguation(amountType:paymentAmount:), 0);
}

uint64_t PaymentsLabelCATs.amountDisambiguation(amountType:paymentAmount:)()
{
  v17 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AmountDisambiguation", 0x22uLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v16 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, 1);

  if (v17)
  {
    v14 = v15[7];
    v16[2]._object = type metadata accessor for DialogCurrency();
    v16[1]._countAndFlagsBits = v14;
  }

  else
  {
    v16[1]._countAndFlagsBits = 0;
    v16[1]._object = 0;
    v16[2]._countAndFlagsBits = 0;
    v16[2]._object = 0;
  }

  v11 = v15[10];
  v10 = v15[8];
  v16[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentAmount", 0xDuLL, 1);
  outlined init with copy of SpeakableString?(v10, v11);
  v12 = type metadata accessor for SpeakableString();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1) == 1)
  {
    outlined destroy of SpeakableString?(v15[10]);
    v16[4]._countAndFlagsBits = 0;
    v16[4]._object = 0;
    v16[5]._countAndFlagsBits = 0;
    v16[5]._object = 0;
  }

  else
  {
    v9 = v15[10];
    v16[5]._object = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16[4]._countAndFlagsBits);
    (*(v13 + 32))(boxed_opaque_existential_1, v9, v12);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v15[12] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v15[13] = v4;
  *v4 = v15[2];
  v4[1] = RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:);
  v5 = v15[6];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t PaymentsLabelCATs.amountDisambiguation(amountType:paymentAmount:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v36 = a1;
  v28 = a2;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = v19 - v29;
  v39 = MEMORY[0x28223BE20](v36, v28);
  v38 = v4;
  v37 = v3;
  v33 = 1;
  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AmountDisambiguation", 0x22uLL, 1);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v34 = _allocateUninitializedArray<A>(_:)();
  v35 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, v33 & 1);
  *v35 = v6;

  if (v36)
  {
    v26 = v36;
    v25 = v36;
    v7 = type metadata accessor for DialogCurrency();
    v8 = v35;
    v9 = v25;
    v35[2]._object = v7;
    v8[1]._countAndFlagsBits = v9;
  }

  else
  {
    v18 = v35;
    v35[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  v20 = v35 + 4;
  v21 = 1;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentAmount", 0xDuLL, 1);
  v11 = v28;
  v12 = v30;
  v35[3] = v10;
  outlined init with copy of SpeakableString?(v11, v12);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v30, v21) == 1)
  {
    outlined destroy of SpeakableString?(v30);
    v17 = v35;
    v35[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v20->_countAndFlagsBits;
    v35[5]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v30, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v19[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v19[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsLabelCATs.amountType(amountType:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v16 = a2;
  v17 = a3;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v15 - v18;
  v32 = MEMORY[0x28223BE20](v23, v16);
  v30 = v4;
  v31 = v5;
  v29 = v3;
  v24 = 1;
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AmountType", 0x18uLL, 1);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, v24 & 1);
  v8 = v23;
  v9 = v25;
  *v22 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v26 = type metadata accessor for SpeakableString();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  if ((*(v27 + 48))(v25, v24) == 1)
  {
    outlined destroy of SpeakableString?(v25);
    v14 = v22;
    v22[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v22;
    v22[2]._object = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
  }

  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsLabelCATs.amountType(amountType:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;

  return MEMORY[0x2822009F8](PaymentsLabelCATs.amountType(amountType:), 0);
}

uint64_t PaymentsLabelCATs.amountType(amountType:)()
{
  v13 = v0[8];
  v12 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AmountType", 0x18uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v10[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v9 = v10[8];
    p_countAndFlagsBits[5] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v15 + 32))(boxed_opaque_existential_1, v9, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v10[10] = v7;
  v8 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  v10[11] = v4;
  *v4 = v10[2];
  v4[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v5 = v10[5];

  return v8(v5, v1._countAndFlagsBits, v1._object, v7);
}

uint64_t PaymentsLabelCATs.amountType(amountType:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[2] = a2;
  v19 = a1;
  v26 = 0;
  v25 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v13 - v14;
  v26 = MEMORY[0x28223BE20](v19, v3);
  v25 = v2;
  v20 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AmountType", 0x18uLL, 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v17 = _allocateUninitializedArray<A>(_:)();
  v18 = v4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, v20 & 1);
  v6 = v19;
  v7 = v21;
  *v18 = v5;
  outlined init with copy of SpeakableString?(v6, v7);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v21, v20) == 1)
  {
    outlined destroy of SpeakableString?(v21);
    v12 = v18;
    v18[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  else
  {
    v8 = v18;
    v18[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v21, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v13[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:completion:)(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v33 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v40, v30);
  v34 = v27 - v33;
  v35 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v5, v7);
  v42 = v27 - v35;
  v52 = v8;
  v51 = v9;
  v49 = v10;
  v50 = v11;
  v48 = v4;
  v41 = 1;
  v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#FinancialAccountDisambiguation", 0x2CuLL, 1);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v38 = _allocateUninitializedArray<A>(_:)();
  v39 = v12;
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, v41 & 1);
  v14 = v40;
  v15 = v42;
  *v39 = v13;
  outlined init with copy of SpeakableString?(v14, v15);
  v43 = type metadata accessor for SpeakableString();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = *(v44 + 48);
  v47 = v44 + 48;
  if (v46(v42, v41) == 1)
  {
    outlined destroy of SpeakableString?(v42);
    v26 = v39;
    v39[1]._countAndFlagsBits = 0;
    v26[1]._object = 0;
    v26[2]._countAndFlagsBits = 0;
    v26[2]._object = 0;
  }

  else
  {
    v16 = v39;
    v39[2]._object = v43;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16[1]._countAndFlagsBits);
    (*(v44 + 32))(boxed_opaque_existential_1, v42, v43);
  }

  v28 = v39 + 4;
  v29 = 1;
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
  v19 = v30;
  v20 = v34;
  v39[3] = v18;
  outlined init with copy of SpeakableString?(v19, v20);
  if ((v46)(v34, v29, v43) == 1)
  {
    outlined destroy of SpeakableString?(v34);
    v25 = v39;
    v39[4]._countAndFlagsBits = 0;
    v25[4]._object = 0;
    v25[5]._countAndFlagsBits = 0;
    v25[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v28->_countAndFlagsBits;
    v39[5]._object = v43;
    v22 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v44 + 32))(v22, v34, v43);
  }

  _finalizeUninitializedArray<A>(_:)();
  v27[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v27[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:), 0);
}

uint64_t PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:)()
{
  v17 = v0[11];
  v16 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#FinancialAccountDisambiguation", 0x2CuLL, 1);
  v0[12] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v15 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, 1);
  outlined init with copy of SpeakableString?(v16, v17);
  v18 = type metadata accessor for SpeakableString();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v17, 1) == 1)
  {
    outlined destroy of SpeakableString?(v14[11]);
    v15[1]._countAndFlagsBits = 0;
    v15[1]._object = 0;
    v15[2]._countAndFlagsBits = 0;
    v15[2]._object = 0;
  }

  else
  {
    v13 = v14[11];
    v15[2]._object = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15[1]._countAndFlagsBits);
    (*(v19 + 32))(boxed_opaque_existential_1, v13, v18);
  }

  v12 = v14[10];
  v11 = v14[8];
  v15[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
  outlined init with copy of SpeakableString?(v11, v12);
  if ((v20)(v12, 1, v18) == 1)
  {
    outlined destroy of SpeakableString?(v14[10]);
    v15[4]._countAndFlagsBits = 0;
    v15[4]._object = 0;
    v15[5]._countAndFlagsBits = 0;
    v15[5]._object = 0;
  }

  else
  {
    v10 = v14[10];
    v15[5]._object = v18;
    v4 = __swift_allocate_boxed_opaque_existential_1(&v15[4]._countAndFlagsBits);
    (*(v19 + 32))(v4, v10, v18);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v8 = KeyValuePairs.init(dictionaryLiteral:)();
  v14[13] = v8;
  v9 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v5 = swift_task_alloc();
  v14[14] = v5;
  *v5 = v14[2];
  v5[1] = PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:);
  v6 = v14[6];

  return v9(v6, v1._countAndFlagsBits, v1._object, v8);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:), 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:)@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v36 = a1;
  v28 = a2;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v36, v28);
  v30 = v24 - v29;
  v31 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v38 = v24 - v31;
  v46 = v7;
  v45 = v8;
  v44 = v3;
  v37 = 1;
  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#FinancialAccountDisambiguation", 0x2CuLL, 1);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v34 = _allocateUninitializedArray<A>(_:)();
  v35 = v9;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, v37 & 1);
  v11 = v36;
  v12 = v38;
  *v35 = v10;
  outlined init with copy of SpeakableString?(v11, v12);
  v39 = type metadata accessor for SpeakableString();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = *(v40 + 48);
  v43 = v40 + 48;
  if (v42(v38, v37) == 1)
  {
    outlined destroy of SpeakableString?(v38);
    v23 = v35;
    v35[1]._countAndFlagsBits = 0;
    v23[1]._object = 0;
    v23[2]._countAndFlagsBits = 0;
    v23[2]._object = 0;
  }

  else
  {
    v13 = v35;
    v35[2]._object = v39;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13[1]._countAndFlagsBits);
    (*(v40 + 32))(boxed_opaque_existential_1, v38, v39);
  }

  v25 = v35 + 4;
  v26 = 1;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
  v16 = v28;
  v17 = v30;
  v35[3] = v15;
  outlined init with copy of SpeakableString?(v16, v17);
  if ((v42)(v30, v26, v39) == 1)
  {
    outlined destroy of SpeakableString?(v30);
    v22 = v35;
    v35[4]._countAndFlagsBits = 0;
    v22[4]._object = 0;
    v22[5]._countAndFlagsBits = 0;
    v22[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v25->_countAndFlagsBits;
    v35[5]._object = v39;
    v19 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v40 + 32))(v19, v30, v39);
  }

  _finalizeUninitializedArray<A>(_:)();
  v24[0] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v24[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsLabelCATs.payToday(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#PayToday", 0x16uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsLabelCATs.payToday()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](PaymentsLabelCATs.payToday(), 0);
}

uint64_t PaymentsLabelCATs.payToday()()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#PayToday", 0x16uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v7;
  v8 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v3 = v6[4];

  return v8(v3, v1._countAndFlagsBits, v1._object, v7);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#PayToday", 0x16uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t type metadata accessor for PaymentsLabelCATs(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for PaymentsLabelCATs;
  if (!type metadata singleton initialization cache for PaymentsLabelCATs)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for PaymentsLabelCATs(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t PaymentsLabelCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v18 = a2;
  v15 = a3;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v19 = type metadata accessor for CATOption();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v11 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v4);
  v13 = &v10 - v11;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v20, v5);
  v14 = &v10 - v12;
  v24 = v6;
  v23 = v7;
  v22 = v8;
  v25 = v3;
  outlined init with copy of URL?(v6, &v10 - v12);
  (*(v16 + 16))(v13, v18, v19);
  MEMORY[0x277D82BE0](v15);
  v21 = CATWrapper.init(templateDir:options:globals:)();

  v25 = v21;
  MEMORY[0x277D82BD8](v15);
  (*(v16 + 8))(v18, v19);
  outlined destroy of URL?(v20);

  return v21;
}

uint64_t *SignpostName.makeIntentFromParse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeIntentFromParse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeIntentFromParse;
}

uint64_t static Signpost.begin(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v16 = a4;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v24 = type metadata accessor for OSSignpostID();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v12 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v17, v18);
  v20 = &v11 - v12;
  v13 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v23 = &v11 - v13;
  v28 = &v11 - v13;
  v25 = v7;
  v26 = v8;
  v27 = v9;
  static Signpost.generateSignpostID()();
  v14 = static os_signpost_type_t.begin.getter();
  v15 = *Signpost.paymentsLog.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](v15);
  os_signpost(_:dso:log:name:signpostID:)();
  MEMORY[0x277D82BD8](v15);
  (*(v21 + 16))(v20, v23, v24);
  Signpost.OpenSignpost.init(signpostID:name:)(v20, v17, v18, v19, v16);
  return (*(v21 + 8))(v23, v24);
}

uint64_t *SignpostName.resolveApp.unsafeMutableAddressor()
{
  if (one-time initialization token for resolveApp != -1)
  {
    swift_once();
  }

  return &static SignpostName.resolveApp;
}

uint64_t *SignpostName.makeSendPaymentFlowProducers.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSendPaymentFlowProducers != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSendPaymentFlowProducers;
}

uint64_t *SignpostName.makeRequestPaymentFlowProducers.unsafeMutableAddressor()
{
  if (one-time initialization token for makeRequestPaymentFlowProducers != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeRequestPaymentFlowProducers;
}

uint64_t *SignpostName.makeRequestPaymentIntentHandledResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeRequestPaymentIntentHandledResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeRequestPaymentIntentHandledResponse;
}

uint64_t *SignpostName.makeRequestPaymentContinueInAppResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeRequestPaymentContinueInAppResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeRequestPaymentContinueInAppResponse;
}

uint64_t *SignpostName.makeRequestPaymentFailureHandlingIntentResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeRequestPaymentFailureHandlingIntentResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeRequestPaymentFailureHandlingIntentResponse;
}

uint64_t *SignpostName.makeDisambiguationItemContainer.unsafeMutableAddressor()
{
  if (one-time initialization token for makeDisambiguationItemContainer != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeDisambiguationItemContainer;
}

uint64_t *SignpostName.parseDisambiguationResult.unsafeMutableAddressor()
{
  if (one-time initialization token for parseDisambiguationResult != -1)
  {
    swift_once();
  }

  return &static SignpostName.parseDisambiguationResult;
}

uint64_t *SignpostName.makePromptForDisambiguation.unsafeMutableAddressor()
{
  if (one-time initialization token for makePromptForDisambiguation != -1)
  {
    swift_once();
  }

  return &static SignpostName.makePromptForDisambiguation;
}

uint64_t *SignpostName.transformContactQueryToINPersons.unsafeMutableAddressor()
{
  if (one-time initialization token for transformContactQueryToINPersons != -1)
  {
    swift_once();
  }

  return &static SignpostName.transformContactQueryToINPersons;
}

uint64_t *SignpostName.parseResponseValueNeedsValue.unsafeMutableAddressor()
{
  if (one-time initialization token for parseResponseValueNeedsValue != -1)
  {
    swift_once();
  }

  return &static SignpostName.parseResponseValueNeedsValue;
}

uint64_t one-time initialization function for paymentsLog()
{
  type metadata accessor for OS_os_log();
  LogConst.subsystem.unsafeMutableAddressor();

  LogConst.Category.siriPayments.unsafeMutableAddressor();

  result = OS_os_log.init(subsystem:category:)();
  static Signpost.paymentsLog = result;
  return result;
}

uint64_t *Signpost.paymentsLog.unsafeMutableAddressor()
{
  if (one-time initialization token for paymentsLog != -1)
  {
    swift_once();
  }

  return &static Signpost.paymentsLog;
}

uint64_t static Signpost.paymentsLog.getter()
{
  v0 = Signpost.paymentsLog.unsafeMutableAddressor();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t static Signpost.generateSignpostID()()
{
  v0 = Signpost.paymentsLog.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](*v0);
  return OSSignpostID.init(log:)();
}

uint64_t Signpost.OpenSignpost.init(signpostID:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = type metadata accessor for OSSignpostID();
  (*(*(v5 - 8) + 32))(a5, a1);
  result = type metadata accessor for Signpost.OpenSignpost(0);
  v7 = a5 + *(result + 20);
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  return result;
}

uint64_t static Signpost.begin(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v32 = a8;
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v28 = a4;
  v26 = a5;
  v27 = a6;
  v23 = a7;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v40 = type metadata accessor for OSSignpostID();
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  v21 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v33, v34);
  v36 = &v21 - v21;
  v22 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v39 = &v21 - v22;
  v48 = &v21 - v22;
  v45 = v11;
  v46 = v12;
  v47 = v13;
  v42 = v14;
  v43 = v15;
  v44 = v16;
  v41 = v17;
  static Signpost.generateSignpostID()();
  v29 = static os_signpost_type_t.begin.getter();
  v31 = *Signpost.paymentsLog.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](v31);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  v25 = _allocateUninitializedArray<A>(_:)();
  outlined init with copy of GlobalsProviding(v23, v18);
  _finalizeUninitializedArray<A>(_:)();
  v30 = v19;
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  MEMORY[0x277D82BD8](v31);
  (*(v37 + 16))(v36, v39, v40);
  Signpost.OpenSignpost.init(signpostID:name:)(v36, v33, v34, v35, v32);
  return (*(v37 + 8))(v39, v40);
}

uint64_t static Signpost.event(_:)(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v15 = type metadata accessor for OSSignpostID();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v7 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v6 - v7;
  v17 = MEMORY[0x28223BE20](v9, v10);
  v18 = v3;
  v19 = v4;
  v8 = static os_signpost_type_t.event.getter();
  v16 = *Signpost.paymentsLog.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](v16);
  default argument 4 of os_signpost(_:dso:log:name:signpostID:)();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v12 + 8))(v14, v15);
  return MEMORY[0x277D82BD8](v16);
}

Swift::Void __swiftcall Signpost.OpenSignpost.end()()
{
  v16 = 0;
  v5 = 0;
  v14 = type metadata accessor for OSSignpostID();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v4 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v1);
  v13 = &v4 - v4;
  v16 = v0;
  v10 = static os_signpost_type_t.end.getter();
  v15 = *Signpost.paymentsLog.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](v15);
  v2 = type metadata accessor for Signpost.OpenSignpost(v5);
  v3 = (v6 + *(v2 + 20));
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  (*(v11 + 16))(v13);
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v11 + 8))(v13, v14);
  MEMORY[0x277D82BD8](v15);
}

void one-time initialization function for checkAuthorizationStatus()
{
  SignpostName.init(name:)();
  static SignpostName.checkAuthorizationStatus = v0;
  qword_28029D698 = v1;
  byte_28029D6A0 = v2;
}

uint64_t *SignpostName.checkAuthorizationStatus.unsafeMutableAddressor()
{
  if (one-time initialization token for checkAuthorizationStatus != -1)
  {
    swift_once();
  }

  return &static SignpostName.checkAuthorizationStatus;
}

void one-time initialization function for findFlowForX()
{
  SignpostName.init(name:)();
  static SignpostName.findFlowForX = v0;
  qword_28029D6B0 = v1;
  byte_28029D6B8 = v2;
}

uint64_t *SignpostName.findFlowForX.unsafeMutableAddressor()
{
  if (one-time initialization token for findFlowForX != -1)
  {
    swift_once();
  }

  return &static SignpostName.findFlowForX;
}

void one-time initialization function for emitIntentSignal()
{
  SignpostName.init(name:)();
  static SignpostName.emitIntentSignal = v0;
  qword_28029D6C8 = v1;
  byte_28029D6D0 = v2;
}

uint64_t *SignpostName.emitIntentSignal.unsafeMutableAddressor()
{
  if (one-time initialization token for emitIntentSignal != -1)
  {
    swift_once();
  }

  return &static SignpostName.emitIntentSignal;
}

void one-time initialization function for makeIntentFromParse()
{
  SignpostName.init(name:)();
  static SignpostName.makeIntentFromParse = v0;
  qword_28029D6E0 = v1;
  byte_28029D6E8 = v2;
}

void one-time initialization function for makeSendPaymentFlowProducers()
{
  SignpostName.init(name:)();
  static SignpostName.makeSendPaymentFlowProducers = v0;
  qword_28029D6F8 = v1;
  byte_28029D700 = v2;
}

void one-time initialization function for makeRequestPaymentFlowProducers()
{
  SignpostName.init(name:)();
  static SignpostName.makeRequestPaymentFlowProducers = v0;
  qword_28029D710 = v1;
  byte_28029D718 = v2;
}

void one-time initialization function for makeSearchForAccountsFlowProducers()
{
  SignpostName.init(name:)();
  static SignpostName.makeSearchForAccountsFlowProducers = v0;
  qword_28029D728 = v1;
  byte_28029D730 = v2;
}

uint64_t *SignpostName.makeSearchForAccountsFlowProducers.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSearchForAccountsFlowProducers != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSearchForAccountsFlowProducers;
}

void one-time initialization function for makeSendPaymentIntentHandledResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeSendPaymentIntentHandledResponse = v0;
  qword_28029D740 = v1;
  byte_28029D748 = v2;
}

uint64_t *SignpostName.makeSendPaymentIntentHandledResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSendPaymentIntentHandledResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSendPaymentIntentHandledResponse;
}

void one-time initialization function for makeSendPaymentIntentPromptForValue()
{
  SignpostName.init(name:)();
  static SignpostName.makeSendPaymentIntentPromptForValue = v0;
  qword_28029D758 = v1;
  byte_28029D760 = v2;
}

uint64_t *SignpostName.makeSendPaymentIntentPromptForValue.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSendPaymentIntentPromptForValue != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSendPaymentIntentPromptForValue;
}

void one-time initialization function for makeSendPaymentPromptForConfirm()
{
  SignpostName.init(name:)();
  static SignpostName.makeSendPaymentPromptForConfirm = v0;
  qword_28029D770 = v1;
  byte_28029D778 = v2;
}

uint64_t *SignpostName.makeSendPaymentPromptForConfirm.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSendPaymentPromptForConfirm != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSendPaymentPromptForConfirm;
}

void one-time initialization function for makeSendPaymentErrorResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeSendPaymentErrorResponse = v0;
  qword_28029D788 = v1;
  byte_28029D790 = v2;
}

uint64_t *SignpostName.makeSendPaymentErrorResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSendPaymentErrorResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSendPaymentErrorResponse;
}

void one-time initialization function for makeSendPaymentContinueInAppResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeSendPaymentContinueInAppResponse = v0;
  qword_28029D7A0 = v1;
  byte_28029D7A8 = v2;
}

uint64_t *SignpostName.makeSendPaymentContinueInAppResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSendPaymentContinueInAppResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSendPaymentContinueInAppResponse;
}

void one-time initialization function for makeSendPaymentFailureHandlingIntentResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeSendPaymentFailureHandlingIntentResponse = v0;
  qword_28029D7B8 = v1;
  byte_28029D7C0 = v2;
}

uint64_t *SignpostName.makeSendPaymentFailureHandlingIntentResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSendPaymentFailureHandlingIntentResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSendPaymentFailureHandlingIntentResponse;
}

void one-time initialization function for makeRequestPaymentIntentHandledResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeRequestPaymentIntentHandledResponse = v0;
  qword_28029D7D0 = v1;
  byte_28029D7D8 = v2;
}

void one-time initialization function for makeRequestPaymentIntentPromptForValue()
{
  SignpostName.init(name:)();
  static SignpostName.makeRequestPaymentIntentPromptForValue = v0;
  qword_28029D7E8 = v1;
  byte_28029D7F0 = v2;
}

uint64_t *SignpostName.makeRequestPaymentIntentPromptForValue.unsafeMutableAddressor()
{
  if (one-time initialization token for makeRequestPaymentIntentPromptForValue != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeRequestPaymentIntentPromptForValue;
}

void one-time initialization function for makeRequestPaymentPromptForConfirm()
{
  SignpostName.init(name:)();
  static SignpostName.makeRequestPaymentPromptForConfirm = v0;
  qword_28029D800 = v1;
  byte_28029D808 = v2;
}

uint64_t *SignpostName.makeRequestPaymentPromptForConfirm.unsafeMutableAddressor()
{
  if (one-time initialization token for makeRequestPaymentPromptForConfirm != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeRequestPaymentPromptForConfirm;
}

void one-time initialization function for makeRequestPaymentErrorResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeRequestPaymentErrorResponse = v0;
  qword_28029D818 = v1;
  byte_28029D820 = v2;
}

uint64_t *SignpostName.makeRequestPaymentErrorResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeRequestPaymentErrorResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeRequestPaymentErrorResponse;
}

void one-time initialization function for makeRequestPaymentContinueInAppResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeRequestPaymentContinueInAppResponse = v0;
  qword_28029D830 = v1;
  byte_28029D838 = v2;
}

void one-time initialization function for makeRequestPaymentFailureHandlingIntentResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeRequestPaymentFailureHandlingIntentResponse = v0;
  qword_28029D848 = v1;
  byte_28029D850 = v2;
}

void one-time initialization function for makeConfirmationRejectedResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeConfirmationRejectedResponse = v0;
  qword_28029D860 = v1;
  byte_28029D868 = v2;
}

uint64_t *SignpostName.makeConfirmationRejectedResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeConfirmationRejectedResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeConfirmationRejectedResponse;
}

void one-time initialization function for makeSearchForAccountsPromptForConfirm()
{
  SignpostName.init(name:)();
  static SignpostName.makeSearchForAccountsPromptForConfirm = v0;
  qword_28029D878 = v1;
  byte_28029D880 = v2;
}

uint64_t *SignpostName.makeSearchForAccountsPromptForConfirm.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSearchForAccountsPromptForConfirm != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSearchForAccountsPromptForConfirm;
}

void one-time initialization function for makeSearchForAccountsErrorResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeSearchForAccountsErrorResponse = v0;
  qword_28029D890 = v1;
  byte_28029D898 = v2;
}

uint64_t *SignpostName.makeSearchForAccountsErrorResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSearchForAccountsErrorResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSearchForAccountsErrorResponse;
}

void one-time initialization function for parseResponseValueNeedsValue()
{
  SignpostName.init(name:)();
  static SignpostName.parseResponseValueNeedsValue = v0;
  qword_28029D8A8 = v1;
  byte_28029D8B0 = v2;
}

void one-time initialization function for sendPaymentConfirmIntent()
{
  SignpostName.init(name:)();
  static SignpostName.sendPaymentConfirmIntent = v0;
  qword_28029D8C0 = v1;
  byte_28029D8C8 = v2;
}

uint64_t *SignpostName.sendPaymentConfirmIntent.unsafeMutableAddressor()
{
  if (one-time initialization token for sendPaymentConfirmIntent != -1)
  {
    swift_once();
  }

  return &static SignpostName.sendPaymentConfirmIntent;
}

void one-time initialization function for sendPaymentHandleIntent()
{
  SignpostName.init(name:)();
  static SignpostName.sendPaymentHandleIntent = v0;
  qword_28029D8D8 = v1;
  byte_28029D8E0 = v2;
}

uint64_t *SignpostName.sendPaymentHandleIntent.unsafeMutableAddressor()
{
  if (one-time initialization token for sendPaymentHandleIntent != -1)
  {
    swift_once();
  }

  return &static SignpostName.sendPaymentHandleIntent;
}

void one-time initialization function for resolvePayee()
{
  SignpostName.init(name:)();
  static SignpostName.resolvePayee = v0;
  qword_28029D8F0 = v1;
  byte_28029D8F8 = v2;
}

uint64_t *SignpostName.resolvePayee.unsafeMutableAddressor()
{
  if (one-time initialization token for resolvePayee != -1)
  {
    swift_once();
  }

  return &static SignpostName.resolvePayee;
}

void one-time initialization function for resolveCurrencyAmount()
{
  SignpostName.init(name:)();
  static SignpostName.resolveCurrencyAmount = v0;
  qword_28029D908 = v1;
  byte_28029D910 = v2;
}

uint64_t *SignpostName.resolveCurrencyAmount.unsafeMutableAddressor()
{
  if (one-time initialization token for resolveCurrencyAmount != -1)
  {
    swift_once();
  }

  return &static SignpostName.resolveCurrencyAmount;
}

void one-time initialization function for resolveNote()
{
  SignpostName.init(name:)();
  static SignpostName.resolveNote = v0;
  qword_28029D920 = v1;
  byte_28029D928 = v2;
}

uint64_t *SignpostName.resolveNote.unsafeMutableAddressor()
{
  if (one-time initialization token for resolveNote != -1)
  {
    swift_once();
  }

  return &static SignpostName.resolveNote;
}

void one-time initialization function for searchForAccountHandleIntent()
{
  SignpostName.init(name:)();
  static SignpostName.searchForAccountHandleIntent = v0;
  qword_28029D938 = v1;
  byte_28029D940 = v2;
}

uint64_t *SignpostName.searchForAccountHandleIntent.unsafeMutableAddressor()
{
  if (one-time initialization token for searchForAccountHandleIntent != -1)
  {
    swift_once();
  }

  return &static SignpostName.searchForAccountHandleIntent;
}

void one-time initialization function for confirmationViewBuilder()
{
  SignpostName.init(name:)();
  static SignpostName.confirmationViewBuilder = v0;
  qword_28029D950 = v1;
  byte_28029D958 = v2;
}

uint64_t *SignpostName.confirmationViewBuilder.unsafeMutableAddressor()
{
  if (one-time initialization token for confirmationViewBuilder != -1)
  {
    swift_once();
  }

  return &static SignpostName.confirmationViewBuilder;
}

void one-time initialization function for idiomSensitiveViewBuilder()
{
  SignpostName.init(name:)();
  static SignpostName.idiomSensitiveViewBuilder = v0;
  qword_28029D968 = v1;
  byte_28029D970 = v2;
}

uint64_t *SignpostName.idiomSensitiveViewBuilder.unsafeMutableAddressor()
{
  if (one-time initialization token for idiomSensitiveViewBuilder != -1)
  {
    swift_once();
  }

  return &static SignpostName.idiomSensitiveViewBuilder;
}

void one-time initialization function for buildPunchoutForApp()
{
  SignpostName.init(name:)();
  static SignpostName.buildPunchoutForApp = v0;
  qword_28029D980 = v1;
  byte_28029D988 = v2;
}

uint64_t *SignpostName.buildPunchoutForApp.unsafeMutableAddressor()
{
  if (one-time initialization token for buildPunchoutForApp != -1)
  {
    swift_once();
  }

  return &static SignpostName.buildPunchoutForApp;
}

void one-time initialization function for makeDisambiguationItemContainer()
{
  SignpostName.init(name:)();
  static SignpostName.makeDisambiguationItemContainer = v0;
  qword_28029D998 = v1;
  byte_28029D9A0 = v2;
}

void one-time initialization function for parseDisambiguationResult()
{
  SignpostName.init(name:)();
  static SignpostName.parseDisambiguationResult = v0;
  qword_28029D9B0 = v1;
  byte_28029D9B8 = v2;
}

void one-time initialization function for makePromptForDisambiguation()
{
  SignpostName.init(name:)();
  static SignpostName.makePromptForDisambiguation = v0;
  qword_28029D9C8 = v1;
  byte_28029D9D0 = v2;
}

void one-time initialization function for toSiriKitIntent()
{
  SignpostName.init(name:)();
  static SignpostName.toSiriKitIntent = v0;
  qword_28029D9E0 = v1;
  byte_28029D9E8 = v2;
}

uint64_t *SignpostName.toSiriKitIntent.unsafeMutableAddressor()
{
  if (one-time initialization token for toSiriKitIntent != -1)
  {
    swift_once();
  }

  return &static SignpostName.toSiriKitIntent;
}

void one-time initialization function for transformContactQueryToINPersons()
{
  SignpostName.init(name:)();
  static SignpostName.transformContactQueryToINPersons = v0;
  qword_28029D9F8 = v1;
  byte_28029DA00 = v2;
}

void one-time initialization function for resolveApp()
{
  SignpostName.init(name:)();
  static SignpostName.resolveApp = v0;
  qword_28029DA10 = v1;
  byte_28029DA18 = v2;
}

unint64_t type metadata accessor for OS_os_log()
{
  v2 = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for OS_os_log);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for Signpost.OpenSignpost(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for Signpost.OpenSignpost;
  if (!type metadata singleton initialization cache for Signpost.OpenSignpost)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void one-time initialization function for searchForAccountsAppResolution()
{
  SignpostName.init(name:)();
  static SignpostName.searchForAccountsAppResolution = v0;
  qword_28029DA28 = v1;
  byte_28029DA30 = v2;
}

uint64_t *SignpostName.searchForAccountsAppResolution.unsafeMutableAddressor()
{
  if (one-time initialization token for searchForAccountsAppResolution != -1)
  {
    swift_once();
  }

  return &static SignpostName.searchForAccountsAppResolution;
}

uint64_t type metadata completion function for Signpost.OpenSignpost(uint64_t a1)
{
  v3 = type metadata accessor for OSSignpostID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for SignpostName(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 17))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SignpostName(uint64_t result, int a2, int a3)
{
  v3 = (result + 17);
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 16) = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

uint64_t SendPaymentNeedsValueStrategy.__allocating_init()()
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMR);
  v16 = v33;
  outlined init with copy of GlobalsProviding(v26, v33);
  type metadata accessor for PaymentsBaseCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for INSendPaymentIntent();
  v2 = type metadata accessor for INSendPaymentIntentResponse();
  v3 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v14, v2);
  v25 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v16, v15, v3);
  v32 = v25;
  v24 = v31;
  outlined init with copy of GlobalsProviding(v26, v31);
  type metadata accessor for SendPaymentCATs(v18);
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
  v5 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v27 = SendPaymentNeedsValueStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v24, v19, v20, v21, v22, v23, v5);

  v38[5] = v27;

  __swift_destroy_boxed_opaque_existential_0(v26);

  return v27;
}

uint64_t SendPaymentNeedsValueStrategy.actionForInput(_:resolveRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v29 = a1;
  v27 = a3;
  v40 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v28 = 0;
  v37 = type metadata accessor for Logger();
  v31 = v37;
  v32 = *(v37 - 8);
  v36 = v32;
  v33 = v32;
  v34 = *(v32 + 64);
  v3 = &v11 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v3;
  v50 = MEMORY[0x28223BE20](v29, v30);
  v49 = v4;
  v48 = v5;
  v6 = Logger.payments.unsafeMutableAddressor();
  (*(v36 + 16))(v3, v6, v37);
  v42 = Logger.logObject.getter();
  v38 = v42;
  v41 = static os_log_type_t.debug.getter();
  v39 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v43 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v42, v41))
  {
    v7 = v28;
    v18 = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = v18;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = 0;
    v19 = createStorage<A>(capacity:type:)(0, v15, v15);
    v17 = v19;
    v20 = createStorage<A>(capacity:type:)(v16, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v47 = v18;
    v46 = v19;
    v45 = v20;
    v21 = 0;
    v22 = &v47;
    serialize(_:at:)(0, &v47);
    serialize(_:at:)(v21, v22);
    v44 = v43;
    v23 = &v11;
    MEMORY[0x28223BE20](&v11, v8);
    v24 = &v11 - 6;
    *(&v11 - 4) = v9;
    *(&v11 - 3) = &v46;
    *(&v11 - 2) = &v45;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v26 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v38, v39, "#SendPaymentNeedsValueStrategy actionForInput.", v14, 2u);
      v12 = 0;
      destroyStorage<A>(_:count:)(v17, 0, v15);
      destroyStorage<A>(_:count:)(v20, v12, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v14, MEMORY[0x277D84B78]);

      v13 = v26;
    }
  }

  else
  {

    v13 = v28;
  }

  (*(v33 + 8))(v35, v31);

  BaseStrategy.actionForInput(_:)(v29, v27);
}

uint64_t SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 208) = v2;
  *(v3 + 200) = a2;
  *(v3 + 192) = a1;
  *(v3 + 136) = v3;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 368) = 0;
  *(v3 + 376) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);
  *(v3 + 216) = v4;
  v9 = *(v4 - 8);
  *(v3 + 224) = v9;
  *(v3 + 232) = *(v9 + 64);
  *(v3 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  *(v3 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v3 + 256) = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  *(v3 + 264) = v5;
  *(v3 + 272) = *(v5 - 8);
  *(v3 + 280) = swift_task_alloc();
  v6 = type metadata accessor for ParameterIdentifier();
  *(v3 + 288) = v6;
  *(v3 + 296) = *(v6 - 8);
  *(v3 + 304) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v3 + 312) = v7;
  *(v3 + 320) = *(v7 - 8);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 144) = a2;
  *(v3 + 152) = v2;

  return MEMORY[0x2822009F8](SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:), 0);
}

uint64_t SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  v72 = v0;
  v1 = v0[42];
  v61 = v0[40];
  v62 = v0[39];
  v0[17] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v63 = *(v61 + 16);
  v63(v1, v2, v62);
  v65 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v66 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v65, v64))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v57 = createStorage<A>(capacity:type:)(0, v55, v55);
    v58 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v60 + 160) = buf;
    *(v60 + 168) = v57;
    *(v60 + 176) = v58;
    serialize(_:at:)(0, (v60 + 160));
    serialize(_:at:)(0, (v60 + 160));
    *(v60 + 184) = v66;
    v59 = swift_task_alloc();
    v59[2] = v60 + 160;
    v59[3] = v60 + 168;
    v59[4] = v60 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v65, v64, "#SendPaymentNeedsValueStrategy makePromptForValue", buf, 2u);
    destroyStorage<A>(_:count:)(v57, 0, v55);
    destroyStorage<A>(_:count:)(v58, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v46 = *(v60 + 336);
  v47 = *(v60 + 312);
  v50 = *(v60 + 304);
  v51 = *(v60 + 288);
  v45 = *(v60 + 320);
  v49 = *(v60 + 296);
  MEMORY[0x277D82BD8](v65);
  v48 = *(v45 + 8);
  v48(v46, v47);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v3;
  v52 = *(v49 + 8);
  v52(v50, v51);
  v4.value = SendPaymentSlots.init(rawValue:)(rawValue).value;
  value = v4.value;
  *(v60 + 370) = v4;
  if (v4.value == SiriPaymentsIntents_SendPaymentSlots_unknownDefault)
  {
    v11 = *(v60 + 328);
    v27 = *(v60 + 312);
    v31 = *(v60 + 240);
    v32 = *(v60 + 216);
    v29 = *(v60 + 200);
    v28 = *(v60 + 224);
    v12 = Logger.payments.unsafeMutableAddressor();
    v63(v11, v12, v27);
    (*(v28 + 16))(v31, v29, v32);
    v30 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v33 = swift_allocObject();
    (*(v28 + 32))(v33 + v30, v31, v32);
    oslog = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = 32;
    v36 = swift_allocObject();
    *(v36 + 16) = 8;
    v34 = swift_allocObject();
    *(v34 + 16) = partial apply for implicit closure #1 in SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
    *(v34 + 24) = v33;
    v37 = swift_allocObject();
    *(v37 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v37 + 24) = v34;
    _allocateUninitializedArray<A>(_:)();
    v38 = v13;

    *v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[1] = v35;

    v38[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[3] = v36;

    v38[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[5] = v37;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v40))
    {
      v24 = static UnsafeMutablePointer.allocate(capacity:)();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v25 = createStorage<A>(capacity:type:)(0, v23, v23);
      v26 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v67 = v24;
      v68 = v25;
      v69 = v26;
      serialize(_:at:)(2, &v67);
      serialize(_:at:)(1, &v67);
      v70 = partial apply for closure #1 in OSLogArguments.append(_:);
      v71 = v35;
      closure #1 in osLogInternal(_:log:type:)(&v70, &v67, &v68, &v69);
      v70 = partial apply for closure #1 in OSLogArguments.append(_:);
      v71 = v36;
      closure #1 in osLogInternal(_:log:type:)(&v70, &v67, &v68, &v69);
      v70 = partial apply for closure #1 in OSLogArguments.append(_:);
      v71 = v37;
      closure #1 in osLogInternal(_:log:type:)(&v70, &v67, &v68, &v69);
      _os_log_impl(&dword_2686B1000, oslog, v40, "#SendPaymentNeedsValueStrategy unknown parameter: %s", v24, 0xCu);
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v26, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v24, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v17 = *(v60 + 328);
    v18 = *(v60 + 312);
    v19 = *(v60 + 304);
    v20 = *(v60 + 288);
    MEMORY[0x277D82BD8](oslog);
    v48(v17, v18);
    ParameterResolutionRecord.parameter.getter();
    v22 = ParameterIdentifier.name.getter();
    v21 = v14;
    v52(v19, v20);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v15 = v22;
    *(v15 + 8) = v21;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 14;
    swift_willThrow();

    v16 = *(*(v60 + 136) + 8);

    return v16();
  }

  else
  {
    v44 = *(v60 + 256);
    v43 = *(v60 + 208);
    *(v60 + 368) = v4;
    v41 = ParameterResolutionRecord.intent.getter();
    v42 = [v41 verb];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v41);
    v5 = String.isEmpty.getter();
    *(v60 + 371) = v5 & 1;
    *(v60 + 376) = v5 & 1;

    MEMORY[0x277D82BD8](v42);

    *(v60 + 344) = *(v43 + 16);

    *(v60 + 369) = value;
    lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
    lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
    Slot<>.propertyName.getter(&type metadata for SendPaymentSlots, &protocol witness table for SendPaymentSlots);
    String.toSpeakableString.getter();

    v6 = type metadata accessor for SpeakableString();
    (*(*(v6 - 8) + 56))(v44, 0, 1);
    v7 = swift_task_alloc();
    *(v60 + 352) = v7;
    *v7 = *(v60 + 136);
    v7[1] = SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
    v8 = *(v60 + 280);
    v9 = *(v60 + 256);

    return SendPaymentCATs.promptForSlotValue(slot:)(v8, v9);
  }
}

{
  v4 = *v1;
  v4[17] = *v1;
  v4[45] = v0;

  if (v0)
  {
    v2 = SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  else
  {
    outlined destroy of SpeakableString?(v4[32]);

    v2 = SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v8 = *(v0 + 371);
  v7 = *(v0 + 370);
  v12 = *(v0 + 280);
  v10 = *(v0 + 272);
  v11 = *(v0 + 264);
  v13 = *(v0 + 248);
  v6 = *(v0 + 208);
  v9 = *(v0 + 192);
  *(v0 + 136) = v0;

  outlined init with copy of GlobalsProviding(v6 + 104, v0 + 16);

  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  (*(v4 + 16))(v5);

  BaseStrategy.ttsEnabled.getter();

  static PaymentsContextProvider.needsValueContextUpdate(value:isVerbless:)(v7, v8 & 1, v13);
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v13, 0, 1);
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v9[3] = type metadata accessor for AceOutput();
  v9[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v9);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?((v0 + 96));
  outlined destroy of NLContextUpdate?(v13);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v10 + 8))(v12, v11);

  v2 = *(*(v0 + 136) + 8);

  return v2();
}

{
  v1 = *(v0 + 256);
  *(v0 + 136) = v0;
  outlined destroy of SpeakableString?(v1);

  v2 = *(*(v0 + 136) + 8);

  return v2();
}

uint64_t implicit closure #1 in SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  v8 = type metadata accessor for ParameterIdentifier();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v0);
  v7 = &v3 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v9 = ParameterIdentifier.name.getter();
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  return v9;
}

uint64_t SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 496) = v3;
  *(v4 + 488) = a3;
  *(v4 + 480) = a2;
  *(v4 + 472) = a1;
  *(v4 + 280) = v4;
  *(v4 + 288) = 0;
  *(v4 + 296) = 0;
  *(v4 + 304) = 0;
  *(v4 + 768) = 0;
  *(v4 + 344) = 0;
  *(v4 + 352) = 0;
  *(v4 + 392) = 0;
  v5 = type metadata accessor for Parse.DirectInvocation();
  *(v4 + 504) = v5;
  v12 = *(v5 - 8);
  *(v4 + 512) = v12;
  *(v4 + 520) = *(v12 + 64);
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();
  v6 = type metadata accessor for Parse();
  *(v4 + 544) = v6;
  *(v4 + 552) = *(v6 - 8);
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);
  *(v4 + 576) = v7;
  v13 = *(v7 - 8);
  *(v4 + 584) = v13;
  *(v4 + 592) = *(v13 + 64);
  *(v4 + 600) = swift_task_alloc();
  v8 = type metadata accessor for Input();
  *(v4 + 608) = v8;
  v14 = *(v8 - 8);
  *(v4 + 616) = v14;
  *(v4 + 624) = *(v14 + 64);
  *(v4 + 632) = swift_task_alloc();
  v9 = type metadata accessor for ParameterIdentifier();
  *(v4 + 640) = v9;
  *(v4 + 648) = *(v9 - 8);
  *(v4 + 656) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v4 + 664) = v10;
  *(v4 + 672) = *(v10 - 8);
  *(v4 + 680) = swift_task_alloc();
  *(v4 + 688) = swift_task_alloc();
  *(v4 + 696) = swift_task_alloc();
  *(v4 + 704) = swift_task_alloc();
  *(v4 + 712) = swift_task_alloc();
  *(v4 + 720) = swift_task_alloc();
  *(v4 + 728) = swift_task_alloc();
  *(v4 + 736) = swift_task_alloc();
  *(v4 + 744) = swift_task_alloc();
  *(v4 + 752) = swift_task_alloc();
  *(v4 + 760) = swift_task_alloc();
  *(v4 + 288) = a2;
  *(v4 + 296) = a3;
  *(v4 + 304) = v3;

  return MEMORY[0x2822009F8](SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:), 0);
}

uint64_t SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v341 = v2;
  MEMORY[0x28223BE20](a1, a2);
  v3 = *(v2 + 760);
  v288 = *(v2 + 672);
  v289 = *(v2 + 664);
  *(v2 + 280) = v2;
  v4 = Logger.payments.unsafeMutableAddressor();
  v290 = *(v288 + 16);
  v290(v3, v4, v289);
  oslog = Logger.logObject.getter();
  v291 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v293 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v291))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v285 = createStorage<A>(capacity:type:)(0, v283, v283);
    v286 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v2 + 440) = buf;
    *(v2 + 448) = v285;
    *(v2 + 456) = v286;
    serialize(_:at:)(0, (v2 + 440));
    serialize(_:at:)(0, (v2 + 440));
    *(v2 + 464) = v293;
    v287 = swift_task_alloc();
    v287[2] = v2 + 440;
    v287[3] = v2 + 448;
    v287[4] = v2 + 456;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, oslog, v291, "#SendPaymentNeedsValueStrategy parseValueResponse.", buf, 2u);
    destroyStorage<A>(_:count:)(v285, 0, v283);
    destroyStorage<A>(_:count:)(v286, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v274 = *(v2 + 760);
  v275 = *(v2 + 664);
  v278 = *(v2 + 656);
  v279 = *(v2 + 640);
  v273 = *(v2 + 672);
  v277 = *(v2 + 648);
  MEMORY[0x277D82BD8](oslog);
  v276 = *(v273 + 8);
  v276(v274, v275);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v5;
  v280 = *(v277 + 8);
  v280(v278, v279);
  v6.value = SendPaymentSlots.init(rawValue:)(rawValue).value;
  value = v6.value;
  if (v6.value == SiriPaymentsIntents_SendPaymentSlots_unknownDefault)
  {
    v43 = *(v2 + 680);
    v61 = *(v2 + 664);
    v65 = *(v2 + 600);
    v66 = *(v2 + 576);
    v63 = *(v2 + 488);
    v62 = *(v2 + 584);
    v44 = Logger.payments.unsafeMutableAddressor();
    v290(v43, v44, v61);
    (*(v62 + 16))(v65, v63, v66);
    v64 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v67 = swift_allocObject();
    (*(v62 + 32))(v67 + v64, v65, v66);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    v69 = swift_allocObject();
    *(v69 + 16) = 32;
    v70 = swift_allocObject();
    *(v70 + 16) = 8;
    v68 = swift_allocObject();
    *(v68 + 16) = partial apply for implicit closure #1 in SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
    *(v68 + 24) = v67;
    v71 = swift_allocObject();
    *(v71 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v71 + 24) = v68;
    _allocateUninitializedArray<A>(_:)();
    v72 = v45;

    *v72 = partial apply for closure #1 in OSLogArguments.append(_:);
    v72[1] = v69;

    v72[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v72[3] = v70;

    v72[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v72[5] = v71;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v73, v74))
    {
      v58 = static UnsafeMutablePointer.allocate(capacity:)();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v59 = createStorage<A>(capacity:type:)(0, v57, v57);
      v60 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v294 = v58;
      v295 = v59;
      v296 = v60;
      serialize(_:at:)(2, &v294);
      serialize(_:at:)(1, &v294);
      v297 = partial apply for closure #1 in OSLogArguments.append(_:);
      v298 = v69;
      closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
      v297 = partial apply for closure #1 in OSLogArguments.append(_:);
      v298 = v70;
      closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
      v297 = partial apply for closure #1 in OSLogArguments.append(_:);
      v298 = v71;
      closure #1 in osLogInternal(_:log:type:)(&v297, &v294, &v295, &v296);
      _os_log_impl(&dword_2686B1000, v73, v74, "#SendPaymentNeedsValueStrategy unknown parameter: %s", v58, 0xCu);
      destroyStorage<A>(_:count:)(v59, 0, v57);
      destroyStorage<A>(_:count:)(v60, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v58, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v55 = *(v2 + 680);
    v51 = *(v2 + 664);
    v56 = *(v2 + 656);
    v52 = *(v2 + 640);
    MEMORY[0x277D82BD8](v73);
    v276(v55, v51);
    ParameterResolutionRecord.parameter.getter();
    v54 = ParameterIdentifier.name.getter();
    v53 = v46;
    v280(v56, v52);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v47 = v54;
    *(v47 + 8) = v53;
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0;
    *(v47 + 40) = 0;
    *(v47 + 48) = 14;
    swift_willThrow();

    v48 = *(*(v2 + 280) + 8);

    return v48();
  }

  else
  {
    v7 = *(v2 + 752);
    v259 = *(v2 + 664);
    v263 = *(v2 + 632);
    v264 = *(v2 + 608);
    v261 = *(v2 + 480);
    v260 = *(v2 + 616);
    *(v2 + 768) = v6;
    v8 = Logger.payments.unsafeMutableAddressor();
    v290(v7, v8, v259);
    (*(v260 + 16))(v263, v261, v264);
    v262 = (*(v260 + 80) + 16) & ~*(v260 + 80);
    v265 = swift_allocObject();
    (*(v260 + 32))(v265 + v262, v263, v264);
    log = Logger.logObject.getter();
    v272 = static os_log_type_t.debug.getter();
    v267 = swift_allocObject();
    *(v267 + 16) = 32;
    v268 = swift_allocObject();
    *(v268 + 16) = 8;
    v266 = swift_allocObject();
    *(v266 + 16) = partial apply for implicit closure #2 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    *(v266 + 24) = v265;
    v269 = swift_allocObject();
    *(v269 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v269 + 24) = v266;
    _allocateUninitializedArray<A>(_:)();
    v270 = v9;

    *v270 = partial apply for closure #1 in OSLogArguments.append(_:);
    v270[1] = v267;

    v270[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v270[3] = v268;

    v270[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v270[5] = v269;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v272))
    {
      v256 = static UnsafeMutablePointer.allocate(capacity:)();
      v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v257 = createStorage<A>(capacity:type:)(0, v255, v255);
      v258 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v336 = v256;
      v337 = v257;
      v338 = v258;
      serialize(_:at:)(2, &v336);
      serialize(_:at:)(1, &v336);
      v339 = partial apply for closure #1 in OSLogArguments.append(_:);
      v340 = v267;
      closure #1 in osLogInternal(_:log:type:)(&v339, &v336, &v337, &v338);
      v339 = partial apply for closure #1 in OSLogArguments.append(_:);
      v340 = v268;
      closure #1 in osLogInternal(_:log:type:)(&v339, &v336, &v337, &v338);
      v339 = partial apply for closure #1 in OSLogArguments.append(_:);
      v340 = v269;
      closure #1 in osLogInternal(_:log:type:)(&v339, &v336, &v337, &v338);
      _os_log_impl(&dword_2686B1000, log, v272, "#SendPaymentNeedsValueStrategy Parse: %s", v256, 0xCu);
      destroyStorage<A>(_:count:)(v257, 0, v255);
      destroyStorage<A>(_:count:)(v258, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v256, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v238 = *(v2 + 752);
    v10 = *(v2 + 744);
    v239 = *(v2 + 664);
    v244 = *(v2 + 600);
    v245 = *(v2 + 576);
    v241 = *(v2 + 488);
    v240 = *(v2 + 584);
    MEMORY[0x277D82BD8](log);
    v276(v238, v239);
    v11 = Logger.payments.unsafeMutableAddressor();
    v290(v10, v11, v239);
    v242 = *(v240 + 16);
    v242(v244, v241, v245);
    v243 = *(v240 + 80);
    v247 = swift_allocObject();
    v246 = *(v240 + 32);
    v246(v247 + ((v243 + 16) & ~v243), v244, v245);
    v253 = Logger.logObject.getter();
    v254 = static os_log_type_t.debug.getter();
    v249 = swift_allocObject();
    *(v249 + 16) = 32;
    v250 = swift_allocObject();
    *(v250 + 16) = 8;
    v248 = swift_allocObject();
    *(v248 + 16) = partial apply for implicit closure #1 in SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
    *(v248 + 24) = v247;
    v251 = swift_allocObject();
    *(v251 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v251 + 24) = v248;
    _allocateUninitializedArray<A>(_:)();
    v252 = v12;

    *v252 = partial apply for closure #1 in OSLogArguments.append(_:);
    v252[1] = v249;

    v252[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v252[3] = v250;

    v252[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v252[5] = v251;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v253, v254))
    {
      v235 = static UnsafeMutablePointer.allocate(capacity:)();
      v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v236 = createStorage<A>(capacity:type:)(0, v234, v234);
      v237 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v331 = v235;
      v332 = v236;
      v333 = v237;
      serialize(_:at:)(2, &v331);
      serialize(_:at:)(1, &v331);
      v334 = partial apply for closure #1 in OSLogArguments.append(_:);
      v335 = v249;
      closure #1 in osLogInternal(_:log:type:)(&v334, &v331, &v332, &v333);
      v334 = partial apply for closure #1 in OSLogArguments.append(_:);
      v335 = v250;
      closure #1 in osLogInternal(_:log:type:)(&v334, &v331, &v332, &v333);
      v334 = partial apply for closure #1 in OSLogArguments.append(_:);
      v335 = v251;
      closure #1 in osLogInternal(_:log:type:)(&v334, &v331, &v332, &v333);
      _os_log_impl(&dword_2686B1000, v253, v254, "#SendPaymentNeedsValueStrategy parseResponseValue for slot: %s", v235, 0xCu);
      destroyStorage<A>(_:count:)(v236, 0, v234);
      destroyStorage<A>(_:count:)(v237, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v235, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v229 = *(v2 + 744);
    v230 = *(v2 + 664);
    v232 = *(v2 + 568);
    v233 = *(v2 + 544);
    v231 = *(v2 + 552);
    MEMORY[0x277D82BD8](v253);
    v276(v229, v230);
    Input.parse.getter();
    if ((*(v231 + 88))(v232, v233) == *MEMORY[0x277D5C150])
    {
      v13 = *(v2 + 736);
      v215 = *(v2 + 664);
      v214 = *(v2 + 568);
      v216 = *(v2 + 536);
      v218 = *(v2 + 528);
      v219 = *(v2 + 504);
      v213 = *(v2 + 512);
      (*(*(v2 + 552) + 96))();
      v220 = *(v213 + 32);
      v220(v216, v214, v219);
      *(v2 + 352) = v216;
      v14 = Logger.payments.unsafeMutableAddressor();
      v290(v13, v14, v215);
      (*(v213 + 16))(v218, v216, v219);
      v217 = (*(v213 + 80) + 16) & ~*(v213 + 80);
      v221 = swift_allocObject();
      v220(v221 + v217, v218, v219);
      v227 = Logger.logObject.getter();
      v228 = static os_log_type_t.debug.getter();
      v223 = swift_allocObject();
      *(v223 + 16) = 32;
      v224 = swift_allocObject();
      *(v224 + 16) = 8;
      v222 = swift_allocObject();
      *(v222 + 16) = partial apply for implicit closure #4 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
      *(v222 + 24) = v221;
      v225 = swift_allocObject();
      *(v225 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v225 + 24) = v222;
      _allocateUninitializedArray<A>(_:)();
      v226 = v15;

      *v226 = partial apply for closure #1 in OSLogArguments.append(_:);
      v226[1] = v223;

      v226[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v226[3] = v224;

      v226[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v226[5] = v225;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v227, v228))
      {
        v210 = static UnsafeMutablePointer.allocate(capacity:)();
        v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v211 = createStorage<A>(capacity:type:)(0, v209, v209);
        v212 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v326 = v210;
        v327 = v211;
        v328 = v212;
        serialize(_:at:)(2, &v326);
        serialize(_:at:)(1, &v326);
        v329 = partial apply for closure #1 in OSLogArguments.append(_:);
        v330 = v223;
        closure #1 in osLogInternal(_:log:type:)(&v329, &v326, &v327, &v328);
        v329 = partial apply for closure #1 in OSLogArguments.append(_:);
        v330 = v224;
        closure #1 in osLogInternal(_:log:type:)(&v329, &v326, &v327, &v328);
        v329 = partial apply for closure #1 in OSLogArguments.append(_:);
        v330 = v225;
        closure #1 in osLogInternal(_:log:type:)(&v329, &v326, &v327, &v328);
        _os_log_impl(&dword_2686B1000, v227, v228, "#SendPaymentNeedsValueStrategy parseResponseValue, directInvocation: %s", v210, 0xCu);
        destroyStorage<A>(_:count:)(v211, 0, v209);
        destroyStorage<A>(_:count:)(v212, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v210, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v204 = *(v2 + 736);
      v205 = *(v2 + 664);
      MEMORY[0x277D82BD8](v227);
      v276(v204, v205);
      v206 = Parse.DirectInvocation.identifier.getter();
      v207 = v16;

      *(v2 + 248) = PaymentsDirectInvocations.Identifiers.rawValue.getter(3);
      *(v2 + 256) = v17;
      v314 = v206;
      v315 = v207;
      v208 = MEMORY[0x26D620740](*(v2 + 248), *(v2 + 256), v206, v207);
      outlined destroy of String.UTF8View(v2 + 248);
      if (v208)
      {

        if (Parse.DirectInvocation.userData.getter())
        {
          *(v2 + 264) = PaymentsDirectInvocations.Keys.rawValue.getter(1);
          *(v2 + 272) = v18;
          MEMORY[0x26D620650]();
          outlined destroy of String.UTF8View(v2 + 264);
        }

        else
        {
          *(v2 + 216) = 0;
          *(v2 + 224) = 0;
          *(v2 + 232) = 0;
          *(v2 + 240) = 0;
        }

        if (*(v2 + 240))
        {
          type metadata accessor for INPerson();
          if (swift_dynamicCast())
          {
            v203 = *(v2 + 432);
          }

          else
          {
            v203 = 0;
          }

          v202 = v203;
        }

        else
        {
          outlined destroy of FlowActivity?((v2 + 216));
          v202 = 0;
        }

        v22 = *(v2 + 720);
        v179 = *(v2 + 664);
        *(v2 + 392) = v202;
        v23 = Logger.payments.unsafeMutableAddressor();
        v290(v22, v23, v179);
        MEMORY[0x277D82BE0](v202);
        v180 = swift_allocObject();
        *(v180 + 16) = v202;
        default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

        v185 = Logger.logObject.getter();
        v186 = static os_log_type_t.debug.getter();
        v181 = swift_allocObject();
        *(v181 + 16) = 64;
        v182 = swift_allocObject();
        *(v182 + 16) = 8;
        v183 = swift_allocObject();
        *(v183 + 16) = partial apply for implicit closure #5 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
        *(v183 + 24) = v180;
        _allocateUninitializedArray<A>(_:)();
        v184 = v24;

        *v184 = partial apply for closure #1 in OSLogArguments.append(_:);
        v184[1] = v181;

        v184[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v184[3] = v182;

        v184[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v184[5] = v183;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v185, v186))
        {
          v176 = static UnsafeMutablePointer.allocate(capacity:)();
          v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v177 = createStorage<A>(capacity:type:)(1, v175, v175);
          v178 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v321 = v176;
          v322 = v177;
          v323 = v178;
          serialize(_:at:)(2, &v321);
          serialize(_:at:)(1, &v321);
          v324 = partial apply for closure #1 in OSLogArguments.append(_:);
          v325 = v181;
          closure #1 in osLogInternal(_:log:type:)(&v324, &v321, &v322, &v323);
          v324 = partial apply for closure #1 in OSLogArguments.append(_:);
          v325 = v182;
          closure #1 in osLogInternal(_:log:type:)(&v324, &v321, &v322, &v323);
          v324 = partial apply for closure #1 in OSLogArguments.append(_:);
          v325 = v183;
          closure #1 in osLogInternal(_:log:type:)(&v324, &v321, &v322, &v323);
          _os_log_impl(&dword_2686B1000, v185, v186, "#SendPaymentNeedsValueStrategy Received payee value %@ from DirectInvocation", v176, 0xCu);
          destroyStorage<A>(_:count:)(v177, 1, v175);
          destroyStorage<A>(_:count:)(v178, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v176, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v167 = *(v2 + 720);
        v168 = *(v2 + 712);
        v171 = *(v2 + 664);
        MEMORY[0x277D82BD8](v185);
        v276(v167, v171);
        v170 = ParameterResolutionRecord.intent.getter();
        MEMORY[0x277D82BE0](v202);
        countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payee", 5uLL, 1)._countAndFlagsBits;
        v169 = MEMORY[0x26D620690](countAndFlagsBits);

        [v170 setValue:v202 forKeyPath:v169];
        MEMORY[0x277D82BD8](v169);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BD8](v170);
        MEMORY[0x277D82BD8](v202);

        v26 = Logger.payments.unsafeMutableAddressor();
        v290(v168, v26, v171);
        v173 = Logger.logObject.getter();
        v172 = static os_log_type_t.debug.getter();
        v174 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v173, v172))
        {
          v163 = static UnsafeMutablePointer.allocate(capacity:)();
          v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v164 = createStorage<A>(capacity:type:)(0, v162, v162);
          v165 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          *(v2 + 400) = v163;
          *(v2 + 408) = v164;
          *(v2 + 416) = v165;
          serialize(_:at:)(0, (v2 + 400));
          serialize(_:at:)(0, (v2 + 400));
          *(v2 + 424) = v174;
          v166 = swift_task_alloc();
          v166[2] = v2 + 400;
          v166[3] = v2 + 408;
          v166[4] = v2 + 416;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_2686B1000, v173, v172, "#SendPaymentNeedsValueStrategy Returning successful IntentPromptAnswer", v163, 2u);
          destroyStorage<A>(_:count:)(v164, 0, v162);
          destroyStorage<A>(_:count:)(v165, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v163, MEMORY[0x277D84B78]);
        }

        v154 = *(v2 + 712);
        v155 = *(v2 + 664);
        v160 = *(v2 + 536);
        v161 = *(v2 + 504);
        v158 = *(v2 + 472);
        v159 = *(v2 + 512);
        MEMORY[0x277D82BD8](v173);
        v276(v154, v155);
        v156 = ParameterResolutionRecord.intent.getter();
        *(v2 + 200) = &type metadata for SendPaymentSlots;
        *(v2 + 208) = &protocol witness table for SendPaymentSlots;
        *(v2 + 176) = value;
        v157 = type metadata accessor for INSendPaymentIntent();
        SiriKitPaymentsIntent.value(forSlot:)((v2 + 176), v157, &v320);
        __swift_destroy_boxed_opaque_existential_0((v2 + 176));
        MEMORY[0x277D82BD8](v156);
        ParameterResolutionRecord.intent.getter();
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo013INSendPaymentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo013INSendPaymentD0CGMR);
        (*(*(v27 - 8) + 56))(v158, 0, 1);
        (*(v159 + 8))(v160, v161);
      }

      else
      {
        v19 = *(v2 + 728);
        v198 = *(v2 + 664);

        v20 = Logger.payments.unsafeMutableAddressor();
        v290(v19, v20, v198);
        v200 = Logger.logObject.getter();
        v199 = static os_log_type_t.error.getter();
        v201 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v200, v199))
        {
          v194 = static UnsafeMutablePointer.allocate(capacity:)();
          v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v195 = createStorage<A>(capacity:type:)(0, v193, v193);
          v196 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          *(v2 + 360) = v194;
          *(v2 + 368) = v195;
          *(v2 + 376) = v196;
          serialize(_:at:)(0, (v2 + 360));
          serialize(_:at:)(0, (v2 + 360));
          *(v2 + 384) = v201;
          v197 = swift_task_alloc();
          v197[2] = v2 + 360;
          v197[3] = v2 + 368;
          v197[4] = v2 + 376;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_2686B1000, v200, v199, "#SendPaymentNeedsValueStrategy parseResponseValue failed to interpret user response as expected Direct Invocation. Reprompt with previous state", v194, 2u);
          destroyStorage<A>(_:count:)(v195, 0, v193);
          destroyStorage<A>(_:count:)(v196, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v194, MEMORY[0x277D84B78]);
        }

        v187 = *(v2 + 728);
        v188 = *(v2 + 664);
        v191 = *(v2 + 536);
        v192 = *(v2 + 504);
        v189 = *(v2 + 472);
        v190 = *(v2 + 512);
        MEMORY[0x277D82BD8](v200);
        v276(v187, v188);
        v316 = 0;
        v317 = 0;
        v318 = 0;
        v319 = 0;
        ParameterResolutionRecord.intent.getter();
        type metadata accessor for INSendPaymentIntent();
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo013INSendPaymentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo013INSendPaymentD0CGMR);
        (*(*(v21 - 8) + 56))(v189, 0, 1);

        (*(v190 + 8))(v191, v192);
      }
    }

    else
    {
      v150 = *(v2 + 560);
      v151 = *(v2 + 544);
      v147 = *(v2 + 496);
      v149 = *(v2 + 552);
      Input.parse.getter();
      v148 = ParameterResolutionRecord.intent.getter();

      outlined init with copy of GlobalsProviding(v147 + 104, v2 + 16);

      v146 = *(v2 + 40);
      v145 = *(v2 + 48);
      __swift_project_boxed_opaque_existential_1((v2 + 16), v146);
      (*(v145 + 24))(v146);

      outlined init with copy of GlobalsProviding(v147 + 64, v2 + 96);

      v153 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(v148, &protocol witness table for INSendPaymentIntent, v2 + 56, v2 + 96);
      __swift_destroy_boxed_opaque_existential_0((v2 + 96));
      __swift_destroy_boxed_opaque_existential_0((v2 + 56));
      __swift_destroy_boxed_opaque_existential_0((v2 + 16));
      MEMORY[0x277D82BD8](v148);
      v152 = *(v149 + 8);
      v152(v150, v151);
      if (v153)
      {
        objc_opt_self();
        v144 = swift_dynamicCastObjCClass();
        if (v144)
        {
          v143 = v144;
        }

        else
        {
          MEMORY[0x277D82BD8](v153);
          v143 = 0;
        }

        v142 = v143;
      }

      else
      {
        v142 = 0;
      }

      if (v142)
      {
        v28 = *(v2 + 704);
        v133 = *(v2 + 664);
        *(v2 + 344) = v142;
        v29 = Logger.payments.unsafeMutableAddressor();
        v290(v28, v29, v133);
        MEMORY[0x277D82BE0](v142);
        v134 = swift_allocObject();
        *(v134 + 16) = v142;
        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.debug.getter();
        v136 = swift_allocObject();
        *(v136 + 16) = 64;
        v137 = swift_allocObject();
        *(v137 + 16) = 8;
        v135 = swift_allocObject();
        *(v135 + 16) = partial apply for implicit closure #4 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
        *(v135 + 24) = v134;
        v138 = swift_allocObject();
        *(v138 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
        *(v138 + 24) = v135;
        _allocateUninitializedArray<A>(_:)();
        v139 = v30;

        *v139 = partial apply for closure #1 in OSLogArguments.append(_:);
        v139[1] = v136;

        v139[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v139[3] = v137;

        v139[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v139[5] = v138;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v140, v141))
        {
          v130 = static UnsafeMutablePointer.allocate(capacity:)();
          v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v131 = createStorage<A>(capacity:type:)(1, v129, v129);
          v132 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v309 = v130;
          v310 = v131;
          v311 = v132;
          serialize(_:at:)(2, &v309);
          serialize(_:at:)(1, &v309);
          v312 = partial apply for closure #1 in OSLogArguments.append(_:);
          v313 = v136;
          closure #1 in osLogInternal(_:log:type:)(&v312, &v309, &v310, &v311);
          v312 = partial apply for closure #1 in OSLogArguments.append(_:);
          v313 = v137;
          closure #1 in osLogInternal(_:log:type:)(&v312, &v309, &v310, &v311);
          v312 = partial apply for closure #1 in OSLogArguments.append(_:);
          v313 = v138;
          closure #1 in osLogInternal(_:log:type:)(&v312, &v309, &v310, &v311);
          _os_log_impl(&dword_2686B1000, v140, v141, "#SendPaymentNeedsValueStrategy Converted PaymentsIntent to SiriKit intent: %@", v130, 0xCu);
          destroyStorage<A>(_:count:)(v131, 1, v129);
          destroyStorage<A>(_:count:)(v132, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v130, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v127 = *(v2 + 704);
        v128 = *(v2 + 664);
        MEMORY[0x277D82BD8](v140);
        v276(v127, v128);
        if (value)
        {
          if (value == SiriPaymentsIntents_SendPaymentSlots_currencyAmount)
          {
            v123 = ParameterResolutionRecord.intent.getter();
            v122 = [v142 currencyAmount];
            v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("currencyAmount", 0xEuLL, 1)._countAndFlagsBits;
            v121 = MEMORY[0x26D620690](v32);

            [v123 setValue:v122 forKeyPath:v121];
            MEMORY[0x277D82BD8](v121);
            swift_unknownObjectRelease();
            MEMORY[0x277D82BD8](v123);
          }

          else
          {
            v119 = ParameterResolutionRecord.intent.getter();
            v33 = [v142 note];
            v120 = v33;
            if (v33)
            {
              v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v116 = v34;
              MEMORY[0x277D82BD8](v120);
              v117 = v115;
              v118 = v116;
            }

            else
            {
              v117 = 0;
              v118 = 0;
            }

            if (v118)
            {
              v113 = MEMORY[0x26D620690](v117);

              v114 = v113;
            }

            else
            {
              v114 = 0;
            }

            v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("note", 4uLL, 1)._countAndFlagsBits;
            v112 = MEMORY[0x26D620690](v35);

            [v119 setValue:v114 forKeyPath:v112];
            MEMORY[0x277D82BD8](v112);
            swift_unknownObjectRelease();
            MEMORY[0x277D82BD8](v119);
          }
        }

        else
        {
          v126 = ParameterResolutionRecord.intent.getter();
          v125 = [v142 payee];
          v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payee", 5uLL, 1)._countAndFlagsBits;
          v124 = MEMORY[0x26D620690](v31);

          [v126 setValue:v125 forKeyPath:v124];
          MEMORY[0x277D82BD8](v124);
          swift_unknownObjectRelease();
          MEMORY[0x277D82BD8](v126);
        }

        v36 = *(v2 + 696);
        v100 = *(v2 + 664);
        v102 = *(v2 + 600);
        v103 = *(v2 + 576);
        v101 = *(v2 + 488);
        v37 = Logger.payments.unsafeMutableAddressor();
        v290(v36, v37, v100);
        v242(v102, v101, v103);
        v104 = swift_allocObject();
        v246(v104 + ((v243 + 16) & ~v243), v102, v103);
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.debug.getter();
        v106 = swift_allocObject();
        *(v106 + 16) = 32;
        v107 = swift_allocObject();
        *(v107 + 16) = 8;
        v105 = swift_allocObject();
        *(v105 + 16) = partial apply for implicit closure #7 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
        *(v105 + 24) = v104;
        v108 = swift_allocObject();
        *(v108 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v108 + 24) = v105;
        _allocateUninitializedArray<A>(_:)();
        v109 = v38;

        *v109 = partial apply for closure #1 in OSLogArguments.append(_:);
        v109[1] = v106;

        v109[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v109[3] = v107;

        v109[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v109[5] = v108;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v110, v111))
        {
          v97 = static UnsafeMutablePointer.allocate(capacity:)();
          v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v98 = createStorage<A>(capacity:type:)(0, v96, v96);
          v99 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v304 = v97;
          v305 = v98;
          v306 = v99;
          serialize(_:at:)(2, &v304);
          serialize(_:at:)(1, &v304);
          v307 = partial apply for closure #1 in OSLogArguments.append(_:);
          v308 = v106;
          closure #1 in osLogInternal(_:log:type:)(&v307, &v304, &v305, &v306);
          v307 = partial apply for closure #1 in OSLogArguments.append(_:);
          v308 = v107;
          closure #1 in osLogInternal(_:log:type:)(&v307, &v304, &v305, &v306);
          v307 = partial apply for closure #1 in OSLogArguments.append(_:);
          v308 = v108;
          closure #1 in osLogInternal(_:log:type:)(&v307, &v304, &v305, &v306);
          _os_log_impl(&dword_2686B1000, v110, v111, "#SendPaymentNeedsValueStrategy Returning intent: %s", v97, 0xCu);
          destroyStorage<A>(_:count:)(v98, 0, v96);
          destroyStorage<A>(_:count:)(v99, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v97, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v89 = *(v2 + 696);
        v90 = *(v2 + 664);
        v94 = *(v2 + 568);
        v95 = *(v2 + 544);
        v93 = *(v2 + 472);
        MEMORY[0x277D82BD8](v110);
        v276(v89, v90);
        v91 = ParameterResolutionRecord.intent.getter();
        *(v2 + 160) = &type metadata for SendPaymentSlots;
        *(v2 + 168) = &protocol witness table for SendPaymentSlots;
        *(v2 + 136) = value;
        v92 = type metadata accessor for INSendPaymentIntent();
        SiriKitPaymentsIntent.value(forSlot:)((v2 + 136), v92, v303);
        __swift_destroy_boxed_opaque_existential_0((v2 + 136));
        MEMORY[0x277D82BD8](v91);
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo013INSendPaymentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo013INSendPaymentD0CGMR);
        (*(*(v39 - 8) + 56))(v93, 0, 1);
        v152(v94, v95);
      }

      else
      {
        v40 = *(v2 + 688);
        v85 = *(v2 + 664);
        v41 = Logger.payments.unsafeMutableAddressor();
        v290(v40, v41, v85);
        v87 = Logger.logObject.getter();
        v86 = static os_log_type_t.error.getter();
        v88 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v87, v86))
        {
          v81 = static UnsafeMutablePointer.allocate(capacity:)();
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v82 = createStorage<A>(capacity:type:)(0, v80, v80);
          v83 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          *(v2 + 312) = v81;
          *(v2 + 320) = v82;
          *(v2 + 328) = v83;
          serialize(_:at:)(0, (v2 + 312));
          serialize(_:at:)(0, (v2 + 312));
          *(v2 + 336) = v88;
          v84 = swift_task_alloc();
          v84[2] = v2 + 312;
          v84[3] = v2 + 320;
          v84[4] = v2 + 328;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_2686B1000, v87, v86, "#SendPaymentNeedsValueStrategy parseResponseValue failed to interpret user response as expected Send response. Reprompt with previous state", v81, 2u);
          destroyStorage<A>(_:count:)(v82, 0, v80);
          destroyStorage<A>(_:count:)(v83, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v81, MEMORY[0x277D84B78]);
        }

        v75 = *(v2 + 688);
        v76 = *(v2 + 664);
        v78 = *(v2 + 568);
        v79 = *(v2 + 544);
        v77 = *(v2 + 472);
        MEMORY[0x277D82BD8](v87);
        v276(v75, v76);
        v299 = 0;
        v300 = 0;
        v301 = 0;
        v302 = 0;
        ParameterResolutionRecord.intent.getter();
        type metadata accessor for INSendPaymentIntent();
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo013INSendPaymentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo013INSendPaymentD0CGMR);
        (*(*(v42 - 8) + 56))(v77, 0, 1);
        v152(v78, v79);
      }
    }

    v50 = *(*(v2 + 280) + 8);

    return v50();
  }
}

uint64_t implicit closure #2 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v5 = type metadata accessor for Parse();
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v0);
  v4 = &v2 - v3;
  Input.parse.getter();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1)
{
  v3 = a1;
  v6 = type metadata accessor for Parse.DirectInvocation();
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v3);
  v7 = &v2 - v4;
  (*(v5 + 16))();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #5 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t implicit closure #7 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);
  ParameterResolutionRecord.intent.getter();
  type metadata accessor for INSendPaymentIntent();
  lazy protocol witness table accessor for type INSendPaymentIntent and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t SendPaymentNeedsValueStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

uint64_t protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance SendPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(a1, a2, a3);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance SendPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)(a1, a2);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:) in conformance SendPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for SendPaymentNeedsValueStrategy(0);
  *v5 = *(v8 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9BF8](a1, a2, v6, a4);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance SendPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for SendPaymentNeedsValueStrategy(0);
  *v5 = *(v8 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C00](a1, a2, v6, a4);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance SendPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for SendPaymentNeedsValueStrategy(0);
  *v7 = *(v10 + 16);
  v7[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v8, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance SendPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  *(v7 + 16) = v7;
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  v9 = type metadata accessor for SendPaymentNeedsValueStrategy(0);
  *v8 = *(v11 + 16);
  v8[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v9, a7);
}

uint64_t sub_2687FF2E0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);

  return implicit closure #1 in SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)();
}

uint64_t sub_2687FF500()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2687FF6B0()
{
  v2 = *(type metadata accessor for Input() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  type metadata accessor for Input();

  return implicit closure #2 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)();
}

uint64_t sub_2687FF8B8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2687FFB88()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #7 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);

  return implicit closure #7 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)();
}

uint64_t sub_2687FFDA8()
{
  v2 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #4 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v1 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #4 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(v2);
}

uint64_t type metadata accessor for SendPaymentNeedsValueStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SendPaymentNeedsValueStrategy;
  if (!type metadata singleton initialization cache for SendPaymentNeedsValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t SendPaymentHandleIntentStrategy.__allocating_init()()
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMR);
  v16 = v33;
  outlined init with copy of GlobalsProviding(v26, v33);
  type metadata accessor for PaymentsBaseCATs(v18);
  default argument 0 of CATWrapper.init(options:globals:)();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for INSendPaymentIntent();
  v2 = type metadata accessor for INSendPaymentIntentResponse();
  v3 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v14, v2);
  v25 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v16, v15, v3);
  v32 = v25;
  v24 = v31;
  outlined init with copy of GlobalsProviding(v26, v31);
  type metadata accessor for SendPaymentCATs(v18);
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
  v5 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v27 = SendPaymentHandleIntentStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v24, v19, v20, v21, v22, v23, v5);

  v38[5] = v27;

  __swift_destroy_boxed_opaque_existential_0(v26);

  return v27;
}

uint64_t SendPaymentHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v4 = type metadata accessor for Logger();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](SendPaymentHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:), 0);
}

uint64_t SendPaymentHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  v1 = v0[12];
  v15 = v0[11];
  v16 = v0[10];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v15 + 16))(v1, v2, v16);
  v18 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v18, v17))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v14 + 48) = buf;
    *(v14 + 56) = v11;
    *(v14 + 64) = v12;
    serialize(_:at:)(0, (v14 + 48));
    serialize(_:at:)(0, (v14 + 48));
    *(v14 + 72) = v19;
    v13 = swift_task_alloc();
    v13[2] = v14 + 48;
    v13[3] = v14 + 56;
    v13[4] = v14 + 64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v18, v17, "#SendPaymentHandleIntentStrategy makeIntentExecutionBehavior", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0, v9);
    destroyStorage<A>(_:count:)(v12, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v14 + 96);
  v6 = *(v14 + 80);
  v5 = *(v14 + 88);
  MEMORY[0x277D82BD8](v18);
  (*(v5 + 8))(v7, v6);
  type metadata accessor for SiriKitIntentExecutionBehavior();
  v8 = static SiriKitIntentExecutionBehavior.standard()();

  v3 = *(*(v14 + 16) + 8);

  return v3(v8);
}

uint64_t SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[50] = v2;
  v3[49] = a2;
  v3[48] = a1;
  v3[39] = v3;
  v3[40] = 0;
  v3[41] = 0;
  v3[42] = 0;
  v3[47] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v3[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[52] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[53] = v4;
  v3[54] = *(v4 - 8);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);
  v3[57] = v5;
  v8 = *(v5 - 8);
  v3[58] = v8;
  v3[59] = *(v8 + 64);
  v3[60] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[61] = v6;
  v3[62] = *(v6 - 8);
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v3[66] = swift_task_alloc();
  v3[40] = a2;
  v3[41] = v2;

  return MEMORY[0x2822009F8](SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0);
}

uint64_t SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  v50 = v0;
  v29 = v0[66];
  v1 = v0[65];
  v30 = v0[62];
  v31 = v0[61];
  v35 = v0[60];
  v33 = v0[58];
  v36 = v0[57];
  v32 = v0[49];
  v0[39] = v0;
  v2 = SignpostName.sendPaymentHandleIntent.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v29);
  v3 = Logger.payments.unsafeMutableAddressor();
  v4 = *(v30 + 16);
  v0[67] = v4;
  v0[68] = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4(v1, v3, v31);
  (*(v33 + 16))(v35, v32, v36);
  v34 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v37 = swift_allocObject();
  (*(v33 + 32))(v37 + v34, v35, v36);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  v39 = swift_allocObject();
  *(v39 + 16) = 32;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v38 = swift_allocObject();
  *(v38 + 16) = partial apply for implicit closure #1 in SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  *(v38 + 24) = v37;
  v41 = swift_allocObject();
  *(v41 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v41 + 24) = v38;
  v0[69] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v42 = v5;

  *v42 = partial apply for closure #1 in OSLogArguments.append(_:);
  v42[1] = v39;

  v42[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v42[3] = v40;

  v42[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v42[5] = v41;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v43, v44))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v26 = createStorage<A>(capacity:type:)(0, v24, v24);
    v27 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v45 = buf;
    v46 = v26;
    v47 = v27;
    serialize(_:at:)(2, &v45);
    serialize(_:at:)(1, &v45);
    v48 = partial apply for closure #1 in OSLogArguments.append(_:);
    v49 = v39;
    closure #1 in osLogInternal(_:log:type:)(&v48, &v45, &v46, &v47);
    v48 = partial apply for closure #1 in OSLogArguments.append(_:);
    v49 = v40;
    closure #1 in osLogInternal(_:log:type:)(&v48, &v45, &v46, &v47);
    v48 = partial apply for closure #1 in OSLogArguments.append(_:);
    v49 = v41;
    closure #1 in osLogInternal(_:log:type:)(&v48, &v45, &v46, &v47);
    _os_log_impl(&dword_2686B1000, v43, v44, "#SendPaymentHandleIntentStrategy makeIntentHandledResponse response: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v26, 0, v24);
    destroyStorage<A>(_:count:)(v27, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v20 = v28[65];
  v21 = v28[61];
  v19 = v28[62];
  MEMORY[0x277D82BD8](v43);
  v6 = *(v19 + 8);
  v28[70] = v6;
  v28[71] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v20, v21);
  v22 = IntentResolutionRecord.intentResponse.getter();
  v23 = [v22 code];
  v28[42] = v23;
  MEMORY[0x277D82BD8](v22);
  if (v23 == 3)
  {
    v17 = v28[50];

    v28[72] = *(v17 + 16);

    IntentResolutionRecord.app.getter();
    v18 = App.sirikitApp.getter();
    v28[73] = v18;

    v7 = swift_task_alloc();
    v28[74] = v7;
    *v7 = v28[39];
    v7[1] = SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v8 = v28[56];

    return SendPaymentCATs.intentHandledResponse(app:)(v8, v18);
  }

  else
  {
    v13 = v28[50];

    outlined init with copy of GlobalsProviding(v13 + 144, (v28 + 2));

    v14 = v28[5];
    v15 = v28[6];
    __swift_project_boxed_opaque_existential_1(v28 + 2, v14);
    v16 = (*(v15 + 48) + **(v15 + 48));
    v10 = swift_task_alloc();
    v28[76] = v10;
    *v10 = v28[39];
    v10[1] = SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v11 = v28[51];
    v12 = v28[49];

    return v16(v11, v12, v14, v15);
  }
}

{
  v4 = *v1;
  *(v4 + 312) = *v1;
  *(v4 + 600) = v0;

  if (v0)
  {
    v2 = SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {

    v2 = SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v69 = v0;
  *(v0 + 312) = v0;
  v62 = IntentResolutionRecord.intentResponse.getter();
  v63 = [v62 paymentRecord];
  if (v63)
  {
    v52 = *(v61 + 536);
    v1 = *(v61 + 512);
    v51 = *(v61 + 488);
    *(v61 + 376) = v63;
    MEMORY[0x277D82BD8](v62);
    v2 = Logger.payments.unsafeMutableAddressor();
    v52(v1, v2, v51);
    MEMORY[0x277D82BE0](v63);
    v53 = swift_allocObject();
    *(v53 + 16) = v63;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    v55 = swift_allocObject();
    *(v55 + 16) = 64;
    v56 = swift_allocObject();
    *(v56 + 16) = 8;
    v54 = swift_allocObject();
    *(v54 + 16) = partial apply for implicit closure #4 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    *(v54 + 24) = v53;
    v57 = swift_allocObject();
    *(v57 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v57 + 24) = v54;
    _allocateUninitializedArray<A>(_:)();
    v58 = v3;

    *v58 = partial apply for closure #1 in OSLogArguments.append(_:);
    v58[1] = v55;

    v58[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v58[3] = v56;

    v58[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v58[5] = v57;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v59, v60))
    {
      v4 = *(v61 + 600);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v49 = createStorage<A>(capacity:type:)(1, v47, v47);
      v50 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v64 = buf;
      v65 = v49;
      v66 = v50;
      serialize(_:at:)(2, &v64);
      serialize(_:at:)(1, &v64);
      v67 = partial apply for closure #1 in OSLogArguments.append(_:);
      v68 = v55;
      closure #1 in osLogInternal(_:log:type:)(&v67, &v64, &v65, &v66);
      if (v4)
      {
      }

      v67 = partial apply for closure #1 in OSLogArguments.append(_:);
      v68 = v56;
      closure #1 in osLogInternal(_:log:type:)(&v67, &v64, &v65, &v66);
      v67 = partial apply for closure #1 in OSLogArguments.append(_:);
      v68 = v57;
      closure #1 in osLogInternal(_:log:type:)(&v67, &v64, &v65, &v66);
      _os_log_impl(&dword_2686B1000, v59, v60, "#SendPaymentConfirmIntentStrategy intent contained paymentRecord: %@", buf, 0xCu);
      destroyStorage<A>(_:count:)(v49, 1, v47);
      destroyStorage<A>(_:count:)(v50, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v36 = *(v61 + 560);
    v46 = *(v61 + 528);
    v34 = *(v61 + 512);
    v35 = *(v61 + 488);
    v44 = *(v61 + 448);
    v45 = *(v61 + 424);
    v42 = *(v61 + 416);
    v39 = *(v61 + 400);
    v41 = *(v61 + 384);
    v43 = *(v61 + 432);
    MEMORY[0x277D82BD8](v59);
    v36(v34, v35);

    outlined init with copy of GlobalsProviding(v39 + 104, v61 + 176);

    v38 = *(v61 + 200);
    v37 = *(v61 + 208);
    __swift_project_boxed_opaque_existential_1((v61 + 176), v38);
    (*(v37 + 16))(v38);

    BaseStrategy.ttsEnabled.getter();

    type metadata accessor for SAAceView();
    _allocateUninitializedArray<A>(_:)();

    v40 = BaseStrategy.ttsEnabled.getter();

    static PaymentsContextProvider.handleSendPayment(paymentRecord:needsSDA:)(v63, v40 & 1, v42);
    v6 = type metadata accessor for NLContextUpdate();
    (*(*(v6 - 8) + 56))(v42, 0, 1);
    *(v61 + 256) = 0;
    *(v61 + 264) = 0;
    *(v61 + 272) = 0;
    *(v61 + 280) = 0;
    *(v61 + 288) = 0;
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v41[3] = type metadata accessor for AceOutput();
    v41[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v41);
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?((v61 + 256));
    outlined destroy of NLContextUpdate?(v42);

    __swift_destroy_boxed_opaque_existential_0((v61 + 216));
    __swift_destroy_boxed_opaque_existential_0((v61 + 176));
    MEMORY[0x277D82BD8](v63);
    (*(v43 + 8))(v44, v45);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v46);

    v7 = *(*(v61 + 312) + 8);

    return v7();
  }

  else
  {
    v30 = *(v61 + 536);
    v8 = *(v61 + 504);
    v29 = *(v61 + 488);
    MEMORY[0x277D82BD8](v62);
    v9 = Logger.payments.unsafeMutableAddressor();
    v30(v8, v9, v29);
    oslog = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v33 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v31))
    {
      v10 = *(v61 + 600);
      v25 = static UnsafeMutablePointer.allocate(capacity:)();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v26 = createStorage<A>(capacity:type:)(0, v24, v24);
      v27 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v61 + 344) = v25;
      *(v61 + 352) = v26;
      *(v61 + 360) = v27;
      serialize(_:at:)(0, (v61 + 344));
      serialize(_:at:)(0, (v61 + 344));
      *(v61 + 368) = v33;
      v28 = swift_task_alloc();
      v28[2] = v61 + 344;
      v28[3] = v61 + 352;
      v28[4] = v61 + 360;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v10)
      {
      }

      _os_log_impl(&dword_2686B1000, oslog, v31, "#SendPaymentHandleIntentStrategy found no paymentRecord in intent response, throwing exception", v25, 2u);
      destroyStorage<A>(_:count:)(v26, 0, v24);
      destroyStorage<A>(_:count:)(v27, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v25, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v16 = *(v61 + 560);
    v23 = *(v61 + 528);
    v14 = *(v61 + 504);
    v15 = *(v61 + 488);
    v21 = *(v61 + 448);
    v22 = *(v61 + 424);
    v20 = *(v61 + 432);
    MEMORY[0x277D82BD8](oslog);
    v16(v14, v15);
    type metadata accessor for INSendPaymentIntent();
    v19 = [swift_getObjCClassFromMetadata() description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v11;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v12 = v18;
    *(v12 + 8) = v17;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    *(v12 + 48) = 12;
    swift_willThrow();
    MEMORY[0x277D82BD8](v19);
    (*(v20 + 8))(v21, v22);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v23);

    v13 = *(*(v61 + 312) + 8);

    return v13();
  }
}

{
  v4 = *v1;
  *(v4 + 312) = *v1;
  *(v4 + 616) = v0;

  if (v0)
  {
    v2 = SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v2 = SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[54];
  v2 = v0[53];
  v3 = v0[51];
  v0[39] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v17 = v27[66];
    outlined destroy of TemplatingResult?(v27[51]);
    __swift_destroy_boxed_opaque_existential_0(v27 + 2);
    v27[37] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v27[38] = v6;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v8 = type metadata accessor for INSendPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)(v8);
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v9);

    v14 = v27[37];
    v13 = v27[38];

    outlined destroy of String.UTF8View((v27 + 37));
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

    v5 = *(v27[39] + 8);
  }

  else
  {
    v26 = v27[66];
    v24 = v27[55];
    v25 = v27[53];
    v22 = v27[52];
    v20 = v27[50];
    v21 = v27[48];
    v23 = v27[54];
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
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v27 + 17);
    outlined destroy of NLContextUpdate?(v22);
    __swift_destroy_boxed_opaque_existential_0(v27 + 12);
    __swift_destroy_boxed_opaque_existential_0(v27 + 7);
    (*(v23 + 8))(v24, v25);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v26);

    v5 = *(v27[39] + 8);
  }

  return v5();
}

{
  v3 = *(v0 + 528);
  *(v0 + 312) = v0;

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v3);

  v1 = *(*(v0 + 312) + 8);

  return v1();
}

{
  v3 = v0[66];
  v0[39] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v3);

  v1 = *(v0[39] + 8);

  return v1();
}

uint64_t implicit closure #1 in SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);
  IntentResolutionRecord.intentResponse.getter();
  type metadata accessor for INSendPaymentIntentResponse();
  lazy protocol witness table accessor for type INSendPaymentIntentResponse and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t SendPaymentHandleIntentStrategy.makeContinueInAppResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[31] = v2;
  v3[30] = a2;
  v3[29] = a1;
  v3[22] = v3;
  v3[23] = 0;
  v3[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[32] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v3[39] = swift_task_alloc();
  v3[23] = a2;
  v3[24] = v2;

  return MEMORY[0x2822009F8](SendPaymentHandleIntentStrategy.makeContinueInAppResponse(rchRecord:), 0);
}

uint64_t SendPaymentHandleIntentStrategy.makeContinueInAppResponse(rchRecord:)()
{
  v21 = v0[39];
  v1 = v0[38];
  v22 = v0[37];
  v23 = v0[36];
  v0[22] = v0;
  v2 = SignpostName.makeSendPaymentContinueInAppResponse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v21);
  v3 = Logger.payments.unsafeMutableAddressor();
  (*(v22 + 16))(v1, v3, v23);
  v25 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v26 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v25, v24))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v17 = createStorage<A>(capacity:type:)(0, v15, v15);
    v18 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v20 + 200) = buf;
    *(v20 + 208) = v17;
    *(v20 + 216) = v18;
    serialize(_:at:)(0, (v20 + 200));
    serialize(_:at:)(0, (v20 + 200));
    *(v20 + 224) = v26;
    v19 = swift_task_alloc();
    v19[2] = v20 + 200;
    v19[3] = v20 + 208;
    v19[4] = v20 + 216;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v25, v24, "#SendPaymentHandleIntentStrategy makeContinueInAppResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v17, 0, v15);
    destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v20 + 304);
  v9 = *(v20 + 288);
  v10 = *(v20 + 248);
  v7 = *(v20 + 296);
  MEMORY[0x277D82BD8](v25);
  (*(v7 + 8))(v8, v9);

  outlined init with copy of GlobalsProviding(v10 + 144, v20 + 16);

  v12 = *(v20 + 40);
  v13 = *(v20 + 48);
  __swift_project_boxed_opaque_existential_1((v20 + 16), v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);
  v11 = IntentResolutionRecord.app.getter();
  *(v20 + 320) = v11;
  v14 = (*(v13 + 40) + **(v13 + 40));
  v4 = swift_task_alloc();
  *(v20 + 328) = v4;
  *v4 = *(v20 + 176);
  v4[1] = RequestPaymentHandleIntentStrategy.makeContinueInAppResponse(rchRecord:);
  v5 = *(v20 + 280);

  return v14(v5, 1, v11, v12, v13);
}

uint64_t SendPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[31] = v2;
  v3[30] = a2;
  v3[29] = a1;
  v3[26] = v3;
  v3[27] = 0;
  v3[28] = 0;
  v3[22] = 0;
  v3[23] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  v3[33] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[37] = v5;
  v3[38] = *(v5 - 8);
  v3[39] = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  v3[40] = swift_task_alloc();
  v3[27] = a2;
  v3[28] = v2;

  return MEMORY[0x2822009F8](SendPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:), 0);
}

uint64_t SendPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  v42 = v0;
  v21 = v0[40];
  v22 = v0[39];
  v25 = v0[38];
  v26 = v0[37];
  v0[26] = v0;
  v1 = SignpostName.makeSendPaymentFailureHandlingIntentResponse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v1, v1[1], *(v1 + 16), v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);
  v23 = IntentResolutionRecord.intentResponse.getter();
  v24 = [v23 code];
  MEMORY[0x277D82BD8](v23);
  v27 = static PaymentIntentCATResponseCode.from(_:)(v24);
  v28 = v2;
  v0[41] = v2;
  v0[22] = v27;
  v0[23] = v2;
  v3 = Logger.payments.unsafeMutableAddressor();
  (*(v25 + 16))(v22, v3, v26);

  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  *(v30 + 24) = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v33 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v34 = v4;

  *v34 = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[1] = v31;

  v34[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[3] = v32;

  v34[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[5] = v33;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v35, v36))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(0, v16, v16);
    v19 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v37 = buf;
    v38 = v18;
    v39 = v19;
    serialize(_:at:)(2, &v37);
    serialize(_:at:)(1, &v37);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_2686B1000, v35, v36, "#SendPaymentHandleIntentStrategy makeFailureHandlingIntentResponse with code %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v18, 0, v16);
    destroyStorage<A>(_:count:)(v19, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v20[39];
  v11 = v20[37];
  v12 = v20[31];
  v9 = v20[38];
  MEMORY[0x277D82BD8](v35);
  (*(v9 + 8))(v10, v11);

  outlined init with copy of GlobalsProviding(v12 + 144, (v20 + 2));

  v13 = v20[5];
  v14 = v20[6];
  __swift_project_boxed_opaque_existential_1(v20 + 2, v13);
  v15 = (*(v14 + 48) + **(v14 + 48));
  v5 = swift_task_alloc();
  v20[42] = v5;
  *v5 = v20[26];
  v5[1] = SendPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  v6 = v20[33];
  v7 = v20[30];

  return v15(v6, v7, v13, v14);
}

{
  v4 = *v1;
  *(v4 + 208) = *v1;
  *(v4 + 344) = v0;

  if (v0)
  {
    v2 = SendPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  }

  else
  {
    v2 = SendPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[35];
  v2 = v0[34];
  v3 = v0[33];
  v0[26] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v17 = v27[40];
    outlined destroy of TemplatingResult?(v27[33]);
    __swift_destroy_boxed_opaque_existential_0(v27 + 2);
    v27[24] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v27[25] = v6;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v8 = type metadata accessor for INSendPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)(v8);
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v9);

    v14 = v27[24];
    v13 = v27[25];

    outlined destroy of String.UTF8View((v27 + 24));
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

    v5 = *(v27[26] + 8);
  }

  else
  {
    v24 = v27[40];
    v25 = v27[36];
    v23 = v27[34];
    v26 = v27[32];
    v20 = v27[31];
    v21 = v27[29];
    v22 = v27[35];
    (*(v22 + 32))();
    __swift_destroy_boxed_opaque_existential_0(v27 + 2);

    outlined init with copy of GlobalsProviding(v20 + 104, (v27 + 7));

    v19 = v27[10];
    v18 = v27[11];
    __swift_project_boxed_opaque_existential_1(v27 + 7, v19);
    (*(v18 + 16))(v19);

    BaseStrategy.ttsEnabled.getter();

    v4 = type metadata accessor for NLContextUpdate();
    (*(*(v4 - 8) + 56))(v26, 1);
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
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v27 + 17);
    outlined destroy of NLContextUpdate?(v26);
    __swift_destroy_boxed_opaque_existential_0(v27 + 12);
    __swift_destroy_boxed_opaque_existential_0(v27 + 7);
    (*(v22 + 8))(v25, v23);

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v24);

    v5 = *(v27[26] + 8);
  }

  return v5();
}

{
  v3 = v0[40];
  v0[26] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v3);

  v1 = *(v0[26] + 8);

  return v1();
}

uint64_t SendPaymentHandleIntentStrategy.makePreHandleIntentOutput(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[25] = v2;
  v3[24] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[26] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;

  return MEMORY[0x2822009F8](SendPaymentHandleIntentStrategy.makePreHandleIntentOutput(rchRecord:), 0);
}

uint64_t SendPaymentHandleIntentStrategy.makePreHandleIntentOutput(rchRecord:)()
{
  v1 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v0[17] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v19 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v19, v18))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v15 + 160) = buf;
    *(v15 + 168) = v12;
    *(v15 + 176) = v13;
    serialize(_:at:)(0, (v15 + 160));
    serialize(_:at:)(0, (v15 + 160));
    *(v15 + 184) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 160;
    v14[3] = v15 + 168;
    v14[4] = v15 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v19, v18, "#SendPaymentHandleIntentStrategy makePreHandleIntentOutput", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v15 + 256);
  v8 = *(v15 + 240);
  v9 = *(v15 + 200);
  v6 = *(v15 + 248);
  MEMORY[0x277D82BD8](v19);
  (*(v6 + 8))(v7, v8);

  *(v15 + 264) = *(v9 + 16);

  v3 = swift_task_alloc();
  *(v15 + 272) = v3;
  *v3 = *(v15 + 136);
  v3[1] = SendPaymentHandleIntentStrategy.makePreHandleIntentOutput(rchRecord:);
  v4 = *(v15 + 232);

  return SendPaymentCATs.preHandleIntentResponse()(v4);
}

{
  v4 = *v1;
  *(v4 + 136) = *v1;
  *(v4 + 280) = v0;

  if (v0)
  {
    v2 = SendPaymentHandleIntentStrategy.makePreHandleIntentOutput(rchRecord:);
  }

  else
  {

    v2 = SendPaymentHandleIntentStrategy.makePreHandleIntentOutput(rchRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v10 = v0[29];
  v8 = v0[28];
  v9 = v0[27];
  v11 = v0[26];
  v6 = v0[25];
  v7 = v0[24];
  v0[17] = v0;

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
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v7[3] = type metadata accessor for AceOutput();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 12);
  outlined destroy of NLContextUpdate?(v11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v8 + 8))(v10, v9);

  v2 = *(v0[17] + 8);

  return v2();
}

{
  *(v0 + 136) = v0;

  v1 = *(*(v0 + 136) + 8);

  return v1();
}

uint64_t SendPaymentHandleIntentStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

uint64_t sub_268805594()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);

  return implicit closure #1 in SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)();
}

uint64_t type metadata accessor for SendPaymentHandleIntentStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SendPaymentHandleIntentStrategy;
  if (!type metadata singleton initialization cache for SendPaymentHandleIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type INSendPaymentIntentResponse and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type INSendPaymentIntentResponse and conformance NSObject;
  if (!lazy protocol witness table cache variable for type INSendPaymentIntentResponse and conformance NSObject)
  {
    type metadata accessor for INSendPaymentIntentResponse();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INSendPaymentIntentResponse and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriKitPaymentsIntent.simpleClassName.getter(uint64_t a1)
{
  v15 = 0;
  v16 = a1;
  v13 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v14 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  ObjectType = swift_getObjectType();
  DefaultStringInterpolation.appendInterpolation(_:)(ObjectType);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v4);

  v8 = v13;
  v7 = v14;

  outlined destroy of String.UTF8View(&v13);
  v12[0] = MEMORY[0x26D620710](v8, v7);
  v12[1] = v5;
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IN", 2uLL, 1);
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  lazy protocol witness table accessor for type String and conformance String();
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  outlined destroy of String.UTF8View(&v10);
  outlined destroy of String.UTF8View(&v11);
  outlined destroy of String.UTF8View(v12);
  return v9;
}

uint64_t SiriKitPaymentsIntent.clone()(uint64_t a1)
{
  MEMORY[0x277D82BE0](v1);
  [v1 copy];
  MEMORY[0x277D82BD8](v1);
  _bridgeAnyObjectToAny(_:)();
  swift_dynamicCast();
  swift_unknownObjectRelease();
  return v3;
}

double SiriKitPaymentsIntent.value(forSlot:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v17 = a2;
  v16 = a1;
  v15 = v3;
  MEMORY[0x277D82BE0](v3);
  v9 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v4 = (*(v8 + 32))(v9);
  v10 = MEMORY[0x26D620690](v4);

  v11 = [v3 valueForKey_];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v3);
  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined init with take of Any(v12, &v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a3 = v13;
  result = *&v14;
  a3[1] = v14;
  return result;
}

Swift::Void __swiftcall PersonProvidingIntent.updatePerson(with:parameterName:)(Swift::OpaquePointer with, Swift::String parameterName)
{
  rawValue = with._rawValue;
  countAndFlagsBits = parameterName._countAndFlagsBits;
  object = parameterName._object;
  v195 = v2;
  v196 = v3;
  v197 = partial apply for implicit closure #3 in PersonProvidingIntent.updatePerson(with:parameterName:);
  v198 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v199 = partial apply for closure #1 in OSLogArguments.append(_:);
  v200 = partial apply for closure #1 in OSLogArguments.append(_:);
  v201 = partial apply for closure #1 in OSLogArguments.append(_:);
  v202 = partial apply for implicit closure #1 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  v203 = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_2;
  v204 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v205 = partial apply for closure #1 in OSLogArguments.append(_:);
  v206 = partial apply for closure #1 in OSLogArguments.append(_:);
  v207 = partial apply for closure #1 in OSLogArguments.append(_:);
  v208 = partial apply for implicit closure #1 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  v209 = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_2;
  v210 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v211 = partial apply for closure #1 in OSLogArguments.append(_:);
  v212 = partial apply for closure #1 in OSLogArguments.append(_:);
  v213 = partial apply for closure #1 in OSLogArguments.append(_:);
  v214 = partial apply for implicit closure #4 in PersonProvidingIntent.updatePerson(with:parameterName:);
  v215 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v216 = partial apply for closure #1 in OSLogArguments.append(_:);
  v217 = partial apply for closure #1 in OSLogArguments.append(_:);
  v218 = partial apply for closure #1 in OSLogArguments.append(_:);
  v258 = 0;
  v256 = 0;
  v257 = 0;
  v255 = 0;
  v219 = 0;
  v259 = v2;
  v223 = type metadata accessor for Logger();
  v224 = *(v223 - 8);
  v225 = v223 - 8;
  v226 = (*(v224 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](rawValue, countAndFlagsBits);
  v227 = v88 - v226;
  v228 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v5, v7);
  v229 = v88 - v228;
  v230 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v231 = v88 - v230;
  v232 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v233 = v88 - v232;
  v258 = v14;
  v256 = v15;
  v257 = v16;
  v255 = v4;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v17 = v233;
    v18 = Logger.payments.unsafeMutableAddressor();
    (*(v224 + 16))(v17, v18, v223);

    v184 = 7;
    v181 = swift_allocObject();
    *(v181 + 16) = rawValue;

    v183 = 32;
    v19 = swift_allocObject();
    v20 = v181;
    v185 = v19;
    *(v19 + 16) = v208;
    *(v19 + 24) = v20;

    v193 = Logger.logObject.getter();
    v194 = static os_log_type_t.debug.getter();
    v182 = 17;
    v187 = swift_allocObject();
    *(v187 + 16) = 32;
    v188 = swift_allocObject();
    *(v188 + 16) = 8;
    v21 = swift_allocObject();
    v22 = v185;
    v186 = v21;
    *(v21 + 16) = v209;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v186;
    v190 = v23;
    *(v23 + 16) = v210;
    *(v23 + 24) = v24;
    v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v189 = _allocateUninitializedArray<A>(_:)();
    v191 = v25;

    v26 = v187;
    v27 = v191;
    *v191 = v211;
    v27[1] = v26;

    v28 = v188;
    v29 = v191;
    v191[2] = v212;
    v29[3] = v28;

    v30 = v190;
    v31 = v191;
    v191[4] = v213;
    v31[5] = v30;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v193, v194))
    {
      v32 = v219;
      v174 = static UnsafeMutablePointer.allocate(capacity:)();
      v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v175 = createStorage<A>(capacity:type:)(0, v173, v173);
      v176 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v177 = &v239;
      v239 = v174;
      v178 = &v238;
      v238 = v175;
      v179 = &v237;
      v237 = v176;
      serialize(_:at:)(2, &v239);
      serialize(_:at:)(1, v177);
      v235 = v211;
      v236 = v187;
      closure #1 in osLogInternal(_:log:type:)(&v235, v177, v178, v179);
      v180 = v32;
      if (v32)
      {

        __break(1u);
      }

      else
      {
        v235 = v212;
        v236 = v188;
        closure #1 in osLogInternal(_:log:type:)(&v235, &v239, &v238, &v237);
        v171 = 0;
        v235 = v213;
        v236 = v190;
        closure #1 in osLogInternal(_:log:type:)(&v235, &v239, &v238, &v237);
        v170 = 0;
        _os_log_impl(&dword_2686B1000, v193, v194, "#PersonProvidingIntent Updating INSendPaymentIntent with participants: %s", v174, 0xCu);
        destroyStorage<A>(_:count:)(v175, 0, v173);
        destroyStorage<A>(_:count:)(v176, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v174, MEMORY[0x277D84B78]);

        v172 = v170;
      }
    }

    else
    {
      v33 = v219;

      v172 = v33;
    }

    v168 = v172;
    MEMORY[0x277D82BD8](v193);
    (*(v224 + 8))(v233, v223);
    MEMORY[0x277D82BE0](v234);

    type metadata accessor for INPerson();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payee", 5uLL, 1);
    v165 = v34._object;
    v166 = MEMORY[0x26D620690](v34._countAndFlagsBits);

    [v234 setValue:isa forKeyPath:v166];
    MEMORY[0x277D82BD8](v166);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v234);
    v169 = v168;
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v35 = v231;
      v36 = Logger.payments.unsafeMutableAddressor();
      (*(v224 + 16))(v35, v36, v223);

      v154 = 7;
      v151 = swift_allocObject();
      *(v151 + 16) = rawValue;

      v153 = 32;
      v37 = swift_allocObject();
      v38 = v151;
      v155 = v37;
      *(v37 + 16) = v202;
      *(v37 + 24) = v38;

      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.debug.getter();
      v152 = 17;
      v157 = swift_allocObject();
      *(v157 + 16) = 32;
      v158 = swift_allocObject();
      *(v158 + 16) = 8;
      v39 = swift_allocObject();
      v40 = v155;
      v156 = v39;
      *(v39 + 16) = v203;
      *(v39 + 24) = v40;
      v41 = swift_allocObject();
      v42 = v156;
      v160 = v41;
      *(v41 + 16) = v204;
      *(v41 + 24) = v42;
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v159 = _allocateUninitializedArray<A>(_:)();
      v161 = v43;

      v44 = v157;
      v45 = v161;
      *v161 = v205;
      v45[1] = v44;

      v46 = v158;
      v47 = v161;
      v161[2] = v206;
      v47[3] = v46;

      v48 = v160;
      v49 = v161;
      v161[4] = v207;
      v49[5] = v48;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v163, v164))
      {
        v50 = v219;
        v144 = static UnsafeMutablePointer.allocate(capacity:)();
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v145 = createStorage<A>(capacity:type:)(0, v143, v143);
        v146 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v147 = &v244;
        v244 = v144;
        v148 = &v243;
        v243 = v145;
        v149 = &v242;
        v242 = v146;
        serialize(_:at:)(2, &v244);
        serialize(_:at:)(1, v147);
        v240 = v205;
        v241 = v157;
        closure #1 in osLogInternal(_:log:type:)(&v240, v147, v148, v149);
        v150 = v50;
        if (v50)
        {

          __break(1u);
        }

        else
        {
          v240 = v206;
          v241 = v158;
          closure #1 in osLogInternal(_:log:type:)(&v240, &v244, &v243, &v242);
          v141 = 0;
          v240 = v207;
          v241 = v160;
          closure #1 in osLogInternal(_:log:type:)(&v240, &v244, &v243, &v242);
          v140 = 0;
          _os_log_impl(&dword_2686B1000, v163, v164, "#PersonProvidingIntent Updating INRequestPaymentIntent with participants: %s", v144, 0xCu);
          destroyStorage<A>(_:count:)(v145, 0, v143);
          destroyStorage<A>(_:count:)(v146, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v144, MEMORY[0x277D84B78]);

          v142 = v140;
        }
      }

      else
      {
        v51 = v219;

        v142 = v51;
      }

      v139 = v142;
      MEMORY[0x277D82BD8](v163);
      (*(v224 + 8))(v231, v223);
      MEMORY[0x277D82BE0](v234);

      type metadata accessor for INPerson();
      v138 = Array._bridgeToObjectiveC()().super.isa;

      v52 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payer", 5uLL, 1);
      v136 = v52._object;
      v137 = MEMORY[0x26D620690](v52._countAndFlagsBits);

      [v234 setValue:v138 forKeyPath:v137];
      MEMORY[0x277D82BD8](v137);
      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](v234);
      v169 = v139;
    }

    else
    {
      v53 = v229;
      v54 = Logger.payments.unsafeMutableAddressor();
      (*(v224 + 16))(v53, v54, v223);
      MEMORY[0x277D82BE0](v234);
      v125 = 7;
      v55 = swift_allocObject();
      v56 = v196;
      v57 = v234;
      v126 = v55;
      v55[2] = v195;
      v55[3] = v56;
      v55[4] = v57;
      v134 = Logger.logObject.getter();
      v135 = static os_log_type_t.error.getter();
      v123 = 17;
      v128 = swift_allocObject();
      *(v128 + 16) = 32;
      v129 = swift_allocObject();
      *(v129 + 16) = 8;
      v124 = 32;
      v58 = swift_allocObject();
      v59 = v126;
      v127 = v58;
      *(v58 + 16) = v197;
      *(v58 + 24) = v59;
      v60 = swift_allocObject();
      v61 = v127;
      v131 = v60;
      *(v60 + 16) = v198;
      *(v60 + 24) = v61;
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v130 = _allocateUninitializedArray<A>(_:)();
      v132 = v62;

      v63 = v128;
      v64 = v132;
      *v132 = v199;
      v64[1] = v63;

      v65 = v129;
      v66 = v132;
      v132[2] = v200;
      v66[3] = v65;

      v67 = v131;
      v68 = v132;
      v132[4] = v201;
      v68[5] = v67;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v134, v135))
      {
        v69 = v219;
        v116 = static UnsafeMutablePointer.allocate(capacity:)();
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v117 = createStorage<A>(capacity:type:)(0, v115, v115);
        v118 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v119 = &v249;
        v249 = v116;
        v120 = &v248;
        v248 = v117;
        v121 = &v247;
        v247 = v118;
        serialize(_:at:)(2, &v249);
        serialize(_:at:)(1, v119);
        v245 = v199;
        v246 = v128;
        closure #1 in osLogInternal(_:log:type:)(&v245, v119, v120, v121);
        v122 = v69;
        if (v69)
        {

          __break(1u);
        }

        else
        {
          v245 = v200;
          v246 = v129;
          closure #1 in osLogInternal(_:log:type:)(&v245, &v249, &v248, &v247);
          v113 = 0;
          v245 = v201;
          v246 = v131;
          closure #1 in osLogInternal(_:log:type:)(&v245, &v249, &v248, &v247);
          v112 = 0;
          _os_log_impl(&dword_2686B1000, v134, v135, "#PersonProvidingIntent Found unsupported intent type: %s, logging error but not throwing.", v116, 0xCu);
          destroyStorage<A>(_:count:)(v117, 0, v115);
          destroyStorage<A>(_:count:)(v118, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v116, MEMORY[0x277D84B78]);

          v114 = v112;
        }
      }

      else
      {
        v70 = v219;

        v114 = v70;
      }

      v111 = v114;
      MEMORY[0x277D82BD8](v134);
      (*(v224 + 8))(v229, v223);
      v169 = v111;
    }
  }

  v71 = v227;
  v97 = v169;
  v72 = Logger.payments.unsafeMutableAddressor();
  (*(v224 + 16))(v71, v72, v223);
  MEMORY[0x277D82BE0](v234);
  v100 = 7;
  v73 = swift_allocObject();
  v74 = v196;
  v75 = v234;
  v101 = v73;
  v73[2] = v195;
  v73[3] = v74;
  v73[4] = v75;
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.debug.getter();
  v98 = 17;
  v103 = swift_allocObject();
  *(v103 + 16) = 32;
  v104 = swift_allocObject();
  *(v104 + 16) = 8;
  v99 = 32;
  v76 = swift_allocObject();
  v77 = v101;
  v102 = v76;
  *(v76 + 16) = v214;
  *(v76 + 24) = v77;
  v78 = swift_allocObject();
  v79 = v102;
  v106 = v78;
  *(v78 + 16) = v215;
  *(v78 + 24) = v79;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v105 = _allocateUninitializedArray<A>(_:)();
  v107 = v80;

  v81 = v103;
  v82 = v107;
  *v107 = v216;
  v82[1] = v81;

  v83 = v104;
  v84 = v107;
  v107[2] = v217;
  v84[3] = v83;

  v85 = v106;
  v86 = v107;
  v107[4] = v218;
  v86[5] = v85;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v109, v110))
  {
    v87 = v97;
    v90 = static UnsafeMutablePointer.allocate(capacity:)();
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v91 = createStorage<A>(capacity:type:)(0, v89, v89);
    v92 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v93 = &v254;
    v254 = v90;
    v94 = &v253;
    v253 = v91;
    v95 = &v252;
    v252 = v92;
    serialize(_:at:)(2, &v254);
    serialize(_:at:)(1, v93);
    v250 = v216;
    v251 = v103;
    closure #1 in osLogInternal(_:log:type:)(&v250, v93, v94, v95);
    v96 = v87;
    if (v87)
    {

      __break(1u);
    }

    else
    {
      v250 = v217;
      v251 = v104;
      closure #1 in osLogInternal(_:log:type:)(&v250, &v254, &v253, &v252);
      v88[1] = 0;
      v250 = v218;
      v251 = v106;
      closure #1 in osLogInternal(_:log:type:)(&v250, &v254, &v253, &v252);
      _os_log_impl(&dword_2686B1000, v109, v110, "#PersonProvidingIntent Updated intent: %s", v90, 0xCu);
      destroyStorage<A>(_:count:)(v91, 0, v89);
      destroyStorage<A>(_:count:)(v92, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v90, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v109);
  (*(v224 + 8))(v227, v223);
}

uint64_t implicit closure #3 in PersonProvidingIntent.updatePerson(with:parameterName:)(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  v3 = [a1 typeName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo22NSStringCompareOptionsV_Tt0gq5(0);

  return 0;
}

uint64_t INSendPaymentIntent.catFamily.getter()
{
  v5 = 0;
  v4[2] = 0;
  v4[0] = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](0, v1);
  v4[1] = v4 - v4[0];
  v5 = v0;
  type metadata accessor for SendPaymentCATs(v2);
  default argument 0 of CATWrapper.init(options:globals:)();
  return CATWrapper.__allocating_init(options:globals:)();
}

id INSendPaymentIntent.person.getter()
{
  v1 = [v0 payee];

  return v1;
}

void INSendPaymentIntent.personSlot.getter(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SendPaymentSlots;
  *(a1 + 32) = &protocol witness table for SendPaymentSlots;
  *a1 = 0;
}

uint64_t ReferenceResolving.updateIntent(with:contactResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a1;
  v41 = a2;
  v42 = a3;
  v35 = a4;
  v36 = a5;
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v60 = 0;
  v57 = 0;
  v65 = a4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay0A9Inference12ContactQueryVGSaySo8INPersonCGGMd, "rR");
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v37 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46, v5);
  v45 = v16 - v37;
  v51 = type metadata accessor for ContactQuery();
  v48 = *(v51 - 8);
  v49 = v51 - 8;
  v39 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v40, v41);
  v50 = v16 - v39;
  v64 = v16 - v39;
  v62 = v6;
  v63 = v7;
  v61 = v8;
  v60 = v9;
  ContactQuery.init()();

  ContactQuery.id.setter();
  static Transformer<>.transformer(contactResolver:)(v42);
  v53 = Transformer.transform.getter();
  v47 = v10;
  (*(v43 + 8))(v45, v46);
  v52 = _allocateUninitializedArray<A>(_:)();
  (*(v48 + 16))(v11, v50, v51);
  _finalizeUninitializedArray<A>(_:)();
  v54 = v12;
  v59 = v12;
  v53(&v58, &v59);
  v55 = 0;
  v32 = v58;

  v30 = 0;
  v31 = type metadata accessor for INPerson();
  Array.subscript.getter();
  v33 = v56;

  v34 = [v33 siriMatches];
  if (v34)
  {
    v29 = v34;
    v25 = v34;
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v25);
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v24 = v27;
  MEMORY[0x277D82BD8](v33);
  v28 = v24;
  v23 = v24;
  v57 = v24;
  MEMORY[0x277D82BE0](v38);

  if (v23)
  {
    v22 = v23;
    v19 = v23;
    type metadata accessor for INPerson();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v21 = isa;
  }

  else
  {
    v21 = 0;
  }

  v18 = v21;
  v13 = (*(*(v36 + 8) + 24))(v35);
  v16[1] = v14;
  v17 = MEMORY[0x26D620690](v13);

  [v38 setValue:v18 forKeyPath:v17];
  MEMORY[0x277D82BD8](v17);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v38);

  return (*(v48 + 8))(v50, v51);
}

uint64_t INRequestPaymentIntent.catFamily.getter()
{
  v5 = 0;
  v4[2] = 0;
  v4[0] = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](0, v1);
  v4[1] = v4 - v4[0];
  v5 = v0;
  type metadata accessor for RequestPaymentCATs(v2);
  default argument 0 of CATWrapper.init(options:globals:)();
  return CATWrapper.__allocating_init(options:globals:)();
}

id INRequestPaymentIntent.person.getter()
{
  v1 = [v0 payer];

  return v1;
}

void INRequestPaymentIntent.personSlot.getter(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for RequestPaymentSlots;
  *(a1 + 32) = &protocol witness table for RequestPaymentSlots;
  *a1 = 0;
}

uint64_t ReferenceResolving.runReferenceResolution(_:_:hasReferenceNode:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v51 = a4;
  v61 = a3;
  v63 = a2;
  v62 = a1;
  v52 = a3;
  v58 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v53 = 0;
  v82 = a4;
  v54 = type metadata accessor for Logger();
  v55 = *(v54 - 8);
  v56 = v55;
  MEMORY[0x28223BE20](v54 - 8, v54);
  v57 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58, v7);
  v71 = &v22 - v59;
  v60 = &v22 - v59;
  v72 = type metadata accessor for RREntity();
  v64 = v72;
  v65 = *(v72 - 8);
  v70 = v65;
  v66 = v65;
  v8 = MEMORY[0x28223BE20](v62, v63);
  v67 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v67;
  v80 = v8;
  v79 = v10;
  v78 = v11;
  v77 = v5;
  v69 = v8[3];
  v68 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v69);
  (*(v68 + 16))(v69);
  if ((*(v70 + 48))(v71, 1, v72) == 1)
  {
    outlined destroy of RREntity?(v60);
    return v53;
  }

  else
  {
    (*(v66 + 32))(v67, v60, v64);
    if (static RRUtil.shouldUseRREntity(_:rrEntity:)(v52 & 1) & 1) != 0 && (v44 = RREntity.appBundleId.getter(), v47 = v12, v13 = AppUtil.usoContactsBundleId.unsafeMutableAddressor(), v45 = *v13, v46 = *(v13 + 1), , v48 = MEMORY[0x26D620740](v44, v47, v45, v46), , , (v48))
    {
      v14 = v57;
      v15 = Logger.payments.unsafeMutableAddressor();
      (*(v56 + 16))(v14, v15, v54);
      v42 = Logger.logObject.getter();
      v39 = v42;
      v41 = static os_log_type_t.debug.getter();
      v40 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v43 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v42, v41))
      {
        v16 = v53;
        v30 = static UnsafeMutablePointer.allocate(capacity:)();
        v26 = v30;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v28 = 0;
        v31 = createStorage<A>(capacity:type:)(0, v27, v27);
        v29 = v31;
        v32 = createStorage<A>(capacity:type:)(v28, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v76 = v30;
        v75 = v31;
        v74 = v32;
        v33 = 0;
        v34 = &v76;
        serialize(_:at:)(0, &v76);
        serialize(_:at:)(v33, v34);
        v73 = v43;
        v35 = &v22;
        MEMORY[0x28223BE20](&v22, v17);
        v36 = &v22 - 6;
        *(&v22 - 4) = v18;
        *(&v22 - 3) = &v75;
        *(&v22 - 2) = &v74;
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v38 = v16;
        if (v16)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v39, v40, "#ReferenceResolution Found common_Person entity, resolving to intent", v26, 2u);
          v24 = 0;
          destroyStorage<A>(_:count:)(v29, 0, v27);
          destroyStorage<A>(_:count:)(v32, v24, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v26, MEMORY[0x277D84B78]);

          v25 = v38;
        }
      }

      else
      {

        v25 = v53;
      }

      v23 = v25;

      (*(v56 + 8))(v57, v54);
      v19 = RREntity.id.getter();
      v22 = v20;
      (*(v50 + 16))(v19);

      (*(v66 + 8))(v67, v64);
      return v23;
    }

    else
    {
      (*(v66 + 8))(v67, v64);
      return v53;
    }
  }
}

uint64_t static RRUtil.shouldUseRREntity(_:rrEntity:)(char a1)
{
  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = RREntity.isConversational.getter();
  }

  return v2 & 1;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo22NSStringCompareOptionsV_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for NSStringCompareOptions(0);
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t outlined destroy of RREntity?(uint64_t a1)
{
  v3 = type metadata accessor for RREntity();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t static RREntity.makeEntities(for:)(void *a1)
{
  v18 = a1;
  v21 = 0;
  v20 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v11 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2);
  v17 = &v8 - v11;
  v12 = type metadata accessor for RREntity();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v18, v3);
  v16 = &v8 - v15;
  v21 = &v8 - v15;
  v20 = v4;
  MEMORY[0x277D82BE0](v4);
  RREntity.init(from:)(v18, v17);
  v19 = 0;
  (*(v13 + 56))(v17, 0, 1, v12);
  if ((*(v13 + 48))(v17, 1, v12) == 1)
  {
    outlined destroy of RREntity?(v17);
    return _allocateUninitializedArray<A>(_:)();
  }

  else
  {
    (*(v13 + 32))(v16, v17, v12);
    v8 = _allocateUninitializedArray<A>(_:)();
    (*(v13 + 16))(v5, v16, v12);
    _finalizeUninitializedArray<A>(_:)();
    v9 = v6;
    (*(v13 + 8))(v16, v12);
    return v9;
  }
}

{
  v18 = a1;
  v21 = 0;
  v20 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v11 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2);
  v17 = &v8 - v11;
  v12 = type metadata accessor for RREntity();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v18, v3);
  v16 = &v8 - v15;
  v21 = &v8 - v15;
  v20 = v4;
  MEMORY[0x277D82BE0](v4);
  RREntity.init(from:)(v18, v17);
  v19 = 0;
  (*(v13 + 56))(v17, 0, 1, v12);
  if ((*(v13 + 48))(v17, 1, v12) == 1)
  {
    outlined destroy of RREntity?(v17);
    return _allocateUninitializedArray<A>(_:)();
  }

  else
  {
    (*(v13 + 32))(v16, v17, v12);
    v8 = _allocateUninitializedArray<A>(_:)();
    (*(v13 + 16))(v5, v16, v12);
    _finalizeUninitializedArray<A>(_:)();
    v9 = v6;
    (*(v13 + 8))(v16, v12);
    return v9;
  }
}

uint64_t static RREntity.makeDisambiguationGroup(with:)(uint64_t a1)
{
  v100 = a1;
  v69 = partial apply for implicit closure #4 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
  v70 = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_3;
  v71 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v72 = partial apply for closure #1 in OSLogArguments.append(_:);
  v73 = partial apply for closure #1 in OSLogArguments.append(_:);
  v74 = partial apply for closure #1 in OSLogArguments.append(_:);
  v123 = 0;
  v122 = 0;
  v120 = 0;
  v121 = 0;
  v119 = 0;
  v102 = v118;
  memset(v118, 0, sizeof(v118));
  v103 = 0;
  v106 = 0;
  v105 = 0;
  v98 = 0;
  v75 = type metadata accessor for Logger();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1);
  v79 = v34 - v78;
  v2 = type metadata accessor for GroupIdentifier();
  v80 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v81 = v34 - v80;
  v82 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v98, v4);
  v83 = v34 - v82;
  v97 = type metadata accessor for RREntity();
  v84 = *(v97 - 8);
  v85 = v97 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v98, v5);
  v87 = v34 - v86;
  v88 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v34 - v86);
  v89 = v34 - v88;
  v123 = v34 - v88;
  v95 = type metadata accessor for UUID();
  v91 = *(v95 - 8);
  v92 = v95 - 8;
  v90 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v100, v8);
  v93 = v34 - v90;
  v122 = v9;
  UUID.init()();
  v94 = UUID.uuidString.getter();
  v96 = v10;
  v120 = v94;
  v121 = v10;
  (*(v91 + 8))(v93, v95);
  v99 = swift_allocObject();
  v119 = v99 + 16;
  v11 = _allocateUninitializedArray<A>(_:)();
  v12 = v100;
  *(v99 + 16) = v11;
  v116 = v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  v13 = lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  MEMORY[0x26D620820](&v117, v101, v13);
  v115 = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySo8INPersonCGGMd, "HQ");
  EnumeratedSequence.makeIterator()();
  for (i = v103; ; i = v58)
  {
    v66 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVySaySo8INPersonCG_GMd, &_ss18EnumeratedSequenceV8IteratorVySaySo8INPersonCG_GMR);
    EnumeratedSequence.Iterator.next()();
    v67 = v113;
    v68 = v114;
    if (!v114)
    {
      break;
    }

    v64 = v67;
    v65 = v68;
    v14 = v66;
    v61 = v68;
    v60 = v67;
    v106 = v67;
    v105 = v68;
    MEMORY[0x277D82BE0](v68);

    GroupIdentifier.init(id:seq:)();
    v15 = static AppUtil.usoContactsBundleId.getter();
    RREntity.init(from:groupId:appBundleId:)(v61, v81, v15, v16, v83);
    v62 = v14;
    v63 = v14;
    if (v14)
    {
      v34[0] = 0;

      (*(v84 + 56))(v83, 1, 1, v97);
      v59 = v34[0];
    }

    else
    {
      (*(v84 + 56))(v83, 0, 1, v97);
      v59 = v62;
    }

    v58 = v59;
    if ((*(v84 + 48))(v83, 1, v97) == 1)
    {
      outlined destroy of RREntity?(v83);
    }

    else
    {
      (*(v84 + 32))(v89, v83, v97);
      (*(v84 + 16))(v87, v89, v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
      Array.append(_:)();
      (*(v84 + 8))(v89, v97);
    }

    MEMORY[0x277D82BD8](v61);
  }

  v17 = v79;
  outlined destroy of [SFCardSection](v118);
  v18 = Logger.payments.unsafeMutableAddressor();
  (*(v76 + 16))(v17, v18, v75);

  v46 = 32;
  v47 = 7;
  v19 = swift_allocObject();
  v20 = v99;
  v48 = v19;
  *(v19 + 16) = v69;
  *(v19 + 24) = v20;

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  v45 = 17;
  v50 = swift_allocObject();
  *(v50 + 16) = 32;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v21 = swift_allocObject();
  v22 = v48;
  v49 = v21;
  *(v21 + 16) = v70;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v49;
  v53 = v23;
  *(v23 + 16) = v71;
  *(v23 + 24) = v24;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v52 = _allocateUninitializedArray<A>(_:)();
  v54 = v25;

  v26 = v50;
  v27 = v54;
  *v54 = v72;
  v27[1] = v26;

  v28 = v51;
  v29 = v54;
  v54[2] = v73;
  v29[3] = v28;

  v30 = v53;
  v31 = v54;
  v54[4] = v74;
  v31[5] = v30;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v56, v57))
  {
    v32 = v66;
    v38 = static UnsafeMutablePointer.allocate(capacity:)();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v39 = createStorage<A>(capacity:type:)(0, v37, v37);
    v40 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = &v111;
    v111 = v38;
    v42 = &v110;
    v110 = v39;
    v43 = &v109;
    v109 = v40;
    serialize(_:at:)(2, &v111);
    serialize(_:at:)(1, v41);
    v107 = v72;
    v108 = v50;
    closure #1 in osLogInternal(_:log:type:)(&v107, v41, v42, v43);
    v44 = v32;
    if (v32)
    {

      __break(1u);
    }

    else
    {
      v107 = v73;
      v108 = v51;
      closure #1 in osLogInternal(_:log:type:)(&v107, &v111, &v110, &v109);
      v36 = 0;
      v107 = v74;
      v108 = v53;
      closure #1 in osLogInternal(_:log:type:)(&v107, &v111, &v110, &v109);
      _os_log_impl(&dword_2686B1000, v56, v57, "#RREntity.makeDisambiguationGroup returning entities: %s", v38, 0xCu);
      destroyStorage<A>(_:count:)(v39, 0, v37);
      destroyStorage<A>(_:count:)(v40, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v38, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v56);
  (*(v76 + 8))(v79, v75);
  v34[1] = &v112;
  swift_beginAccess();
  v35 = *(v99 + 16);

  swift_endAccess();

  return v35;
}

uint64_t static RREntity.makeDisambiguationGroup(with:locale:)(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v90 = a1;
  v73 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  memset(v107, 0, sizeof(v107));
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v92 = 0;
  v94 = 0;
  v60 = type metadata accessor for Logger();
  v61 = *(v60 - 8);
  v62 = v61;
  MEMORY[0x28223BE20](v60 - 8, v60);
  v63 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73, v3);
  v65 = &v21 - v64;
  v89 = type metadata accessor for RREntity();
  v66 = v89;
  v67 = *(v89 - 8);
  v68 = v67;
  v69 = *(v67 + 64);
  v4 = MEMORY[0x28223BE20](v73, v89);
  v71 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v70 = &v21 - v71;
  MEMORY[0x28223BE20](v4, &v21 - v71);
  v72 = &v21 - v71;
  v114 = &v21 - v71;
  v74 = type metadata accessor for GroupIdentifier();
  v75 = *(v74 - 8);
  v76 = v75;
  MEMORY[0x28223BE20](v73, v74);
  v77 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v77;
  v84 = type metadata accessor for UUID();
  v79 = v84;
  v80 = *(v84 - 8);
  v82 = v80;
  v6 = MEMORY[0x28223BE20](v90, v78);
  v83 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v83;
  v112 = v6;
  v111 = v8;
  UUID.init()();
  v85 = UUID.uuidString.getter();
  v86 = v9;
  v109 = v85;
  v110 = v9;
  v87 = *(v82 + 8);
  v88 = (v82 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v87(v83, v84);
  v108 = Array.init()();
  v105 = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  v10 = lazy protocol witness table accessor for type [App] and conformance [A]();
  MEMORY[0x26D620820](&v106, v91, v10);
  v104 = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySay17SiriAppResolution0D0CGGMd, &_ss18EnumeratedSequenceVySay17SiriAppResolution0D0CGGMR);
  EnumeratedSequence.makeIterator()();
  for (i = v92; ; i = v49)
  {
    v57 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVySay17SiriAppResolution0E0CG_GMd, &_ss18EnumeratedSequenceV8IteratorVySay17SiriAppResolution0E0CG_GMR);
    EnumeratedSequence.Iterator.next()();
    v58 = v102;
    v59 = v103;
    if (!v103)
    {
      break;
    }

    v55 = v58;
    v56 = v59;
    v51 = v59;
    v52 = v58;
    v101 = v58;
    v100 = v59;
    v53 = App.toUsoEntityBuilder(locale:)(v78);
    v99 = v53;
    v54 = MEMORY[0x26D61F7C0]();
    if (v54)
    {
      v50 = v54;
      v48 = v54;
      v94 = v54;

      GroupIdentifier.init(id:seq:)();
      UUID.init()();
      v44 = UUID.uuidString.getter();
      v45 = v11;
      v87(v81, v79);
      v12 = AppUtil.usoAppBundleId.unsafeMutableAddressor();
      v46 = *v12;
      v47 = *(v12 + 1);

      (*(v76 + 16))(v65, v77, v74);
      (*(v76 + 56))(v65, 0, 1, v74);
      v20 = v65;
      v19 = 0xF000000000000000;
      RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();
      (*(v68 + 16))(v70, v72, v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
      Array.append(_:)();
      (*(v68 + 8))(v72, v66);
      (*(v76 + 8))(v77, v74);

      v49 = v57;
    }

    else
    {
      v13 = v63;
      v14 = Logger.payments.unsafeMutableAddressor();
      (*(v62 + 16))(v13, v14, v60);
      v42 = Logger.logObject.getter();
      v39 = v42;
      v41 = static os_log_type_t.error.getter();
      v40 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v43 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v42, v41))
      {
        v15 = v57;
        v29 = static UnsafeMutablePointer.allocate(capacity:)();
        v25 = v29;
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v27 = 0;
        v30 = createStorage<A>(capacity:type:)(0, v26, v26);
        v28 = v30;
        v31 = createStorage<A>(capacity:type:)(v27, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v98 = v29;
        v97 = v30;
        v96 = v31;
        v32 = 0;
        v33 = &v98;
        serialize(_:at:)(0, &v98);
        serialize(_:at:)(v32, v33);
        v95 = v43;
        v36 = &v21;
        MEMORY[0x28223BE20](&v21, v16);
        v34 = &v21 - 6;
        *(&v21 - 4) = v17;
        *(&v21 - 3) = &v97;
        v19 = &v96;
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v37 = v15;
        v38 = v36;
        if (v15)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v39, v40, "#RREntity.makeDisambiguationGroup apps failed to convert UsoEntityBuilder to UsoEntity", v25, 2u);
          v23 = 0;
          destroyStorage<A>(_:count:)(v28, 0, v26);
          destroyStorage<A>(_:count:)(v31, v23, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v25, MEMORY[0x277D84B78]);

          v24 = v37;
        }
      }

      else
      {

        v24 = v57;
      }

      v22 = v24;

      (*(v62 + 8))(v63, v60);

      v49 = v22;
    }
  }

  outlined destroy of [SFCardSection](v107);
  v21 = v108;

  outlined destroy of [SFCardSection](&v108);

  return v21;
}

uint64_t RREntity.isConversational.getter()
{
  v18 = 0;
  v7 = 0;
  v13 = type metadata accessor for RRMetadata();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13, v1);
  v14 = &v5 - v6;
  v18 = v0;
  v2 = RREntity.metadata.getter();
  v15 = &v17;
  v17 = v2;
  v8 = *MEMORY[0x277D5FE88];
  v3 = type metadata accessor for RRDataSourceMetadataValue();
  (*(*(v3 - 8) + 104))(v14, v8);
  (*(v11 + 104))(v14, *MEMORY[0x277D5FDF0], v13);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel10RRMetadataOGMd, &_sSay32SiriReferenceResolutionDataModel10RRMetadataOGMR);
  v10 = lazy protocol witness table accessor for type [RRMetadata] and conformance [A]();
  lazy protocol witness table accessor for type RRMetadata and conformance RRMetadata();
  v16 = Sequence<>.contains(_:)();
  (*(v11 + 8))(v14, v13);
  outlined destroy of [SFCardSection](v15);
  return v16 & 1;
}

uint64_t RREntity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v75 = a1;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v55 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v56 = v33 - v55;
  v73 = 0;
  v69 = type metadata accessor for UUID();
  v65 = *(v69 - 8);
  v66 = v69 - 8;
  v57 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73, v4);
  v67 = v33 - v57;
  v58 = type metadata accessor for RREntity();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v75, v5);
  v62 = v33 - v61;
  v63 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v6, v33 - v61);
  v64 = v33 - v63;
  v85 = v33 - v63;
  v84 = v8;
  UUID.init()();
  v68 = UUID.uuidString.getter();
  v70 = v9;
  (*(v65 + 8))(v67, v69);
  v10 = AppUtil.usoAppBundleId.unsafeMutableAddressor();
  v71 = *v10;
  v72 = *(v10 + 1);

  type metadata accessor for UsoEntity();
  v11 = v74;
  v12 = static UsoEntity.from(_:)(v75);
  v76 = v11;
  v77 = v12;
  v78 = v11;
  if (v11)
  {
    v50 = v78;

    MEMORY[0x26D621420](v50);
    v83 = v50;
    v40 = 0;
    v37 = 1;
    v15 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v34 = &v81;
    v81 = v15;
    v82 = v16;
    v39 = "";
    v41 = 1;
    v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v40, 1);
    v33[1] = v17._object;
    MEMORY[0x26D620F90](v17._countAndFlagsBits);

    v18 = type metadata accessor for INPaymentAccount();
    DefaultStringInterpolation.appendInterpolation(_:)(v18);
    v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v39, v40, v41 & 1);
    v33[2] = v19._object;
    MEMORY[0x26D620F90](v19._countAndFlagsBits);

    v36 = v81;
    v35 = v82;

    outlined destroy of String.UTF8View(v34);
    v46 = MEMORY[0x26D620710](v36, v35);
    v47 = v20;
    v21 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v43 = &v79;
    v79 = v21;
    v80 = v22;
    v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v39, v40, v41 & 1);
    object = v23._object;
    MEMORY[0x26D620F90](v23._countAndFlagsBits);

    v24 = type metadata accessor for UsoEntity_common_PaymentAccount();
    DefaultStringInterpolation.appendInterpolation(_:)(v24);
    v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v39, v40, v41 & 1);
    v42 = v25._object;
    MEMORY[0x26D620F90](v25._countAndFlagsBits);

    v45 = v79;
    v44 = v80;

    outlined destroy of String.UTF8View(v43);
    v49 = MEMORY[0x26D620710](v45, v44);
    v48 = v26;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    v27 = swift_allocError();
    v28 = v47;
    v29 = v48;
    v30 = v27;
    v31 = v49;
    v51 = v30;
    *v32 = v46;
    *(v32 + 8) = v28;
    *(v32 + 16) = v31;
    *(v32 + 24) = v29;
    *(v32 + 32) = 0;
    *(v32 + 40) = 0;
    *(v32 + 48) = 5;
    swift_willThrow();

    return MEMORY[0x277D82BD8](v75);
  }

  else
  {
    v52 = v77;
    v53 = 0;
    v13 = type metadata accessor for GroupIdentifier();
    (*(*(v13 - 8) + 56))(v56, 1);
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();
    (*(v59 + 32))(v64, v62, v58);
    (*(v59 + 16))(v54, v64, v58);
    MEMORY[0x277D82BD8](v75);
    return (*(v59 + 8))(v64, v58);
  }
}

{
  v54 = a2;
  v75 = a1;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v55 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v56 = v33 - v55;
  v73 = 0;
  v69 = type metadata accessor for UUID();
  v65 = *(v69 - 8);
  v66 = v69 - 8;
  v57 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73, v4);
  v67 = v33 - v57;
  v58 = type metadata accessor for RREntity();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v75, v5);
  v62 = v33 - v61;
  v63 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v6, v33 - v61);
  v64 = v33 - v63;
  v85 = v33 - v63;
  v84 = v8;
  UUID.init()();
  v68 = UUID.uuidString.getter();
  v70 = v9;
  (*(v65 + 8))(v67, v69);
  v10 = AppUtil.usoAppBundleId.unsafeMutableAddressor();
  v71 = *v10;
  v72 = *(v10 + 1);

  type metadata accessor for UsoEntity();
  v11 = v74;
  v12 = static UsoEntity.from(_:)(v75);
  v76 = v11;
  v77 = v12;
  v78 = v11;
  if (v11)
  {
    v50 = v78;

    MEMORY[0x26D621420](v50);
    v83 = v50;
    v40 = 0;
    v37 = 1;
    v15 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v34 = &v81;
    v81 = v15;
    v82 = v16;
    v39 = "";
    v41 = 1;
    v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v40, 1);
    v33[1] = v17._object;
    MEMORY[0x26D620F90](v17._countAndFlagsBits);

    v18 = type metadata accessor for INPaymentRecord();
    DefaultStringInterpolation.appendInterpolation(_:)(v18);
    v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v39, v40, v41 & 1);
    v33[2] = v19._object;
    MEMORY[0x26D620F90](v19._countAndFlagsBits);

    v36 = v81;
    v35 = v82;

    outlined destroy of String.UTF8View(v34);
    v46 = MEMORY[0x26D620710](v36, v35);
    v47 = v20;
    v21 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v43 = &v79;
    v79 = v21;
    v80 = v22;
    v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v39, v40, v41 & 1);
    object = v23._object;
    MEMORY[0x26D620F90](v23._countAndFlagsBits);

    v24 = type metadata accessor for UsoEntity_common_Payment();
    DefaultStringInterpolation.appendInterpolation(_:)(v24);
    v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v39, v40, v41 & 1);
    v42 = v25._object;
    MEMORY[0x26D620F90](v25._countAndFlagsBits);

    v45 = v79;
    v44 = v80;

    outlined destroy of String.UTF8View(v43);
    v49 = MEMORY[0x26D620710](v45, v44);
    v48 = v26;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    v27 = swift_allocError();
    v28 = v47;
    v29 = v48;
    v30 = v27;
    v31 = v49;
    v51 = v30;
    *v32 = v46;
    *(v32 + 8) = v28;
    *(v32 + 16) = v31;
    *(v32 + 24) = v29;
    *(v32 + 32) = 0;
    *(v32 + 40) = 0;
    *(v32 + 48) = 5;
    swift_willThrow();

    return MEMORY[0x277D82BD8](v75);
  }

  else
  {
    v52 = v77;
    v53 = 0;
    v13 = type metadata accessor for GroupIdentifier();
    (*(*(v13 - 8) + 56))(v56, 1);
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();
    (*(v59 + 32))(v64, v62, v58);
    (*(v59 + 16))(v54, v64, v58);
    MEMORY[0x277D82BD8](v75);
    return (*(v59 + 8))(v64, v58);
  }
}

uint64_t RREntity.init(from:groupId:appBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a5;
  v85 = a1;
  v69 = a2;
  v68 = a3;
  v77 = a4;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v97 = 0;
  v98 = 0;
  v94 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v65 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v7);
  v66 = v40 - v65;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology9UsoEntityCGMd, &_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology9UsoEntityCGMR);
  v80 = *(v83 - 8);
  v81 = v83 - 8;
  v67 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83, v8);
  v82 = v40 - v67;
  v70 = type metadata accessor for RREntity();
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v70, v69);
  v74 = v40 - v73;
  v75 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40 - v73, v10);
  v76 = v40 - v75;
  v101 = v40 - v75;
  v100 = a1;
  v99 = v11;
  v97 = v12;
  v98 = v13;
  v14 = INPerson.uniqueContactIdentifier.getter();
  v15 = v82;
  v78 = v14;
  v79 = v16;

  v17 = Transformer<>.transformer.unsafeMutableAddressor();
  (*(v80 + 16))(v15, v17, v83);
  v87 = Transformer.transform.getter();
  v84 = v18;
  (*(v80 + 8))(v82, v83);
  v19 = v86;
  v96 = v85;
  v87(&v95, &v96);
  v88 = v19;
  v89 = v19;
  if (v19)
  {
    v56 = v89;

    MEMORY[0x26D621420](v56);
    v94 = v56;
    v57 = 0;
    v44 = 1;
    v21 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v41 = &v92;
    v92 = v21;
    v93 = v22;
    v46 = "";
    v47 = 1;
    v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v57, 1);
    v40[0] = v23._object;
    MEMORY[0x26D620F90](v23._countAndFlagsBits);

    v24 = type metadata accessor for INPerson();
    DefaultStringInterpolation.appendInterpolation(_:)(v24);
    v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v46, v57, v47 & 1);
    v40[1] = v25._object;
    MEMORY[0x26D620F90](v25._countAndFlagsBits);

    v43 = v92;
    v42 = v93;

    outlined destroy of String.UTF8View(v41);
    v52 = MEMORY[0x26D620710](v43, v42);
    v53 = v26;
    v27 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v49 = &v90;
    v90 = v27;
    v91 = v28;
    v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v46, v57, v47 & 1);
    object = v29._object;
    MEMORY[0x26D620F90](v29._countAndFlagsBits);

    v30 = type metadata accessor for UsoEntity();
    DefaultStringInterpolation.appendInterpolation(_:)(v30);
    v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v46, v57, v47 & 1);
    v48 = v31._object;
    MEMORY[0x26D620F90](v31._countAndFlagsBits);

    v51 = v90;
    v50 = v91;

    outlined destroy of String.UTF8View(v49);
    v55 = MEMORY[0x26D620710](v51, v50);
    v54 = v32;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    v33 = swift_allocError();
    v34 = v53;
    v35 = v54;
    v36 = v33;
    v37 = v55;
    v58 = v36;
    *v38 = v52;
    *(v38 + 8) = v34;
    *(v38 + 16) = v37;
    *(v38 + 24) = v35;
    *(v38 + 32) = 0;
    *(v38 + 40) = 0;
    *(v38 + 48) = 5;
    swift_willThrow();

    v39 = type metadata accessor for GroupIdentifier();
    (*(*(v39 - 8) + 8))(v69);
    return MEMORY[0x277D82BD8](v85);
  }

  else
  {
    v59 = v95;

    v60 = 0;
    v63 = type metadata accessor for GroupIdentifier();
    v61 = *(v63 - 8);
    v62 = v63 - 8;
    (*(v61 + 16))(v66, v69);
    (*(v61 + 56))(v66, 0, 1, v63);
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();
    (*(v71 + 32))(v76, v74, v70);
    (*(v71 + 16))(v64, v76, v70);

    (*(v61 + 8))(v69, v63);
    MEMORY[0x277D82BD8](v85);
    return (*(v71 + 8))(v76, v70);
  }
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_3()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
  v1 = lazy protocol witness table accessor for type [RREntity] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type [RREntity] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [RREntity] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RREntity] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [RREntity] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [RRMetadata] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [RRMetadata] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RRMetadata] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay32SiriReferenceResolutionDataModel10RRMetadataOGMd, &_sSay32SiriReferenceResolutionDataModel10RRMetadataOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [RRMetadata] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}