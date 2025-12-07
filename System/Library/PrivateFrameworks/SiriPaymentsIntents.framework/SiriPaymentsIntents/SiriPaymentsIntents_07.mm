uint64_t implicit closure #1 in Parse.confirmationResponse.getter(uint64_t a1)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
  return String.init<A>(describing:)();
}

uint64_t implicit closure #2 in Parse.confirmationResponse.getter(uint64_t a1)
{
  v3 = a1;
  v6 = type metadata accessor for USOParse();
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v3);
  v7 = &v2 - v4;
  (*(v5 + 16))();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #3 in Parse.confirmationResponse.getter(uint64_t a1)
{
  v3 = a1;
  v6 = type metadata accessor for Parse();
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v3);
  v7 = &v2 - v4;
  (*(v5 + 16))();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in Parse.confirmationResponse.getter(uint64_t a1)
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

uint64_t sub_2687C3A2C()
{
  v2 = *(type metadata accessor for Parse() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)()
{
  v1 = *(type metadata accessor for Parse() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #3 in Parse.confirmationResponse.getter(v2);
}

id Parse.DirectInvocation.toSiriKitIntent(previousIntent:)(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v101 = a1;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v100 = 0;
  v103 = type metadata accessor for Logger();
  v104 = *(v103 - 8);
  v105 = v104;
  v107 = *(v104 + 64);
  v3 = MEMORY[0x28223BE20](v101, v102);
  v109 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = &v29 - v109;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v108 = &v29 - v109;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v110 = &v29 - v109;
  v130 = v7;
  v131 = v8;
  v129 = v2;
  v113 = Parse.DirectInvocation.identifier.getter();
  v114 = v9;
  v111 = v113;
  v112 = v9;

  v128[0] = PaymentsDirectInvocations.Identifiers.rawValue.getter(8);
  v128[1] = v10;
  v127[2] = v113;
  v127[3] = v114;
  v115 = MEMORY[0x26D620740](v128[0], v10, v113, v114);
  outlined destroy of String.UTF8View(v128);
  if (v115)
  {
    v11 = v110;

    v12 = Logger.payments.unsafeMutableAddressor();
    (*(v105 + 16))(v11, v12, v103);
    v98 = Logger.logObject.getter();
    v95 = v98;
    v97 = static os_log_type_t.debug.getter();
    v96 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v99 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v98, v97))
    {
      v13 = v100;
      v86 = static UnsafeMutablePointer.allocate(capacity:)();
      v82 = v86;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v84 = 0;
      v87 = createStorage<A>(capacity:type:)(0, v83, v83);
      v85 = v87;
      v88 = createStorage<A>(capacity:type:)(v84, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v119[0] = v86;
      v118 = v87;
      v117 = v88;
      v89 = 0;
      v90 = v119;
      serialize(_:at:)(0, v119);
      serialize(_:at:)(v89, v90);
      v116 = v99;
      v91 = &v29;
      MEMORY[0x28223BE20](&v29, v14);
      v92 = &v29 - 6;
      *(&v29 - 4) = v15;
      *(&v29 - 3) = &v118;
      *(&v29 - 2) = &v117;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v94 = v13;
      if (v13)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v95, v96, "#PaymentDirectInvocations sendPayment, returning INSendPaymentIntent", v82, 2u);
        v80 = 0;
        destroyStorage<A>(_:count:)(v85, 0, v83);
        destroyStorage<A>(_:count:)(v88, v80, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v82, MEMORY[0x277D84B78]);

        v81 = v94;
      }
    }

    else
    {

      v81 = v100;
    }

    v76 = v81;

    (*(v105 + 8))(v110, v103);
    type metadata accessor for INSendPaymentIntent();
    v75 = SAUIAppPunchOut.__allocating_init()();

    v77 = v75;
    v78 = &protocol witness table for INSendPaymentIntent;
    v79 = v76;
  }

  else
  {

    v127[0] = PaymentsDirectInvocations.Identifiers.rawValue.getter(9);
    v127[1] = v16;
    v126[2] = v111;
    v126[3] = v112;
    v74 = MEMORY[0x26D620740](v127[0], v16, v111, v112);
    outlined destroy of String.UTF8View(v127);
    if (v74)
    {
      v17 = v108;

      v18 = Logger.payments.unsafeMutableAddressor();
      (*(v105 + 16))(v17, v18, v103);
      v72 = Logger.logObject.getter();
      v69 = v72;
      v71 = static os_log_type_t.debug.getter();
      v70 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v73 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v72, v71))
      {
        v19 = v100;
        v60 = static UnsafeMutablePointer.allocate(capacity:)();
        v56 = v60;
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v58 = 0;
        v61 = createStorage<A>(capacity:type:)(0, v57, v57);
        v59 = v61;
        v62 = createStorage<A>(capacity:type:)(v58, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v122[0] = v60;
        v121 = v61;
        v120 = v62;
        v63 = 0;
        v64 = v122;
        serialize(_:at:)(0, v122);
        serialize(_:at:)(v63, v64);
        v119[1] = v73;
        v65 = &v29;
        MEMORY[0x28223BE20](&v29, v20);
        v66 = &v29 - 6;
        *(&v29 - 4) = v21;
        *(&v29 - 3) = &v121;
        *(&v29 - 2) = &v120;
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v68 = v19;
        if (v19)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v69, v70, "#PaymentDirectInvocations requestPayment, returning INRequestPaymentIntent", v56, 2u);
          v54 = 0;
          destroyStorage<A>(_:count:)(v59, 0, v57);
          destroyStorage<A>(_:count:)(v62, v54, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v56, MEMORY[0x277D84B78]);

          v55 = v68;
        }
      }

      else
      {

        v55 = v100;
      }

      v53 = v55;

      (*(v105 + 8))(v108, v103);
      type metadata accessor for INRequestPaymentIntent();
      v52 = SAUIAppPunchOut.__allocating_init()();

      v77 = v52;
      v78 = &protocol witness table for INRequestPaymentIntent;
      v79 = v53;
    }

    else
    {

      v126[0] = PaymentsDirectInvocations.Identifiers.rawValue.getter(10);
      v126[1] = v22;
      v125[1] = v111;
      v125[2] = v112;
      v51 = MEMORY[0x26D620740](v126[0], v22, v111, v112);
      outlined destroy of String.UTF8View(v126);
      if (v51)
      {
        v23 = v106;

        v24 = Logger.payments.unsafeMutableAddressor();
        (*(v105 + 16))(v23, v24, v103);
        v49 = Logger.logObject.getter();
        v46 = v49;
        v48 = static os_log_type_t.debug.getter();
        v47 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v50 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v49, v48))
        {
          v25 = v100;
          v37 = static UnsafeMutablePointer.allocate(capacity:)();
          v33 = v37;
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v35 = 0;
          v38 = createStorage<A>(capacity:type:)(0, v34, v34);
          v36 = v38;
          v39 = createStorage<A>(capacity:type:)(v35, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v125[0] = v37;
          v124 = v38;
          v123 = v39;
          v40 = 0;
          v41 = v125;
          serialize(_:at:)(0, v125);
          serialize(_:at:)(v40, v41);
          v122[2] = v50;
          v42 = &v29;
          MEMORY[0x28223BE20](&v29, v26);
          v43 = &v29 - 6;
          *(&v29 - 4) = v27;
          *(&v29 - 3) = &v124;
          *(&v29 - 2) = &v123;
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v45 = v25;
          if (v25)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_2686B1000, v46, v47, "#PaymentsDirectInvocations searchForAccounts, returning INSearchForAccountsIntent", v33, 2u);
            v31 = 0;
            destroyStorage<A>(_:count:)(v36, 0, v34);
            destroyStorage<A>(_:count:)(v39, v31, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v33, MEMORY[0x277D84B78]);

            v32 = v45;
          }
        }

        else
        {

          v32 = v100;
        }

        v30 = v32;

        (*(v105 + 8))(v106, v103);
        type metadata accessor for INSearchForAccountsIntent();
        v29 = SAUIAppPunchOut.__allocating_init()();

        v77 = v29;
        v78 = &protocol witness table for INSearchForAccountsIntent;
        v79 = v30;
      }

      else
      {

        v77 = 0;
        v78 = 0;
        v79 = v100;
      }
    }
  }

  return v77;
}

uint64_t USOParse.userDialogAct.getter@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v14 = 0;
  v8 = type metadata accessor for Siri_Nlu_External_UserParse();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v2);
  v9 = &v5 - v5;
  v14 = v1;
  v3 = USOParse.userParse.getter();
  v12 = MEMORY[0x26D61F2D0](v3);
  (*(v6 + 8))(v9, v8);
  v13 = v12;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
  lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
  Collection.first.getter();
}

Swift::Bool __swiftcall Parse.isFirstPartyApp()()
{
  v48 = 0;
  v37 = 0;
  v43 = 0;
  v38 = type metadata accessor for Logger();
  v39 = *(v38 - 8);
  v40 = v39;
  MEMORY[0x28223BE20](v38 - 8, v38);
  v41 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v0;
  v42 = Parse.toAppId()();
  if (v42.value._object)
  {
    v36 = v42;
    object = v42.value._object;
    countAndFlagsBits = v42.value._countAndFlagsBits;
    v43 = v42;
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.", 0xAuLL, 1);
    v31 = v2._object;
    v33 = String.hasPrefix(_:)(v2);

    v34 = v33;
    v35 = v37;
  }

  else
  {
    v3 = v41;
    v4 = Logger.payments.unsafeMutableAddressor();
    (*(v40 + 16))(v3, v4, v38);
    v28 = Logger.logObject.getter();
    v25 = v28;
    v27 = static os_log_type_t.debug.getter();
    v26 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v29 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v28, v27))
    {
      v5 = v37;
      v16 = static UnsafeMutablePointer.allocate(capacity:)();
      v12 = v16;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v14 = 0;
      v17 = createStorage<A>(capacity:type:)(0, v13, v13);
      v15 = v17;
      v18 = createStorage<A>(capacity:type:)(v14, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v47 = v16;
      v46 = v17;
      v45 = v18;
      v19 = 0;
      v20 = &v47;
      serialize(_:at:)(0, &v47);
      serialize(_:at:)(v19, v20);
      v44 = v29;
      v21 = &v9;
      MEMORY[0x28223BE20](&v9, v6);
      v22 = &v9 - 6;
      *(&v9 - 4) = v7;
      *(&v9 - 3) = &v46;
      *(&v9 - 2) = &v45;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v24 = v5;
      if (v5)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v25, v26, "#Parse isFirstPartyApp() no app ID in parse, so this is first party app by default", v12, 2u);
        v10 = 0;
        destroyStorage<A>(_:count:)(v15, 0, v13);
        destroyStorage<A>(_:count:)(v18, v10, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v12, MEMORY[0x277D84B78]);

        v11 = v24;
      }
    }

    else
    {

      v11 = v37;
    }

    v9 = v11;

    (*(v40 + 8))(v41, v38);
    v34 = 1;
    v35 = v9;
  }

  return v34 & 1;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Parse.DirectInvocation.getSelectionIndex()()
{
  v55 = 0;
  v48 = 0;
  v42 = type metadata accessor for Logger();
  v43 = *(v42 - 8);
  v44 = v43;
  MEMORY[0x28223BE20](v42 - 8, v42);
  v45 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v0;
  v46 = Parse.DirectInvocation.userData.getter();
  if (v46)
  {
    v40 = v46;
    v39 = v46;
    v47[0] = PaymentsDirectInvocations.Keys.rawValue.getter(2);
    v47[1] = v2;
    v38 = v47;
    MEMORY[0x26D620650](v53);
    outlined destroy of String.UTF8View(v38);
  }

  else
  {
    memset(v53, 0, sizeof(v53));
    v54 = 0;
  }

  if (v54)
  {
    if (swift_dynamicCast())
    {
      v36 = v47[2];
      v37 = 0;
    }

    else
    {
      v36 = 0;
      v37 = 1;
    }

    v34 = v36;
    v35 = v37;
  }

  else
  {
    outlined destroy of FlowActivity?(v53);
    v34 = 0;
    v35 = 1;
  }

  v33 = v34;
  if (v35)
  {
    v4 = v45;
    v5 = Logger.payments.unsafeMutableAddressor();
    (*(v44 + 16))(v4, v5, v42);
    v30 = Logger.logObject.getter();
    v27 = v30;
    v29 = static os_log_type_t.error.getter();
    v28 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v31 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v30, v29))
    {
      v26 = v41;
      v18 = static UnsafeMutablePointer.allocate(capacity:)();
      v14 = v18;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v16 = 0;
      v19 = createStorage<A>(capacity:type:)(0, v15, v15);
      v17 = v19;
      v20 = createStorage<A>(capacity:type:)(v16, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v52 = v18;
      v51 = v19;
      v50 = v20;
      v21 = 0;
      v22 = &v52;
      serialize(_:at:)(0, &v52);
      serialize(_:at:)(v21, v22);
      v49 = v31;
      v23 = v12;
      MEMORY[0x28223BE20](v12, v6);
      v24 = &v12[-6];
      v12[-4] = v7;
      v12[-3] = &v51;
      v12[-2] = &v50;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      v8 = v26;
      Sequence.forEach(_:)();
      if (v8)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v27, v28, "Could not find contactId in userData", v14, 2u);
        v13 = 0;
        destroyStorage<A>(_:count:)(v17, 0, v15);
        destroyStorage<A>(_:count:)(v20, v13, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v14, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    (*(v44 + 8))(v45, v42);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    v12[0] = 0;
    v9 = swift_allocError();
    v10 = v12[0];
    v12[1] = v9;
    *v11 = v12[0];
    *(v11 + 8) = v10;
    *(v11 + 16) = v10;
    *(v11 + 24) = v10;
    *(v11 + 32) = v10;
    *(v11 + 40) = v10;
    *(v11 + 48) = 17;
    swift_willThrow();
    return v12[0];
  }

  else
  {
    v32 = v33;
    result = v33;
    v48 = v33;
  }

  return result;
}

uint64_t closure #1 in USOParse.isRequestToSummariseAppleCardInfo.getter()
{
  v3 = UsoIdentifier.value.getter();
  v4 = v0;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("apple_card", 0xAuLL, 1)._countAndFlagsBits;
  v5 = MEMORY[0x26D620740](v3, v4, countAndFlagsBits);

  return v5 & 1;
}

uint64_t USOParse.isRequestForAppleCardBalance.getter()
{
  v152 = 0;
  v142 = 0;
  v139 = 0;
  v137 = 0;
  v134 = 0;
  v132 = 0;
  v129 = 0;
  v121 = 0;
  v114 = type metadata accessor for Siri_Nlu_External_UserParse();
  v112 = *(v114 - 8);
  v113 = v114 - 8;
  v101 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114, v1);
  v102 = v14 - v101;
  v103 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - v101, v3);
  v104 = v14 - v103;
  v105 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - v103, v5);
  v115 = v14 - v105;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v109 = *(*(v6 - 8) + 64);
  v106 = (v109 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v7);
  v107 = v14 - v106;
  v108 = (v109 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - v106, v8);
  v110 = v14 - v108;
  v111 = (v109 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - v108, v9);
  v122 = v14 - v111;
  v152 = v0;
  v10 = USOParse.userParse.getter();
  v120 = MEMORY[0x26D61F2D0](v10);
  v116 = *(v112 + 8);
  v117 = v112 + 8;
  v116(v115, v114);
  v149 = v120;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
  v119 = lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
  Collection.first.getter();

  v123 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v124 = *(v123 - 8);
  v125 = v123 - 8;
  v126 = *(v124 + 48);
  v127 = v124 + 48;
  if (v126(v122, 1) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v122);
  }

  else
  {
    v100 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(v124 + 8))(v122, v123);
    if (v100)
    {
      v99 = v100;
      v98 = v100;
      UsoTask.eraseToAny.getter();

      goto LABEL_6;
    }
  }

  memset(v150, 0, sizeof(v150));
  v151 = 0;
LABEL_6:
  if (v151)
  {
    type metadata accessor for UsoTask_request_common_PaymentAccount();
    if (swift_dynamicCast())
    {
      v97 = v128;
    }

    else
    {
      v97 = 0;
    }

    v96 = v97;
  }

  else
  {
    outlined destroy of FlowActivity?(v150);
    v96 = 0;
  }

  v95 = v96;
  if (!v96)
  {
LABEL_31:
    v11 = USOParse.userParse.getter();
    v71 = MEMORY[0x26D61F2D0](v11);
    v116(v104, v114);
    v146 = v71;
    Collection.first.getter();

    if ((v126)(v110, 1, v123) == 1)
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(v110);
    }

    else
    {
      v70 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
      (*(v124 + 8))(v110, v123);
      if (v70)
      {
        v69 = v70;
        v68 = v70;
        UsoTask.eraseToAny.getter();

        goto LABEL_36;
      }
    }

    memset(v147, 0, sizeof(v147));
    v148 = 0;
LABEL_36:
    if (v148)
    {
      type metadata accessor for UsoTask_noVerb_common_PaymentAccount();
      if (swift_dynamicCast())
      {
        v67 = v133;
      }

      else
      {
        v67 = 0;
      }

      v66 = v67;
    }

    else
    {
      outlined destroy of FlowActivity?(v147);
      v66 = 0;
    }

    v65 = v66;
    if (v66)
    {
      v64 = v65;
      v62 = v65;
      v137 = v65;

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
      v63 = v136[1];

      if (v63)
      {
        v61 = v63;
        v58 = v63;
        v59 = dispatch thunk of UsoEntity_common_PaymentAccount.balance.getter();

        v60 = v59;
      }

      else
      {
        v60 = 0;
      }

      v136[0] = v60;
      v57 = v60 != 0;
      v56 = v57;
      outlined destroy of ContiguousArray<A1>(v136);
      if (v56)
      {

        dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
        v55 = v135;

        if (v55 && (v54 = v55, v52 = v55, v53 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter(), , v53))
        {
          v51 = v53;
          v48 = v53;
          object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
          v49 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

          v50 = v49;
        }

        else
        {
          v50 = 0;
        }

        v46 = v50;
        if (v50)
        {
          v45 = v46;
          v43 = v46;
          v134 = v46;
          v44 = USOParse.isRequestForAppleCardBalanceHelper(usoIdentifiers:)();

          v74 = v44;
          return v74 & 1;
        }
      }
    }

    v12 = USOParse.userParse.getter();
    v42 = MEMORY[0x26D61F2D0](v12);
    v116(v102, v114);
    v143 = v42;
    Collection.first.getter();

    if ((v126)(v107, 1, v123) == 1)
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(v107);
    }

    else
    {
      v41 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
      (*(v124 + 8))(v107, v123);
      if (v41)
      {
        v40 = v41;
        v39 = v41;
        UsoTask.eraseToAny.getter();

        goto LABEL_66;
      }
    }

    memset(v144, 0, sizeof(v144));
    v145 = 0;
LABEL_66:
    if (v145)
    {
      type metadata accessor for UsoTask_summarise_common_PaymentAccount();
      if (swift_dynamicCast())
      {
        v38 = v138;
      }

      else
      {
        v38 = 0;
      }

      v37 = v38;
    }

    else
    {
      outlined destroy of FlowActivity?(v144);
      v37 = 0;
    }

    v36 = v37;
    if (v37)
    {
      v35 = v36;
      v33 = v36;
      v142 = v36;

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      v34 = v141[1];

      if (v34)
      {
        v32 = v34;
        v29 = v34;
        v30 = dispatch thunk of UsoEntity_common_PaymentAccount.balance.getter();

        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v141[0] = v31;
      v28 = v31 != 0;
      v27 = v28;
      outlined destroy of ContiguousArray<A1>(v141);
      if (v27)
      {

        dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
        v26 = v140;

        if (v26 && (v25 = v26, v23 = v26, v24 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter(), , v24))
        {
          v22 = v24;
          v19 = v24;
          v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
          v20 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        v17 = v21;
        if (v21)
        {
          v16 = v17;
          v14[1] = v17;
          v139 = v17;
          v15 = USOParse.isRequestForAppleCardBalanceHelper(usoIdentifiers:)();

          v74 = v15;
          return v74 & 1;
        }
      }
    }

    v74 = 0;
    return v74 & 1;
  }

  v94 = v95;
  v92 = v95;
  v132 = v95;

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
  v93 = v131[1];

  if (v93)
  {
    v91 = v93;
    v88 = v93;
    v89 = dispatch thunk of UsoEntity_common_PaymentAccount.balance.getter();

    v90 = v89;
  }

  else
  {
    v90 = 0;
  }

  v131[0] = v90;
  v87 = v90 != 0;
  v86 = v87;
  outlined destroy of ContiguousArray<A1>(v131);
  if (!v86 || ((, dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter(), v85 = v130, , !v85) || (v84 = v85, v82 = v85, v83 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter(), , !v83) ? (v80 = 0) : (v81 = v83, v78 = v83, v77 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object, v79 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , , v80 = v79), (v76 = v80) == 0))
  {

    goto LABEL_31;
  }

  v75 = v76;
  v72 = v76;
  v129 = v76;
  v73 = USOParse.isRequestForAppleCardBalanceHelper(usoIdentifiers:)();

  v74 = v73;
  return v74 & 1;
}

uint64_t USOParse.isRequestForAppleCardBalanceHelper(usoIdentifiers:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
  lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
  return Sequence.contains(where:)() & 1;
}

uint64_t closure #1 in USOParse.isRequestForAppleCardBalanceHelper(usoIdentifiers:)()
{
  v15 = UsoIdentifier.value.getter();
  v16 = v0;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("apple_card", 0xAuLL, 1)._countAndFlagsBits;
  v17 = MEMORY[0x26D620740](v15, v16, countAndFlagsBits);

  if (v17)
  {
    v14 = 1;
  }

  else
  {
    v11 = UsoIdentifier.value.getter();
    v12 = v2;
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Apple Card", 0xAuLL, 1)._countAndFlagsBits;
    v13 = MEMORY[0x26D620740](v11, v12, v3);

    v14 = v13;
  }

  if (v14)
  {
    v10 = 1;
  }

  else
  {
    v7 = UsoIdentifier.value.getter();
    v8 = v4;
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("generic_card", 0xCuLL, 1)._countAndFlagsBits;
    v9 = MEMORY[0x26D620740](v7, v8, v5);

    v10 = v9;
  }

  return v10 & 1;
}

uint64_t USOParse.isRequestForAppleSavings.getter()
{
  v161 = 0;
  v151 = 0;
  v149 = 0;
  v147 = 0;
  v148 = 0;
  v145 = 0;
  v143 = 0;
  v141 = 0;
  v142 = 0;
  v139 = 0;
  v137 = 0;
  v135 = 0;
  v136 = 0;
  v127 = 0;
  v120 = type metadata accessor for Siri_Nlu_External_UserParse();
  v118 = *(v120 - 8);
  v119 = v120 - 8;
  v107 = (*(v118 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v120, v1);
  v108 = &v26 - v107;
  v109 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v26 - v107, v3);
  v110 = &v26 - v109;
  v111 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v26 - v109, v5);
  v121 = &v26 - v111;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v115 = *(*(v6 - 8) + 64);
  v112 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v7);
  v113 = &v26 - v112;
  v114 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v26 - v112, v8);
  v116 = &v26 - v114;
  v117 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v26 - v114, v9);
  v128 = &v26 - v117;
  v161 = v0;
  v10 = USOParse.userParse.getter();
  v126 = MEMORY[0x26D61F2D0](v10);
  v122 = *(v118 + 8);
  v123 = v118 + 8;
  v122(v121, v120);
  v158 = v126;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
  v125 = lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
  Collection.first.getter();

  v129 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v130 = *(v129 - 8);
  v131 = v129 - 8;
  v132 = *(v130 + 48);
  v133 = v130 + 48;
  if (v132(v128, 1) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v128);
  }

  else
  {
    v106 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(v130 + 8))(v128, v129);
    if (v106)
    {
      v105 = v106;
      v104 = v106;
      UsoTask.eraseToAny.getter();

      goto LABEL_6;
    }
  }

  memset(v159, 0, sizeof(v159));
  v160 = 0;
LABEL_6:
  if (v160)
  {
    type metadata accessor for UsoTask_request_common_PaymentAccount();
    if (swift_dynamicCast())
    {
      v103 = v134;
    }

    else
    {
      v103 = 0;
    }

    v102 = v103;
  }

  else
  {
    outlined destroy of FlowActivity?(v159);
    v102 = 0;
  }

  v101 = v102;
  if (v102)
  {
    v100 = v101;
    v98 = v101;
    v139 = v101;

    dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
    v99 = v138;
    if (v138)
    {
      v97 = v99;
      v94 = v99;
      v137 = v99;

      v11 = dispatch thunk of UsoEntity_common_PaymentAccount.name.getter();
      v95 = v11;
      v96 = v12;
      if (v12)
      {
        v92 = v95;
        v93 = v96;
        v89 = v96;
        v90 = v95;
        v135 = v95;
        v136 = v96;
        v13 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter();
        v91 = v13;
        if (v13)
        {
          v88 = v91;
          v83 = v91;
          v84 = dispatch thunk of UsoEntity_common_PaymentAccountType.name.getter();
          v85 = v14;

          v86 = v84;
          v87 = v85;
        }

        else
        {
          v86 = 0;
          v87 = 0;
        }

        v80 = v87;
        v81 = USOParse.isRequestForAppleSavingsHelper(name:accountName:)(v90, v89, v86, v87);

        v82 = v81;
        return v82 & 1;
      }
    }
  }

  v15 = USOParse.userParse.getter();
  v79 = MEMORY[0x26D61F2D0](v15);
  v122(v110, v120);
  v155 = v79;
  Collection.first.getter();

  if ((v132)(v116, 1, v129) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v116);
  }

  else
  {
    v78 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(v130 + 8))(v116, v129);
    if (v78)
    {
      v77 = v78;
      v76 = v78;
      UsoTask.eraseToAny.getter();

      goto LABEL_31;
    }
  }

  memset(v156, 0, sizeof(v156));
  v157 = 0;
LABEL_31:
  if (v157)
  {
    type metadata accessor for UsoTask_noVerb_common_PaymentAccount();
    if (swift_dynamicCast())
    {
      v75 = v140;
    }

    else
    {
      v75 = 0;
    }

    v74 = v75;
  }

  else
  {
    outlined destroy of FlowActivity?(v156);
    v74 = 0;
  }

  v73 = v74;
  if (v74)
  {
    v72 = v73;
    v70 = v73;
    v145 = v73;

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    v71 = v144;
    if (v144)
    {
      v69 = v71;
      v66 = v71;
      v143 = v71;

      v16 = dispatch thunk of UsoEntity_common_PaymentAccount.name.getter();
      v67 = v16;
      v68 = v17;
      if (v17)
      {
        v64 = v67;
        v65 = v68;
        v61 = v68;
        v62 = v67;
        v141 = v67;
        v142 = v68;
        v18 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter();
        v63 = v18;
        if (v18)
        {
          v60 = v63;
          v55 = v63;
          v56 = dispatch thunk of UsoEntity_common_PaymentAccountType.name.getter();
          v57 = v19;

          v58 = v56;
          v59 = v57;
        }

        else
        {
          v58 = 0;
          v59 = 0;
        }

        v53 = v59;
        v54 = USOParse.isRequestForAppleSavingsHelper(name:accountName:)(v62, v61, v58, v59);

        v82 = v54;
        return v82 & 1;
      }
    }
  }

  v20 = USOParse.userParse.getter();
  v52 = MEMORY[0x26D61F2D0](v20);
  v122(v108, v120);
  v152 = v52;
  Collection.first.getter();

  if ((v132)(v113, 1, v129) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v113);
  }

  else
  {
    v51 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(v130 + 8))(v113, v129);
    if (v51)
    {
      v50 = v51;
      v49 = v51;
      UsoTask.eraseToAny.getter();

      goto LABEL_56;
    }
  }

  memset(v153, 0, sizeof(v153));
  v154 = 0;
LABEL_56:
  if (v154)
  {
    type metadata accessor for UsoTask_summarise_common_PaymentAccount();
    if (swift_dynamicCast())
    {
      v48 = v146;
    }

    else
    {
      v48 = 0;
    }

    v47 = v48;
  }

  else
  {
    outlined destroy of FlowActivity?(v153);
    v47 = 0;
  }

  v46 = v47;
  if (!v47)
  {
    goto LABEL_76;
  }

  v45 = v46;
  v43 = v46;
  v151 = v46;

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  v44 = v150;
  if (!v150 || (v42 = v44, v39 = v44, v149 = v44, , v21 = dispatch thunk of UsoEntity_common_PaymentAccount.name.getter(), v40 = v21, (v41 = v22) == 0))
  {

LABEL_76:
    v82 = 0;
    return v82 & 1;
  }

  v37 = v40;
  v38 = v41;
  v34 = v41;
  v35 = v40;
  v147 = v40;
  v148 = v41;
  v23 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter();
  v36 = v23;
  if (v23)
  {
    v33 = v36;
    v28 = v36;
    v29 = dispatch thunk of UsoEntity_common_PaymentAccountType.name.getter();
    v30 = v24;

    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v26 = v32;
  v27 = USOParse.isRequestForAppleSavingsHelper(name:accountName:)(v35, v34, v31, v32);

  v82 = v27;
  return v82 & 1;
}

uint64_t USOParse.isRequestForAppleSavingsHelper(name:accountName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = 0;
  v27 = a1;
  v28 = a2;
  v25 = a3;
  v26 = a4;
  v23 = String.lowercased()();
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("apple savings", 0xDuLL, 1);
  lazy protocol witness table accessor for type String and conformance String();
  v14 = StringProtocol.contains<A>(_:)();
  outlined destroy of String.UTF8View(&v22);
  outlined destroy of String.UTF8View(&v23);

  if ((v14 & 1) == 0)
  {
    v21 = String.lowercased()();
    v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("apple", 5uLL, 1);
    v11 = StringProtocol.contains<A>(_:)();
    outlined destroy of String.UTF8View(&v20);
    outlined destroy of String.UTF8View(&v21);

    if ((v11 & 1) == 0)
    {
      v10 = 0;
LABEL_15:

      v12 = v10;
      goto LABEL_18;
    }

    if (a4)
    {
      v4 = String.lowercased()();

      v9 = v4;
    }

    else
    {
      v9._countAndFlagsBits = 0;
      v9._object = 0;
    }

    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("savings account", 0xFuLL, 1);

    v18 = v9;
    v19 = v5;
    if (v9._object)
    {
      outlined init with copy of String(&v18, &v17);
      if (v19._object)
      {
        v16 = v17;
        v15 = v19;
        v7 = MEMORY[0x26D620740](v17, *(&v17 + 1), v19._countAndFlagsBits, v19._object);
        outlined destroy of String.UTF8View(&v15);
        outlined destroy of String.UTF8View(&v16);
        outlined destroy of String.UTF8View(&v18);
        v8 = v7;
LABEL_14:

        v10 = v8;
        goto LABEL_15;
      }

      outlined destroy of String.UTF8View(&v17);
    }

    else if (!v19._object)
    {
      outlined destroy of String.UTF8View(&v18);
      v8 = 1;
      goto LABEL_14;
    }

    outlined destroy of DIIdentifier(&v18);
    v8 = 0;
    goto LABEL_14;
  }

  v12 = 1;
LABEL_18:

  return v12 & 1;
}

uint64_t sub_2687C7750()
{
  v2 = *(type metadata accessor for USOParse() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)()
{
  v1 = *(type metadata accessor for USOParse() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #2 in Parse.confirmationResponse.getter(v2);
}

uint64_t sub_2687C7958()
{
  v2 = *(type metadata accessor for Parse() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2687C7AFC()
{
  v2 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #4 in Parse.confirmationResponse.getter()
{
  v1 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #4 in Parse.confirmationResponse.getter(v2);
}

uint64_t sub_2687C7D04()
{
  v2 = *(type metadata accessor for USOParse() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2687C7EA8()
{
  v2 = *(type metadata accessor for Parse() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

uint64_t sub_2687C81FC()
{
  v2 = *(type metadata accessor for Parse() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in Parse.toAppId()()
{
  type metadata accessor for Parse();

  return implicit closure #3 in Parse.toAppId()();
}

uint64_t sub_2687C8634()
{
  v2 = *(type metadata accessor for Parse() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2687C8818()
{
  v2 = *(type metadata accessor for USOParse() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2687C89BC()
{
  v2 = *(type metadata accessor for Parse() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t App.sirikitApp.getter()
{
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v38 = 0;
  v39 = App.appIdentifier.getter();
  v40 = v0;
  if (!v0)
  {
    goto LABEL_14;
  }

  v36 = v39;
  v37 = v40;
  v33 = v40;
  v34 = v39;
  v45 = v39;
  v46 = v40;
  v1 = static SAAppInfoFactory.createAppInfo(app:)();
  v35 = v1;
  if (!v1)
  {

LABEL_14:
    v14 = 0;
    v15 = v38;
    return v14;
  }

  v32 = v35;
  v30 = v35;
  v44 = v35;
  v29 = type metadata accessor for SirikitLocalizedAppName();
  v43 = Array.init()();
  v2 = [v35 appNameMap];
  v3 = v2;
  v31 = v2;
  if (v2)
  {
    v28 = v31;
    v25 = v31;
    v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v24 = v27;
  if (v27)
  {
    v23 = v24;
    v4 = v38;
    v16 = v24;
    v42 = v24;
    v41 = v24;
    v17 = v10;
    MEMORY[0x28223BE20](v10, v3);
    v18 = v9;
    v9[2] = closure #1 in App.sirikitApp.getter;
    v9[3] = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    v5 = lazy protocol witness table accessor for type [String : String] and conformance [A : B]();
    v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@guaranteed String, @guaranteed String) -> (@owned SirikitLocalizedAppName), v18, v19, v29, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v6);
    v20 = v4;
    v21 = v7;
    v43 = v7;

    v22 = v20;
  }

  else
  {
    v22 = v38;
  }

  v13 = v22;
  v10[0] = 0;
  type metadata accessor for SirikitApp.Builder();
  v10[1] = SirikitApp.Builder.__allocating_init()();
  v10[3] = dispatch thunk of SirikitApp.Builder.withAppId(print:speak:)();

  v10[2] = v43;

  v10[4] = dispatch thunk of SirikitApp.Builder.withLocalizedAppNames(_:)();

  v11 = dispatch thunk of SirikitApp.Builder.build()();

  v12 = v11;
  outlined destroy of [SFCardSection](&v43);

  v14 = v12;
  v15 = v13;
  return v14;
}

uint64_t static AppUtil.walletApp.getter()
{
  type metadata accessor for App();
  static AppUtil.PASSBOOK_APP_BUNDLE_ID.getter();
  AppUtil.PASSBOOK_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();

  AppUtil.PASSBOOK_UI_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();

  return App.__allocating_init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
}

id static AppUtil.buildPunchout(for:locale:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SAUIAppPunchOut();
  v11 = SAUIAppPunchOut.__allocating_init()();
  v12 = App.appIdentifier.getter();
  if (v2)
  {
    v9 = MEMORY[0x26D620690](v12);

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [v11 setBundleId_];
  MEMORY[0x277D82BD8](v10);
  type metadata accessor for AppInformationResolver();

  AppInformationResolver.__allocating_init(app:)();
  v7 = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v8 = v3;

  if (v8)
  {
    v5 = MEMORY[0x26D620690](v7);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  [v11 setAppDisplayName_];
  MEMORY[0x277D82BD8](v6);

  return v11;
}

BOOL App.isFirstParty.getter(uint64_t a1)
{
  v12 = v1;
  v10._countAndFlagsBits = App.appIdentifier.getter();
  v10._object = v2;

  if (v10._object)
  {
    v11 = v10;
  }

  else
  {
    v9._countAndFlagsBits = App.systemExtensionBundleId.getter();
    v9._object = v3;

    if (v9._object)
    {
      v11 = v9;
    }

    else
    {
      v8._countAndFlagsBits = App.pluginIdentifier.getter();
      v8._object = v4;
      if (v4)
      {
        v11 = v8;
      }

      else
      {
        v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      }
    }

    if (v10._object)
    {
      outlined destroy of String.UTF8View(&v10);
    }
  }

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.", 0xAuLL, 1);
  v7 = String.hasPrefix(_:)(v5);

  return v7;
}

Swift::Bool __swiftcall App.supportsIntent(intentName:)(Swift::String intentName)
{
  v15 = 0;
  v16 = 0;
  v18 = intentName;
  v17 = v1;
  v10 = App.appIdentifier.getter();
  v11 = v2;
  if (v2)
  {
    v15 = v10;
    v16 = v2;
    v4 = AppUtil.intentSupportResolver.unsafeMutableAddressor();
    swift_beginAccess();
    outlined init with copy of GlobalsProviding(v4, v12);
    swift_endAccess();
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = (*(v6 + 8))(v10, v11, intentName._countAndFlagsBits, intentName._object, v5);
    __swift_destroy_boxed_opaque_existential_0(v12);

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a1;
  v37 = a2;
  v61 = a3;
  v51 = a4;
  v38 = a5;
  v60 = a6;
  v40 = a8;
  v41 = "Fatal error";
  v42 = "Range requires lowerBound <= upperBound";
  v43 = "Swift/Range.swift";
  v44 = "Index out of range";
  v45 = "invalid Collection: count differed in successive traversals";
  v46 = "Swift/ArrayShared.swift";
  v71[3] = a3;
  v71[2] = a4;
  v71[1] = a5;
  v47 = *(a5 - 8);
  v48 = a5 - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2);
  v50 = &v17 - v49;
  v52 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v55 = AssociatedTypeWitness - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v52, v60);
  v57 = &v17 - v56;
  v58 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v10);
  v59 = &v17 - v58;
  v62 = swift_getAssociatedTypeWitness();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v61, v60);
  v66 = &v17 - v65;
  v67 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v13);
  v68 = &v17 - v67;
  v69 = dispatch thunk of Collection.count.getter();
  if (!v69)
  {
    goto LABEL_24;
  }

  v71[0] = ContiguousArray.init()();
  v35 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v69);
  result = dispatch thunk of Collection.startIndex.getter();
  if (v69 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)(v41, 11, 2, v42, 39, 2, v43, 17, 2, 760, 0);
    __break(1u);
LABEL_24:
    v19 = static Array._allocateUninitialized(_:)();
    v20 = v39;
    return v19;
  }

  if (!v69)
  {
LABEL_19:
    v25 = v39;
LABEL_20:
    v21 = v25;
    dispatch thunk of Collection.endIndex.getter();
    swift_getAssociatedConformanceWitness();
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *(v63 + 8);
    v23 = v63 + 8;
    v22(v66, v62);
    if ((v24 & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }

    v22(v68, v62);
    v18 = v71[0];

    v19 = v18;
    v20 = v21;
    return v19;
  }

  v33 = 0;
  for (i = v39; ; i = v29)
  {
    v31 = i;
    v32 = v33;
    if (v33 < 0 || v32 >= v69)
    {
      goto LABEL_18;
    }

    if (v69 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)(v41, 11, 2, v42, 39, 2, v43, 17, 2, 760, 0);
      __break(1u);
LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_19;
    }

    v30 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    v28 = &v70;
    v27 = dispatch thunk of Collection.subscript.read();
    (*(v54 + 16))(v57);
    v27();
    v16 = v31;
    v36(v57, v50);
    v29 = v16;
    if (v16)
    {
      (*(v54 + 8))(v57, AssociatedTypeWitness);
      (*(v63 + 8))(v68, v62);
      outlined destroy of ContiguousArray<A1>(v71);
      (*(v47 + 32))(v40, v50, v38);
      return v26;
    }

    (*(v54 + 8))(v57, AssociatedTypeWitness);
    ContiguousArray.append(_:)();
    dispatch thunk of Collection.formIndex(after:)();
    if (v30 == v69)
    {
      v25 = v29;
      goto LABEL_20;
    }

    result = v29;
    v33 = v30;
  }

  __break(1u);
  return result;
}

__int128 *AppUtil.usoContactsBundleId.unsafeMutableAddressor()
{
  if (one-time initialization token for usoContactsBundleId != -1)
  {
    swift_once();
  }

  return &static AppUtil.usoContactsBundleId;
}

__int128 *AppUtil.usoNamespace.unsafeMutableAddressor()
{
  if (one-time initialization token for usoNamespace != -1)
  {
    swift_once();
  }

  return &static AppUtil.usoNamespace;
}

NSJSONWritingOptions App.toAppDescription(deviceState:)(void *a1)
{
  v5 = App.getAppName(deviceState:)(a1);
  if (!v1)
  {
    return 0;
  }

  App.appIdentifier.getter();
  if (!v2)
  {

    return 0;
  }

  return NSJSONWritingOptions.init(rawValue:)(v5);
}

uint64_t one-time initialization function for PASSBOOK_EXTENSION_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.PassKit.PassKitIntentsExtension", 0x29uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.PASSBOOK_EXTENSION_BUNDLE_ID = v1;
  return result;
}

__int128 *AppUtil.PASSBOOK_EXTENSION_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for PASSBOOK_EXTENSION_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static AppUtil.PASSBOOK_EXTENSION_BUNDLE_ID;
}

uint64_t static AppUtil.PASSBOOK_EXTENSION_BUNDLE_ID.getter()
{
  v1 = *AppUtil.PASSBOOK_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for PASSBOOK_UI_EXTENSION_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.PassKit.PassKitIntentsUIExtension", 0x2BuLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.PASSBOOK_UI_EXTENSION_BUNDLE_ID = v1;
  return result;
}

__int128 *AppUtil.PASSBOOK_UI_EXTENSION_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for PASSBOOK_UI_EXTENSION_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static AppUtil.PASSBOOK_UI_EXTENSION_BUNDLE_ID;
}

uint64_t static AppUtil.PASSBOOK_UI_EXTENSION_BUNDLE_ID.getter()
{
  v1 = *AppUtil.PASSBOOK_UI_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for MESSAGES_APP_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MobileSMS", 0x13uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.MESSAGES_APP_BUNDLE_ID = v1;
  return result;
}

__int128 *AppUtil.MESSAGES_APP_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for MESSAGES_APP_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static AppUtil.MESSAGES_APP_BUNDLE_ID;
}

uint64_t static AppUtil.MESSAGES_APP_BUNDLE_ID.getter()
{
  v1 = *AppUtil.MESSAGES_APP_BUNDLE_ID.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for PASSBOOK_IOS_APP_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.Passbook", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.PASSBOOK_IOS_APP_BUNDLE_ID = v1;
  return result;
}

__int128 *AppUtil.PASSBOOK_IOS_APP_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for PASSBOOK_IOS_APP_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static AppUtil.PASSBOOK_IOS_APP_BUNDLE_ID;
}

uint64_t static AppUtil.PASSBOOK_IOS_APP_BUNDLE_ID.getter()
{
  v1 = *AppUtil.PASSBOOK_IOS_APP_BUNDLE_ID.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for PASSBOOK_WATCH_APP_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.NanoPassbook", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.PASSBOOK_WATCH_APP_BUNDLE_ID = v1;
  return result;
}

__int128 *AppUtil.PASSBOOK_WATCH_APP_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for PASSBOOK_WATCH_APP_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static AppUtil.PASSBOOK_WATCH_APP_BUNDLE_ID;
}

uint64_t static AppUtil.PASSBOOK_WATCH_APP_BUNDLE_ID.getter()
{
  v1 = *AppUtil.PASSBOOK_WATCH_APP_BUNDLE_ID.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for CONTACTS_IOS_APP_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MobileAddressBook", 0x1BuLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.CONTACTS_IOS_APP_BUNDLE_ID = v1;
  return result;
}

__int128 *AppUtil.CONTACTS_IOS_APP_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for CONTACTS_IOS_APP_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static AppUtil.CONTACTS_IOS_APP_BUNDLE_ID;
}

uint64_t static AppUtil.CONTACTS_IOS_APP_BUNDLE_ID.getter()
{
  v1 = *AppUtil.CONTACTS_IOS_APP_BUNDLE_ID.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for CONTACTS_WATCH_APP_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.NanoContacts", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.CONTACTS_WATCH_APP_BUNDLE_ID = v1;
  return result;
}

__int128 *AppUtil.CONTACTS_WATCH_APP_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for CONTACTS_WATCH_APP_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static AppUtil.CONTACTS_WATCH_APP_BUNDLE_ID;
}

uint64_t static AppUtil.CONTACTS_WATCH_APP_BUNDLE_ID.getter()
{
  v1 = *AppUtil.CONTACTS_WATCH_APP_BUNDLE_ID.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for internalWatchAppSuffix()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".SIRI_INTERNAL_WATCHAPP", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.internalWatchAppSuffix = v1;
  return result;
}

__int128 *AppUtil.internalWatchAppSuffix.unsafeMutableAddressor()
{
  if (one-time initialization token for internalWatchAppSuffix != -1)
  {
    swift_once();
  }

  return &static AppUtil.internalWatchAppSuffix;
}

uint64_t static AppUtil.internalWatchAppSuffix.getter()
{
  v1 = *AppUtil.internalWatchAppSuffix.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for launchIdPrefix()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("x-apple-siri-app://", 0x13uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.launchIdPrefix = v1;
  return result;
}

__int128 *AppUtil.launchIdPrefix.unsafeMutableAddressor()
{
  if (one-time initialization token for launchIdPrefix != -1)
  {
    swift_once();
  }

  return &static AppUtil.launchIdPrefix;
}

uint64_t static AppUtil.launchIdPrefix.getter()
{
  v1 = *AppUtil.launchIdPrefix.unsafeMutableAddressor();

  return v1;
}

NSJSONWritingOptions one-time initialization function for intentSupportResolver(Swift::UInt a1)
{
  result = NSJSONWritingOptions.init(rawValue:)(a1);
  qword_28029D5F8 = &type metadata for LSApplicationIntentSupportResolver;
  qword_28029D600 = &protocol witness table for LSApplicationIntentSupportResolver;
  return result;
}

void *AppUtil.intentSupportResolver.unsafeMutableAddressor()
{
  if (one-time initialization token for intentSupportResolver != -1)
  {
    swift_once();
  }

  return &static AppUtil.intentSupportResolver;
}

uint64_t static AppUtil.intentSupportResolver.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = AppUtil.intentSupportResolver.unsafeMutableAddressor();
  swift_beginAccess();
  outlined init with copy of GlobalsProviding(v2, a1);
  return swift_endAccess();
}

uint64_t static AppUtil.intentSupportResolver.setter(void *a1)
{
  __dst = AppUtil.intentSupportResolver.unsafeMutableAddressor();
  outlined init with copy of GlobalsProviding(a1, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(__dst);
  outlined init with take of CommonLabelsProviding(v4, __dst);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t one-time initialization function for usoAppBundleId()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Applications", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.usoAppBundleId = v1;
  return result;
}

__int128 *AppUtil.usoAppBundleId.unsafeMutableAddressor()
{
  if (one-time initialization token for usoAppBundleId != -1)
  {
    swift_once();
  }

  return &static AppUtil.usoAppBundleId;
}

uint64_t static AppUtil.usoAppBundleId.getter()
{
  v1 = *AppUtil.usoAppBundleId.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for usoContactsBundleId()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Contacts", 8uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.usoContactsBundleId = v1;
  return result;
}

uint64_t static AppUtil.usoContactsBundleId.getter()
{
  v1 = *AppUtil.usoContactsBundleId.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for usoNamespace()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("item_id", 7uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.usoNamespace = v1;
  return result;
}

uint64_t static AppUtil.PASSBOOK_APP_BUNDLE_ID.getter()
{
  v1 = *AppUtil.PASSBOOK_IOS_APP_BUNDLE_ID.unsafeMutableAddressor();

  return v1;
}

Swift::Bool __swiftcall LSApplicationIntentSupportResolver.doesAppSupportIntent(appBundleId:intentName:)(Swift::String appBundleId, Swift::String intentName)
{
  object = intentName._object;
  countAndFlagsBits = intentName._countAndFlagsBits;
  v228 = appBundleId._object;
  v229 = appBundleId._countAndFlagsBits;
  v230 = 0;
  v255 = 0;
  v254 = 0;
  v253 = 0;
  v252 = 0;
  v251 = 0;
  v231 = 0;
  v250 = 0;
  v239 = 0;
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement(v229, v228, countAndFlagsBits, object);
  }

  else
  {
    v203 = type metadata accessor for Logger();
    v192 = v203;
    v193 = *(v203 - 8);
    v202 = v193;
    v194 = v193;
    v198 = *(v193 + 64);
    v195 = &v73;
    MEMORY[0x28223BE20](&v73, v203);
    v196 = &v73;
    v197 = &v73;
    MEMORY[0x28223BE20](&v73, v3);
    v199 = &v73;
    v200 = &v73;
    MEMORY[0x28223BE20](&v73, v4);
    v6 = &v73 - v5;
    v201 = &v73 - v5;
    v254 = v229;
    v255 = v228;
    v252 = countAndFlagsBits;
    v253 = v7;
    v8 = Logger.payments.unsafeMutableAddressor();
    v204 = *(v202 + 16);
    v205 = (v202 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v204(v6, v8, v203);

    v208 = 32;
    v212 = 32;
    v213 = 7;
    v9 = swift_allocObject();
    v10 = v228;
    v214 = v9;
    *(v9 + 16) = v229;
    *(v9 + 24) = v10;
    v225 = Logger.logObject.getter();
    v206 = v225;
    v224 = static os_log_type_t.debug.getter();
    v207 = v224;
    v209 = 17;
    v218 = swift_allocObject();
    v210 = v218;
    *(v218 + 16) = v208;
    v219 = swift_allocObject();
    v211 = v219;
    *(v219 + 16) = 8;
    v11 = swift_allocObject();
    v12 = v214;
    v215 = v11;
    *(v11 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v215;
    v222 = v13;
    v216 = v13;
    *(v13 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v13 + 24) = v14;
    v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v217 = v223;
    v220 = _allocateUninitializedArray<A>(_:)();
    v221 = v15;

    v16 = v218;
    v17 = v221;
    *v221 = partial apply for closure #1 in OSLogArguments.append(_:);
    v17[1] = v16;

    v18 = v219;
    v19 = v221;
    v221[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v19[3] = v18;

    v20 = v221;
    v21 = v222;
    v221[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v20[5] = v21;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v225, v224))
    {
      v22 = v231;
      v185 = static UnsafeMutablePointer.allocate(capacity:)();
      v182 = v185;
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v186 = createStorage<A>(capacity:type:)(0, v183, v183);
      v184 = v186;
      v188 = 1;
      v187 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v237 = v185;
      v236 = v186;
      v235 = v187;
      v189 = &v237;
      serialize(_:at:)(2, &v237);
      serialize(_:at:)(v188, v189);
      v233 = partial apply for closure #1 in OSLogArguments.append(_:);
      v234 = v210;
      closure #1 in osLogInternal(_:log:type:)(&v233, v189, &v236, &v235);
      v190 = v22;
      v191 = v22;
      if (v22)
      {
        v180 = 0;

        __break(1u);
      }

      else
      {
        v233 = partial apply for closure #1 in OSLogArguments.append(_:);
        v234 = v211;
        closure #1 in osLogInternal(_:log:type:)(&v233, &v237, &v236, &v235);
        v178 = 0;
        v179 = 0;
        v233 = partial apply for closure #1 in OSLogArguments.append(_:);
        v234 = v216;
        closure #1 in osLogInternal(_:log:type:)(&v233, &v237, &v236, &v235);
        v176 = 0;
        v177 = 0;
        _os_log_impl(&dword_2686B1000, v206, v207, "LSApplicationProxyIntentSupportResolver# Looking up %s", v182, 0xCu);
        destroyStorage<A>(_:count:)(v184, 0, v183);
        destroyStorage<A>(_:count:)(v187, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v182, MEMORY[0x277D84B78]);

        v181 = v176;
      }
    }

    else
    {
      v23 = v231;

      v181 = v23;
    }

    v24 = v181;

    v171 = *(v194 + 8);
    v172 = (v194 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v171(v201, v192);
    type metadata accessor for LSApplicationRecord();

    v25 = LSApplicationRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(v229, v228, 0);
    v173 = v24;
    v174 = v25;
    v175 = v24;
    if (v24)
    {
      v44 = v196;
      v97 = v175;
      v96 = 0;
      MEMORY[0x26D621420]();
      v250 = v97;
      v45 = Logger.payments.unsafeMutableAddressor();
      v204(v44, v45, v192);

      v105 = 32;
      v110 = 32;
      v111 = 7;
      v46 = swift_allocObject();
      v47 = v228;
      v48 = v46;
      v49 = v97;
      v102 = v48;
      *(v48 + 16) = v229;
      *(v48 + 24) = v47;
      MEMORY[0x26D621420](v49);
      v112 = swift_allocObject();
      *(v112 + 16) = v97;
      v124 = Logger.logObject.getter();
      v98 = v124;
      v123 = static os_log_type_t.error.getter();
      v99 = v123;
      v106 = 17;
      v115 = swift_allocObject();
      v100 = v115;
      *(v115 + 16) = v105;
      v116 = swift_allocObject();
      v101 = v116;
      v108 = 8;
      *(v116 + 16) = 8;
      v50 = swift_allocObject();
      v51 = v102;
      v103 = v50;
      *(v50 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
      *(v50 + 24) = v51;
      v52 = swift_allocObject();
      v53 = v103;
      v117 = v52;
      v104 = v52;
      *(v52 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v52 + 24) = v53;
      v118 = swift_allocObject();
      v107 = v118;
      *(v118 + 16) = v105;
      v119 = swift_allocObject();
      v109 = v119;
      *(v119 + 16) = v108;
      v54 = swift_allocObject();
      v55 = v112;
      v113 = v54;
      *(v54 + 16) = partial apply for implicit closure #3 in LSApplicationIntentSupportResolver.doesAppSupportIntent(appBundleId:intentName:);
      *(v54 + 24) = v55;
      v56 = swift_allocObject();
      v57 = v113;
      v122 = v56;
      v114 = v56;
      *(v56 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v56 + 24) = v57;
      v120 = _allocateUninitializedArray<A>(_:)();
      v121 = v58;

      v59 = v115;
      v60 = v121;
      *v121 = partial apply for closure #1 in OSLogArguments.append(_:);
      v60[1] = v59;

      v61 = v116;
      v62 = v121;
      v121[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v62[3] = v61;

      v63 = v117;
      v64 = v121;
      v121[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v64[5] = v63;

      v65 = v118;
      v66 = v121;
      v121[6] = partial apply for closure #1 in OSLogArguments.append(_:);
      v66[7] = v65;

      v67 = v119;
      v68 = v121;
      v121[8] = partial apply for closure #1 in OSLogArguments.append(_:);
      v68[9] = v67;

      v69 = v121;
      v70 = v122;
      v121[10] = partial apply for closure #1 in OSLogArguments.append(_:);
      v69[11] = v70;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v124, v123))
      {
        v71 = v96;
        v89 = static UnsafeMutablePointer.allocate(capacity:)();
        v86 = v89;
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v90 = createStorage<A>(capacity:type:)(0, v87, v87);
        v88 = v90;
        v92 = 2;
        v91 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v249 = v89;
        v248 = v90;
        v247 = v91;
        v93 = &v249;
        serialize(_:at:)(v92, &v249);
        serialize(_:at:)(v92, v93);
        v245 = partial apply for closure #1 in OSLogArguments.append(_:);
        v246 = v100;
        closure #1 in osLogInternal(_:log:type:)(&v245, v93, &v248, &v247);
        v94 = v71;
        v95 = v71;
        if (v71)
        {
          v84 = 0;

          __break(1u);
        }

        else
        {
          v245 = partial apply for closure #1 in OSLogArguments.append(_:);
          v246 = v101;
          closure #1 in osLogInternal(_:log:type:)(&v245, &v249, &v248, &v247);
          v82 = 0;
          v83 = 0;
          v245 = partial apply for closure #1 in OSLogArguments.append(_:);
          v246 = v104;
          closure #1 in osLogInternal(_:log:type:)(&v245, &v249, &v248, &v247);
          v80 = 0;
          v81 = 0;
          v245 = partial apply for closure #1 in OSLogArguments.append(_:);
          v246 = v107;
          closure #1 in osLogInternal(_:log:type:)(&v245, &v249, &v248, &v247);
          v78 = 0;
          v79 = 0;
          v245 = partial apply for closure #1 in OSLogArguments.append(_:);
          v246 = v109;
          closure #1 in osLogInternal(_:log:type:)(&v245, &v249, &v248, &v247);
          v76 = 0;
          v77 = 0;
          v245 = partial apply for closure #1 in OSLogArguments.append(_:);
          v246 = v114;
          closure #1 in osLogInternal(_:log:type:)(&v245, &v249, &v248, &v247);
          v74 = 0;
          v75 = 0;
          _os_log_impl(&dword_2686B1000, v98, v99, "LSApplicationProxyIntentSupportResolver# Unable to get LSApplicationRecord for %s: %s", v86, 0x16u);
          destroyStorage<A>(_:count:)(v88, 0, v87);
          destroyStorage<A>(_:count:)(v91, 2, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v86, MEMORY[0x277D84B78]);

          v85 = v74;
        }
      }

      else
      {
        v72 = v96;

        v85 = v72;
      }

      v73 = v85;

      v171(v196, v192);
      v166 = 0;
      v167 = v73;
    }

    else
    {
      v169 = v174;
      v26 = v174;
      v251 = v169;
      type metadata accessor for INAppInfo();
      v170 = @nonobjc INAppInfo.__allocating_init(applicationRecord:)(v169);
      if (v170)
      {
        v168 = v170;
        v164 = v170;
        v239 = v170;
        v163 = [v170 supportedIntents];
        v160 = MEMORY[0x277D837D0];
        v161 = MEMORY[0x277D837E0];
        v162 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        v238[0] = countAndFlagsBits;
        v238[1] = object;
        v165 = MEMORY[0x26D620A00](v238);

        v166 = v165;
        v167 = v173;
      }

      else
      {
        v27 = v199;
        v28 = Logger.payments.unsafeMutableAddressor();
        v204(v27, v28, v192);

        v144 = 32;
        v148 = 32;
        v149 = 7;
        v29 = swift_allocObject();
        v30 = v228;
        v150 = v29;
        *(v29 + 16) = v229;
        *(v29 + 24) = v30;
        v159 = Logger.logObject.getter();
        v142 = v159;
        v158 = static os_log_type_t.error.getter();
        v143 = v158;
        v145 = 17;
        v153 = swift_allocObject();
        v146 = v153;
        *(v153 + 16) = v144;
        v154 = swift_allocObject();
        v147 = v154;
        *(v154 + 16) = 8;
        v31 = swift_allocObject();
        v32 = v150;
        v151 = v31;
        *(v31 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
        *(v31 + 24) = v32;
        v33 = swift_allocObject();
        v34 = v151;
        v157 = v33;
        v152 = v33;
        *(v33 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v33 + 24) = v34;
        v155 = _allocateUninitializedArray<A>(_:)();
        v156 = v35;

        v36 = v153;
        v37 = v156;
        *v156 = partial apply for closure #1 in OSLogArguments.append(_:);
        v37[1] = v36;

        v38 = v154;
        v39 = v156;
        v156[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v39[3] = v38;

        v40 = v156;
        v41 = v157;
        v156[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v40[5] = v41;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v159, v158))
        {
          v42 = v173;
          v135 = static UnsafeMutablePointer.allocate(capacity:)();
          v132 = v135;
          v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v136 = createStorage<A>(capacity:type:)(0, v133, v133);
          v134 = v136;
          v138 = 1;
          v137 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v244 = v135;
          v243 = v136;
          v242 = v137;
          v139 = &v244;
          serialize(_:at:)(2, &v244);
          serialize(_:at:)(v138, v139);
          v240 = partial apply for closure #1 in OSLogArguments.append(_:);
          v241 = v146;
          closure #1 in osLogInternal(_:log:type:)(&v240, v139, &v243, &v242);
          v140 = v42;
          v141 = v42;
          if (v42)
          {
            v130 = 0;

            __break(1u);
          }

          else
          {
            v240 = partial apply for closure #1 in OSLogArguments.append(_:);
            v241 = v147;
            closure #1 in osLogInternal(_:log:type:)(&v240, &v244, &v243, &v242);
            v128 = 0;
            v129 = 0;
            v240 = partial apply for closure #1 in OSLogArguments.append(_:);
            v241 = v152;
            closure #1 in osLogInternal(_:log:type:)(&v240, &v244, &v243, &v242);
            v126 = 0;
            v127 = 0;
            _os_log_impl(&dword_2686B1000, v142, v143, "LSApplicationProxyIntentSupportResolver# Unable to get INAppInfo for %s", v132, 0xCu);
            destroyStorage<A>(_:count:)(v134, 0, v133);
            destroyStorage<A>(_:count:)(v137, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v132, MEMORY[0x277D84B78]);

            v131 = v126;
          }
        }

        else
        {
          v43 = v173;

          v131 = v43;
        }

        v125 = v131;

        v171(v199, v192);
        v166 = 0;
        v167 = v125;
      }
    }

    return v166 & 1;
  }
}

id LSApplicationRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, a3 & 1);
  if (v8)
  {
    return v5;
  }

  else
  {
    return v10;
  }
}

uint64_t implicit closure #3 in LSApplicationIntentSupportResolver.doesAppSupportIntent(appBundleId:intentName:)(uint64_t a1)
{
  MEMORY[0x26D621420]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

id @nonobjc INAppInfo.__allocating_init(applicationRecord:)(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() appInfoWithApplicationRecord_];
  MEMORY[0x277D82BD8](a1);
  return v3;
}

BOOL App.isPaymentSendingApp.getter()
{
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSendPaymentIntent", 0x13uLL, 1);
  v2 = App.supportsIntent(intentName:)(v0);

  return v2;
}

BOOL App.isPaymentRequestingApp.getter()
{
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INRequestPaymentIntent", 0x16uLL, 1);
  v2 = App.supportsIntent(intentName:)(v0);

  return v2;
}

BOOL App.isAccountSearchingApp.getter()
{
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSearchForAccountsIntent", 0x19uLL, 1);
  v2 = App.supportsIntent(intentName:)(v0);

  return v2;
}

BOOL App.isPaymentApp.getter()
{
  v2 = App.isPaymentSendingApp.getter();

  v1 = v2 || App.isPaymentRequestingApp.getter();

  return v1;
}

uint64_t App.toUsoEntityBuilder(locale:)(uint64_t a1)
{
  v26 = a1;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v24 = 0;
  v19 = type metadata accessor for UsoIdentifier();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v23 = v10 - v22;
  v36 = v3;
  v35 = v1;
  type metadata accessor for UsoEntityBuilder_common_App();
  v25 = UsoEntityBuilder_common_App.__allocating_init()();
  v34 = v25;
  type metadata accessor for AppInformationResolver();

  v27 = AppInformationResolver.__allocating_init(app:)();
  v28 = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v29 = v4;

  if (v29)
  {
    v17 = v28;
    v18 = v29;
    v16 = v29;
    v30 = v28;
    v31 = v29;
    dispatch thunk of UsoEntityBuilder_common_App.setName(value:)();
  }

  v14 = App.appIdentifier.getter();
  v15 = v5;
  if (v5)
  {
    v12 = v14;
    v13 = v15;
    v10[7] = v15;
    v10[8] = v14;
    v32 = v14;
    v33 = v15;
    v6 = dispatch thunk of UsoEntityBuilder_common_App.name.getter();
    v11 = v6;
    if (v6)
    {
      v10[6] = v11;
      v10[5] = v11;

      v7 = AppUtil.usoAppBundleId.unsafeMutableAddressor();
      v10[1] = *v7;
      v10[2] = *(v7 + 1);

      v8 = AppUtil.usoNamespace.unsafeMutableAddressor();
      v10[3] = *v8;
      v10[4] = *(v8 + 1);

      UsoIdentifier.init(value:appBundleId:namespace:)();
      dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
      (*(v20 + 8))(v23, v19);
    }
  }

  return v25;
}

uint64_t App.getAppName(deviceState:)(void *a1)
{
  v8 = a1;
  v19 = 0;
  v18 = 0;
  v6[1] = 0;
  v14 = type metadata accessor for Locale();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v7 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v13 = v6 - v7;
  v19 = v3;
  v18 = v1;
  type metadata accessor for AppInformationResolver();

  v15 = AppInformationResolver.__allocating_init(app:)();
  v10 = v8[3];
  v9 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v10);
  dispatch thunk of DeviceState.siriLocale.getter();
  v16 = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v17 = v4;
  (*(v11 + 8))(v13, v14);

  return v16;
}

uint64_t closure #1 in App.sirikitApp.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v15 = a3;
  v16 = a4;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v9 - v10;
  v28 = MEMORY[0x28223BE20](v12, v11);
  v29 = v4;
  v26 = v5;
  v27 = v6;
  v13 = 0;
  type metadata accessor for SirikitLocalizedAppName.Builder();
  v14 = SirikitLocalizedAppName.Builder.__allocating_init()();
  String.toSpeakableString.getter();
  v19 = type metadata accessor for SpeakableString();
  v7 = *(v19 - 8);
  v21 = *(v7 + 56);
  v20 = v7 + 56;
  v17 = 0;
  v18 = 1;
  v21(v22);
  v23 = dispatch thunk of SirikitLocalizedAppName.Builder.withLocale(_:)();
  outlined destroy of SpeakableString?(v22);

  String.toSpeakableString.getter();
  (v21)(v22, v17, v18, v19);
  v24 = dispatch thunk of SirikitLocalizedAppName.Builder.withAppName(_:)();
  outlined destroy of SpeakableString?(v22);

  v25 = dispatch thunk of SirikitLocalizedAppName.Builder.build()();

  return v25;
}

uint64_t thunk for @callee_guaranteed (@guaranteed String, @guaranteed String) -> (@owned SirikitLocalizedAppName)@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2], a1[3]);
  *a3 = result;
  return result;
}

uint64_t AppResolutionStateProviding.isForcedDisambiguation.getter(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v14 = 0;
  v15 = a1;
  v12 = type metadata accessor for AppSelectionResponse();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v6);
  v11 = &v4 - v8;
  v14 = v2;
  AppResolutionStateProviding.previousSelectionResponse.getter();
  v13 = (*(v9 + 88))(v11, v12);
  if (v13 == *MEMORY[0x277D553B8] || v13 == *MEMORY[0x277D553C0])
  {
    v5 = 1;
  }

  else
  {
    (*(v9 + 8))(v11, v12);
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t Array<A>.cardinality.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    return 0;
  }

  if (MEMORY[0x26D620910](a1, a2) == 1)
  {
    Collection.first.getter();
    if (v8)
    {
      return v8;
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "SiriPaymentsIntents/AppUtil.swift", 33, 2, 201, 0);
    __break(1u);
    return v4;
  }

  else
  {

    type metadata accessor for App();
    v3 = _arrayForceCast<A, B>(_:)();

    return v3;
  }
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = MEMORY[0x26D620690](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSAySo7NSErrorCSgGMd, &_sSAySo7NSErrorCSgGMR);
  lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>();
  _convertInOutToPointerArgument<A>(_:)();
  v8 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:a3 & 1 error:v9];
  MEMORY[0x277D82BE0](0);
  MEMORY[0x277D82BD8](0);
  if (v8)
  {
    MEMORY[0x277D82BD8](v6);

    return v8;
  }

  else
  {
    _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](0);
    swift_willThrow();
    MEMORY[0x277D82BD8](v6);

    return v4;
  }
}

unint64_t type metadata accessor for LSApplicationRecord()
{
  v2 = lazy cache variable for type metadata for LSApplicationRecord;
  if (!lazy cache variable for type metadata for LSApplicationRecord)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for LSApplicationRecord);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for INAppInfo()
{
  v2 = lazy cache variable for type metadata for INAppInfo;
  if (!lazy cache variable for type metadata for INAppInfo)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INAppInfo);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata completion function for Cardinality(uint64_t a1)
{
  v4 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v4 = type metadata accessor for Array();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>()
{
  v2 = lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>;
  if (!lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSAySo7NSErrorCSgGMd, &_sSAySo7NSErrorCSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t PaymentsDialogConcept.Builder.amount.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t PaymentsDialogConcept.Builder.amount.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t PaymentsDialogConcept.Builder.fee.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t PaymentsDialogConcept.Builder.fee.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 32) = a1;

  swift_endAccess();
}

uint64_t PaymentsDialogConcept.Builder.memo.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo);
  swift_beginAccess();
  outlined init with copy of SpeakableString?(v3, a1);
  return swift_endAccess();
}

uint64_t PaymentsDialogConcept.Builder.memo.setter(uint64_t a1)
{
  v9 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v9, v2);
  v6 = &v5 - v5;
  outlined init with copy of SpeakableString?(v3, &v5 - v5);
  v7 = (v1 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo);
  v8 = &v10;
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v6, v7);
  swift_endAccess();
  return outlined destroy of SpeakableString?(v9);
}

uint64_t PaymentsDialogConcept.Builder.payeeName.getter()
{
  v2 = (v0 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t PaymentsDialogConcept.Builder.payeeName.setter(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t PaymentsDialogConcept.Builder.payerName.getter()
{
  v2 = (v0 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t PaymentsDialogConcept.Builder.payerName.setter(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t PaymentsDialogConcept.Builder.init()()
{
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  *(v0 + 4) = 0;
  v3 = OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo;
  v1 = type metadata accessor for SpeakableString();
  (*(*(v1 - 8) + 56))(&v0[v3], 1);
  result = v4;
  *(v4 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName) = 0;
  *(v4 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName) = 0;
  return result;
}

uint64_t PaymentsDialogConcept.Builder.withAmount(_:)(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 16) = a1;

  swift_endAccess();

  return v4;
}

{

  if (a1)
  {
    v3 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  *(v1 + 16) = v4;

  swift_endAccess();

  return v1;
}

uint64_t PaymentsDialogConcept.Builder.withApp(_:)(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 24) = a1;

  swift_endAccess();

  return v4;
}

{

  if (a1)
  {
    v3 = dispatch thunk of SirikitApp.Builder.build()();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  *(v1 + 24) = v4;

  swift_endAccess();

  return v1;
}

uint64_t PaymentsDialogConcept.Builder.withFee(_:)(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 32) = a1;

  swift_endAccess();

  return v4;
}

{

  if (a1)
  {
    v3 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  *(v1 + 32) = v4;

  swift_endAccess();

  return v1;
}

uint64_t PaymentsDialogConcept.Builder.withMemo(_:)(const void *a1)
{
  v10 = a1;
  v18 = 0;
  v17 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v10, v2);
  v11 = &v7 - v8;
  v9 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3, &v7 - v8);
  v14 = &v7 - v9;
  v18 = v5;
  v17 = v1;

  outlined init with copy of SpeakableString?(v10, v14);
  outlined init with copy of SpeakableString?(v14, v11);
  v12 = (v1 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo);
  v13 = &v16;
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v11, v12);
  swift_endAccess();
  outlined destroy of SpeakableString?(v14);

  return v15;
}

uint64_t PaymentsDialogConcept.Builder.withMemo(print:speak:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v14 - v15;
  v16 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v5, v7);
  v24 = &v14 - v16;
  v30 = v8;
  v31 = v9;
  v28 = v10;
  v29 = v11;
  v27 = v4;

  SpeakableString.init(print:speak:)();
  v12 = type metadata accessor for SpeakableString();
  (*(*(v12 - 8) + 56))(v24, 0, 1);
  outlined init with copy of SpeakableString?(v24, v21);
  v22 = (v4 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo);
  v23 = &v26;
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v21, v22);
  swift_endAccess();
  outlined destroy of SpeakableString?(v24);

  return v25;
}

uint64_t PaymentsDialogConcept.Builder.withPayeeName(_:)(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();

  return v5;
}

uint64_t PaymentsDialogConcept.Builder.withPayerName(_:)(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();

  return v5;
}

uint64_t PaymentsDialogConcept.Builder.build()()
{
  type metadata accessor for PaymentsDialogConcept(0);

  return PaymentsDialogConcept.__allocating_init(builder:)(v1);
}

uint64_t type metadata accessor for PaymentsDialogConcept(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for PaymentsDialogConcept;
  if (!type metadata singleton initialization cache for PaymentsDialogConcept)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t PaymentsDialogConcept.Builder.deinit()
{
  outlined destroy of ContiguousArray<A1>(v0 + 2);
  outlined destroy of ContiguousArray<A1>(v0 + 3);
  outlined destroy of ContiguousArray<A1>(v0 + 4);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo);
  outlined destroy of ContiguousArray<A1>((v0 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName));
  outlined destroy of ContiguousArray<A1>((v0 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName));
  return v2;
}

uint64_t PaymentsDialogConcept.amount.getter()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t PaymentsDialogConcept.app.getter()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t PaymentsDialogConcept.fee.getter()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t PaymentsDialogConcept.payeeName.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payeeName);

  return v2;
}

uint64_t PaymentsDialogConcept.payerName.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payerName);

  return v2;
}

uint64_t PaymentsDialogConcept.init(builder:)(void *a1)
{
  v23 = a1;
  v32 = 0;
  v31 = 0;
  v6[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v6 - v6[0];
  v32 = MEMORY[0x28223BE20](v23, v2);
  v31 = v1;
  v1[2] = 0;
  v6[1] = &v30;
  v18 = 32;
  v19 = 0;
  swift_beginAccess();
  v7 = v23[2];

  swift_endAccess();
  v1[3] = v7;
  v8 = &v29;
  swift_beginAccess();
  v9 = v23[3];

  swift_endAccess();
  v1[4] = v9;
  v10 = &v28;
  swift_beginAccess();
  v11 = v23[4];

  swift_endAccess();
  v3 = v23;
  v1[5] = v11;
  v12 = v3 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo;
  v13 = &v27;
  swift_beginAccess();
  outlined init with copy of SpeakableString?(v12, v14);
  swift_endAccess();
  outlined init with take of SpeakableString?(v14, v1 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_memo);
  v15 = (v23 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName);
  v16 = &v26;
  swift_beginAccess();
  v17 = *v15;

  swift_endAccess();
  v4 = v23;
  *(v1 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payeeName) = v17;
  v20 = (v4 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName);
  v21 = &v25;
  swift_beginAccess();
  v22 = *v20;

  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payerName) = v22;

  return v24;
}

void *outlined init with take of SpeakableString?(const void *a1, void *a2)
{
  v6 = type metadata accessor for SpeakableString();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t PaymentsDialogConcept.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v62 = a3;
  v66 = a1;
  v67 = a2;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v64 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v67, v4);
  v65 = &v33 - v64;
  v89 = v6;
  v90 = v5;
  v88 = v3;

  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amount", 6uLL, 1);
  v68 = &v87;
  v87 = v7;
  v85 = v66;
  v86 = v67;
  v69 = MEMORY[0x26D620740](v7._countAndFlagsBits, v7._object, v66, v67);
  outlined destroy of String.UTF8View(v68);
  if (v69)
  {

    v61 = v63[3];

    if (v61)
    {
      v60 = v61;
      v59 = v61;
      result = type metadata accessor for DialogCurrency();
      v9 = v62;
      v10 = v59;
      v62[3] = result;
      *v9 = v10;
    }

    else
    {
      v11 = v62;
      *v62 = 0;
      v11[1] = 0;
      v11[2] = 0;
      v11[3] = 0;
    }
  }

  else
  {

    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);
    v57 = &v84;
    v84 = v12;
    v82 = v66;
    v83 = v67;
    v58 = MEMORY[0x26D620740](v12._countAndFlagsBits, v12._object, v66, v67);
    outlined destroy of String.UTF8View(v57);
    if (v58)
    {

      v56 = v63[4];

      if (v56)
      {
        v55 = v56;
        v54 = v56;
        result = type metadata accessor for SirikitApp();
        v13 = v62;
        v14 = v54;
        v62[3] = result;
        *v13 = v14;
      }

      else
      {
        v15 = v62;
        *v62 = 0;
        v15[1] = 0;
        v15[2] = 0;
        v15[3] = 0;
      }
    }

    else
    {

      v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fee", 3uLL, 1);
      v52 = &v81;
      v81 = v16;
      v79 = v66;
      v80 = v67;
      v53 = MEMORY[0x26D620740](v16._countAndFlagsBits, v16._object, v66, v67);
      outlined destroy of String.UTF8View(v52);
      if (v53)
      {

        v51 = v63[5];

        if (v51)
        {
          v50 = v51;
          v49 = v51;
          result = type metadata accessor for DialogCurrency();
          v17 = v62;
          v18 = v49;
          v62[3] = result;
          *v17 = v18;
        }

        else
        {
          v19 = v62;
          *v62 = 0;
          v19[1] = 0;
          v19[2] = 0;
          v19[3] = 0;
        }
      }

      else
      {

        v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("memo", 4uLL, 1);
        v47 = &v78;
        v78 = v20;
        v76 = v66;
        v77 = v67;
        v48 = MEMORY[0x26D620740](v20._countAndFlagsBits, v20._object, v66, v67);
        outlined destroy of String.UTF8View(v47);
        if (v48)
        {

          outlined init with copy of SpeakableString?(v63 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_memo, v65);
          v44 = type metadata accessor for SpeakableString();
          v45 = *(v44 - 8);
          v46 = v44 - 8;
          if ((*(v45 + 48))(v65, 1) == 1)
          {
            result = outlined destroy of SpeakableString?(v65);
            v23 = v62;
            *v62 = 0;
            v23[1] = 0;
            v23[2] = 0;
            v23[3] = 0;
          }

          else
          {
            v21 = v62;
            v62[3] = v44;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
            return (*(v45 + 32))(boxed_opaque_existential_1, v65, v44);
          }
        }

        else
        {

          v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payeeName", 9uLL, 1);
          v42 = &v75;
          v75 = v24;
          v73 = v66;
          v74 = v67;
          v43 = MEMORY[0x26D620740](v24._countAndFlagsBits, v24._object, v66, v67);
          outlined destroy of String.UTF8View(v42);
          if (v43)
          {

            v41 = *(v63 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payeeName);

            if (v41)
            {
              v40 = v41;
              v39 = v41;
              result = type metadata accessor for DialogPerson();
              v25 = v62;
              v26 = v39;
              v62[3] = result;
              *v25 = v26;
            }

            else
            {
              v27 = v62;
              *v62 = 0;
              v27[1] = 0;
              v27[2] = 0;
              v27[3] = 0;
            }
          }

          else
          {

            v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payerName", 9uLL, 1);
            v37 = &v72;
            v72 = v28;
            v70 = v66;
            v71 = v67;
            v38 = MEMORY[0x26D620740](v28._countAndFlagsBits, v28._object, v66, v67);
            outlined destroy of String.UTF8View(v37);
            if (v38)
            {

              v36 = *(v63 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payerName);

              if (v36)
              {
                v35 = v36;
                v34 = v36;
                result = type metadata accessor for DialogPerson();
                v29 = v62;
                v30 = v34;
                v62[3] = result;
                *v29 = v30;
              }

              else
              {
                v31 = v62;
                *v62 = 0;
                v31[1] = 0;
                v31[2] = 0;
                v31[3] = 0;
              }
            }

            else
            {

              v32 = v62;
              *v62 = 0;
              v32[1] = 0;
              v32[2] = 0;
              v32[3] = 0;
            }
          }
        }
      }
    }
  }

  return result;
}

SiriPaymentsIntents::PaymentsDialogConcept::CodingKeys_optional __swiftcall PaymentsDialogConcept.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "amount";
  *(v1 + 8) = 6;
  *(v1 + 16) = 2;
  *(v1 + 24) = "app";
  *(v1 + 32) = 3;
  *(v1 + 40) = 2;
  *(v1 + 48) = "fee";
  *(v1 + 56) = 3;
  *(v1 + 64) = 2;
  *(v1 + 72) = "memo";
  *(v1 + 80) = 4;
  *(v1 + 88) = 2;
  *(v1 + 96) = "payeeName";
  *(v1 + 104) = 9;
  *(v1 + 112) = 2;
  *(v1 + 120) = "payerName";
  *(v1 + 128) = 9;
  *(v1 + 136) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_PaymentsDialogConcept_CodingKeys_amount;
LABEL_14:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_PaymentsDialogConcept_CodingKeys_app;
      goto LABEL_14;
    case 2:
      v5.value = SiriPaymentsIntents_PaymentsDialogConcept_CodingKeys_fee;
      goto LABEL_14;
    case 3:
      v5.value = SiriPaymentsIntents_PaymentsDialogConcept_CodingKeys_memo;
      goto LABEL_14;
    case 4:
      v5.value = SiriPaymentsIntents_PaymentsDialogConcept_CodingKeys_payeeName;
      goto LABEL_14;
    case 5:
      v5.value = SiriPaymentsIntents_PaymentsDialogConcept_CodingKeys_payerName;
      goto LABEL_14;
  }

  return 6;
}

SiriPaymentsIntents::PaymentsDialogConcept::CodingKeys_optional __swiftcall PaymentsDialogConcept.CodingKeys.init(stringValue:)(Swift::String stringValue)
{

  v4.value = PaymentsDialogConcept.CodingKeys.init(rawValue:)(stringValue).value;

  if (v4.value == SiriPaymentsIntents_PaymentsDialogConcept_CodingKeys_unknownDefault)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t PaymentsDialogConcept.CodingKeys.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amount", 6uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fee", 3uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("memo", 4uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payeeName", 9uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payerName", 9uLL, 1)._countAndFlagsBits;
  }
}

unint64_t lazy protocol witness table accessor for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys;
  if (!lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys;
  if (!lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys;
  if (!lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys;
  if (!lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys;
  if (!lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

SiriPaymentsIntents::PaymentsDialogConcept::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PaymentsDialogConcept.CodingKeys@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::PaymentsDialogConcept::CodingKeys_optional *a2@<X8>)
{
  result.value = PaymentsDialogConcept.CodingKeys.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PaymentsDialogConcept.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PaymentsDialogConcept.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriPaymentsIntents::PaymentsDialogConcept::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance PaymentsDialogConcept.CodingKeys@<W0>(uint64_t a1@<X0>, SiriPaymentsIntents::PaymentsDialogConcept::CodingKeys_optional *a2@<X8>)
{
  result.value = PaymentsDialogConcept.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

SiriPaymentsIntents::PaymentsDialogConcept::CodingKeys_optional protocol witness for CodingKey.init(intValue:) in conformance PaymentsDialogConcept.CodingKeys@<W0>(Swift::Int a1@<X0>, SiriPaymentsIntents::PaymentsDialogConcept::CodingKeys_optional *a2@<X8>)
{
  result.value = PaymentsDialogConcept.CodingKeys.init(intValue:)(a1).value;
  a2->value = result.value;
  return result;
}

uint64_t PaymentsDialogConcept.deinit()
{
  outlined destroy of SFRichText?(v0 + 2);
  outlined destroy of ContiguousArray<A1>(v0 + 3);
  outlined destroy of ContiguousArray<A1>(v0 + 4);
  outlined destroy of ContiguousArray<A1>(v0 + 5);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_memo);
  outlined destroy of ContiguousArray<A1>((v0 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payeeName));
  outlined destroy of ContiguousArray<A1>((v0 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payerName));
  return v2;
}

uint64_t PaymentsDialogConcept.encode(to:)(uint64_t a1)
{
  v46 = a1;
  v74 = 0;
  v73 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v44 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v45 = v15 - v44;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0E13DialogConceptC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0E13DialogConceptC10CodingKeysOGMR);
  v47 = *(v56 - 8);
  v48 = v56 - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v46, v4);
  v52 = v15 - v49;
  v74 = v5;
  v73 = v1;
  v50 = v5[3];
  v51 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v50);
  lazy protocol witness table accessor for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v54 = v53[3];

  v59 = &v72;
  v72 = v54;
  v55 = &v71;
  v71 = 0;
  v57 = type metadata accessor for DialogCurrency();
  v6 = lazy protocol witness table accessor for type DialogCurrency and conformance DialogAbstractMeasurement();
  v7 = v58;
  v60 = v6;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v61 = v7;
  v62 = v7;
  if (v7)
  {
    v19 = v62;
    outlined destroy of ContiguousArray<A1>(&v72);
    result = (*(v47 + 8))(v52, v56);
    v20 = v19;
  }

  else
  {
    outlined destroy of ContiguousArray<A1>(&v72);
    v38 = v53[4];

    v41 = &v70;
    v70 = v38;
    v39 = &v69;
    v69 = 1;
    v40 = type metadata accessor for SirikitApp();
    lazy protocol witness table accessor for type SirikitApp and conformance SirikitApp();
    v8 = v61;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v42 = v8;
    v43 = v8;
    if (v8)
    {
      v18 = v43;
      outlined destroy of ContiguousArray<A1>(&v70);
      result = (*(v47 + 8))(v52, v56);
      v20 = v18;
    }

    else
    {
      outlined destroy of ContiguousArray<A1>(&v70);
      v9 = v42;
      v35 = v53[5];

      v68 = v35;
      v67[1] = 2;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      v36 = v9;
      v37 = v9;
      if (v9)
      {
        v17 = v37;
        outlined destroy of ContiguousArray<A1>(&v68);
        result = (*(v47 + 8))(v52, v56);
        v20 = v17;
      }

      else
      {
        outlined destroy of ContiguousArray<A1>(&v68);
        outlined init with copy of SpeakableString?(v53 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_memo, v45);
        v31 = v67;
        v67[0] = 3;
        v32 = type metadata accessor for SpeakableString();
        lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString();
        v10 = v36;
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
        v33 = v10;
        v34 = v10;
        if (v10)
        {
          v16 = v34;
          outlined destroy of SpeakableString?(v45);
          result = (*(v47 + 8))(v52, v56);
          v20 = v16;
        }

        else
        {
          outlined destroy of SpeakableString?(v45);
          v24 = *(v53 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payeeName);

          v27 = &v66;
          v66 = v24;
          v25 = &v65;
          v65 = 4;
          v26 = type metadata accessor for DialogPerson();
          v11 = lazy protocol witness table accessor for type DialogPerson and conformance DialogPerson();
          v12 = v33;
          v28 = v11;
          KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
          v29 = v12;
          v30 = v12;
          if (v12)
          {
            v15[2] = v30;
            outlined destroy of ContiguousArray<A1>(&v66);
            return (*(v47 + 8))(v52, v56);
          }

          else
          {
            outlined destroy of ContiguousArray<A1>(&v66);
            v13 = v29;
            v21 = *(v53 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payerName);

            v64 = v21;
            v63 = 5;
            KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
            v22 = v13;
            v23 = v13;
            if (v13)
            {
              v15[1] = v23;
            }

            outlined destroy of ContiguousArray<A1>(&v64);
            return (*(v47 + 8))(v52, v56);
          }
        }
      }
    }
  }

  return result;
}

void *PaymentsDialogConcept.__allocating_init(from:)(void *a1)
{
  swift_allocObject();
  v5 = PaymentsDialogConcept.init(from:)(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

void *PaymentsDialogConcept.init(from:)(void *a1)
{
  v51 = a1;
  v73 = 0;
  v72 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v49 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v50 = v17 - v49;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0E13DialogConceptC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0E13DialogConceptC10CodingKeysOGMR);
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v51, v4);
  v56 = v17 - v55;
  v73 = v5;
  v72 = v1;
  *(v1 + 16) = 0;
  v58 = v5[3];
  v59 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v58);
  lazy protocol witness table accessor for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys();
  v6 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v60 = v6;
  v61 = v6;
  if (v6)
  {
    v24 = v61;
    v25 = 1;
  }

  else
  {
    v44 = type metadata accessor for DialogCurrency();
    v43 = &v70;
    v70 = 0;
    v7 = lazy protocol witness table accessor for type DialogCurrency and conformance DialogAbstractMeasurement();
    v8 = v60;
    v45 = v7;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v46 = v8;
    v47 = v8;
    if (v8)
    {
      v23 = v47;
      (*(v53 + 8))(v56, v52);
      v24 = v23;
      v25 = 1;
    }

    else
    {
      v48[3] = v71;
      v40 = type metadata accessor for SirikitApp();
      v39 = &v68;
      v68 = 1;
      lazy protocol witness table accessor for type SirikitApp and conformance SirikitApp();
      v9 = v46;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v41 = v9;
      v42 = v9;
      if (v9)
      {
        v22 = v42;
        (*(v53 + 8))(v56, v52);
        v24 = v22;
        v25 = 3;
      }

      else
      {
        v48[4] = v69;
        v66[1] = 2;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v37 = 0;
        v38 = 0;
        v48[5] = v67;
        v34 = type metadata accessor for SpeakableString();
        v33 = v66;
        v66[0] = 3;
        lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString();
        v10 = v37;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v35 = v10;
        v36 = v10;
        if (v10)
        {
          v21 = v36;
          (*(v53 + 8))(v56, v52);
          v24 = v21;
          v25 = 15;
        }

        else
        {
          outlined init with take of SpeakableString?(v50, v48 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_memo);
          v29 = type metadata accessor for DialogPerson();
          v28 = &v64;
          v64 = 4;
          v11 = lazy protocol witness table accessor for type DialogPerson and conformance DialogPerson();
          v12 = v35;
          v30 = v11;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v31 = v12;
          v32 = v12;
          if (!v12)
          {
            *(v48 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payeeName) = v65;
            v62 = 5;
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v26 = 0;
            v27 = 0;
            v13 = v52;
            v14 = v56;
            v15 = v53;
            *(v48 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payerName) = v63;
            (*(v15 + 8))(v14, v13);
            __swift_destroy_boxed_opaque_existential_0(v51);
            return v48;
          }

          v20 = v32;
          (*(v53 + 8))(v56, v52);
          v24 = v20;
          v25 = 31;
        }
      }
    }
  }

  v18 = v25;
  v19 = v24;
  if ((v25 & 0x7F) == 0x7F)
  {
  }

  else
  {
    outlined destroy of SFRichText?(v48 + 2);
    if ((v18 & 2) != 0)
    {
      outlined destroy of ContiguousArray<A1>(v48 + 3);
    }

    if ((v18 & 4) != 0)
    {
      outlined destroy of ContiguousArray<A1>(v48 + 4);
    }

    if ((v18 & 8) != 0)
    {
      outlined destroy of ContiguousArray<A1>(v48 + 5);
    }

    if ((v18 & 0x10) != 0)
    {
      outlined destroy of SpeakableString?(v48 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_memo);
    }

    if ((v18 & 0x20) != 0)
    {
      outlined destroy of ContiguousArray<A1>((v48 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payeeName));
    }

    v17[3] = v48;
    v17[2] = v48;
    type metadata accessor for PaymentsDialogConcept(0);
    swift_deallocPartialClassInstance();
  }

  __swift_destroy_boxed_opaque_existential_0(v51);
  return v17[1];
}

void (*protocol witness for CATType.mockGlobals.modify in conformance PaymentsDialogConcept(uint64_t *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 48824);
  *a1 = v2;
  v2[4] = TCCHandleStrategy.previousIntent.modify();
  return protocol witness for CATType.mockGlobals.modify in conformance PaymentsDialogConcept;
}

void protocol witness for CATType.mockGlobals.modify in conformance PaymentsDialogConcept(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

unint64_t type metadata completion function for PaymentsDialogConcept(uint64_t a1)
{
  updated = type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t type metadata accessor for SpeakableString?(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for SpeakableString?;
  if (!lazy cache variable for type metadata for SpeakableString?)
  {
    type metadata accessor for SpeakableString();
    v4 = type metadata accessor for Optional();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &lazy cache variable for type metadata for SpeakableString?);
      return v2;
    }
  }

  return v5;
}

uint64_t type metadata accessor for PaymentsDialogConcept.Builder(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for PaymentsDialogConcept.Builder;
  if (!type metadata singleton initialization cache for PaymentsDialogConcept.Builder)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t type metadata completion function for PaymentsDialogConcept.Builder(uint64_t a1)
{
  updated = type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t getEnumTagSinglePayload for PaymentsDialogConcept.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 5) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 250;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 6;
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

_BYTE *storeEnumTagSinglePayload for PaymentsDialogConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFA)
  {
    v5 = ((a3 + 5) >> 8) + 1;
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

  if (a2 > 0xFA)
  {
    v4 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
      *result = a2 + 5;
    }
  }

  return result;
}

void *protocol witness for Decodable.init(from:) in conformance PaymentsDialogConcept@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = PaymentsDialogConcept.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PaymentsDialogConcept and conformance PaymentsDialogConcept()
{
  v2 = lazy protocol witness table cache variable for type PaymentsDialogConcept and conformance PaymentsDialogConcept;
  if (!lazy protocol witness table cache variable for type PaymentsDialogConcept and conformance PaymentsDialogConcept)
  {
    type metadata accessor for PaymentsDialogConcept(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDialogConcept and conformance PaymentsDialogConcept);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PaymentsDialogConcept and conformance PaymentsDialogConcept;
  if (!lazy protocol witness table cache variable for type PaymentsDialogConcept and conformance PaymentsDialogConcept)
  {
    type metadata accessor for PaymentsDialogConcept(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDialogConcept and conformance PaymentsDialogConcept);
    return WitnessTable;
  }

  return v2;
}

void *__swift_coroFrameAllocStub(size_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

unint64_t lazy protocol witness table accessor for type DialogCurrency and conformance DialogAbstractMeasurement()
{
  v2 = lazy protocol witness table cache variable for type DialogCurrency and conformance DialogAbstractMeasurement;
  if (!lazy protocol witness table cache variable for type DialogCurrency and conformance DialogAbstractMeasurement)
  {
    type metadata accessor for DialogCurrency();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DialogCurrency and conformance DialogAbstractMeasurement);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type DialogCurrency and conformance DialogAbstractMeasurement;
  if (!lazy protocol witness table cache variable for type DialogCurrency and conformance DialogAbstractMeasurement)
  {
    type metadata accessor for DialogCurrency();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DialogCurrency and conformance DialogAbstractMeasurement);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SirikitApp and conformance SirikitApp()
{
  v2 = lazy protocol witness table cache variable for type SirikitApp and conformance SirikitApp;
  if (!lazy protocol witness table cache variable for type SirikitApp and conformance SirikitApp)
  {
    type metadata accessor for SirikitApp();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SirikitApp and conformance SirikitApp);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SirikitApp and conformance SirikitApp;
  if (!lazy protocol witness table cache variable for type SirikitApp and conformance SirikitApp)
  {
    type metadata accessor for SirikitApp();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SirikitApp and conformance SirikitApp);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString()
{
  v2 = lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString;
  if (!lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString)
  {
    type metadata accessor for SpeakableString();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString;
  if (!lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString)
  {
    type metadata accessor for SpeakableString();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type DialogPerson and conformance DialogPerson()
{
  v2 = lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson;
  if (!lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson)
  {
    type metadata accessor for DialogPerson();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson;
  if (!lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson)
  {
    type metadata accessor for DialogPerson();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson);
    return WitnessTable;
  }

  return v2;
}

uint64_t RequestPaymentSlots.rawValue.getter(char a1)
{
  if (!a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payer", 5uLL, 1)._countAndFlagsBits;
  }

  if (a1 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("currencyAmount", 0xEuLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("note", 4uLL, 1)._countAndFlagsBits;
  }
}

uint64_t SendPaymentSlots.rawValue.getter(char a1)
{
  if (!a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payee", 5uLL, 1)._countAndFlagsBits;
  }

  if (a1 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("currencyAmount", 0xEuLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("note", 4uLL, 1)._countAndFlagsBits;
  }
}

SiriPaymentsIntents::RequestPaymentSlots_optional __swiftcall RequestPaymentSlots.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "payer";
  *(v1 + 8) = 5;
  *(v1 + 16) = 2;
  *(v1 + 24) = "currencyAmount";
  *(v1 + 32) = 14;
  *(v1 + 40) = 2;
  *(v1 + 48) = "note";
  *(v1 + 56) = 4;
  *(v1 + 64) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_RequestPaymentSlots_payer;
LABEL_8:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_RequestPaymentSlots_currencyAmount;
      goto LABEL_8;
    case 2:
      v5.value = SiriPaymentsIntents_RequestPaymentSlots_note;
      goto LABEL_8;
  }

  return 3;
}

SiriPaymentsIntents::SendPaymentSlots_optional __swiftcall SendPaymentSlots.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "payee";
  *(v1 + 8) = 5;
  *(v1 + 16) = 2;
  *(v1 + 24) = "currencyAmount";
  *(v1 + 32) = 14;
  *(v1 + 40) = 2;
  *(v1 + 48) = "note";
  *(v1 + 56) = 4;
  *(v1 + 64) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_SendPaymentSlots_payee;
LABEL_8:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_SendPaymentSlots_currencyAmount;
      goto LABEL_8;
    case 2:
      v5.value = SiriPaymentsIntents_SendPaymentSlots_note;
      goto LABEL_8;
  }

  return 3;
}

SiriPaymentsIntents::SearchForAccountsSlots_optional __swiftcall SearchForAccountsSlots.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "accountNickname";
  *(v1 + 8) = 15;
  *(v1 + 16) = 2;
  *(v1 + 24) = "accountType";
  *(v1 + 32) = 11;
  *(v1 + 40) = 2;
  *(v1 + 48) = "organizationName";
  *(v1 + 56) = 16;
  *(v1 + 64) = 2;
  *(v1 + 72) = "requestedBalanceType";
  *(v1 + 80) = 20;
  *(v1 + 88) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_SearchForAccountsSlots_accountNickname;
LABEL_10:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_SearchForAccountsSlots_accountType;
      goto LABEL_10;
    case 2:
      v5.value = SiriPaymentsIntents_SearchForAccountsSlots_organizationName;
      goto LABEL_10;
    case 3:
      v5.value = SiriPaymentsIntents_SearchForAccountsSlots_requestedBalanceType;
      goto LABEL_10;
  }

  return 4;
}

uint64_t SearchForAccountsSlots.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNickname", 0xFuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("organizationName", 0x10uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("requestedBalanceType", 0x14uLL, 1)._countAndFlagsBits;
  }
}

id Slot<>.slotDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a2 + 8))();
  v12 = SAUIAppPunchOut.__allocating_init()();
  v14 = [v12 _intentInstanceDescription];
  MEMORY[0x277D82BD8](v12);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = MEMORY[0x26D620690]();

  v15 = [v14 slotByName_];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  if (!v15)
  {
    (*(a2 + 8))();
    v10 = [swift_getObjCClassFromMetadata() typeName];
    if (v10)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v5;
      MEMORY[0x277D82BD8](v10);
      v8 = v6;
      v9 = v7;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    if (v9)
    {
      PaymentsError.errorDescription.getter();
      outlined consume of PaymentsError(v8, v9, 0, 0, 0, 0, 11);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/Slots.swift", 31, 2, 33, 0);
    __break(1u);
    JUMPOUT(0x2687D319CLL);
  }

  return v15;
}

uint64_t Slot<>.propertyName.getter(uint64_t a1, uint64_t a2)
{
  v9 = (*(a2 + 24))();
  v10 = [v9 facadePropertyName];
  if (v10)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v2;
    MEMORY[0x277D82BD8](v10);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  MEMORY[0x277D82BD8](v9);
  if (v8)
  {
    return v7;
  }

  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "SiriPaymentsIntents/Slots.swift", 31, 2, 39, 0);
  __break(1u);
  return v4;
}

uint64_t SendPaymentSlots.canonicalName.getter(char a1)
{
  v12 = a1;
  v10 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v11 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.nl.", 0x12uLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  SendPaymentSlots.rawValue.getter(a1);
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

void static SendPaymentSlots.allCases.getter()
{
  _allocateUninitializedArray<A>(_:)();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  _finalizeUninitializedArray<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots()
{
  v2 = lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots;
  if (!lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots;
  if (!lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots;
  if (!lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots);
    return WitnessTable;
  }

  return v2;
}

SiriPaymentsIntents::SendPaymentSlots_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SendPaymentSlots@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::SendPaymentSlots_optional *a2@<X8>)
{
  result.value = SendPaymentSlots.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SendPaymentSlots@<X0>(uint64_t *a1@<X8>)
{
  result = SendPaymentSlots.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriPaymentsIntents::SendPaymentSlots_optional protocol witness for Slot.init(rawValue:) in conformance SendPaymentSlots@<W0>(uint64_t a1@<X0>, SiriPaymentsIntents::SendPaymentSlots_optional *a2@<X8>)
{
  result.value = SendPaymentSlots.init(rawValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

id protocol witness for Slot.slotDescription.getter in conformance SendPaymentSlots(uint64_t a1, uint64_t a2)
{
  v5 = lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
  v2 = lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
  return Slot<>.slotDescription.getter(a1, a2, v5, v2);
}

uint64_t protocol witness for Slot.propertyName.getter in conformance SendPaymentSlots(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
  lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
  return Slot<>.propertyName.getter(a1, a2);
}

uint64_t RequestPaymentSlots.canonicalName.getter(char a1)
{
  v12 = a1;
  v10 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v11 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.nl.", 0x12uLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  RequestPaymentSlots.rawValue.getter(a1);
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

void static RequestPaymentSlots.allCases.getter()
{
  _allocateUninitializedArray<A>(_:)();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  _finalizeUninitializedArray<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots()
{
  v2 = lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots;
  if (!lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots;
  if (!lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots;
  if (!lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots);
    return WitnessTable;
  }

  return v2;
}

SiriPaymentsIntents::RequestPaymentSlots_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RequestPaymentSlots@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::RequestPaymentSlots_optional *a2@<X8>)
{
  result.value = RequestPaymentSlots.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RequestPaymentSlots@<X0>(uint64_t *a1@<X8>)
{
  result = RequestPaymentSlots.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriPaymentsIntents::RequestPaymentSlots_optional protocol witness for Slot.init(rawValue:) in conformance RequestPaymentSlots@<W0>(uint64_t a1@<X0>, SiriPaymentsIntents::RequestPaymentSlots_optional *a2@<X8>)
{
  result.value = RequestPaymentSlots.init(rawValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

id protocol witness for Slot.slotDescription.getter in conformance RequestPaymentSlots(uint64_t a1, uint64_t a2)
{
  v5 = lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
  v2 = lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
  return Slot<>.slotDescription.getter(a1, a2, v5, v2);
}

uint64_t protocol witness for Slot.propertyName.getter in conformance RequestPaymentSlots(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
  lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
  return Slot<>.propertyName.getter(a1, a2);
}

uint64_t SearchForAccountsSlots.canonicalName.getter(char a1)
{
  v12 = a1;
  v10 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v11 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.nl.", 0x12uLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  SearchForAccountsSlots.rawValue.getter(a1);
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

void static SearchForAccountsSlots.allCases.getter()
{
  _allocateUninitializedArray<A>(_:)();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  _finalizeUninitializedArray<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type SearchForAccountsSlots and conformance SearchForAccountsSlots()
{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots;
  if (!lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots;
  if (!lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots;
  if (!lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots);
    return WitnessTable;
  }

  return v2;
}

SiriPaymentsIntents::SearchForAccountsSlots_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchForAccountsSlots@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::SearchForAccountsSlots_optional *a2@<X8>)
{
  result.value = SearchForAccountsSlots.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchForAccountsSlots@<X0>(uint64_t *a1@<X8>)
{
  result = SearchForAccountsSlots.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriPaymentsIntents::SearchForAccountsSlots_optional protocol witness for Slot.init(rawValue:) in conformance SearchForAccountsSlots@<W0>(uint64_t a1@<X0>, SiriPaymentsIntents::SearchForAccountsSlots_optional *a2@<X8>)
{
  result.value = SearchForAccountsSlots.init(rawValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

id protocol witness for Slot.slotDescription.getter in conformance SearchForAccountsSlots(uint64_t a1, uint64_t a2)
{
  v5 = lazy protocol witness table accessor for type SearchForAccountsSlots and conformance SearchForAccountsSlots();
  v2 = lazy protocol witness table accessor for type SearchForAccountsSlots and conformance SearchForAccountsSlots();
  return Slot<>.slotDescription.getter(a1, a2, v5, v2);
}

uint64_t protocol witness for Slot.propertyName.getter in conformance SearchForAccountsSlots(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type SearchForAccountsSlots and conformance SearchForAccountsSlots();
  lazy protocol witness table accessor for type SearchForAccountsSlots and conformance SearchForAccountsSlots();
  return Slot<>.propertyName.getter(a1, a2);
}

uint64_t getEnumTagSinglePayload for SearchForAccountsSlots(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SearchForAccountsSlots(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type [SearchForAccountsSlots] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SearchForAccountsSlots] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SearchForAccountsSlots] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents22SearchForAccountsSlotsOGMd, &_sSay19SiriPaymentsIntents22SearchForAccountsSlotsOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SearchForAccountsSlots] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [SearchForAccountsSlots] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SearchForAccountsSlots] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents22SearchForAccountsSlotsOGMd, &_sSay19SiriPaymentsIntents22SearchForAccountsSlotsOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SearchForAccountsSlots] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [RequestPaymentSlots] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [RequestPaymentSlots] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RequestPaymentSlots] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents19RequestPaymentSlotsOGMd, &_sSay19SiriPaymentsIntents19RequestPaymentSlotsOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [RequestPaymentSlots] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [RequestPaymentSlots] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RequestPaymentSlots] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents19RequestPaymentSlotsOGMd, &_sSay19SiriPaymentsIntents19RequestPaymentSlotsOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [RequestPaymentSlots] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [SendPaymentSlots] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SendPaymentSlots] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SendPaymentSlots] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents16SendPaymentSlotsOGMd, &_sSay19SiriPaymentsIntents16SendPaymentSlotsOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SendPaymentSlots] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [SendPaymentSlots] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SendPaymentSlots] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents16SendPaymentSlotsOGMd, &_sSay19SiriPaymentsIntents16SendPaymentSlotsOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SendPaymentSlots] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t Optional<A>.isNilOrEmpty.getter(uint64_t a1, uint64_t a2)
{

  if (a2)
  {
    v4 = String.isEmpty.getter();

    v5 = v4 & 1;
  }

  else
  {
    v5 = 2;
  }

  if (v5 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v5;
  }

  return v3 & 1;
}

uint64_t Optional<A>.emptyToNil.getter(uint64_t a1, uint64_t a2)
{
  if (Optional<A>.isNilOrEmpty.getter(a1, a2))
  {
    return 0;
  }

  return a1;
}

uint64_t Optional<A>.isNilOrEmpty.getter(uint64_t a1)
{

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16INPaymentAccountCGMd, &_sSaySo16INPaymentAccountCGMR);
    lazy protocol witness table accessor for type [INPaymentAccount] and conformance [A]();
    v3 = Collection.isEmpty.getter();

    v4 = v3 & 1;
  }

  else
  {
    v4 = 2;
  }

  if (v4 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = v4;
  }

  return v2 & 1;
}

uint64_t Optional<A>.emptyToNil.getter(uint64_t a1)
{
  if (Optional<A>.isNilOrEmpty.getter(a1))
  {
    return 0;
  }

  return a1;
}

uint64_t SendPaymentUnsupportedValueStrategy.__allocating_init()()
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
  v27 = SendPaymentUnsupportedValueStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v24, v19, v20, v21, v22, v23, v5);

  v38[5] = v27;

  __swift_destroy_boxed_opaque_existential_0(v26);

  return v27;
}

uint64_t SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2)
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
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);
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

  return MEMORY[0x2822009F8](SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:), 0);
}

uint64_t SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
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

    _os_log_impl(&dword_2686B1000, v62, v61, "SendPaymentUnsupportedValueStrategy makeUnsupportedValueOutput", buf, 2u);
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
  v4.value = SendPaymentSlots.init(rawValue:)(rawValue).value;
  *(v57 + 865) = v4;
  if (v4.value == SiriPaymentsIntents_SendPaymentSlots_unknownDefault)
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
    *(v32 + 16) = partial apply for implicit closure #1 in SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
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
      _os_log_impl(&dword_2686B1000, oslog, v38, "#SendPaymentUnsupportedValueStrategy unknown parameter: %s", v22, 0xCu);
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
    v5[1] = SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
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
    v2 = SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
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
    v32 = [v38 payee];
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

      v29 = (v31 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName);
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

    SendPaymentSlots.rawValue.getter(v19);
    String.toSpeakableString.getter();

    v9 = type metadata accessor for SpeakableString();
    (*(*(v9 - 8) + 56))(v20, 0, 1);

    v10 = swift_task_alloc();
    *(v48 + 848) = v10;
    *v10 = *(v48 + 488);
    v10[1] = SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    v11 = *(v48 + 712);
    v12 = *(v48 + 648);

    return SendPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:)(v11, v12, v21);
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

{
  v6 = *v1;
  v5 = *v1 + 16;
  *(v6 + 488) = *v1;
  *(v6 + 856) = v0;

  if (v0)
  {
    v2 = SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  else
  {
    v4 = *(v5 + 632);

    outlined destroy of SpeakableString?(v4);

    v2 = SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v12 = v0[101];
  v10 = v0[89];
  v9 = v0[88];
  v11 = v0[87];
  v8 = v0[85];
  v6 = v0[76];
  v7 = v0[74];
  v0[61] = v0;

  outlined init with copy of GlobalsProviding(v6 + 104, (v0 + 7));

  v5 = v0[10];
  v4 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  (*(v4 + 16))(v5);

  BaseStrategy.ttsEnabled.getter();

  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v8, 1);
  v0[17] = 0;
  v0[18] = 0;
  v0[19] = 0;
  v0[20] = 0;
  v0[21] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v7[3] = type metadata accessor for AceOutput();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 17);
  outlined destroy of NLContextUpdate?(v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  (*(v9 + 8))(v10, v11);

  MEMORY[0x277D82BD8](v12);

  v2 = *(v0[61] + 8);

  return v2();
}

{
  *(v0 + 488) = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(*(v0 + 488) + 8);

  return v1();
}

{
  v4 = v0[101];
  v3 = v0[81];
  v0[61] = v0;

  outlined destroy of SpeakableString?(v3);

  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[61] + 8);

  return v1();
}

uint64_t implicit closure #1 in SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
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

uint64_t SendPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(uint64_t a1)
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
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);
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

  return MEMORY[0x2822009F8](SendPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:), 0);
}

uint64_t SendPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
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
  v57 = type metadata accessor for INSendPaymentIntent();
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
  *(v71 + 16) = partial apply for implicit closure #1 in SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  *(v71 + 24) = v70;
  v76 = swift_allocObject();
  *(v76 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v76 + 24) = v71;
  v77 = swift_allocObject();
  *(v77 + 16) = 32;
  v78 = swift_allocObject();
  *(v78 + 16) = 8;
  v73 = swift_allocObject();
  *(v73 + 16) = partial apply for implicit closure #2 in SendPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:);
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
    _os_log_impl(&dword_2686B1000, v81, v82, "#SendPaymentUnsupportedValueStrategy updating intent for slot '%s' with index '%s'", buf, 0x16u);
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
  v4.value = SendPaymentSlots.init(rawValue:)(rawValue).value;
  value = v4.value;
  if (v4.value == SiriPaymentsIntents_SendPaymentSlots_unknownDefault)
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
      if (v4.value == SiriPaymentsIntents_SendPaymentSlots_currencyAmount)
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
        lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
        lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
        v6 = Slot<>.propertyName.getter(&type metadata for SendPaymentSlots, &protocol witness table for SendPaymentSlots);
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
        lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
        lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
        v7 = Slot<>.propertyName.getter(&type metadata for SendPaymentSlots, &protocol witness table for SendPaymentSlots);
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
      lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
      lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
      v5 = Slot<>.propertyName.getter(&type metadata for SendPaymentSlots, &protocol witness table for SendPaymentSlots);
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

uint64_t implicit closure #2 in SendPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  v8 = type metadata accessor for ParameterIdentifier();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v0);
  v7 = &v3 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v9 = ParameterIdentifier.multicardinalIndex.getter();
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  v11 = v9;
  v12 = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  return Optional.debugDescription.getter();
}

uint64_t sub_2687D8E34()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);

  return implicit closure #1 in SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)();
}

uint64_t SendPaymentUnsupportedValueStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance SendPaymentUnsupportedValueStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance SendPaymentUnsupportedValueStrategy(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return SendPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance SendPaymentUnsupportedValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for SendPaymentUnsupportedValueStrategy(0);
  *v5 = *(v8 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E00](a1, a2, v6, a4);
}

uint64_t sub_2687D94A8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2687D9580()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in SendPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);

  return implicit closure #2 in SendPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)();
}

uint64_t type metadata accessor for SendPaymentUnsupportedValueStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SendPaymentUnsupportedValueStrategy;
  if (!type metadata singleton initialization cache for SendPaymentUnsupportedValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

Swift::String __swiftcall String.firstLetterCapitalized()()
{
  v6 = v0;
  v7 = v1;
  v14 = v0;
  v15 = v1;

  v10 = v6;
  v11 = v7;
  lazy protocol witness table accessor for type String and conformance String();
  Collection.prefix(_:)();
  v2 = Substring.uppercased()();

  v9 = v2;

  v8[4] = v6;
  v8[5] = v7;
  default argument 0 of Collection.dropFirst(_:)();
  Collection.dropFirst(_:)();
  v8[0] = v8[6];
  v8[1] = v8[7];
  v8[2] = v8[8];
  v8[3] = v8[9];
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type Substring and conformance Substring();
  static RangeReplaceableCollection.+ infix<A>(_:_:)();
  outlined destroy of Substring(v8);
  outlined destroy of String.UTF8View(&v9);
  v3 = v12;
  v4 = v13;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  v2 = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Substring and conformance Substring);
    return WitnessTable;
  }

  return v2;
}

uint64_t PaymentsAppResolver.init(appLister:)(void *a1)
{
  v7 = 0;
  v6 = 0;
  v8 = *(*v1 + class metadata base offset for PaymentsAppResolver);
  v6 = a1;
  v7 = v1;
  outlined init with copy of GlobalsProviding(a1, v5);
  outlined init with take of CommonLabelsProviding(v5, v1 + *(*v1 + class metadata base offset for PaymentsAppResolver + 16));
  v4 = AppResolutionService.init()();

  v7 = v4;
  __swift_destroy_boxed_opaque_existential_0(a1);

  return v4;
}

Swift::Bool __swiftcall PaymentsAppResolver.isAppOnDevice(_:)(Swift::String a1)
{
  v82 = a1;
  v65 = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  v66 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v67 = partial apply for implicit closure #2 in PaymentsAppResolver.isAppOnDevice(_:);
  v68 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v69 = partial apply for closure #1 in OSLogArguments.append(_:);
  v70 = partial apply for closure #1 in OSLogArguments.append(_:);
  v71 = partial apply for closure #1 in OSLogArguments.append(_:);
  v72 = partial apply for closure #1 in OSLogArguments.append(_:);
  v73 = partial apply for closure #1 in OSLogArguments.append(_:);
  v74 = partial apply for closure #1 in OSLogArguments.append(_:);
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v91 = 0;
  v80 = *v1;
  v75 = 0;
  v76 = type metadata accessor for Logger();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v82._object);
  v81 = v32 - v79;
  v94 = v2;
  v95 = v3;
  v93 = v1;
  v92[1] = *(v80 + class metadata base offset for PaymentsAppResolver);
  type metadata accessor for LSApplicationRecord();

  v4 = LSApplicationRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(v82._countAndFlagsBits, v82._object, 0);
  v83 = 0;
  v84 = v4;
  v85 = 0;
  *&v64[3] = v4;
  *&v64[5] = 0;
  v64[2] = 0;
  v92[0] = v4;
  *v64 = v4 != 0;
  v5 = v81;
  v43 = v4 != 0;
  outlined destroy of SFRichText?(v92);
  v42 = 1;
  v91 = v43;
  v6 = Logger.payments.unsafeMutableAddressor();
  (*(v77 + 16))(v5, v6, v76);

  v49 = 32;
  v50 = 7;
  v7 = swift_allocObject();
  object = v82._object;
  v44 = v7;
  *(v7 + 16) = v82._countAndFlagsBits;
  *(v7 + 24) = object;
  v47 = 17;
  v51 = swift_allocObject();
  *(v51 + 16) = v43 & v42;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  v53 = swift_allocObject();
  v46 = 32;
  *(v53 + 16) = 32;
  v54 = swift_allocObject();
  v48 = 8;
  *(v54 + 16) = 8;
  v9 = swift_allocObject();
  v10 = v44;
  v45 = v9;
  *(v9 + 16) = v65;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v45;
  v55 = v11;
  *(v11 + 16) = v66;
  *(v11 + 24) = v12;
  v56 = swift_allocObject();
  *(v56 + 16) = v46;
  v57 = swift_allocObject();
  *(v57 + 16) = v48;
  v13 = swift_allocObject();
  v14 = v51;
  v52 = v13;
  *(v13 + 16) = v67;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v52;
  v59 = v15;
  *(v15 + 16) = v68;
  *(v15 + 24) = v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v58 = _allocateUninitializedArray<A>(_:)();
  v60 = v17;

  v18 = v53;
  v19 = v60;
  *v60 = v69;
  v19[1] = v18;

  v20 = v54;
  v21 = v60;
  v60[2] = v70;
  v21[3] = v20;

  v22 = v55;
  v23 = v60;
  v60[4] = v71;
  v23[5] = v22;

  v24 = v56;
  v25 = v60;
  v60[6] = v72;
  v25[7] = v24;

  v26 = v57;
  v27 = v60;
  v60[8] = v73;
  v27[9] = v26;

  v28 = v59;
  v29 = v60;
  v60[10] = v74;
  v29[11] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v62, v63))
  {
    v30 = *&v64[1];
    v34 = static UnsafeMutablePointer.allocate(capacity:)();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v35 = createStorage<A>(capacity:type:)(0, v33, v33);
    v36 = createStorage<A>(capacity:type:)(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v38 = &v90;
    v90 = v34;
    v39 = &v89;
    v89 = v35;
    v40 = &v88;
    v88 = v36;
    v37 = 2;
    serialize(_:at:)(2, &v90);
    serialize(_:at:)(v37, v38);
    v86 = v69;
    v87 = v53;
    closure #1 in osLogInternal(_:log:type:)(&v86, v38, v39, v40);
    v41 = v30;
    if (v30)
    {

      __break(1u);
    }

    else
    {
      v86 = v70;
      v87 = v54;
      closure #1 in osLogInternal(_:log:type:)(&v86, &v90, &v89, &v88);
      v32[4] = 0;
      v86 = v71;
      v87 = v55;
      closure #1 in osLogInternal(_:log:type:)(&v86, &v90, &v89, &v88);
      v32[3] = 0;
      v86 = v72;
      v87 = v56;
      closure #1 in osLogInternal(_:log:type:)(&v86, &v90, &v89, &v88);
      v32[2] = 0;
      v86 = v73;
      v87 = v57;
      closure #1 in osLogInternal(_:log:type:)(&v86, &v90, &v89, &v88);
      v32[1] = 0;
      v86 = v74;
      v87 = v59;
      closure #1 in osLogInternal(_:log:type:)(&v86, &v90, &v89, &v88);
      _os_log_impl(&dword_2686B1000, v62, v63, "#PaymentsAppResolver isAppOnDevice for %s, %s", v34, 0x16u);
      destroyStorage<A>(_:count:)(v35, 0, v33);
      destroyStorage<A>(_:count:)(v36, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v34, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v62);
  (*(v77 + 8))(v81, v76);
  return v43;
}

uint64_t implicit closure #2 in PaymentsAppResolver.isAppOnDevice(_:)(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("found LSApplicationRecord", 0x19uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("could not find LSApplicationRecord", 0x22uLL, 1)._countAndFlagsBits;
  }
}

uint64_t PaymentsAppResolver.listApps(siriAuthorizationRestriction:)(uint64_t a1)
{
  v2[13] = v1;
  v2[12] = a1;
  v2[9] = v2;
  v2[10] = 0;
  v2[11] = 0;
  v5 = *v1;
  v2[14] = *v1;
  v3 = type metadata accessor for Logger();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[10] = a1;
  v2[11] = v1;
  v2[18] = *(v5 + class metadata base offset for PaymentsAppResolver);

  return MEMORY[0x2822009F8](PaymentsAppResolver.listApps(siriAuthorizationRestriction:), 0);
}

{
  v3 = *v1;
  *(v3 + 72) = *v1;
  *(v3 + 168) = a1;

  return MEMORY[0x2822009F8](PaymentsAppResolver.listApps(siriAuthorizationRestriction:), 0);
}

uint64_t PaymentsAppResolver.listApps(siriAuthorizationRestriction:)()
{
  v46 = v0;
  v30 = v0[18];
  v1 = v0[17];
  v28 = v0[16];
  v29 = v0[15];
  v31 = v0[14];
  v0[9] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v28 + 16))(v1, v2, v29);
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = *(v31 + class metadata base offset for PaymentsAppResolver + 8);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  v35 = swift_allocObject();
  *(v35 + 16) = 32;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #7 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
  *(v33 + 24) = v32;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v34 + 24) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v37 + 24) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v38 = v3;

  *v38 = partial apply for closure #1 in OSLogArguments.append(_:);
  v38[1] = v35;

  v38[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v38[3] = v36;

  v38[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v38[5] = v37;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v39, v40))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = createStorage<A>(capacity:type:)(0, v23, v23);
    v26 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = buf;
    v42 = v25;
    v43 = v26;
    serialize(_:at:)(2, &v41);
    serialize(_:at:)(1, &v41);
    v44 = partial apply for closure #1 in OSLogArguments.append(_:);
    v45 = v35;
    closure #1 in osLogInternal(_:log:type:)(&v44, &v41, &v42, &v43);
    v44 = partial apply for closure #1 in OSLogArguments.append(_:);
    v45 = v36;
    closure #1 in osLogInternal(_:log:type:)(&v44, &v41, &v42, &v43);
    v44 = partial apply for closure #1 in OSLogArguments.append(_:);
    v45 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v44, &v41, &v42, &v43);
    _os_log_impl(&dword_2686B1000, v39, v40, "#PaymentsAppResolver listApps for intent %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v25, 0, v23);
    destroyStorage<A>(_:count:)(v26, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v15 = v27[18];
  v12 = v27[17];
  v13 = v27[15];
  v14 = v27[13];
  v11 = v27[16];
  MEMORY[0x277D82BD8](v39);
  (*(v11 + 8))(v12, v13);
  outlined init with copy of GlobalsProviding(v14 + *(*v14 + class metadata base offset for PaymentsAppResolver + 16), (v27 + 2));
  v19 = v27[5];
  v20 = v27[6];
  __swift_project_boxed_opaque_existential_1(v27 + 2, v19);
  v27[7] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v27[8] = v4;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  DefaultStringInterpolation.appendInterpolation(_:)(v15);
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v6);

  v17 = v27[7];
  v16 = v27[8];

  outlined destroy of String.UTF8View((v27 + 7));
  v22 = MEMORY[0x26D620710](v17, v16);
  v18 = v7;
  v27[19] = v7;
  v21 = (*(v20 + 8) + **(v20 + 8));
  v8 = swift_task_alloc();
  v27[20] = v8;
  *v8 = v27[9];
  v8[1] = PaymentsAppResolver.listApps(siriAuthorizationRestriction:);
  v9 = v27[12];

  return v21(v22, v18, v9, v19, v20);
}

{
  *(v0 + 72) = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(*(v4 + 72) + 8);
  v2 = *(v4 + 168);

  return v1(v2);
}

void *PaymentsAppResolver.deinit()
{
  v1 = AppResolutionService.deinit();
  __swift_destroy_boxed_opaque_existential_0((v1 + *(*v1 + class metadata base offset for PaymentsAppResolver + 16)));
  return v1;
}

uint64_t type metadata completion function for PaymentsAppResolver(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t SearchForAccountsNeedsValueStrategy.__allocating_init()()
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
  v27 = SearchForAccountsNeedsValueStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v24, v19, v20, v21, v22, v23, v5);

  v38[5] = v27;

  __swift_destroy_boxed_opaque_existential_0(v26);

  return v27;
}

uint64_t SearchForAccountsNeedsValueStrategy.actionForInput(_:resolveRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v36 = a1;
  v30 = a3;
  v47 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v31 = 0;
  v32 = type metadata accessor for Parse();
  v33 = *(v32 - 8);
  v34 = v33;
  MEMORY[0x28223BE20](0, v32);
  v35 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = type metadata accessor for Logger();
  v38 = v44;
  v39 = *(v44 - 8);
  v43 = v39;
  v40 = v39;
  v41 = *(v39 + 64);
  v4 = MEMORY[0x28223BE20](v36, v37);
  v5 = &v13[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = v5;
  v57 = v4;
  v56 = v6;
  v55 = v7;
  v8 = Logger.payments.unsafeMutableAddressor();
  (*(v43 + 16))(v5, v8, v44);
  v49 = Logger.logObject.getter();
  v45 = v49;
  v48 = static os_log_type_t.debug.getter();
  v46 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v50 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v49, v48))
  {
    v9 = v31;
    v21 = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = v21;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = 0;
    v22 = createStorage<A>(capacity:type:)(0, v18, v18);
    v20 = v22;
    v23 = createStorage<A>(capacity:type:)(v19, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v54 = v21;
    v53 = v22;
    v52 = v23;
    v24 = 0;
    v25 = &v54;
    serialize(_:at:)(0, &v54);
    serialize(_:at:)(v24, v25);
    v51 = v50;
    v26 = v13;
    MEMORY[0x28223BE20](v13, v10);
    v27 = &v13[-48];
    *&v13[-32] = v11;
    *&v13[-24] = &v53;
    *&v13[-16] = &v52;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v29 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v45, v46, "#SearchForAccountsNeedsValueStrategy actionForInput.", v17, 2u);
      v15 = 0;
      destroyStorage<A>(_:count:)(v20, 0, v18);
      destroyStorage<A>(_:count:)(v23, v15, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v17, MEMORY[0x277D84B78]);

      v16 = v29;
    }
  }

  else
  {

    v16 = v31;
  }

  (*(v40 + 8))(v42, v38);
  Input.parse.getter();
  v14 = Parse.isCancel.getter();
  (*(v34 + 8))(v35, v32);
  if (v14)
  {
    return static ActionForInput.cancel()();
  }

  else
  {
    return static ActionForInput.handle()();
  }
}

uint64_t SearchForAccountsNeedsValueStrategy.makePromptForValue(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 240) = v2;
  *(v3 + 232) = a2;
  *(v3 + 224) = a1;
  *(v3 + 168) = v3;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 368) = 0;
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
  *(v3 + 176) = a2;
  *(v3 + 184) = v2;

  return MEMORY[0x2822009F8](SearchForAccountsNeedsValueStrategy.makePromptForValue(resolveRecord:), 0);
}

uint64_t SearchForAccountsNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  v1 = v0[41];
  v37 = v0[40];
  v38 = v0[39];
  v0[21] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v37 + 16))(v1, v2, v38);
  v40 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v41 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v40, v39))
  {
    v32 = static UnsafeMutablePointer.allocate(capacity:)();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(0, v31, v31);
    v34 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v36 + 192) = v32;
    *(v36 + 200) = v33;
    *(v36 + 208) = v34;
    serialize(_:at:)(0, (v36 + 192));
    serialize(_:at:)(0, (v36 + 192));
    *(v36 + 216) = v41;
    v35 = swift_task_alloc();
    v35[2] = v36 + 192;
    v35[3] = v36 + 200;
    v35[4] = v36 + 208;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v40, v39, "#SearchForAccountsNeedsValueStrategy makePromptForValue.", v32, 2u);
    destroyStorage<A>(_:count:)(v33, 0, v31);
    destroyStorage<A>(_:count:)(v34, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v32, MEMORY[0x277D84B78]);
  }

  v24 = *(v36 + 328);
  v25 = *(v36 + 312);
  v27 = *(v36 + 304);
  v28 = *(v36 + 288);
  v23 = *(v36 + 320);
  v26 = *(v36 + 296);
  MEMORY[0x277D82BD8](v40);
  (*(v23 + 8))(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v29._countAndFlagsBits = ParameterIdentifier.name.getter();
  v29._object = v3;
  *(v36 + 336) = v3;
  *(v36 + 136) = v29._countAndFlagsBits;
  *(v36 + 144) = v3;
  (*(v26 + 8))(v27, v28);

  v4.value = SearchForAccountsSlots.init(rawValue:)(v29).value;
  value = v4.value;
  *(v36 + 369) = v4;
  if (v4.value == SiriPaymentsIntents_SearchForAccountsSlots_unknownDefault)
  {

    *(v36 + 152) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    *(v36 + 160) = v10;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v12 = type metadata accessor for INSearchForAccountsIntent();
    DefaultStringInterpolation.appendInterpolation(_:)(v12);
    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v13);

    v18 = *(v36 + 152);
    v17 = *(v36 + 160);

    outlined destroy of String.UTF8View(v36 + 152);
    v20 = MEMORY[0x26D620710](v18, v17);
    v19 = v14;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v15 = v29;
    *(v15 + 16) = v20;
    *(v15 + 24) = v19;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 2;
    swift_willThrow();

    v16 = *(*(v36 + 168) + 8);

    return v16();
  }

  else
  {
    v22 = *(v36 + 256);
    v21 = *(v36 + 240);
    *(v36 + 368) = v4;

    *(v36 + 344) = *(v21 + 16);

    SearchForAccountsSlots.rawValue.getter(value);
    SpeakableString.init(print:speak:)();
    v5 = type metadata accessor for SpeakableString();
    (*(*(v5 - 8) + 56))(v22, 0, 1);
    v6 = swift_task_alloc();
    *(v36 + 352) = v6;
    *v6 = *(v36 + 168);
    v6[1] = SearchForAccountsNeedsValueStrategy.makePromptForValue(resolveRecord:);
    v7 = *(v36 + 280);
    v8 = *(v36 + 256);

    return SearchForAccountsCATs.promptForSlotValue(slot:)(v7, v8);
  }
}

{
  v4 = *v1;
  v4[21] = *v1;
  v4[45] = v0;

  if (v0)
  {
    v2 = SearchForAccountsNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  else
  {
    outlined destroy of SpeakableString?(v4[32]);

    v2 = SearchForAccountsNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v7 = *(v0 + 369);
  v11 = *(v0 + 280);
  v9 = *(v0 + 272);
  v10 = *(v0 + 264);
  v12 = *(v0 + 248);
  v6 = *(v0 + 240);
  v8 = *(v0 + 224);
  *(v0 + 168) = v0;

  outlined init with copy of GlobalsProviding(v6 + 104, v0 + 16);

  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  (*(v4 + 16))(v5);

  BaseStrategy.ttsEnabled.getter();

  static PaymentsContextProvider.needsValueContextUpdate(value:)(v7, v12);
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v12, 0, 1);
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?((v0 + 96));
  outlined destroy of NLContextUpdate?(v12);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v9 + 8))(v11, v10);

  v2 = *(*(v0 + 168) + 8);

  return v2();
}

{
  v1 = *(v0 + 256);
  *(v0 + 168) = v0;
  outlined destroy of SpeakableString?(v1);

  v2 = *(*(v0 + 168) + 8);

  return v2();
}

uint64_t SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 320) = v3;
  *(v4 + 312) = a3;
  *(v4 + 304) = a2;
  *(v4 + 296) = a1;
  *(v4 + 192) = v4;
  *(v4 + 200) = 0;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 480) = 0;
  *(v4 + 256) = 0;
  v5 = type metadata accessor for Parse();
  *(v4 + 328) = v5;
  *(v4 + 336) = *(v5 - 8);
  *(v4 + 344) = swift_task_alloc();
  v6 = type metadata accessor for Input();
  *(v4 + 352) = v6;
  v10 = *(v6 - 8);
  *(v4 + 360) = v10;
  *(v4 + 368) = *(v10 + 64);
  *(v4 + 376) = swift_task_alloc();
  v7 = type metadata accessor for ParameterIdentifier();
  *(v4 + 384) = v7;
  *(v4 + 392) = *(v7 - 8);
  *(v4 + 400) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v4 + 408) = v8;
  *(v4 + 416) = *(v8 - 8);
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  type metadata accessor for Signpost.OpenSignpost(0);
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 200) = a2;
  *(v4 + 208) = a3;
  *(v4 + 216) = v3;

  return MEMORY[0x2822009F8](SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:), 0);
}

uint64_t SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v166 = v0;
  v134 = v0[59];
  v1 = v0[58];
  v135 = v0[52];
  v136 = v0[51];
  v0[24] = v0;
  v2 = SignpostName.parseResponseValueNeedsValue.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v134);
  v3 = Logger.payments.unsafeMutableAddressor();
  v137 = *(v135 + 16);
  v137(v1, v3, v136);
  oslog = Logger.logObject.getter();
  v138 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v140 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v138))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v130 = createStorage<A>(capacity:type:)(0, v128, v128);
    v131 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v133 + 264) = buf;
    *(v133 + 272) = v130;
    *(v133 + 280) = v131;
    serialize(_:at:)(0, (v133 + 264));
    serialize(_:at:)(0, (v133 + 264));
    *(v133 + 288) = v140;
    v132 = swift_task_alloc();
    v132[2] = v133 + 264;
    v132[3] = v133 + 272;
    v132[4] = v133 + 280;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, oslog, v138, "#SearchForAccountsNeedsValueStrategy parseValueResponse.", buf, 2u);
    destroyStorage<A>(_:count:)(v130, 0, v128);
    destroyStorage<A>(_:count:)(v131, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v120 = *(v133 + 464);
  v121 = *(v133 + 408);
  v124 = *(v133 + 400);
  v125 = *(v133 + 384);
  v119 = *(v133 + 416);
  v123 = *(v133 + 392);
  MEMORY[0x277D82BD8](oslog);
  v122 = *(v119 + 8);
  v122(v120, v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v4;
  *(v133 + 176) = rawValue._countAndFlagsBits;
  *(v133 + 184) = v4;
  (*(v123 + 8))(v124, v125);

  v5.value = SearchForAccountsSlots.init(rawValue:)(rawValue).value;
  value = v5.value;
  if (v5.value == SiriPaymentsIntents_SearchForAccountsSlots_unknownDefault)
  {
    v19 = *(v133 + 424);
    v33 = *(v133 + 408);
    v20 = Logger.payments.unsafeMutableAddressor();
    v137(v19, v20, v33);

    v34 = swift_allocObject();
    *(v34 + 16) = rawValue;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    v36 = swift_allocObject();
    *(v36 + 16) = 32;
    v37 = swift_allocObject();
    *(v37 + 16) = 8;
    v35 = swift_allocObject();
    *(v35 + 16) = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    *(v35 + 24) = v34;
    v38 = swift_allocObject();
    *(v38 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v38 + 24) = v35;
    _allocateUninitializedArray<A>(_:)();
    v39 = v21;

    *v39 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39[1] = v36;

    v39[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v39[3] = v37;

    v39[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v39[5] = v38;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v40, v41))
    {
      v30 = static UnsafeMutablePointer.allocate(capacity:)();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v31 = createStorage<A>(capacity:type:)(0, v29, v29);
      v32 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v141 = v30;
      v142 = v31;
      v143 = v32;
      serialize(_:at:)(2, &v141);
      serialize(_:at:)(1, &v141);
      v144 = partial apply for closure #1 in OSLogArguments.append(_:);
      v145 = v36;
      closure #1 in osLogInternal(_:log:type:)(&v144, &v141, &v142, &v143);
      v144 = partial apply for closure #1 in OSLogArguments.append(_:);
      v145 = v37;
      closure #1 in osLogInternal(_:log:type:)(&v144, &v141, &v142, &v143);
      v144 = partial apply for closure #1 in OSLogArguments.append(_:);
      v145 = v38;
      closure #1 in osLogInternal(_:log:type:)(&v144, &v141, &v142, &v143);
      _os_log_impl(&dword_2686B1000, v40, v41, "#SearchForAccountsNeedsValueStrategy failed to map to known SearchForAccountsSlot, for record parameter: %s. Returning original intent and nil answeredValue", v30, 0xCu);
      destroyStorage<A>(_:count:)(v31, 0, v29);
      destroyStorage<A>(_:count:)(v32, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v30, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v28 = *(v133 + 472);
    v25 = *(v133 + 424);
    v26 = *(v133 + 408);
    v27 = *(v133 + 296);
    MEMORY[0x277D82BD8](v40);
    v122(v25, v26);
    ParameterResolutionRecord.intent.getter();
    type metadata accessor for INSearchForAccountsIntent();
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo019INSearchForAccountsD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo019INSearchForAccountsD0CGMR);
    (*(*(v22 - 8) + 56))(v27, 0, 1);

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v28);
  }

  else
  {
    v6 = *(v133 + 456);
    v110 = *(v133 + 408);
    *(v133 + 480) = v5;
    v7 = Logger.payments.unsafeMutableAddressor();
    v137(v6, v7, v110);
    v111 = swift_allocObject();
    *(v111 + 16) = value;
    log = Logger.logObject.getter();
    v118 = static os_log_type_t.debug.getter();
    v113 = swift_allocObject();
    *(v113 + 16) = 32;
    v114 = swift_allocObject();
    *(v114 + 16) = 8;
    v112 = swift_allocObject();
    *(v112 + 16) = partial apply for implicit closure #2 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    *(v112 + 24) = v111;
    v115 = swift_allocObject();
    *(v115 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v115 + 24) = v112;
    _allocateUninitializedArray<A>(_:)();
    v116 = v8;

    *v116 = partial apply for closure #1 in OSLogArguments.append(_:);
    v116[1] = v113;

    v116[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v116[3] = v114;

    v116[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v116[5] = v115;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v118))
    {
      v107 = static UnsafeMutablePointer.allocate(capacity:)();
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v108 = createStorage<A>(capacity:type:)(0, v106, v106);
      v109 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v161 = v107;
      v162 = v108;
      v163 = v109;
      serialize(_:at:)(2, &v161);
      serialize(_:at:)(1, &v161);
      v164 = partial apply for closure #1 in OSLogArguments.append(_:);
      v165 = v113;
      closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
      v164 = partial apply for closure #1 in OSLogArguments.append(_:);
      v165 = v114;
      closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
      v164 = partial apply for closure #1 in OSLogArguments.append(_:);
      v165 = v115;
      closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
      _os_log_impl(&dword_2686B1000, log, v118, "#SearchForAccountsNeedsValueStrategy extracted slot from resolveRecord: %s", v107, 0xCu);
      destroyStorage<A>(_:count:)(v108, 0, v106);
      destroyStorage<A>(_:count:)(v109, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v107, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v91 = *(v133 + 456);
    v9 = *(v133 + 448);
    v92 = *(v133 + 408);
    v96 = *(v133 + 376);
    v97 = *(v133 + 352);
    v94 = *(v133 + 304);
    v93 = *(v133 + 360);
    MEMORY[0x277D82BD8](log);
    v122(v91, v92);
    v10 = Logger.payments.unsafeMutableAddressor();
    v137(v9, v10, v92);
    (*(v93 + 16))(v96, v94, v97);
    v95 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v98 = swift_allocObject();
    (*(v93 + 32))(v98 + v95, v96, v97);
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();
    v100 = swift_allocObject();
    *(v100 + 16) = 32;
    v101 = swift_allocObject();
    *(v101 + 16) = 8;
    v99 = swift_allocObject();
    *(v99 + 16) = partial apply for implicit closure #3 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    *(v99 + 24) = v98;
    v102 = swift_allocObject();
    *(v102 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v102 + 24) = v99;
    _allocateUninitializedArray<A>(_:)();
    v103 = v11;

    *v103 = partial apply for closure #1 in OSLogArguments.append(_:);
    v103[1] = v100;

    v103[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v103[3] = v101;

    v103[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v103[5] = v102;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v104, v105))
    {
      v88 = static UnsafeMutablePointer.allocate(capacity:)();
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v89 = createStorage<A>(capacity:type:)(0, v87, v87);
      v90 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v156 = v88;
      v157 = v89;
      v158 = v90;
      serialize(_:at:)(2, &v156);
      serialize(_:at:)(1, &v156);
      v159 = partial apply for closure #1 in OSLogArguments.append(_:);
      v160 = v100;
      closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
      v159 = partial apply for closure #1 in OSLogArguments.append(_:);
      v160 = v101;
      closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
      v159 = partial apply for closure #1 in OSLogArguments.append(_:);
      v160 = v102;
      closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
      _os_log_impl(&dword_2686B1000, v104, v105, "#SearchForAccountsNeedsValueStrategy new input: %s", v88, 0xCu);
      destroyStorage<A>(_:count:)(v89, 0, v87);
      destroyStorage<A>(_:count:)(v90, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v88, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v77 = *(v133 + 448);
    v78 = *(v133 + 408);
    v84 = *(v133 + 344);
    v85 = *(v133 + 328);
    v81 = *(v133 + 320);
    v83 = *(v133 + 336);
    MEMORY[0x277D82BD8](v104);
    v122(v77, v78);
    Input.parse.getter();
    v82 = ParameterResolutionRecord.intent.getter();

    outlined init with copy of GlobalsProviding(v81 + 104, v133 + 16);

    v80 = *(v133 + 40);
    v79 = *(v133 + 48);
    __swift_project_boxed_opaque_existential_1((v133 + 16), v80);
    (*(v79 + 24))(v80);

    outlined init with copy of GlobalsProviding(v81 + 64, v133 + 96);

    v86 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(v82, &protocol witness table for INSearchForAccountsIntent, v133 + 56, v133 + 96);
    __swift_destroy_boxed_opaque_existential_0((v133 + 96));
    __swift_destroy_boxed_opaque_existential_0((v133 + 56));
    __swift_destroy_boxed_opaque_existential_0((v133 + 16));
    MEMORY[0x277D82BD8](v82);
    (*(v83 + 8))(v84, v85);
    if (v86)
    {
      objc_opt_self();
      v76 = swift_dynamicCastObjCClass();
      if (v76)
      {
        v75 = v76;
      }

      else
      {
        MEMORY[0x277D82BD8](v86);
        v75 = 0;
      }

      v74 = v75;
    }

    else
    {
      v74 = 0;
    }

    if (v74)
    {
      v12 = *(v133 + 440);
      v65 = *(v133 + 408);
      *(v133 + 256) = v74;
      v13 = Logger.payments.unsafeMutableAddressor();
      v137(v12, v13, v65);
      MEMORY[0x277D82BE0](v74);
      v66 = swift_allocObject();
      *(v66 + 16) = v74;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();
      v68 = swift_allocObject();
      *(v68 + 16) = 64;
      v69 = swift_allocObject();
      *(v69 + 16) = 8;
      v67 = swift_allocObject();
      *(v67 + 16) = partial apply for implicit closure #4 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
      *(v67 + 24) = v66;
      v70 = swift_allocObject();
      *(v70 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
      *(v70 + 24) = v67;
      _allocateUninitializedArray<A>(_:)();
      v71 = v14;

      *v71 = partial apply for closure #1 in OSLogArguments.append(_:);
      v71[1] = v68;

      v71[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v71[3] = v69;

      v71[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v71[5] = v70;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v72, v73))
      {
        v62 = static UnsafeMutablePointer.allocate(capacity:)();
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v63 = createStorage<A>(capacity:type:)(1, v61, v61);
        v64 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v151 = v62;
        v152 = v63;
        v153 = v64;
        serialize(_:at:)(2, &v151);
        serialize(_:at:)(1, &v151);
        v154 = partial apply for closure #1 in OSLogArguments.append(_:);
        v155 = v68;
        closure #1 in osLogInternal(_:log:type:)(&v154, &v151, &v152, &v153);
        v154 = partial apply for closure #1 in OSLogArguments.append(_:);
        v155 = v69;
        closure #1 in osLogInternal(_:log:type:)(&v154, &v151, &v152, &v153);
        v154 = partial apply for closure #1 in OSLogArguments.append(_:);
        v155 = v70;
        closure #1 in osLogInternal(_:log:type:)(&v154, &v151, &v152, &v153);
        _os_log_impl(&dword_2686B1000, v72, v73, "#SearchForAccountsNeedsValueStrategy converted to SiriKit intent: %@", v62, 0xCu);
        destroyStorage<A>(_:count:)(v63, 1, v61);
        destroyStorage<A>(_:count:)(v64, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v62, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v60 = *(v133 + 472);
      v55 = *(v133 + 440);
      v56 = *(v133 + 408);
      v59 = *(v133 + 296);
      MEMORY[0x277D82BD8](v72);
      v122(v55, v56);
      v57 = ParameterResolutionRecord.intent.getter();
      *(v133 + 160) = &type metadata for SearchForAccountsSlots;
      *(v133 + 168) = &protocol witness table for SearchForAccountsSlots;
      *(v133 + 136) = value;
      v58 = type metadata accessor for INSearchForAccountsIntent();
      SiriKitPaymentsIntent.value(forSlot:)((v133 + 136), v58, &v150);
      __swift_destroy_boxed_opaque_existential_0((v133 + 136));
      MEMORY[0x277D82BD8](v57);
      IntentPromptAnswer.init(answeredValue:updatedIntent:)();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo019INSearchForAccountsD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo019INSearchForAccountsD0CGMR);
      (*(*(v15 - 8) + 56))(v59, 0, 1);

      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      outlined destroy of Signpost.OpenSignpost(v60);
    }

    else
    {
      v16 = *(v133 + 432);
      v51 = *(v133 + 408);
      v17 = Logger.payments.unsafeMutableAddressor();
      v137(v16, v17, v51);
      v53 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      v54 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v53, v52))
      {
        v47 = static UnsafeMutablePointer.allocate(capacity:)();
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v48 = createStorage<A>(capacity:type:)(0, v46, v46);
        v49 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v133 + 224) = v47;
        *(v133 + 232) = v48;
        *(v133 + 240) = v49;
        serialize(_:at:)(0, (v133 + 224));
        serialize(_:at:)(0, (v133 + 224));
        *(v133 + 248) = v54;
        v50 = swift_task_alloc();
        v50[2] = v133 + 224;
        v50[3] = v133 + 232;
        v50[4] = v133 + 240;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, v53, v52, "#SearchForAccountsNeedsValueStrategy failed to convert new input to INSearchForAccountsIntent, returning original intent and nil answeredValue.", v47, 2u);
        destroyStorage<A>(_:count:)(v48, 0, v46);
        destroyStorage<A>(_:count:)(v49, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v47, MEMORY[0x277D84B78]);
      }

      v45 = *(v133 + 472);
      v42 = *(v133 + 432);
      v43 = *(v133 + 408);
      v44 = *(v133 + 296);
      MEMORY[0x277D82BD8](v53);
      v122(v42, v43);
      v146 = 0;
      v147 = 0;
      v148 = 0;
      v149 = 0;
      ParameterResolutionRecord.intent.getter();
      type metadata accessor for INSearchForAccountsIntent();
      IntentPromptAnswer.init(answeredValue:updatedIntent:)();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo019INSearchForAccountsD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo019INSearchForAccountsD0CGMR);
      (*(*(v18 - 8) + 56))(v44, 0, 1);

      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      outlined destroy of Signpost.OpenSignpost(v45);
    }
  }

  v23 = *(*(v133 + 192) + 8);

  return v23();
}

uint64_t implicit closure #3 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1)
{
  v3 = a1;
  v6 = type metadata accessor for Input();
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v3);
  v7 = &v2 - v4;
  (*(v5 + 16))();
  lazy protocol witness table accessor for type Input and conformance Input();
  return String.init<A>(describing:)();
}

uint64_t SearchForAccountsNeedsValueStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

uint64_t protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance SearchForAccountsNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(a1, a2, a3);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance SearchForAccountsNeedsValueStrategy(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SearchForAccountsNeedsValueStrategy.makePromptForValue(resolveRecord:)(a1, a2);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:) in conformance SearchForAccountsNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for SearchForAccountsNeedsValueStrategy(0);
  *v5 = *(v8 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9BF8](a1, a2, v6, a4);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance SearchForAccountsNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for SearchForAccountsNeedsValueStrategy(0);
  *v5 = *(v8 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C00](a1, a2, v6, a4);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance SearchForAccountsNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for SearchForAccountsNeedsValueStrategy(0);
  *v7 = *(v10 + 16);
  v7[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v8, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance SearchForAccountsNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  *(v7 + 16) = v7;
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  v9 = type metadata accessor for SearchForAccountsNeedsValueStrategy(0);
  *v8 = *(v11 + 16);
  v8[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v9, a7);
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo9SAAceViewC_Tt0gq5(uint64_t result)
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

    type metadata accessor for SAAceView();
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_2687E05D8()
{
  v2 = *(type metadata accessor for Input() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v1 = *(type metadata accessor for Input() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #3 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(v2);
}

uint64_t type metadata accessor for SearchForAccountsNeedsValueStrategy(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SearchForAccountsNeedsValueStrategy;
  if (!type metadata singleton initialization cache for SearchForAccountsNeedsValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t static PaymentsDirectInvocations.from(_:)(uint64_t a1)
{
  v106 = a1;
  v107 = partial apply for implicit closure #1 in static PaymentsDirectInvocations.from(_:);
  v108 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v109 = partial apply for closure #1 in OSLogArguments.append(_:);
  v110 = partial apply for closure #1 in OSLogArguments.append(_:);
  v111 = partial apply for closure #1 in OSLogArguments.append(_:);
  v142 = 0;
  v112 = 0;
  v113 = 0;
  v114 = type metadata accessor for Parse.DirectInvocation();
  v116 = *(v114 - 8);
  v115 = v114 - 8;
  v117 = v116;
  v118 = *(v116 + 64);
  v119 = (v118 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2);
  v120 = v39 - v119;
  v121 = type metadata accessor for Logger();
  v122 = *(v121 - 8);
  v123 = v121 - 8;
  v124 = (*(v122 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v121, v3);
  v125 = v39 - v124;
  v142 = a1;
  v126 = Parse.DirectInvocation.identifier.getter();
  v127 = v4;

  v5 = PaymentsDirectInvocations.Identifiers.rawValue.getter(0);
  v128 = v141;
  v141[0] = v5;
  v141[1] = v6;
  v140[2] = v126;
  v140[3] = v127;
  v129 = MEMORY[0x26D620740](v5, v6, v126, v127);
  outlined destroy of String.UTF8View(v128);
  if (v129)
  {

    v99 = Parse.DirectInvocation.userData.getter();
    v100 = static PaymentsDirectInvocations.parsePersonDisambiguationSelection(userData:)(v99);
    v101 = v7;
    v102 = v8;

    v103 = v100;
    v104 = v101;
    v105 = v102;
  }

  else
  {

    v9 = PaymentsDirectInvocations.Identifiers.rawValue.getter(1);
    v97 = v140;
    v140[0] = v9;
    v140[1] = v10;
    v139[2] = v126;
    v139[3] = v127;
    v98 = MEMORY[0x26D620740](v9, v10, v126, v127);
    outlined destroy of String.UTF8View(v97);
    if (v98)
    {

      v93 = Parse.DirectInvocation.userData.getter();
      v94 = static PaymentsDirectInvocations.parseAppPickerSelection(userData:)(v93);
      v95 = v11;
      v96 = v12;

      v103 = v94;
      v104 = v95;
      v105 = v96;
    }

    else
    {

      v13 = PaymentsDirectInvocations.Identifiers.rawValue.getter(3);
      v91 = v139;
      v139[0] = v13;
      v139[1] = v14;
      v138[2] = v126;
      v138[3] = v127;
      v92 = MEMORY[0x26D620740](v13, v14, v126, v127);
      outlined destroy of String.UTF8View(v91);
      if (v92)
      {

        v87 = Parse.DirectInvocation.userData.getter();
        v88 = static PaymentsDirectInvocations.parseContactPickerSelection(userData:)(v87);
        v89 = v15;
        v90 = v16;

        v103 = v88;
        v104 = v89;
        v105 = v90;
      }

      else
      {

        v17 = PaymentsDirectInvocations.Identifiers.rawValue.getter(2);
        v85 = v138;
        v138[0] = v17;
        v138[1] = v18;
        v137[2] = v126;
        v137[3] = v127;
        v86 = MEMORY[0x26D620740](v17, v18, v126, v127);
        outlined destroy of String.UTF8View(v85);
        if (v86)
        {

          v81 = Parse.DirectInvocation.userData.getter();
          v82 = static PaymentsDirectInvocations.parseContactPickerSelection(userData:)(v81);
          v83 = v19;
          v84 = v20;

          v103 = v82;
          v104 = v83;
          v105 = v84;
        }

        else
        {

          v75 = static SiriKitDirectInvocationPayloads.confirm.getter();
          v79 = [v75 identifier];
          v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = v21;
          MEMORY[0x277D82BD8](v75);
          v78 = v137;
          v137[0] = v76;
          v137[1] = v77;
          v136[2] = v126;
          v136[3] = v127;
          v80 = MEMORY[0x26D620740](v76, v77, v126, v127);
          outlined destroy of String.UTF8View(v78);
          MEMORY[0x277D82BD8](v79);
          if (v80)
          {

            v103 = 0;
            v104 = v113;
            v105 = 3;
          }

          else
          {

            v69 = static SiriKitDirectInvocationPayloads.reject.getter();
            v73 = [v69 identifier];
            v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v71 = v22;
            MEMORY[0x277D82BD8](v69);
            v72 = v136;
            v136[0] = v70;
            v136[1] = v71;
            v135[2] = v126;
            v135[3] = v127;
            v74 = MEMORY[0x26D620740](v70, v71, v126, v127);
            outlined destroy of String.UTF8View(v72);
            MEMORY[0x277D82BD8](v73);
            if (v74)
            {

              v103 = 1;
              v104 = v113;
              v105 = 3;
            }

            else
            {

              v63 = static SiriKitDirectInvocationPayloads.cancel.getter();
              v67 = [v63 identifier];
              v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v65 = v23;
              MEMORY[0x277D82BD8](v63);
              v66 = v135;
              v135[0] = v64;
              v135[1] = v65;
              v134[1] = v126;
              v134[2] = v127;
              v68 = MEMORY[0x26D620740](v64, v65, v126, v127);
              outlined destroy of String.UTF8View(v66);
              MEMORY[0x277D82BD8](v67);
              if (v68)
              {

                v103 = 2;
                v104 = v113;
                v105 = 3;
              }

              else
              {
                v24 = v125;

                v25 = Logger.payments.unsafeMutableAddressor();
                (*(v122 + 16))(v24, v25, v121);
                v48 = v117;
                (*(v116 + 16))(v120, v106, v114);
                v49 = (*(v48 + 80) + 16) & ~*(v48 + 80);
                v52 = 7;
                v53 = swift_allocObject();
                (*(v116 + 32))(v53 + v49, v120, v114);
                v61 = Logger.logObject.getter();
                v62 = static os_log_type_t.error.getter();
                v50 = 17;
                v55 = swift_allocObject();
                *(v55 + 16) = 32;
                v56 = swift_allocObject();
                *(v56 + 16) = 8;
                v51 = 32;
                v26 = swift_allocObject();
                v27 = v53;
                v54 = v26;
                *(v26 + 16) = v107;
                *(v26 + 24) = v27;
                v28 = swift_allocObject();
                v29 = v54;
                v58 = v28;
                *(v28 + 16) = v108;
                *(v28 + 24) = v29;
                v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
                v57 = _allocateUninitializedArray<A>(_:)();
                v59 = v30;

                v31 = v55;
                v32 = v59;
                *v59 = v109;
                v32[1] = v31;

                v33 = v56;
                v34 = v59;
                v59[2] = v110;
                v34[3] = v33;

                v35 = v58;
                v36 = v59;
                v59[4] = v111;
                v36[5] = v35;
                _finalizeUninitializedArray<A>(_:)();

                if (os_log_type_enabled(v61, v62))
                {
                  v37 = v112;
                  v41 = static UnsafeMutablePointer.allocate(capacity:)();
                  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  v42 = createStorage<A>(capacity:type:)(0, v40, v40);
                  v43 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                  v44 = v134;
                  v134[0] = v41;
                  v45 = &v133;
                  v133 = v42;
                  v46 = &v132;
                  v132 = v43;
                  serialize(_:at:)(2, v134);
                  serialize(_:at:)(1, v44);
                  v130 = v109;
                  v131 = v55;
                  closure #1 in osLogInternal(_:log:type:)(&v130, v44, v45, v46);
                  v47 = v37;
                  if (v37)
                  {

                    __break(1u);
                  }

                  else
                  {
                    v130 = v110;
                    v131 = v56;
                    closure #1 in osLogInternal(_:log:type:)(&v130, v134, &v133, &v132);
                    v39[0] = 0;
                    v130 = v111;
                    v131 = v58;
                    closure #1 in osLogInternal(_:log:type:)(&v130, v134, &v133, &v132);
                    _os_log_impl(&dword_2686B1000, v61, v62, "%s", v41, 0xCu);
                    destroyStorage<A>(_:count:)(v42, 0, v40);
                    destroyStorage<A>(_:count:)(v43, 1, MEMORY[0x277D84F70] + 8);
                    MEMORY[0x26D620BD0](v41, MEMORY[0x277D84B78]);
                  }
                }

                else
                {
                }

                MEMORY[0x277D82BD8](v61);
                (*(v122 + 8))(v125, v121);

                v103 = 0;
                v104 = v113;
                v105 = 0xFFFF;
              }
            }
          }
        }
      }
    }
  }

  return v103;
}

id static PaymentsDirectInvocations.selectionInvocation(appIdentifier:)(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  v17 = a1;
  v18 = a2;
  type metadata accessor for SKIDirectInvocationPayload();
  v2 = PaymentsDirectInvocations.Identifiers.rawValue.getter(1);
  v11 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v2, v3);
  v16 = v11;

  if (a2)
  {
    v14 = a1;
    v15 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
    _allocateUninitializedArray<A>(_:)();
    v8 = v4;
    v13[0] = PaymentsDirectInvocations.Keys.rawValue.getter(3);
    v13[1] = v5;
    v7 = MEMORY[0x277D837D0];
    _convertToAnyHashable<A>(_:)();

    v8[8] = v7;
    v8[5] = a1;
    v8[6] = a2;
    _finalizeUninitializedArray<A>(_:)();
    outlined destroy of String.UTF8View(v13);
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 setUserData_];
    MEMORY[0x277D82BD8](isa);
  }

  return v11;
}

id SKIDirectInvocationPayload.toRSKE(deviceState:)(void *a1)
{
  v3 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = DeviceState.asInvocationContext.getter();
  v5 = [v3 runSiriKitExecutorCommandWithContext_payload_];
  MEMORY[0x277D82BD8](v4);
  return v5;
}

uint64_t PaymentsDirectInvocations.Identifiers.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.DisambiguatePerson", 0x2AuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.AppPicker", 0x21uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.ContactPicker", 0x25uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.ContactIdentifier", 0x29uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.PromptForPayee", 0x26uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.PromptForPayer", 0x26uLL, 1)._countAndFlagsBits;
    case 6:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.PromptForCurrencyAmount", 0x2FuLL, 1)._countAndFlagsBits;
    case 7:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.PromptForNote", 0x25uLL, 1)._countAndFlagsBits;
    case 8:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.SendPayment", 0x23uLL, 1)._countAndFlagsBits;
    case 9:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.RequestPayment", 0x26uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.SearchForAccounts", 0x29uLL, 1)._countAndFlagsBits;
  }
}

id static PaymentsDirectInvocations.selectionInvocation(contactIdentifier:)(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  v17 = a1;
  v18 = a2;
  type metadata accessor for SKIDirectInvocationPayload();
  v2 = PaymentsDirectInvocations.Identifiers.rawValue.getter(3);
  v11 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v2, v3);
  v16 = v11;

  if (a2)
  {
    v14 = a1;
    v15 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
    _allocateUninitializedArray<A>(_:)();
    v8 = v4;
    v13[0] = PaymentsDirectInvocations.Keys.rawValue.getter(2);
    v13[1] = v5;
    v7 = MEMORY[0x277D837D0];
    _convertToAnyHashable<A>(_:)();

    v8[8] = v7;
    v8[5] = a1;
    v8[6] = a2;
    _finalizeUninitializedArray<A>(_:)();
    outlined destroy of String.UTF8View(v13);
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 setUserData_];
    MEMORY[0x277D82BD8](isa);
  }

  return v11;
}

void static PaymentsDirectInvocations.Identifiers.allCases.getter()
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
  v0[9] = 9;
  v0[10] = 10;
  _finalizeUninitializedArray<A>(_:)();
}

uint64_t PaymentsDirectInvocations.Keys.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appData", 7uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("personData", 0xAuLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("contactId", 9uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appId", 5uLL, 1)._countAndFlagsBits;
  }
}

SiriPaymentsIntents::PaymentsDirectInvocations::Identifiers_optional __swiftcall PaymentsDirectInvocations.Identifiers.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "com.apple.siri.payments.DisambiguatePerson";
  *(v1 + 8) = 42;
  *(v1 + 16) = 2;
  *(v1 + 24) = "com.apple.siri.payments.AppPicker";
  *(v1 + 32) = 33;
  *(v1 + 40) = 2;
  *(v1 + 48) = "com.apple.siri.payments.ContactPicker";
  *(v1 + 56) = 37;
  *(v1 + 64) = 2;
  *(v1 + 72) = "com.apple.siri.payments.ContactIdentifier";
  *(v1 + 80) = 41;
  *(v1 + 88) = 2;
  *(v1 + 96) = "com.apple.siri.payments.PromptForPayee";
  *(v1 + 104) = 38;
  *(v1 + 112) = 2;
  *(v1 + 120) = "com.apple.siri.payments.PromptForPayer";
  *(v1 + 128) = 38;
  *(v1 + 136) = 2;
  *(v1 + 144) = "com.apple.siri.payments.PromptForCurrencyAmount";
  *(v1 + 152) = 47;
  *(v1 + 160) = 2;
  *(v1 + 168) = "com.apple.siri.payments.PromptForNote";
  *(v1 + 176) = 37;
  *(v1 + 184) = 2;
  *(v1 + 192) = "com.apple.siri.payments.SendPayment";
  *(v1 + 200) = 35;
  *(v1 + 208) = 2;
  *(v1 + 216) = "com.apple.siri.payments.RequestPayment";
  *(v1 + 224) = 38;
  *(v1 + 232) = 2;
  *(v1 + 240) = "com.apple.siri.payments.SearchForAccounts";
  *(v1 + 248) = 41;
  *(v1 + 256) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_disambiguatePerson;
LABEL_24:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_appPicker;
      goto LABEL_24;
    case 2:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_contactPicker;
      goto LABEL_24;
    case 3:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_selectContact;
      goto LABEL_24;
    case 4:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_promptForPayee;
      goto LABEL_24;
    case 5:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_promptForPayer;
      goto LABEL_24;
    case 6:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_promptForCurrencyAmount;
      goto LABEL_24;
    case 7:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_promptForNote;
      goto LABEL_24;
    case 8:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_sendPayment;
      goto LABEL_24;
    case 9:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_requestPayment;
      goto LABEL_24;
    case 10:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_searchForAccounts;
      goto LABEL_24;
  }

  return 11;
}

SiriPaymentsIntents::PaymentsDirectInvocations::Keys_optional __swiftcall PaymentsDirectInvocations.Keys.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "appData";
  *(v1 + 8) = 7;
  *(v1 + 16) = 2;
  *(v1 + 24) = "personData";
  *(v1 + 32) = 10;
  *(v1 + 40) = 2;
  *(v1 + 48) = "contactId";
  *(v1 + 56) = 9;
  *(v1 + 64) = 2;
  *(v1 + 72) = "appId";
  *(v1 + 80) = 5;
  *(v1 + 88) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Keys_appData;
LABEL_10:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Keys_personData;
      goto LABEL_10;
    case 2:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Keys_contactId;
      goto LABEL_10;
    case 3:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Keys_appId;
      goto LABEL_10;
  }

  return 4;
}

SiriPaymentsIntents::PaymentsDirectInvocations::Identifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PaymentsDirectInvocations.Identifiers@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::PaymentsDirectInvocations::Identifiers_optional *a2@<X8>)
{
  result.value = PaymentsDirectInvocations.Identifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PaymentsDirectInvocations.Identifiers@<X0>(uint64_t *a1@<X8>)
{
  result = PaymentsDirectInvocations.Identifiers.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriPaymentsIntents::PaymentsDirectInvocations::Keys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PaymentsDirectInvocations.Keys@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::PaymentsDirectInvocations::Keys_optional *a2@<X8>)
{
  result.value = PaymentsDirectInvocations.Keys.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PaymentsDirectInvocations.Keys@<X0>(uint64_t *a1@<X8>)
{
  result = PaymentsDirectInvocations.Keys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static PaymentsDirectInvocations.parsePersonDisambiguationSelection(userData:)(uint64_t a1)
{
  v64 = a1;
  v46 = partial apply for implicit closure #1 in static PaymentsDirectInvocations.parsePersonDisambiguationSelection(userData:);
  v47 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v48 = partial apply for closure #1 in OSLogArguments.append(_:);
  v49 = partial apply for closure #1 in OSLogArguments.append(_:);
  v50 = partial apply for closure #1 in OSLogArguments.append(_:);
  v75 = 0;
  v51 = 0;
  v69 = 0;
  v57 = 0;
  v52 = type metadata accessor for Logger();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1);
  v56 = v20 - v55;
  v68 = type metadata accessor for ContactResolutionResponseHandler.DirectInvocationValue();
  v65 = *(v68 - 8);
  v66 = v68 - 8;
  v58 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57, v2);
  v67 = (v20 - v58);
  v59 = type metadata accessor for ContactResolutionResponseHandler();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v64, v3);
  v63 = v20 - v62;
  v75 = v4;

  ContactResolutionResponseHandler.init(userData:)();
  ContactResolutionResponseHandler.directInvocationValue.getter();
  if ((*(v65 + 88))(v67, v68) == *MEMORY[0x277D56520])
  {
    (*(v65 + 96))(v67, v68);
    v42 = *v67;
    v69 = v42;

    (*(v60 + 8))(v63, v59);
    v43 = v42;
    v44 = 0;
    v45 = 0;
  }

  else
  {
    v5 = v56;
    (*(v65 + 8))(v67, v68);
    (*(v60 + 8))(v63, v59);
    v6 = Logger.payments.unsafeMutableAddressor();
    (*(v53 + 16))(v5, v6, v52);

    v31 = 7;
    v32 = swift_allocObject();
    *(v32 + 16) = v64;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    v29 = 17;
    v34 = swift_allocObject();
    *(v34 + 16) = 32;
    v35 = swift_allocObject();
    *(v35 + 16) = 8;
    v30 = 32;
    v7 = swift_allocObject();
    v8 = v32;
    v33 = v7;
    *(v7 + 16) = v46;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v33;
    v37 = v9;
    *(v9 + 16) = v47;
    *(v9 + 24) = v10;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v36 = _allocateUninitializedArray<A>(_:)();
    v38 = v11;

    v12 = v34;
    v13 = v38;
    *v38 = v48;
    v13[1] = v12;

    v14 = v35;
    v15 = v38;
    v38[2] = v49;
    v15[3] = v14;

    v16 = v37;
    v17 = v38;
    v38[4] = v50;
    v17[5] = v16;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v40, v41))
    {
      v18 = v51;
      v22 = static UnsafeMutablePointer.allocate(capacity:)();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v23 = createStorage<A>(capacity:type:)(0, v21, v21);
      v24 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v25 = &v74;
      v74 = v22;
      v26 = &v73;
      v73 = v23;
      v27 = &v72;
      v72 = v24;
      serialize(_:at:)(2, &v74);
      serialize(_:at:)(1, v25);
      v70 = v48;
      v71 = v34;
      closure #1 in osLogInternal(_:log:type:)(&v70, v25, v26, v27);
      v28 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v70 = v49;
        v71 = v35;
        closure #1 in osLogInternal(_:log:type:)(&v70, &v74, &v73, &v72);
        v20[1] = 0;
        v70 = v50;
        v71 = v37;
        closure #1 in osLogInternal(_:log:type:)(&v70, &v74, &v73, &v72);
        _os_log_impl(&dword_2686B1000, v40, v41, "#PaymentsDirectInvocation Invalid user data for personDisambiguation: %s", v22, 0xCu);
        destroyStorage<A>(_:count:)(v23, 0, v21);
        destroyStorage<A>(_:count:)(v24, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v22, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v40);
    (*(v53 + 8))(v56, v52);
    v43 = 0;
    v44 = 0;
    v45 = 0xFFFF;
  }

  return v43;
}

uint64_t static PaymentsDirectInvocations.parseAppPickerSelection(userData:)(uint64_t a1)
{
  v8 = 0;
  v13 = a1;

  if (a1)
  {
    v6[0] = PaymentsDirectInvocations.Keys.rawValue.getter(3);
    v6[1] = v1;
    MEMORY[0x26D620650](v10);
    outlined destroy of String.UTF8View(v6);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v11 = 0;
  }

  if (v11)
  {
    if (swift_dynamicCast())
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }

    v3 = v4;
  }

  else
  {
    outlined destroy of FlowActivity?(v10);
    v3 = 0;
  }

  v9 = v3;
  if (v3._object)
  {
    v12 = v9;
  }

  else
  {
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    if (v9._object)
    {
      outlined destroy of String.UTF8View(&v9);
    }
  }

  result = v12._countAndFlagsBits;
  v8 = v12;
  return result;
}

uint64_t static PaymentsDirectInvocations.parseContactPickerSelection(userData:)(uint64_t a1)
{
  v65 = a1;
  v47 = partial apply for implicit closure #1 in static PaymentsDirectInvocations.parsePersonDisambiguationSelection(userData:);
  v48 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v49 = partial apply for closure #1 in OSLogArguments.append(_:);
  v50 = partial apply for closure #1 in OSLogArguments.append(_:);
  v51 = partial apply for closure #1 in OSLogArguments.append(_:);
  v77 = 0;
  v52 = 0;
  v70 = 0;
  v71 = 0;
  v58 = 0;
  v53 = type metadata accessor for Logger();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1);
  v57 = v20 - v56;
  v69 = type metadata accessor for ContactResolutionResponseHandler.DirectInvocationValue();
  v66 = *(v69 - 8);
  v67 = v69 - 8;
  v59 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58, v2);
  v68 = (v20 - v59);
  v60 = type metadata accessor for ContactResolutionResponseHandler();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v65, v3);
  v64 = v20 - v63;
  v77 = v4;

  ContactResolutionResponseHandler.init(userData:)();
  ContactResolutionResponseHandler.directInvocationValue.getter();
  if ((*(v66 + 88))(v68, v69) == *MEMORY[0x277D56528])
  {
    (*(v66 + 96))(v68, v69);
    v42 = *v68;
    v43 = v68[1];
    v70 = v42;
    v71 = v43;

    (*(v61 + 8))(v64, v60);
    v44 = v42;
    v45 = v43;
    v46 = 2;
  }

  else
  {
    v5 = v57;
    (*(v66 + 8))(v68, v69);
    (*(v61 + 8))(v64, v60);
    v6 = Logger.payments.unsafeMutableAddressor();
    (*(v54 + 16))(v5, v6, v53);

    v31 = 7;
    v32 = swift_allocObject();
    *(v32 + 16) = v65;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    v29 = 17;
    v34 = swift_allocObject();
    *(v34 + 16) = 32;
    v35 = swift_allocObject();
    *(v35 + 16) = 8;
    v30 = 32;
    v7 = swift_allocObject();
    v8 = v32;
    v33 = v7;
    *(v7 + 16) = v47;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v33;
    v37 = v9;
    *(v9 + 16) = v48;
    *(v9 + 24) = v10;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v36 = _allocateUninitializedArray<A>(_:)();
    v38 = v11;

    v12 = v34;
    v13 = v38;
    *v38 = v49;
    v13[1] = v12;

    v14 = v35;
    v15 = v38;
    v38[2] = v50;
    v15[3] = v14;

    v16 = v37;
    v17 = v38;
    v38[4] = v51;
    v17[5] = v16;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v40, v41))
    {
      v18 = v52;
      v22 = static UnsafeMutablePointer.allocate(capacity:)();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v23 = createStorage<A>(capacity:type:)(0, v21, v21);
      v24 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v25 = &v76;
      v76 = v22;
      v26 = &v75;
      v75 = v23;
      v27 = &v74;
      v74 = v24;
      serialize(_:at:)(2, &v76);
      serialize(_:at:)(1, v25);
      v72 = v49;
      v73 = v34;
      closure #1 in osLogInternal(_:log:type:)(&v72, v25, v26, v27);
      v28 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v72 = v50;
        v73 = v35;
        closure #1 in osLogInternal(_:log:type:)(&v72, &v76, &v75, &v74);
        v20[1] = 0;
        v72 = v51;
        v73 = v37;
        closure #1 in osLogInternal(_:log:type:)(&v72, &v76, &v75, &v74);
        _os_log_impl(&dword_2686B1000, v40, v41, "#PaymentsDirectInvocation Invalid user data for contactPicker: %s", v22, 0xCu);
        destroyStorage<A>(_:count:)(v23, 0, v21);
        destroyStorage<A>(_:count:)(v24, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v22, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v40);
    (*(v54 + 8))(v57, v53);
    v44 = 0;
    v45 = 0;
    v46 = 0xFFFF;
  }

  return v44;
}

uint64_t implicit closure #1 in static PaymentsDirectInvocations.from(_:)(uint64_t a1)
{
  v3 = Parse.DirectInvocation.identifier.getter();
  v4 = v1;
  v5 = PaymentsError.errorDescription.getter();
  outlined consume of PaymentsError(v3, v4, 0, 0, 0, 0, 0);
  return v5;
}

uint64_t sub_2687E3C50()
{
  v2 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in static PaymentsDirectInvocations.from(_:)()
{
  v1 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in static PaymentsDirectInvocations.from(_:)(v2);
}

uint64_t PaymentsDirectInvocations.identifier.getter(uint64_t a1, uint64_t a2, char a3)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  switch(a3)
  {
    case 0:
      return PaymentsDirectInvocations.Identifiers.rawValue.getter(0);
    case 1:
      return PaymentsDirectInvocations.Identifiers.rawValue.getter(1);
    case 2:
      return PaymentsDirectInvocations.Identifiers.rawValue.getter(2);
  }

  if (v14 == 0)
  {
    v10 = static SiriKitDirectInvocationPayloads.confirm.getter();
    v11 = [v10 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    return v12;
  }

  else if (a1 ^ 1 | a2)
  {
    v4 = static SiriKitDirectInvocationPayloads.cancel.getter();
    v5 = [v4 identifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    return v6;
  }

  else
  {
    v7 = static SiriKitDirectInvocationPayloads.reject.getter();
    v8 = [v7 identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    return v9;
  }
}

uint64_t PaymentsDirectInvocations.userData.getter(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
      return static PaymentsDirectInvocations.personDisambiguationUserData(_:)(a1);
    case 1:

      v5 = static PaymentsDirectInvocations.appPickerUserData(_:)(a1, a2);

      return v5;
    case 2:

      v4 = static PaymentsDirectInvocations.contactPickerUserData(_:)(a1, a2);

      return v4;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      _allocateUninitializedArray<A>(_:)();
      return Dictionary.init(dictionaryLiteral:)();
  }
}

uint64_t static PaymentsDirectInvocations.personDisambiguationUserData(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  _allocateUninitializedArray<A>(_:)();
  v4 = v1;
  *v1 = PaymentsDirectInvocations.Keys.rawValue.getter(1);
  v4[1] = v2;
  v4[5] = MEMORY[0x277D83B88];
  v4[2] = a1;
  _finalizeUninitializedArray<A>(_:)();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t static PaymentsDirectInvocations.appPickerUserData(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  _allocateUninitializedArray<A>(_:)();
  v7 = v2;
  *v2 = PaymentsDirectInvocations.Keys.rawValue.getter(3);
  v7[1] = v3;

  v7[5] = MEMORY[0x277D837D0];
  v7[2] = a1;
  v7[3] = a2;
  _finalizeUninitializedArray<A>(_:)();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t static PaymentsDirectInvocations.contactPickerUserData(_:)(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v29 = 0;
  v30 = 0;
  v22 = type metadata accessor for ContactResolutionCommonKeys();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v18 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = &v17 - v18;
  v21 = &v17 - v18;
  v29 = MEMORY[0x28223BE20](v24, v25);
  v30 = v3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  v23 = _allocateUninitializedArray<A>(_:)();
  v26 = v4;
  (*(v19 + 104))(v2, *MEMORY[0x277D56508], v22);
  v5 = ContactResolutionCommonKeys.rawValue.getter();
  v6 = v19;
  v7 = v26;
  v8 = v5;
  v9 = v21;
  v11 = v10;
  v12 = v22;
  *v26 = v8;
  v7[1] = v11;
  (*(v6 + 8))(v9, v12);

  v13 = v24;
  v14 = v25;
  v15 = v26;
  v28 = MEMORY[0x277D837D0];
  v26[5] = MEMORY[0x277D837D0];
  v15[2] = v13;
  v15[3] = v14;
  _finalizeUninitializedArray<A>(_:)();
  return Dictionary.init(dictionaryLiteral:)();
}

id PaymentsDirectInvocations.toDirectInvocationPayload()(uint64_t a1, uint64_t a2, int a3)
{
  v39 = a1;
  v37 = a2;
  v38 = a3;
  v51 = partial apply for implicit closure #4 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
  v55 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  v57 = partial apply for closure #1 in OSLogArguments.append(_:);
  v59 = partial apply for closure #1 in OSLogArguments.append(_:);
  v62 = partial apply for closure #1 in OSLogArguments.append(_:);
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v33 = 0;
  v34 = 0;
  v48 = type metadata accessor for Logger();
  v46 = *(v48 - 8);
  v47 = v48 - 8;
  v35 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v37);
  v36 = &v24 - v35;
  v74 = v3;
  v75 = v4;
  v76 = v5;
  type metadata accessor for SKIDirectInvocationPayload();
  v6 = PaymentsDirectInvocations.identifier.getter(v39, v37, v38);
  v8 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v6, v7);
  v9 = v36;
  v49 = v8;
  v73 = v8;
  v44 = PaymentsDirectInvocations.userData.getter(v39, v37, v38);
  v41 = MEMORY[0x277D84F70] + 8;
  v40 = MEMORY[0x277D84030];
  v42 = MEMORY[0x277D84038];
  v43 = _dictionaryUpCast<A, B, C, D>(_:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v49 setUserData_];
  MEMORY[0x277D82BD8](isa);
  v10 = Logger.payments.unsafeMutableAddressor();
  (*(v46 + 16))(v9, v10, v48);
  MEMORY[0x277D82BE0](v49);
  v53 = 7;
  v54 = swift_allocObject();
  *(v54 + 16) = v49;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  v50 = 17;
  v58 = swift_allocObject();
  *(v58 + 16) = 64;
  v60 = swift_allocObject();
  *(v60 + 16) = 8;
  v52 = 32;
  v11 = swift_allocObject();
  v12 = v54;
  v56 = v11;
  *(v11 + 16) = v51;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v56;
  v63 = v13;
  *(v13 + 16) = v55;
  *(v13 + 24) = v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v61 = _allocateUninitializedArray<A>(_:)();
  v64 = v15;

  v16 = v58;
  v17 = v64;
  *v64 = v57;
  v17[1] = v16;

  v18 = v60;
  v19 = v64;
  v64[2] = v59;
  v19[3] = v18;

  v20 = v63;
  v21 = v64;
  v64[4] = v62;
  v21[5] = v20;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v66, v67))
  {
    v22 = v33;
    v26 = static UnsafeMutablePointer.allocate(capacity:)();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v27 = createStorage<A>(capacity:type:)(1, v25, v25);
    v28 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = &v72;
    v72 = v26;
    v30 = &v71;
    v71 = v27;
    v31 = &v70;
    v70 = v28;
    serialize(_:at:)(2, &v72);
    serialize(_:at:)(1, v29);
    v68 = v57;
    v69 = v58;
    closure #1 in osLogInternal(_:log:type:)(&v68, v29, v30, v31);
    v32 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v68 = v59;
      v69 = v60;
      closure #1 in osLogInternal(_:log:type:)(&v68, &v72, &v71, &v70);
      v24 = 0;
      v68 = v62;
      v69 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v68, &v72, &v71, &v70);
      _os_log_impl(&dword_2686B1000, v66, v67, "#PaymentsDirectInvocation DirectInvocationPayload: %@", v26, 0xCu);
      destroyStorage<A>(_:count:)(v27, 1, v25);
      destroyStorage<A>(_:count:)(v28, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v26, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v66);
  (*(v46 + 8))(v36, v48);
  return v49;
}

uint64_t implicit closure #1 in static PaymentsDirectInvocations.parsePersonDisambiguationSelection(userData:)(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, "ff");
  return String.init<A>(describing:)();
}

BOOL static PaymentsDirectInvocations.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  outlined copy of PaymentsDirectInvocations(a1, a2, a3);
  outlined copy of PaymentsDirectInvocations(a4, a5, a6);
  switch(a3)
  {
    case 0:
      if (!a6)
      {
        outlined consume of PaymentsDirectInvocations(v8, *(&v8 + 1), 0);
        outlined consume of PaymentsDirectInvocations(a4, a5, 0);
        return v8 == a4;
      }

      goto LABEL_34;
    case 1:
      if (a6 == 1)
      {

        if ((MEMORY[0x26D620740](v8, *(&v8 + 1), a4, a5) & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

LABEL_34:
      outlined consume of PaymentsDirectInvocations(v8, *(&v8 + 1), a3);
      outlined consume of PaymentsDirectInvocations(a4, a5, a6);
      return 0;
    case 2:
      if (a6 == 2)
      {

        if ((MEMORY[0x26D620740](v8, *(&v8 + 1), a4, a5) & 1) == 0)
        {
LABEL_20:

          outlined consume of PaymentsDirectInvocations(v8, *(&v8 + 1), a3);
          outlined consume of PaymentsDirectInvocations(a4, a5, a6);
          return 0;
        }

LABEL_15:

        outlined consume of PaymentsDirectInvocations(v8, *(&v8 + 1), a3);
        outlined consume of PaymentsDirectInvocations(a4, a5, a6);
        return 1;
      }

      goto LABEL_34;
  }

  if (v8 == 0)
  {
    if (a6 != 3 || a4 != 0 || a5 != 0)
    {
      goto LABEL_34;
    }

    outlined consume of PaymentsDirectInvocations(v8, *(&v8 + 1), a3);
    outlined consume of PaymentsDirectInvocations(a4, a5, a6);
    return 1;
  }

  else
  {
    if (v8 ^ 1 | *(&v8 + 1))
    {
      if (a6 != 3 || a4 != 2 || a5)
      {
        goto LABEL_34;
      }
    }

    else if (a6 != 3 || a4 != 1 || a5)
    {
      goto LABEL_34;
    }

    outlined consume of PaymentsDirectInvocations(v8, *(&v8 + 1), a3);
    outlined consume of PaymentsDirectInvocations(a4, 0, a6);
    return 1;
  }
}

unint64_t lazy protocol witness table accessor for type PaymentsDirectInvocations.Identifiers and conformance PaymentsDirectInvocations.Identifiers()
{
  v2 = lazy protocol witness table cache variable for type PaymentsDirectInvocations.Identifiers and conformance PaymentsDirectInvocations.Identifiers;
  if (!lazy protocol witness table cache variable for type PaymentsDirectInvocations.Identifiers and conformance PaymentsDirectInvocations.Identifiers)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDirectInvocations.Identifiers and conformance PaymentsDirectInvocations.Identifiers);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PaymentsDirectInvocations.Identifiers and conformance PaymentsDirectInvocations.Identifiers;
  if (!lazy protocol witness table cache variable for type PaymentsDirectInvocations.Identifiers and conformance PaymentsDirectInvocations.Identifiers)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDirectInvocations.Identifiers and conformance PaymentsDirectInvocations.Identifiers);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type PaymentsDirectInvocations.Keys and conformance PaymentsDirectInvocations.Keys()
{
  v2 = lazy protocol witness table cache variable for type PaymentsDirectInvocations.Keys and conformance PaymentsDirectInvocations.Keys;
  if (!lazy protocol witness table cache variable for type PaymentsDirectInvocations.Keys and conformance PaymentsDirectInvocations.Keys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDirectInvocations.Keys and conformance PaymentsDirectInvocations.Keys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PaymentsDirectInvocations.Keys and conformance PaymentsDirectInvocations.Keys;
  if (!lazy protocol witness table cache variable for type PaymentsDirectInvocations.Keys and conformance PaymentsDirectInvocations.Keys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDirectInvocations.Keys and conformance PaymentsDirectInvocations.Keys);
    return WitnessTable;
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_19SiriPaymentsIntents0B17DirectInvocationsO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return *a1 + 3;
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t getEnumTagSinglePayload for PaymentsDirectInvocations(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v4 = *a1 + 252;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFC)
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

uint64_t storeEnumTagSinglePayload for PaymentsDirectInvocations(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    *(result + 16) = 0;
    if (a3 >= 0xFD)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PaymentsDirectInvocations(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = a2;
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = 3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaymentsDirectInvocations.Identifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF5)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 10) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 245;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 11;
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

_BYTE *storeEnumTagSinglePayload for PaymentsDirectInvocations.Identifiers(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF5)
  {
    v5 = ((a3 + 10) >> 8) + 1;
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

  if (a2 > 0xF5)
  {
    v4 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
      *result = a2 + 10;
    }
  }

  return result;
}

uint64_t outlined copy of PaymentsDirectInvocations(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1 || a3 == 2)
  {
  }

  return result;
}

uint64_t static PaymentsContextProvider.confirmationContextUpdate(isSend:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v22 = a1;
  v31 = 0;
  v30 = 0;
  v21 = 0;
  v29 = type metadata accessor for NLContextUpdate();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v16 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = &v16 - v16;
  v31 = &v16 - v16;
  v20 = 1;
  v30 = MEMORY[0x28223BE20](v22, v2) & 1;
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  v19 = MEMORY[0x277D837D0];
  v18 = _allocateUninitializedArray<A>(_:)();
  v17 = v3;
  v4 = Constants.NLPaymentConfirmationValue.canonicalName.getter(0);
  v5 = v17;
  v6 = v4;
  LOBYTE(v4) = v20;
  *v17 = v6;
  v5[1] = v7;
  v8 = Constants.NLPaymentConfirmationValue.canonicalName.getter(v4);
  v9 = v17;
  v17[2] = v8;
  v9[3] = v10;
  v11 = Constants.NLPaymentConfirmationValue.canonicalName.getter(2);
  v12 = v17;
  v17[4] = v11;
  v12[5] = v13;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  static PaymentsContextProvider.targetDomain.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v24 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v23 = _allocateUninitializedArray<A>(_:)();
  static PaymentsContextProvider.makeSDAForConfirm(isSend:)(v22 & 1, v14);
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v25 + 32))(v27, v28, v29);
}