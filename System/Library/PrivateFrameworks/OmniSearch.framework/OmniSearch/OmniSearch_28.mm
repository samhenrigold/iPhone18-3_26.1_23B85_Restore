void TicketedTransportation.init(item:checkEventType:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_194_6();
  OUTLINED_FUNCTION_84_12();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = OUTLINED_FUNCTION_114(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_123_8();
  v9 = [v5 attributeSet];
  OUTLINED_FUNCTION_218_5();
  if ((v3 & 1) != 0 && (v10 = OUTLINED_FUNCTION_229_4(), v11 = [v10 containsString_], v10, (v11 & 1) == 0))
  {

    type metadata accessor for TicketedTransportation();
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_101_9();

    __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  }

  else
  {
    v12 = [v5 uniqueIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventMessageIdentifier);
    v13 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventGroupIdentifier);
    OUTLINED_FUNCTION_82_15(v13, v14);
    v15 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventFallbackGroupIdentifier);
    OUTLINED_FUNCTION_75_16(v15, v16);
    v17 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventMegadomeIdentifier);
    OUTLINED_FUNCTION_81_18(v17, v18);
    v19 = OUTLINED_FUNCTION_229_4();
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_72_14(v20, v21);

    v22 = [v4 eventSubType];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_212_4(v23, v24);
    v25 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventSourceBundleIdentifier);
    OUTLINED_FUNCTION_74_19(v25, v26);
    v27 = [v4 eventIsAllDay];
    if (v27)
    {
      OUTLINED_FUNCTION_217_5(v27);
    }

    else
    {
      OUTLINED_FUNCTION_247_4();
    }

    v28 = [v4 eventSourceIsForwarded];
    if (v28)
    {
      OUTLINED_FUNCTION_217_5(v28);
    }

    else
    {
      OUTLINED_FUNCTION_248_3();
    }

    v29 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v4);
    OUTLINED_FUNCTION_248(v29);
    v30 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_mailMessageID);
    OUTLINED_FUNCTION_39_21(v30, v31);
    OUTLINED_FUNCTION_89_16();
    v33 = v32;
    v34 = OUTLINED_FUNCTION_280_2(v32, sel_attributeForKey_);

    if (v34)
    {
      OUTLINED_FUNCTION_285_0();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_276_1();
    }

    OUTLINED_FUNCTION_116_8();
    if (v35)
    {
      OUTLINED_FUNCTION_115_11();
      OUTLINED_FUNCTION_114_12();
      if (v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = v36;
      }

      OUTLINED_FUNCTION_205_5(v38);
    }

    else
    {
      outlined destroy of FlightSnippet.Leg?(&v75, &_sypSgMd, &_sypSgMR);
      OUTLINED_FUNCTION_169_8();
    }

    v74 = v5;
    v39 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_accountIdentifier);
    OUTLINED_FUNCTION_76_14(v39, v40);
    v41 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v4, &selRef_mailboxIdentifiers);
    OUTLINED_FUNCTION_156_1(v41);
    v42 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(v4);
    OUTLINED_FUNCTION_146_1(v42);
    v43 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventStatus);
    OUTLINED_FUNCTION_171_6(v43, v44);
    v45 = OUTLINED_FUNCTION_281_0();
    OUTLINED_FUNCTION_178_7(v45, v46);
    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v4, &selRef_eventCustomerNames);
    v47 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventStartLocationName);
    OUTLINED_FUNCTION_43_14(v47, v48);
    v49 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventStartLocationAddress);
    OUTLINED_FUNCTION_77_15(v49, v50);
    v51 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventEndLocationName);
    OUTLINED_FUNCTION_71_17(v51, v52);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventEndLocationAddress);
    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v4, &selRef_eventSeatNumbers);
    [v4 eventDuration];
    CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
    v53 = [v4 startDate];
    if (v53)
    {
      v54 = v53;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for Date();
    OUTLINED_FUNCTION_61_19();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
    v59 = [v4 endDate];
    if (v59)
    {
      v60 = v59;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    OUTLINED_FUNCTION_61_19();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_startDateTimeZone);
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_15_33();
    TicketedTransportation.init(id:eventMessageIdentifier:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMegadomeIdentifier:eventType:eventSubType:eventSourceBundleIdentifier:eventIsAllDay:eventSourceIsForwarded:authors:mailMessageId:mailMessageHeader:accountIdentifier:mailboxes:detectedEventTypes:status:updateStatus:customerNames:startLocationName:startLocationAddress:endLocationName:endLocationAddress:seatNumbers:durationInSeconds:timeIsUnknown:startDate:endDate:eventSourceLLMConsumableDescription:startDateTimeZone:)();

    type metadata accessor for TicketedTransportation();
    v65 = OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
    OUTLINED_FUNCTION_101_9();
  }
}

void TicketedShow.init(item:checkEventType:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_194_6();
  OUTLINED_FUNCTION_84_12();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = OUTLINED_FUNCTION_114(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_123_8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v12);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_194_1();
  v14 = [v7 attributeSet];
  OUTLINED_FUNCTION_218_5();
  if ((v3 & 1) != 0 && (v15 = OUTLINED_FUNCTION_229_4(), v16 = [v15 containsString_], v15, (v16 & 1) == 0))
  {

    type metadata accessor for TicketedShow();
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_101_9();

    __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
  }

  else
  {
    v17 = [v7 uniqueIdentifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93[7] = v19;
    v93[8] = v18;

    v20 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventMessageIdentifier);
    v93[5] = v21;
    v93[6] = v20;
    v22 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventGroupIdentifier);
    OUTLINED_FUNCTION_82_15(v22, v23);
    v24 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventFallbackGroupIdentifier);
    OUTLINED_FUNCTION_75_16(v24, v25);
    v26 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventMegadomeIdentifier);
    OUTLINED_FUNCTION_81_18(v26, v27);
    v28 = OUTLINED_FUNCTION_229_4();
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_72_14(v29, v30);

    v31 = [v4 eventSubType];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_212_4(v32, v33);
    v34 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventSourceBundleIdentifier);
    OUTLINED_FUNCTION_74_19(v34, v35);
    v36 = [v4 eventIsAllDay];
    if (v36)
    {
      OUTLINED_FUNCTION_217_5(v36);
    }

    else
    {
      OUTLINED_FUNCTION_247_4();
    }

    v37 = [v4 eventSourceIsForwarded];
    if (v37)
    {
      OUTLINED_FUNCTION_217_5(v37);
    }

    else
    {
      OUTLINED_FUNCTION_248_3();
    }

    v38 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v4);
    OUTLINED_FUNCTION_248(v38);
    v39 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_mailMessageID);
    OUTLINED_FUNCTION_39_21(v39, v40);
    OUTLINED_FUNCTION_89_16();
    v42 = v41;
    v43 = OUTLINED_FUNCTION_280_2(v41, sel_attributeForKey_);

    if (v43)
    {
      OUTLINED_FUNCTION_285_0();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_276_1();
    }

    OUTLINED_FUNCTION_116_8();
    v97 = v8;
    if (v44)
    {
      OUTLINED_FUNCTION_115_11();
      OUTLINED_FUNCTION_114_12();
      if (v46)
      {
        v47 = 0;
      }

      else
      {
        v47 = v45;
      }

      OUTLINED_FUNCTION_205_5(v47);
    }

    else
    {
      outlined destroy of FlightSnippet.Leg?(&v98, &_sypSgMd, &_sypSgMR);
      OUTLINED_FUNCTION_169_8();
    }

    v48 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_accountIdentifier);
    OUTLINED_FUNCTION_76_14(v48, v49);
    v50 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v4, &selRef_mailboxIdentifiers);
    OUTLINED_FUNCTION_156_1(v50);
    v51 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(v4);
    OUTLINED_FUNCTION_146_1(v51);
    v52 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventStatus);
    OUTLINED_FUNCTION_171_6(v52, v53);
    v54 = closure #1 in RentalCarReservation.init(item:checkEventType:featureFlagService:)(v6, v4);
    OUTLINED_FUNCTION_178_7(v54, v55);
    v56 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventReservationID);
    OUTLINED_FUNCTION_174_6(v56, v57);
    v58 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventProvider);
    OUTLINED_FUNCTION_299_0(v58, v59);
    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v4, &selRef_eventCustomerNames);
    v60 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventStartLocationName);
    OUTLINED_FUNCTION_71_17(v60, v61);
    v62 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventStartLocationAddress);
    OUTLINED_FUNCTION_187_6(v62, v63);
    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v4, &selRef_eventSeatNumbers);
    [v4 eventDuration];
    v64 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventTicketType);
    OUTLINED_FUNCTION_237_4(v64, v65, v93);
    v66 = [v4 eventURL];
    v95 = v6;
    v96 = v5;
    v94 = v7;
    if (v66)
    {
      v67 = v66;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for URL();
    OUTLINED_FUNCTION_219_4();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventTotalCost);
    CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
    v72 = [v4 startDate];
    if (v72)
    {
      v73 = v72;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for Date();
    OUTLINED_FUNCTION_160_6();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
    v78 = [v4 endDate];
    if (v78)
    {
      v79 = v78;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    OUTLINED_FUNCTION_160_6();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_startDateTimeZone);
    OUTLINED_FUNCTION_223_4();
    OUTLINED_FUNCTION_221_5();
    OUTLINED_FUNCTION_222_4();
    OUTLINED_FUNCTION_273_2();
    OUTLINED_FUNCTION_225_5();
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_15_33();
    TicketedShow.init(id:eventMessageIdentifier:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMegadomeIdentifier:eventType:eventSubType:eventSourceBundleIdentifier:eventIsAllDay:eventSourceIsForwarded:authors:mailMessageId:mailMessageHeader:accountIdentifier:mailboxes:detectedEventTypes:status:updateStatus:reservationId:provider:customerNames:startLocationName:startLocationAddress:seatNumbers:durationInSeconds:ticketType:ticketUrl:totalCost:timeIsUnknown:startDate:endDate:eventSourceLLMConsumableDescription:startDateTimeZone:)();

    type metadata accessor for TicketedShow();
    v84 = OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
    OUTLINED_FUNCTION_101_9();
  }
}

void Appointment.init(item:checkEventType:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_194_6();
  OUTLINED_FUNCTION_84_12();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = OUTLINED_FUNCTION_114(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_123_8();
  v10 = [v5 attributeSet];
  OUTLINED_FUNCTION_218_5();
  if ((v3 & 1) != 0 && (v11 = OUTLINED_FUNCTION_229_4(), v12 = [v11 containsString_], v11, (v12 & 1) == 0))
  {

    type metadata accessor for Appointment();
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_101_9();

    __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  }

  else
  {
    v13 = [v5 uniqueIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventMessageIdentifier);
    v14 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventGroupIdentifier);
    OUTLINED_FUNCTION_82_15(v14, v15);
    v16 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventFallbackGroupIdentifier);
    OUTLINED_FUNCTION_75_16(v16, v17);
    v18 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventMegadomeIdentifier);
    OUTLINED_FUNCTION_81_18(v18, v19);
    v20 = OUTLINED_FUNCTION_229_4();
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_72_14(v21, v22);

    v23 = [v4 eventSubType];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_212_4(v24, v25);
    v26 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventSourceBundleIdentifier);
    OUTLINED_FUNCTION_74_19(v26, v27);
    v28 = [v4 eventIsAllDay];
    if (v28)
    {
      OUTLINED_FUNCTION_217_5(v28);
    }

    else
    {
      OUTLINED_FUNCTION_247_4();
    }

    v29 = [v4 eventSourceIsForwarded];
    if (v29)
    {
      OUTLINED_FUNCTION_217_5(v29);
    }

    else
    {
      OUTLINED_FUNCTION_248_3();
    }

    v30 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v4);
    OUTLINED_FUNCTION_248(v30);
    v31 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_mailMessageID);
    OUTLINED_FUNCTION_39_21(v31, v32);
    OUTLINED_FUNCTION_89_16();
    v34 = v33;
    v35 = OUTLINED_FUNCTION_280_2(v33, sel_attributeForKey_);

    if (v35)
    {
      OUTLINED_FUNCTION_285_0();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_276_1();
    }

    OUTLINED_FUNCTION_116_8();
    if (v36)
    {
      OUTLINED_FUNCTION_115_11();
      OUTLINED_FUNCTION_114_12();
      if (v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = v37;
      }

      OUTLINED_FUNCTION_205_5(v39);
    }

    else
    {
      outlined destroy of FlightSnippet.Leg?(&v73, &_sypSgMd, &_sypSgMR);
      OUTLINED_FUNCTION_169_8();
    }

    v40 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_accountIdentifier);
    OUTLINED_FUNCTION_76_14(v40, v41);
    v42 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v4, &selRef_mailboxIdentifiers);
    OUTLINED_FUNCTION_156_1(v42);
    v43 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(v4);
    OUTLINED_FUNCTION_146_1(v43);
    v44 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventStatus);
    OUTLINED_FUNCTION_171_6(v44, v45);
    v46 = OUTLINED_FUNCTION_281_0();
    OUTLINED_FUNCTION_178_7(v46, v47);
    v48 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventName);
    OUTLINED_FUNCTION_174_6(v48, v49);
    v50 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventStartLocationName);
    OUTLINED_FUNCTION_299_0(v50, v51);
    v52 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventStartLocationAddress);
    OUTLINED_FUNCTION_300_0(v52, v53);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventStartLocationTelephone);
    [v4 eventDuration];
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_eventTotalCost);
    CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
    v54 = [v4 startDate];
    v72 = v5;
    if (v54)
    {
      v55 = v54;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v56 = type metadata accessor for Date();
    v57 = 1;
    OUTLINED_FUNCTION_219_4();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v56);
    v61 = [v4 endDate];
    if (v61)
    {
      v62 = v61;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v57 = 0;
    }

    __swift_storeEnumTagSinglePayload(v6, v57, 1, v56);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v4, &selRef_startDateTimeZone);
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_15_33();
    Appointment.init(id:eventMessageIdentifier:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMegadomeIdentifier:eventType:eventSubType:eventSourceBundleIdentifier:eventIsAllDay:eventSourceIsForwarded:authors:mailMessageId:mailMessageHeader:accountIdentifier:mailboxes:detectedEventTypes:status:updateStatus:eventName:startLocationName:startLocationAddress:startLocationTelephone:durationInSeconds:totalCost:timeIsUnknown:startDate:endDate:eventSourceLLMConsumableDescription:startDateTimeZone:)();

    type metadata accessor for Appointment();
    v63 = OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    OUTLINED_FUNCTION_101_9();
  }
}

void Party.init(item:checkEventType:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v31);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  v34 = v111 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v36 = OUTLINED_FUNCTION_114(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_109();
  v39 = v37 - v38;
  *&v41 = MEMORY[0x28223BE20](v40).n128_u64[0];
  v43 = v111 - v42;
  v44 = [v28 attributeSet];
  OUTLINED_FUNCTION_218_5();
  if ((v26 & 1) != 0 && (v45 = OUTLINED_FUNCTION_229_4(), v46 = [v45 containsString_], v45, (v46 & 1) == 0))
  {

    type metadata accessor for Party();
    OUTLINED_FUNCTION_42_21();
    OUTLINED_FUNCTION_148();

    __swift_storeEnumTagSinglePayload(v106, v107, v108, v109);
  }

  else
  {
    v47 = [v28 uniqueIdentifier];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v127 = v49;
    v128 = v48;

    v50 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventMessageIdentifier);
    v125 = v51;
    v126 = v50;
    v52 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventGroupIdentifier);
    v123 = v53;
    v124 = v52;
    v122 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventFallbackGroupIdentifier);
    v121 = v54;
    v55 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventMegadomeIdentifier);
    OUTLINED_FUNCTION_191_8(v55);
    v58 = OUTLINED_FUNCTION_161_4(v56, v57);
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_179_7(v59, v60);

    v61 = [v20 eventSubType];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_168_6(v62, v63);

    v64 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventSourceBundleIdentifier);
    OUTLINED_FUNCTION_163_7(v64, v65, &a11);
    v66 = [v20 eventIsAllDay];
    if (v66)
    {
      v120 = OUTLINED_FUNCTION_217_5(v66);
    }

    else
    {
      v120 = 2;
    }

    v67 = [v20 eventSourceIsForwarded];
    if (v67)
    {
      v119 = OUTLINED_FUNCTION_217_5(v67);
    }

    else
    {
      v119 = 2;
    }

    v118 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v20);
    v68 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_mailMessageID);
    OUTLINED_FUNCTION_167_4(v68, v69);
    OUTLINED_FUNCTION_89_16();
    v71 = v70;
    v72 = OUTLINED_FUNCTION_280_2(v70, sel_attributeForKey_);

    if (v72)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v131 = 0u;
      v132 = 0u;
    }

    OUTLINED_FUNCTION_16_31();
    v130[1] = v30;
    v129 = v28;
    if (v73)
    {
      v74 = OUTLINED_FUNCTION_324_0();
      v75 = v130[2];
      if (!v74)
      {
        v75 = 0;
      }

      v117 = v75;
      if (v74)
      {
        v76 = v130[3];
      }

      else
      {
        v76 = 0;
      }

      OUTLINED_FUNCTION_288_0(v76);
    }

    else
    {
      outlined destroy of FlightSnippet.Leg?(&v133, &_sypSgMd, &_sypSgMR);
      v117 = 0;
      v116 = 0;
    }

    v77 = v39;
    v78 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_accountIdentifier);
    OUTLINED_FUNCTION_216_0(v78);
    v115 = v79;
    v114 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v20, &selRef_mailboxIdentifiers);
    v113 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(v20);
    v80 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventStatus);
    OUTLINED_FUNCTION_170_6(v80, v81);
    v130[0] = v24;
    v82 = closure #1 in RentalCarReservation.init(item:checkEventType:featureFlagService:)(v24, v20);
    OUTLINED_FUNCTION_146_1(v82);
    v112 = v83;
    v84 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventName);
    OUTLINED_FUNCTION_162_8(v84, v85, v130);
    v86 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventStartLocationName);
    OUTLINED_FUNCTION_174_6(v86, v87);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_eventStartLocationAddress);
    v111[5] = CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
    v88 = [v20 startDate];
    if (v88)
    {
      v89 = v88;
      v90 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v91 = 0;
    }

    else
    {
      v90 = v34;
      v91 = 1;
    }

    v92 = v43;
    v93 = type metadata accessor for Date();
    v94 = 1;
    __swift_storeEnumTagSinglePayload(v92, v91, 1, v93);
    v95 = [v20 endDate];
    if (v95)
    {
      v96 = v95;
      v97 = v77;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v94 = 0;
    }

    else
    {
      v97 = v77;
    }

    v98 = 1;
    __swift_storeEnumTagSinglePayload(v97, v94, 1, v93);
    v99 = [v20 eventURL];
    if (v99)
    {
      v100 = v99;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v98 = 0;
    }

    v101 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v90, v98, 1, v101);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v20, &selRef_startDateTimeZone);
    OUTLINED_FUNCTION_129_12();
    OUTLINED_FUNCTION_111_8();
    OUTLINED_FUNCTION_131_8();
    OUTLINED_FUNCTION_128_10();
    OUTLINED_FUNCTION_130_11();
    OUTLINED_FUNCTION_197_7();
    OUTLINED_FUNCTION_143_10();
    OUTLINED_FUNCTION_150_6();
    OUTLINED_FUNCTION_141_6();
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_126_13();
    OUTLINED_FUNCTION_151_6();
    OUTLINED_FUNCTION_134_10();
    OUTLINED_FUNCTION_149_9();
    OUTLINED_FUNCTION_148_9();
    OUTLINED_FUNCTION_133_11();
    OUTLINED_FUNCTION_117_12();
    OUTLINED_FUNCTION_165_5();
    OUTLINED_FUNCTION_124_14();
    OUTLINED_FUNCTION_136_11();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_139_9();
    OUTLINED_FUNCTION_180_5();
    Party.init(id:eventMessageIdentifier:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMegadomeIdentifier:eventType:eventSubType:eventSourceBundleIdentifier:eventIsAllDay:eventSourceIsForwarded:authors:mailMessageId:mailMessageHeader:accountIdentifier:mailboxes:detectedEventTypes:status:updateStatus:eventName:startLocationName:startLocationAddress:timeIsUnknown:startDate:endDate:eventUrl:eventSourceLLMConsumableDescription:startDateTimeZone:)();

    type metadata accessor for Party();
    v102 = OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
    OUTLINED_FUNCTION_148();
  }
}

void Trip.init(item:checkEventType:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_194_6();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v31);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_49_3();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v34 = OUTLINED_FUNCTION_114(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_216_3();
  v36 = [v30 attributeSet];
  OUTLINED_FUNCTION_218_5();
  if ((v28 & 1) != 0 && (v37 = OUTLINED_FUNCTION_229_4(), v38 = [v37 containsString_], v37, (v38 & 1) == 0))
  {

    type metadata accessor for Trip();
    OUTLINED_FUNCTION_26_23();
    OUTLINED_FUNCTION_101_9();

    __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
  }

  else
  {
    v39 = [v30 uniqueIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_eventMessageIdentifier);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_eventGroupIdentifier);
    v40 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_eventFallbackGroupIdentifier);
    OUTLINED_FUNCTION_191_8(v40);
    *(v42 - 256) = v41;
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_eventMegadomeIdentifier);
    v44 = OUTLINED_FUNCTION_161_4(v43, &a16);
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_168_6(v45, v46);

    v47 = [v22 eventSubType];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_163_7(v48, v49, &a13);

    v50 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_eventSourceBundleIdentifier);
    OUTLINED_FUNCTION_73_15(v50, v51);
    v52 = [v22 eventIsAllDay];
    if (v52)
    {
      OUTLINED_FUNCTION_217_5(v52);
    }

    v53 = [v22 eventSourceIsForwarded];
    if (v53)
    {
      OUTLINED_FUNCTION_217_5(v53);
    }

    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v22);
    v54 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_mailMessageID);
    OUTLINED_FUNCTION_248(v54);
    OUTLINED_FUNCTION_89_16();
    v56 = v55;
    v57 = OUTLINED_FUNCTION_280_2(v55, sel_attributeForKey_);

    if (v57)
    {
      OUTLINED_FUNCTION_285_0();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_276_1();
    }

    OUTLINED_FUNCTION_116_8();
    if (v58)
    {
      OUTLINED_FUNCTION_115_11();
      OUTLINED_FUNCTION_114_12();
      if (v60)
      {
        v61 = 0;
      }

      else
      {
        v61 = v59;
      }

      OUTLINED_FUNCTION_253_3(v61);
    }

    else
    {
      outlined destroy of FlightSnippet.Leg?(&v93, &_sypSgMd, &_sypSgMR);
    }

    v62 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_accountIdentifier);
    OUTLINED_FUNCTION_297_0(v62, v63);
    outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v22, &selRef_mailboxIdentifiers);
    v64 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(v22);
    OUTLINED_FUNCTION_156_1(v64);
    v65 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_eventStatus);
    OUTLINED_FUNCTION_146_1(v65);
    closure #1 in RentalCarReservation.init(item:checkEventType:featureFlagService:)(v26, v22);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_eventName);
    CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
    v66 = [v22 startDate];
    if (v66)
    {
      v67 = v66;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for Date();
    OUTLINED_FUNCTION_102_10();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
    v72 = [v22 endDate];
    if (v72)
    {
      v73 = v72;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    OUTLINED_FUNCTION_102_10();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
    [v22 eventDuration];
    v78 = [v22 eventURL];
    if (v78)
    {
      v79 = v78;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for URL();
    OUTLINED_FUNCTION_219_4();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v22, &selRef_startDateTimeZone);
    OUTLINED_FUNCTION_130_11();
    OUTLINED_FUNCTION_197_7();
    OUTLINED_FUNCTION_143_10();
    OUTLINED_FUNCTION_157_5();
    OUTLINED_FUNCTION_141_6();
    OUTLINED_FUNCTION_120_9();
    OUTLINED_FUNCTION_126_13();
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_182_8();
    OUTLINED_FUNCTION_151_6();
    OUTLINED_FUNCTION_134_10();
    OUTLINED_FUNCTION_156_6();
    OUTLINED_FUNCTION_158_6();
    OUTLINED_FUNCTION_148_9();
    OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_133_11();
    OUTLINED_FUNCTION_117_12();
    OUTLINED_FUNCTION_137_5();
    OUTLINED_FUNCTION_124_14();
    OUTLINED_FUNCTION_136_11();
    OUTLINED_FUNCTION_63_18();
    Trip.init(id:eventMessageIdentifier:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMegadomeIdentifier:eventType:eventSubType:eventSourceBundleIdentifier:eventIsAllDay:eventSourceIsForwarded:authors:mailMessageId:mailMessageHeader:accountIdentifier:mailboxes:detectedEventTypes:status:updateStatus:eventName:timeIsUnknown:startDate:endDate:durationInSeconds:eventUrl:eventSourceLLMConsumableDescription:startDateTimeZone:)();

    type metadata accessor for Trip();
    v84 = OUTLINED_FUNCTION_37_17();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
    OUTLINED_FUNCTION_101_9();
  }
}

uint64_t closure #1 in RentalCarReservation.init(item:checkEventType:featureFlagService:)(uint64_t a1, void *a2)
{
  if ((*(*a1 + 80))(35))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v3, static Logging.search);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_77_5(v5))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_100_3(&dword_25D85C000, v6, v7, "OmniSearch/includeEventUpdateStatus FF enabled. Including updateStatus.");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v8 = [a2 eventUpdateStatus];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_140_2();
  }

  return OUTLINED_FUNCTION_94();
}

uint64_t FlightReservation.setResolvedFlight(_:)()
{
  type metadata accessor for JSONEncodingOptions();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  JSONEncodingOptions.init()();
  type metadata accessor for FlightSnippet.Flight(0);
  OUTLINED_FUNCTION_135_8();
  lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(v2, v3, &protocol conformance descriptor for FlightSnippet.Flight);
  v4 = Message.jsonString(options:)();
  if (v0)
  {
    v6 = OUTLINED_FUNCTION_232();
    return v7(v6);
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v11 = OUTLINED_FUNCTION_232();
    v12(v11);
    v13._countAndFlagsBits = v9;
    v13._object = v10;
    FlightReservation.setResolvedFlight(_:)(v13);
  }
}

uint64_t (*protocol witness for InstantAnswerDocument.eventSourceBundleIdentifier.modify in conformance FlightReservation(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = FlightReservation.eventSourceBundleIdentifier.modify();
  return protocol witness for InstantAnswerDocument.eventSourceLLMConsumableDescription.modify in conformance FlightReservation;
}

uint64_t (*protocol witness for InstantAnswerDocument.eventSourceLLMConsumableDescription.modify in conformance FlightReservation(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = FlightReservation.eventSourceLLMConsumableDescription.modify();
  return protocol witness for InstantAnswerDocument.eventSourceLLMConsumableDescription.modify in conformance FlightReservation;
}

void FlightReservation.init(item:answerAttributes:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_194_6();
  a21 = v26;
  a22 = v27;
  v545 = v28;
  v551 = v29;
  v31 = v30;
  v542 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_114(v33);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v35);
  v36 = type metadata accessor for CharacterSet();
  OUTLINED_FUNCTION_216_0(v36);
  OUTLINED_FUNCTION_14();
  v520 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v42 = OUTLINED_FUNCTION_114(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_4();
  v537 = v47;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_14_2();
  v539 = v49;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_14();
  v546 = v51;
  v547 = v50;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_28_2(v53 - v52);
  type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_14();
  v540 = v55;
  v541 = v54;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_7_4();
  v536 = v60;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_14_2();
  v538 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v64 = OUTLINED_FUNCTION_114(v63);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v66);
  v530[0] = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_14();
  v529 = v67;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_39_0();
  v535 = v69;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v73 = OUTLINED_FUNCTION_114(v72);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_7_4();
  v549 = v77;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_7_4();
  v550 = v79;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v81);
  v83 = &v428 - v82;
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_46_14();
  v85 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v87 = v86;
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_21();
  MEMORY[0x28223BE20](v89);
  v91 = &v428 - v90;
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_123_8();
  v543 = type metadata accessor for FlightReservation();
  OUTLINED_FUNCTION_14();
  v524 = v93;
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v98);
  v544 = v31;
  v99 = [v31 attributeSet];
  v100 = [v99 startDate];
  v548 = v99;
  if (v100)
  {
    v101 = v100;
    v102 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v103 = *(v87 + 32);
    v103(v83, v91, v85);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v85);
    v103(v23, v83, v85);
    v107 = OUTLINED_FUNCTION_49_19();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v85);
    v110 = v550;
  }

  else
  {
    v533 = v22;
    v534 = v25;
    v111 = v87;
    v112 = 1;
    OUTLINED_FUNCTION_92();
    v113 = v85;
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v85);
    v117 = [v99 flightDepartureDateTime];
    if (v117)
    {
      v118 = v117;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v112 = 0;
    }

    v110 = v550;
    v85 = v113;
    __swift_storeEnumTagSinglePayload(v24, v112, 1, v113);
    v119 = OUTLINED_FUNCTION_232();
    outlined init with take of Date?(v119, v120);
    v121 = OUTLINED_FUNCTION_202_5();
    OUTLINED_FUNCTION_166(v121, v122, v113);
    v87 = v111;
    v25 = v534;
    v102 = v533;
    if (!v328)
    {
      outlined destroy of FlightSnippet.Leg?(v83, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v123 = OUTLINED_FUNCTION_93_0();
  v125 = 0x28155B000;
  if (__swift_getEnumTagSinglePayload(v123, v124, v85) == 1)
  {
    v110 = v23;
    v126 = v543;
LABEL_19:

    outlined destroy of FlightSnippet.Leg?(v110, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (*(v125 + 2840) != -1)
    {
LABEL_161:
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v154 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v154, static Logging.search);
    v155 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v156 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v158);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v159, v160, v161, v162, v163, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    goto LABEL_23;
  }

  v127 = *(v87 + 32);
  v127(v25, v23, v85);
  v128 = v548;
  v129 = [v548 endDate];
  if (v129)
  {
    v130 = v129;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v127(v549, v91, v85);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v85);
    v134 = OUTLINED_FUNCTION_32_0();
    (v127)(v134);
    v135 = OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v135, v136, v137, v85);
    v138 = v85;
  }

  else
  {
    v139 = v87;
    v140 = 1;
    OUTLINED_FUNCTION_92();
    v141 = v85;
    __swift_storeEnumTagSinglePayload(v142, v143, v144, v85);
    v145 = [v128 flightArrivalDateTime];
    if (v145)
    {
      v146 = v145;
      v147 = v522;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v140 = 0;
    }

    else
    {
      v147 = v522;
    }

    v148 = v140;
    v138 = v141;
    __swift_storeEnumTagSinglePayload(v147, v148, 1, v141);
    outlined init with take of Date?(v147, v110);
    v149 = v549;
    v150 = OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_166(v150, v151, v141);
    v87 = v139;
    if (!v328)
    {
      outlined destroy of FlightSnippet.Leg?(v149, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v152 = OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_166(v152, v153, v138);
  if (v328)
  {
    (*(v87 + 8))(v25, v138);
    v126 = v543;
    v125 = 0x28155B000uLL;
    goto LABEL_19;
  }

  v534 = v25;
  v533 = v102;
  v127(v102, v110, v138);
  OUTLINED_FUNCTION_192_7();
  static TimeZone.current.getter();
  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v548, &selRef_startDateTimeZone);
  v126 = v543;
  v169 = v530[0];
  v171 = v546;
  v170 = v547;
  v172 = v527;
  if (v168)
  {
    v173 = v517;
    TimeZone.init(identifier:)();

    OUTLINED_FUNCTION_70_12();
    OUTLINED_FUNCTION_166(v174, v175, v176);
    if (v328)
    {
      outlined destroy of FlightSnippet.Leg?(v173, &_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_104_10();
      (*(v177 + 8))(v127, v169);
      v178 = OUTLINED_FUNCTION_32_3();
      v179(v178);
    }
  }

  v513 = v87;
  v517 = v138;
  static Calendar.current.getter();
  Calendar.dateComponents(in:from:)();
  v180 = *(v171 + 8);
  v180(v172, v170);
  v181 = v535;
  static TimeZone.current.getter();
  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v548, &selRef_endDateTimeZone);
  if (v182)
  {
    v183 = v182;
    OUTLINED_FUNCTION_192_7();
    TimeZone.init(identifier:)();

    OUTLINED_FUNCTION_70_12();
    OUTLINED_FUNCTION_166(v184, v185, v186);
    if (v328)
    {
      outlined destroy of FlightSnippet.Leg?(v127, &_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_104_10();
      (*(v187 + 8))(v181, v169);
      (*(v183 + 32))(v181, v127, v169);
    }
  }

  static Calendar.current.getter();
  Calendar.dateComponents(in:from:)();
  v180(v172, v170);
  v188 = v548;
  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v548, &selRef_flightCheckInUrl);
  if (v189)
  {
    URL.init(string:)();
  }

  else
  {
    type metadata accessor for URL();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v190, v191, v192, v193);
  }

  OUTLINED_FUNCTION_206_4();
  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v188, &selRef_flightBookingInfoUrl);
  if (v194)
  {
    URL.init(string:)();
  }

  else
  {
    type metadata accessor for URL();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v195, v196, v197, v198);
  }

  v199 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v188, &selRef_eventTotalCost);
  v201 = v200;
  if (v200)
  {
    v552 = v199;
    v553 = v200;
    OUTLINED_FUNCTION_66_10();
    static CharacterSet.decimalDigits.getter();
    v202 = v519;
    CharacterSet.inverted.getter();
    v170 = *(v520 + 8);
    OUTLINED_FUNCTION_107_8();
    v170();
    lazy protocol witness table accessor for type String and conformance String();
    v203 = StringProtocol.components(separatedBy:)();
    (v170)(v202, v127);

    v552 = v203;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    BidirectionalCollection<>.joined(separator:)();
    OUTLINED_FUNCTION_140_2();

    v204 = OUTLINED_FUNCTION_94();
    v206 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v204, v205);
    if (v207)
    {
      v201 = 0;
      OUTLINED_FUNCTION_147_9();
    }

    else
    {
      v201 = MEMORY[0x25F89FD90](*&v206);
      v170 = v208;
      v510 = 0;
      v511 = v209;
      OUTLINED_FUNCTION_259_4(0xE300000000000000);
      v512 = 4477781;
    }

    OUTLINED_FUNCTION_206_4();
    v188 = v548;
  }

  else
  {
    OUTLINED_FUNCTION_147_9();
  }

  v210 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v188, &selRef_uniqueIdentifier);
  if (!v211)
  {

    OUTLINED_FUNCTION_298_0();

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v225 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v225, static Logging.search);
    v226 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v227 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v227, v228))
    {
      v229 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v229);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v230, v231, v232, v233, v234, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_33_13();
    outlined destroy of FlightSnippet.Leg?(v235, v236, v237);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of FlightSnippet.Leg?(v238, v239, v240);
    v241 = v541;
    v242 = *(v540 + 8);
    v242(v536, v541);
    v243 = *(v529 + 8);
    v243(v535, v169);
    v242(v538, v241);
    v243(v127, v169);
    v244 = OUTLINED_FUNCTION_41_18();
    (v242)(v244);
    v245 = OUTLINED_FUNCTION_68_17(&a20);
    (v242)(v245);
LABEL_23:
    OUTLINED_FUNCTION_92();
    v167 = v126;
    goto LABEL_24;
  }

  v496 = v211;
  v497 = v210;
  v212 = (*(*v545 + 80))(35);
  v495 = v201;
  if (v212)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v213 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v213, static Logging.search);
    v214 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v215 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v215, v216))
    {
      v217 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v217);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v218, v219, v220, v221, v222, 2u);
      OUTLINED_FUNCTION_206_4();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v223 = [v548 eventUpdateStatus];
    v488 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v487 = v224;
  }

  else
  {
    v488 = 0;
    v487 = 0;
  }

  v494 = v170;
  v493 = CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
  v126 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v548, &selRef_flightNumber);
  v519 = v246;
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of ResourceBundle?(v247, v248, v249, v250);
  OUTLINED_FUNCTION_50_9();
  v251 = v548;
  outlined init with copy of ResourceBundle?(v252, v253, v254, v255);
  v492 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightCarrier);
  v491 = v256;
  v257 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightCarrierCode);
  v518 = v258;
  v490 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightDesignator);
  v489 = v259;
  v260 = v541;
  v261 = v540 + 16;
  v262 = *(v540 + 16);
  (v262)(v531, v538, v541);
  (v262)(v532, v536, v260);
  v486 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightArrivalAirportAddress);
  v485 = v263;
  v484 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightDepartureAirportAddress);
  v483 = v264;
  v482 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightArrivalAirportCode);
  v481 = v265;
  v480 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightDepartureAirportCode);
  v479 = v266;
  v478 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightArrivalAirportCountry);
  v477 = v267;
  v476 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightDepartureAirportCountry);
  v475 = v268;
  v474 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightArrivalAirportLocality);
  v473 = v269;
  v472 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightDepartureAirportLocality);
  v471 = v270;
  v504 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightArrivalAirportName);
  v505 = v271;
  v272 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightDepartureAirportName);
  OUTLINED_FUNCTION_236_3(v272, v273, &v526);
  v470 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightArrivalAirportRegion);
  v469 = v274;
  v468 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightDepartureAirportRegion);
  v467 = v275;
  v276 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightConfirmationNumber);
  OUTLINED_FUNCTION_237_4(v276, v277, v530);
  outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v251, &selRef_eventCustomerNames);
  OUTLINED_FUNCTION_290_0();
  v466 = v278;
  outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v251, &selRef_flightPassengerSeatNumbers);
  OUTLINED_FUNCTION_290_0();
  v502 = v279;
  v500 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightArrivalTerminal);
  v501 = v280;
  v498 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightDepartureTerminal);
  v499 = v281;
  v463 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_eventProvider);
  v462 = v282;
  v283 = [v251 flightBoardingDateTime];
  if (v283)
  {
    v284 = v283;
    v285 = v526;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v286 = 0;
  }

  else
  {
    v286 = 1;
    v285 = v526;
  }

  OUTLINED_FUNCTION_250_4(v285, v286);
  v461 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightDepartureGate);
  v460 = v287;
  v459 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_flightArrivalGate);
  v458 = v288;
  [v251 eventDuration];
  v290 = v289;
  v457 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_eventStatus);
  v456 = v291;
  v465 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v544);
  v464 = v292;
  if (!v292)
  {
    __break(1u);
    return;
  }

  v445 = v290;
  v451 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_mailMessageID);
  v450 = v293;
  v449 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_eventMessageIdentifier);
  v448 = v294;
  v447 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_eventSourceBundleIdentifier);
  v446 = v295;
  v444 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_startDateTimeZone);
  v443 = v296;
  v442 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v251, &selRef_endDateTimeZone);
  v441 = v297;
  v298 = OUTLINED_FUNCTION_226_1(&v545);
  v299 = v541;
  (v262)(v298, v531, v541);
  v300 = OUTLINED_FUNCTION_49_19();
  __swift_storeEnumTagSinglePayload(v300, v301, v302, v299);
  v547 = dateString(fromDateComponents:)(v285);
  v304 = v303;
  OUTLINED_FUNCTION_33_13();
  outlined destroy of FlightSnippet.Leg?(v305, v306, v307);
  OUTLINED_FUNCTION_163_5();
  v453 = v261;
  v452 = v262;
  v262();
  v308 = OUTLINED_FUNCTION_49_19();
  __swift_storeEnumTagSinglePayload(v308, v309, v310, v299);
  v311 = dateString(fromDateComponents:)(v285);
  OUTLINED_FUNCTION_216_0(v311);
  v522 = v312;
  OUTLINED_FUNCTION_33_13();
  outlined destroy of FlightSnippet.Leg?(v313, v314, v315);
  v316 = 0;
  v429 = 0x800000025DBF7600;
  v431 = 0x800000025DBF75E0;
  v550 = *(v551 + 2);
  v433 = 0x800000025DBF75C0;
  v549 = *MEMORY[0x277CC3128];
  v527 = *MEMORY[0x277CC27A0];
  v435 = 0x800000025DBF7520;
  v516 = *MEMORY[0x277CC28F0];
  v440 = *MEMORY[0x277CC2898];
  v437 = 0x800000025DBF7500;
  v438 = *MEMORY[0x277CC2848];
  v436 = *MEMORY[0x277CC28C0];
  v439 = 0x800000025DBF7580;
  v434 = *MEMORY[0x277CC2908];
  v317 = v518;
  v454 = v257;
  if (v518)
  {
    v318 = v257;
  }

  else
  {
    v318 = 0;
  }

  v509 = v318;
  v432 = *MEMORY[0x277CC2860];
  v430 = *MEMORY[0x277CC28E0];
  if (!v518)
  {
    v317 = 0xE000000000000000;
  }

  v508 = v317;
  OUTLINED_FUNCTION_118_9();
  v455 = v126;
  if (v319)
  {
    v321 = v126;
  }

  else
  {
    v321 = 0;
  }

  v507 = v321;
  if (!v319)
  {
    v319 = v320;
  }

  OUTLINED_FUNCTION_204_7(v319);
  v520 = 0x800000025DBF73E0;
  v546 = 0x800000025DBF73C0;
  v323 = (v322 + 40);
  v324 = MEMORY[0x277D84F90];
  while (v550 != v316)
  {
    if (v316 >= *(v551 + 2))
    {
      __break(1u);
      goto LABEL_161;
    }

    v325 = *(v323 - 1);
    v326 = *v323;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_180_6();
    v328 = v328 && v327 == v326;
    if (v328)
    {
    }

    else
    {
      v329 = OUTLINED_FUNCTION_46_21();

      if ((v329 & 1) == 0)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        OUTLINED_FUNCTION_180_6();
        if (v328 && v330 == v326)
        {
        }

        else
        {
          OUTLINED_FUNCTION_46_21();
          OUTLINED_FUNCTION_250_2();
          if ((v329 & 1) == 0)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            OUTLINED_FUNCTION_180_6();
            if (v328 && v332 == v326)
            {

LABEL_129:
              v552 = 0;
              v553 = 0xE000000000000000;

              OUTLINED_FUNCTION_113_10();
              MEMORY[0x25F89F6C0]();

              OUTLINED_FUNCTION_113_10();
              MEMORY[0x25F89F6C0]();

              v348 = v552;
              v325 = v553;
              v347 = 0x754E746867696C66;
              v126 = 0xEC0000007265626DLL;
              goto LABEL_130;
            }

            OUTLINED_FUNCTION_46_21();
            OUTLINED_FUNCTION_250_2();
            if (v329)
            {
              goto LABEL_129;
            }

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            OUTLINED_FUNCTION_180_6();
            if (v328 && v334 == v326)
            {
            }

            else
            {
              OUTLINED_FUNCTION_46_21();
              OUTLINED_FUNCTION_250_2();
              if ((v329 & 1) == 0)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                OUTLINED_FUNCTION_180_6();
                if (v328 && v336 == v326)
                {
                }

                else
                {
                  OUTLINED_FUNCTION_46_21();
                  OUTLINED_FUNCTION_250_2();
                  if ((v329 & 1) == 0)
                  {
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                    OUTLINED_FUNCTION_180_6();
                    if (v328 && v338 == v326)
                    {
                    }

                    else
                    {
                      OUTLINED_FUNCTION_46_21();
                      OUTLINED_FUNCTION_250_2();
                      if ((v329 & 1) == 0)
                      {
                        static String._unconditionallyBridgeFromObjectiveC(_:)();
                        OUTLINED_FUNCTION_180_6();
                        if (v328 && v340 == v326)
                        {

LABEL_145:
                          OUTLINED_FUNCTION_266_2();
                          v552 = v358;
                          v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
                          lazy protocol witness table accessor for type [String] and conformance [A]();
                          v325 = &v552;
                          BidirectionalCollection<>.joined(separator:)();
                          OUTLINED_FUNCTION_140_2();

                          OUTLINED_FUNCTION_83_14();
                          v347 = v359 + 3;
                          v126 = v433;
                          goto LABEL_130;
                        }

                        OUTLINED_FUNCTION_46_21();
                        OUTLINED_FUNCTION_250_2();
                        if (v329)
                        {
                          goto LABEL_145;
                        }

                        static String._unconditionallyBridgeFromObjectiveC(_:)();
                        OUTLINED_FUNCTION_180_6();
                        if (v328 && v342 == v326)
                        {
                        }

                        else
                        {
                          OUTLINED_FUNCTION_46_21();
                          OUTLINED_FUNCTION_250_2();
                          if ((v329 & 1) == 0)
                          {
                            static String._unconditionallyBridgeFromObjectiveC(_:)();
                            OUTLINED_FUNCTION_180_6();
                            if (v328 && v344 == v326)
                            {
                            }

                            else
                            {
                              OUTLINED_FUNCTION_46_21();
                              OUTLINED_FUNCTION_174_5();
                              if ((v325 & 1) == 0)
                              {
                                goto LABEL_152;
                              }
                            }

                            if (!v499)
                            {
LABEL_152:

                              goto LABEL_153;
                            }

                            OUTLINED_FUNCTION_48_12(&v522);

                            v347 = 0xD000000000000017;
                            v126 = v429;
                            v349 = &v521;
                            goto LABEL_127;
                          }
                        }

                        v325 = v501;
                        if (!v501)
                        {
                          goto LABEL_152;
                        }

                        OUTLINED_FUNCTION_83_14();
                        v347 = v360 - 2;
                        v126 = v431;
                        v349 = &v523;
LABEL_127:
                        v348 = *(v349 - 32);
                        goto LABEL_130;
                      }
                    }

                    v325 = v503;
                    if (!v503)
                    {
                      goto LABEL_152;
                    }

                    OUTLINED_FUNCTION_83_14();
                    v347 = v355 + 3;
                    v126 = v435;
                    v349 = &v526;
                    goto LABEL_127;
                  }
                }

                v325 = v505;
                if (!v505)
                {
                  goto LABEL_152;
                }

                OUTLINED_FUNCTION_83_14();
                v347 = v354 + 1;
                v126 = v437;
                v349 = &v528;
                goto LABEL_127;
              }
            }

            v325 = v506;
            if (!v506)
            {
              goto LABEL_152;
            }

            OUTLINED_FUNCTION_83_14();
            v347 = v353 + 1;
            v126 = v439;
            v349 = v530;
            goto LABEL_127;
          }
        }

        v325 = v522;
        if (!v522)
        {
          goto LABEL_152;
        }

        v347 = 0xD000000000000017;
        v126 = v520;
        v349 = &v551;
        goto LABEL_127;
      }
    }

    if (!v304)
    {
      goto LABEL_152;
    }

    OUTLINED_FUNCTION_83_14();
    v347 = v346 + 2;
    v126 = v546;
    v348 = v547;
    v325 = v304;
LABEL_130:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v324 = v356;
    }

    v351 = *(v324 + 16);
    v350 = *(v324 + 24);
    if (v351 >= v350 >> 1)
    {
      OUTLINED_FUNCTION_26_3(v350);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v324 = v357;
    }

    *(v324 + 16) = v351 + 1;
    v352 = (v324 + 32 * v351);
    v352[4] = v347;
    v352[5] = v126;
    v352[6] = v348;
    v352[7] = v325;
LABEL_153:
    v323 += 2;
    ++v316;
  }

  OUTLINED_FUNCTION_8_40();
  v550 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tm(v324, v361, v362, v363);
  OUTLINED_FUNCTION_252_0();
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of ResourceBundle?(v364, v365, v366, v367);
  OUTLINED_FUNCTION_251_0();
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of ResourceBundle?(v368, v369, v370, v371);
  OUTLINED_FUNCTION_48_12(&v541);
  OUTLINED_FUNCTION_113_10();
  v372 = v541;
  v373 = v452;
  v452();
  v374 = v532;
  (v373)(v515, v532, v372);
  v375 = v526;
  OUTLINED_FUNCTION_261_2();
  outlined init with copy of ResourceBundle?(v376, v377, v378, v379);
  LOBYTE(v552) = v510;
  OUTLINED_FUNCTION_150_6();
  OUTLINED_FUNCTION_258_3();
  OUTLINED_FUNCTION_266_2();
  OUTLINED_FUNCTION_274_2();
  OUTLINED_FUNCTION_265_3();
  OUTLINED_FUNCTION_317_0();
  OUTLINED_FUNCTION_223_4();
  OUTLINED_FUNCTION_221_5();
  OUTLINED_FUNCTION_275_1();
  OUTLINED_FUNCTION_224_4();
  OUTLINED_FUNCTION_222_4();
  OUTLINED_FUNCTION_273_2();
  OUTLINED_FUNCTION_225_5();
  OUTLINED_FUNCTION_184_6();
  OUTLINED_FUNCTION_183_6();
  OUTLINED_FUNCTION_198_5();
  OUTLINED_FUNCTION_129_12();
  OUTLINED_FUNCTION_127_14();
  OUTLINED_FUNCTION_125_10();
  OUTLINED_FUNCTION_131_8();
  OUTLINED_FUNCTION_128_10();
  OUTLINED_FUNCTION_130_11();
  OUTLINED_FUNCTION_120_9();
  OUTLINED_FUNCTION_126_13();
  OUTLINED_FUNCTION_182_8();
  OUTLINED_FUNCTION_118_9();
  OUTLINED_FUNCTION_112_15();
  v380 = v523;
  FlightReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:flightNumber:flightCheckInUrl:flightBookingInfoUrl:flightCarrier:flightCarrierCode:flightDesignator:flightDepartureDateComponents:flightArrivalDateComponents:flightArrivalAirportAddress:flightDepartureAirportAddress:flightArrivalAirportCode:flightDepartureAirportCode:flightArrivalAirportCountry:flightDepartureAirportCountry:flightArrivalAirportLocality:flightDepartureAirportLocality:flightArrivalAirportName:flightDepartureAirportName:flightArrivalAirportRegion:flightDepartureAirportRegion:flightConfirmationNumber:flightPassengerNames:flightPassengerSeatNumbers:flightArrivalTerminal:flightDepartureTerminal:flightBookingProvider:flightBoardingTimeDate:flightDepartureGate:flightArrivalGate:flightDuration:flightCostCurrency:flightCostAmount:flightStatus:flightUpdateStatus:flightDepartureDateString:flightArrivalDateString:_resolvedFlightJSON();
  outlined destroy of FlightSnippet.Leg?(v375, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v381 = v540 + 8;
  v382 = *(v540 + 8);
  v383 = v374;
  v384 = v380;
  v382(v383, v372);
  v385 = OUTLINED_FUNCTION_32_0();
  v540 = v381;
  (v382)(v385);
  outlined destroy of FlightSnippet.Leg?(v530[2], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_33_13();
  outlined destroy of FlightSnippet.Leg?(v386, v387, v388);
  v389 = v524;
  v390 = *(v524 + 16);
  v391 = v543;
  v390(v525, v384, v543);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v392 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v392, static Logging.search);
  v393 = v514;
  v390(v514, v384, v391);
  v394 = Logger.logObject.getter();
  v395 = static os_log_type_t.debug.getter();
  v396 = OUTLINED_FUNCTION_32_9();
  if (os_log_type_enabled(v396, v397))
  {
    OUTLINED_FUNCTION_28_3();
    v398 = swift_slowAlloc();
    v399 = swift_slowAlloc();
    *v398 = 136642819;
    v551 = v382;
    v552 = v399;
    v400 = OUTLINED_FUNCTION_32_3();
    (v390)(v400);
    String.init<A>(describing:)();
    v401 = *(v389 + 8);
    v401(v393, v391);
    v402 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v398 + 4) = v402;
    _os_log_impl(&dword_25D85C000, v394, v395, "PreExtractedEvents.FlightReservation: created: %{sensitive}s", v398, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v399);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    v401(v523, v391);
    v403 = v525;
    v389 = v524;
    OUTLINED_FUNCTION_33_13();
    outlined destroy of FlightSnippet.Leg?(v404, v405, v406);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of FlightSnippet.Leg?(v407, v408, v409);
    v410 = v541;
    v411 = v551;
    v551(v536, v541);
    v412 = *(v529 + 8);
    OUTLINED_FUNCTION_251_0();
    v412();
    v411(v538, v410);
    v413 = OUTLINED_FUNCTION_292_0();
    (v412)(v413, v395);
    v414 = OUTLINED_FUNCTION_41_18();
    (v412)(v414);
    v415 = OUTLINED_FUNCTION_68_17(&a20);
    (v412)(v415);
  }

  else
  {

    v416 = *(v389 + 8);
    v416(v393, v391);
    v416(v384, v391);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of FlightSnippet.Leg?(v417, v418, v419);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of FlightSnippet.Leg?(v420, v421, v422);
    v423 = v541;
    v382(v536, v541);
    v424 = *(v529 + 8);
    OUTLINED_FUNCTION_251_0();
    v424();
    v382(v538, v423);
    v425 = OUTLINED_FUNCTION_292_0();
    (v424)(v425, v395);
    v426 = OUTLINED_FUNCTION_41_18();
    (v424)(v426);
    v427 = OUTLINED_FUNCTION_68_17(&a20);
    (v424)(v427);
    v403 = v525;
  }

  (*(v389 + 32))(v542, v403, v391);
  v164 = OUTLINED_FUNCTION_13_2();
  v167 = v391;
LABEL_24:
  __swift_storeEnumTagSinglePayload(v164, v165, v166, v167);
  OUTLINED_FUNCTION_101_9();
}

uint64_t _sSdySdSgxcSyRzlufCSS_Tt0g5(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  specialized String.withCString<A>(_:)(a1, a2, &v4);
  OUTLINED_FUNCTION_174_5();
  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void FlightReservation.init(id:timeIsUnknown:flightNumber:flightCheckInUrl:flightBookingInfoUrl:flightCarrier:flightCarrierCode:flightDesignator:flightDepartureDateComponents:flightArrivalDateComponents:flightArrivalAirportAddress:flightDepartureAirportAddress:flightArrivalAirportCode:flightDepartureAirportCode:flightArrivalAirportCountry:flightDepartureAirportCountry:flightArrivalAirportLocality:flightDepartureAirportLocality:flightArrivalAirportName:flightDepartureAirportName:flightArrivalAirportRegion:flightDepartureAirportRegion:flightConfirmationNumber:flightPassengerNames:flightPassengerSeatNumbers:flightArrivalTerminal:flightDepartureTerminal:flightBookingProvider:flightBoardingTimeDate:flightDepartureGate:flightArrivalGate:flightDuration:flightCostCurrency:flightCostAmount:flightStatus:flightUpdateStatus:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:startDateTimeZone:endDateTimeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t *a45, uint64_t a46, uint64_t *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  OUTLINED_FUNCTION_155();
  a19 = v72;
  a20 = v73;
  v194[28] = v74;
  v217 = v76;
  v218 = v75;
  v220 = v77;
  v221 = v78;
  v195 = v79;
  v198 = v80;
  v197 = v81;
  v196 = v82;
  v194[16] = STACK[0x8E8];
  v194[15] = STACK[0x8E0];
  v194[14] = STACK[0x8D8];
  v194[13] = STACK[0x8D0];
  OUTLINED_FUNCTION_188_7(STACK[0x8C8]);
  v194[18] = STACK[0x8C0];
  OUTLINED_FUNCTION_205_5(STACK[0x8B8]);
  OUTLINED_FUNCTION_259_4(STACK[0x8B0]);
  v194[22] = STACK[0x8A8];
  v194[21] = STACK[0x8A0];
  v194[27] = STACK[0x898];
  OUTLINED_FUNCTION_253_3(STACK[0x890]);
  OUTLINED_FUNCTION_230_3(STACK[0x888]);
  OUTLINED_FUNCTION_190_8(STACK[0x880]);
  v205 = STACK[0x878];
  v194[12] = STACK[0x870];
  v194[11] = STACK[0x868];
  OUTLINED_FUNCTION_226_3(STACK[0x860]);
  v194[8] = STACK[0x858];
  v194[7] = a71;
  OUTLINED_FUNCTION_204_7(a70);
  v194[5] = a69;
  v194[4] = a68;
  v194[3] = a67;
  v194[2] = a66;
  v194[1] = a65;
  v194[0] = a64;
  v193 = a63;
  v194[17] = a62;
  v203 = a59;
  v199 = a58;
  v206 = a57;
  v200 = a56;
  v201 = a55;
  v222 = a53;
  v207 = a52;
  v209 = a47;
  v202 = a46;
  v213 = a45;
  v204 = a44;
  v83 = a26;
  v84 = a27;
  v85 = a23;
  v219 = a22;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v86);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v88);
  v89 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_14();
  v91 = v90;
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v96 = OUTLINED_FUNCTION_114(v95);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v98);
  v99 = &_s10Foundation14DateComponentsVSgMR;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_114(v100);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_59_4();
  v191 = v91;
  v102 = *(v91 + 16);
  v216 = v83;
  (v102)(v71, v83, v89);
  v103 = OUTLINED_FUNCTION_49_19();
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v89);
  v214 = dateString(fromDateComponents:)(v71);
  v107 = v106;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of FlightSnippet.Leg?(v108, v109, v110);
  v194[10] = v84;
  v189 = v91 + 16;
  v188 = v102;
  (v102)(v71, v84, v89);
  v111 = v205;
  v112 = OUTLINED_FUNCTION_49_19();
  v192 = v89;
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v89);
  v212 = dateString(fromDateComponents:)(v71);
  v224 = v115;
  OUTLINED_FUNCTION_47_11();
  outlined destroy of FlightSnippet.Leg?(v116, v117, v118);
  v119 = 0;
  v120 = *(v205 + 16);
  v225 = *MEMORY[0x277CC27A0];
  v215[1] = *MEMORY[0x277CC28F0];
  v215[0] = *MEMORY[0x277CC2898];
  v210 = v85;
  OUTLINED_FUNCTION_44_6();
  v186 = v121;
  OUTLINED_FUNCTION_44_6();
  v187 = v122;
  v223 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_83_14();
  v185 = v124 - 2;
  v208 = v123;
LABEL_2:
  for (i = (v123 + 16 * v119); ; i += 2)
  {
    if (v120 == v119)
    {
      OUTLINED_FUNCTION_8_40();
      v225 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tm(v223, v166, v167, v168);
      OUTLINED_FUNCTION_261_2();
      OUTLINED_FUNCTION_50_9();
      outlined init with copy of ResourceBundle?(v169, v170, v171, v172);
      OUTLINED_FUNCTION_50_9();
      outlined init with copy of ResourceBundle?(v173, v174, v175, v176);
      v177 = OUTLINED_FUNCTION_226_1(&v193);
      (v188)(v177, v216, v192);
      OUTLINED_FUNCTION_48_12(v194);
      OUTLINED_FUNCTION_251_1();
      v188();
      v178 = OUTLINED_FUNCTION_264_3(v215);
      outlined init with copy of ResourceBundle?(v178, v190, v179, v180);
      OUTLINED_FUNCTION_143_10();
      OUTLINED_FUNCTION_265_3();
      OUTLINED_FUNCTION_266_2();
      OUTLINED_FUNCTION_258_3();
      OUTLINED_FUNCTION_124_14();
      OUTLINED_FUNCTION_213_0();
      OUTLINED_FUNCTION_133_11();
      OUTLINED_FUNCTION_117_12();
      OUTLINED_FUNCTION_192_8();
      OUTLINED_FUNCTION_274_2();
      OUTLINED_FUNCTION_165_5();
      OUTLINED_FUNCTION_136_11();
      OUTLINED_FUNCTION_221_5();
      OUTLINED_FUNCTION_275_1();
      OUTLINED_FUNCTION_224_4();
      OUTLINED_FUNCTION_222_4();
      OUTLINED_FUNCTION_273_2();
      OUTLINED_FUNCTION_225_5();
      OUTLINED_FUNCTION_184_6();
      OUTLINED_FUNCTION_183_6();
      OUTLINED_FUNCTION_198_5();
      OUTLINED_FUNCTION_129_12();
      OUTLINED_FUNCTION_127_14();
      OUTLINED_FUNCTION_125_10();
      OUTLINED_FUNCTION_131_8();
      OUTLINED_FUNCTION_128_10();
      OUTLINED_FUNCTION_130_11();
      OUTLINED_FUNCTION_120_9();
      OUTLINED_FUNCTION_126_13();
      OUTLINED_FUNCTION_134_10();
      OUTLINED_FUNCTION_112_15();
      FlightReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:flightNumber:flightCheckInUrl:flightBookingInfoUrl:flightCarrier:flightCarrierCode:flightDesignator:flightDepartureDateComponents:flightArrivalDateComponents:flightArrivalAirportAddress:flightDepartureAirportAddress:flightArrivalAirportCode:flightDepartureAirportCode:flightArrivalAirportCountry:flightDepartureAirportCountry:flightArrivalAirportLocality:flightDepartureAirportLocality:flightArrivalAirportName:flightDepartureAirportName:flightArrivalAirportRegion:flightDepartureAirportRegion:flightConfirmationNumber:flightPassengerNames:flightPassengerSeatNumbers:flightArrivalTerminal:flightDepartureTerminal:flightBookingProvider:flightBoardingTimeDate:flightDepartureGate:flightArrivalGate:flightDuration:flightCostCurrency:flightCostAmount:flightStatus:flightUpdateStatus:flightDepartureDateString:flightArrivalDateString:_resolvedFlightJSON();
      outlined destroy of FlightSnippet.Leg?(v189, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v181 = *(v191 + 8);
      v181(v120, v192);
      v181(v216, v192);
      outlined destroy of FlightSnippet.Leg?(v217, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      OUTLINED_FUNCTION_33_13();
      outlined destroy of FlightSnippet.Leg?(v182, v183, v184);
      OUTLINED_FUNCTION_148();
      return;
    }

    if (v119 >= *(v111 + 16))
    {
      break;
    }

    v126 = *i;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    v128 = v128 && v127 == v126;
    if (v128)
    {

LABEL_52:
      if (v107)
      {

        OUTLINED_FUNCTION_83_14();
        v211 = v148 + 2;
        v150 = v187;
        v151 = v214;
        v99 = v107;
        goto LABEL_76;
      }

      goto LABEL_53;
    }

    v129 = OUTLINED_FUNCTION_45_17();

    if (v129)
    {
      goto LABEL_52;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    if (v128 && v130 == v126)
    {

LABEL_55:
      if (v224)
      {
        OUTLINED_FUNCTION_83_14();
        v211 = v149;
        v99 = v224;

        v150 = v186;
        v151 = v212;
        goto LABEL_76;
      }

      goto LABEL_53;
    }

    OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_227_2();
    if (v129)
    {
      goto LABEL_55;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    if (v128 && v132 == v126)
    {

LABEL_74:
      v226 = 0;
      v227 = 0xE000000000000000;

      OUTLINED_FUNCTION_113_10();
      MEMORY[0x25F89F6C0]();

      OUTLINED_FUNCTION_113_10();
      MEMORY[0x25F89F6C0]();

      v151 = v226;
      v99 = v227;
      OUTLINED_FUNCTION_240_3();
      v211 = v152 & 0xFFFFFFFFFFFFLL | 0x754E000000000000;
      v150 = 0xEC0000007265626DLL;
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_227_2();
    if (v129)
    {
      goto LABEL_74;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    if (v128 && v134 == v126)
    {

LABEL_58:
      if (v222)
      {
        v99 = v222;

        OUTLINED_FUNCTION_83_14();
        v211 = v153 + 1;
        v150 = 0x800000025DBF7580;
        v154 = &a17;
LABEL_75:
        v151 = *(v154 - 32);
        goto LABEL_76;
      }

      goto LABEL_53;
    }

    OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_227_2();
    if (v129)
    {
      goto LABEL_58;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    if (v128 && v136 == v126)
    {

LABEL_61:
      if (v213)
      {
        v99 = v213;

        OUTLINED_FUNCTION_83_14();
        v211 = v159 + 1;
        v150 = 0x800000025DBF7500;
        v154 = &a14;
        goto LABEL_75;
      }

      goto LABEL_53;
    }

    OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_227_2();
    if (v129)
    {
      goto LABEL_61;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    if (v128 && v138 == v126)
    {

LABEL_64:
      if (v209)
      {
        v99 = v209;

        OUTLINED_FUNCTION_83_14();
        v211 = v160 + 3;
        v150 = 0x800000025DBF7520;
        v154 = &a12;
        goto LABEL_75;
      }

      goto LABEL_53;
    }

    OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_227_2();
    if (v129)
    {
      goto LABEL_64;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    if (v128 && v140 == v126)
    {

LABEL_82:
      OUTLINED_FUNCTION_117_12();
      v226 = v161;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      OUTLINED_FUNCTION_286_0();
      v151 = BidirectionalCollection<>.joined(separator:)();
      v99 = v162;

      OUTLINED_FUNCTION_83_14();
      v211 = v163 + 3;
      v150 = 0x800000025DBF75C0;
LABEL_76:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v223 = v164;
      }

      v156 = *(v223 + 16);
      v155 = *(v223 + 24);
      if (v156 >= v155 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v155);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v223 = v165;
      }

      ++v119;
      v157 = v223;
      *(v223 + 16) = v156 + 1;
      v158 = (v157 + 32 * v156);
      v158[4] = v211;
      v158[5] = v150;
      v158[6] = v151;
      v158[7] = v99;
      v123 = v208;
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_227_2();
    if (v129)
    {
      goto LABEL_82;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    if (v128 && v142 == v126)
    {

LABEL_67:
      if (v206)
      {
        OUTLINED_FUNCTION_119_5(&a16);

        v211 = v185;
        v150 = 0x800000025DBF75E0;
        v154 = &a10;
        goto LABEL_75;
      }

      goto LABEL_53;
    }

    OUTLINED_FUNCTION_45_17();
    OUTLINED_FUNCTION_227_2();
    if (v129)
    {
      goto LABEL_67;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_193_6();
    if (v128 && v144 == v126)
    {
    }

    else
    {
      OUTLINED_FUNCTION_45_17();
      OUTLINED_FUNCTION_227_2();
      if ((v129 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    OUTLINED_FUNCTION_124_14();
    if (v146)
    {
      OUTLINED_FUNCTION_83_14();
      v211 = v147;
      OUTLINED_FUNCTION_119_5(&a13);

      v150 = 0x800000025DBF7600;
      v154 = &a9;
      goto LABEL_75;
    }

LABEL_53:

    ++v119;
  }

  __break(1u);
}

void HotelReservation.init(item:answerAttributes:requireDates:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_194_6();
  a21 = v24;
  a22 = v25;
  v419 = v26;
  LODWORD(v414) = v27;
  v426 = v28;
  v30 = v29;
  v413 = v31;
  v415 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_14();
  v400 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v38 = OUTLINED_FUNCTION_114(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v43);
  v45 = &v365 - v44;
  v408 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_14();
  v407 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_28_2(v49 - v48);
  v50 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v409 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v55);
  v57 = &v365 - v56;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_46_14();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_216_0(v59);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7_4();
  v411 = v64;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_7_4();
  v416 = v66;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_7_4();
  v423 = v69;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_14_2();
  v424 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v74);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v75);
  v77 = &v365 - v76;
  v421 = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_14();
  v417 = v78;
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_36();
  v82 = v81 - v80;
  v412 = type metadata accessor for HotelReservation();
  OUTLINED_FUNCTION_14();
  v398 = v83;
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_14_2();
  v410 = v88;
  v418 = v30;
  v89 = [v30 attributeSet];
  v422 = v82;
  static TimeZone.current.getter();
  v425 = v89;
  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v89, &selRef_startDateTimeZone);
  v420 = v22;
  if (v90)
  {
    v82 = v90;
    TimeZone.init(identifier:)();

    v91 = OUTLINED_FUNCTION_202_5();
    v92 = v421;
    OUTLINED_FUNCTION_166(v91, v93, v421);
    if (v307)
    {
      outlined destroy of FlightSnippet.Leg?(v77, &_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
    }

    else
    {
      v82 = v417;
      v94 = v422;
      (*(v417 + 8))(v422, v92);
      v22 = v420;
      (*(v82 + 32))(v94, v77, v92);
    }
  }

  v95 = [v425 startDate];
  v96 = v95;
  if (v414)
  {
    if (v95)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v97 = [v425 endDate];
      if (v97)
      {
        v98 = v97;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        OUTLINED_FUNCTION_66_10();
        static Calendar.current.getter();
        Calendar.dateComponents(in:from:)();
        v99 = *(v407 + 8);
        OUTLINED_FUNCTION_251_1();
        v99();
        v100 = OUTLINED_FUNCTION_37_17();
        v101 = v415;
        __swift_storeEnumTagSinglePayload(v100, v102, v103, v415);
        static Calendar.current.getter();
        Calendar.dateComponents(in:from:)();
        (v99)(v98, v82);
        v22 = v420;
        v104 = *(v409 + 8);
        v104(v57, v50);
        v105 = OUTLINED_FUNCTION_121_0();
        (v104)(v105);
        v106 = v425;
        OUTLINED_FUNCTION_307();
        goto LABEL_35;
      }

      v122 = OUTLINED_FUNCTION_121_0();
      v123(v122);
    }

    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v124 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v124, static Logging.search);
    v125 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v126 = OUTLINED_FUNCTION_60_7();
    v128 = os_log_type_enabled(v126, v127);
    v129 = v425;
    if (v128)
    {
      v130 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v130);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v131, v132, v133, v134, v135, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    goto LABEL_53;
  }

  v107 = v409;
  if (v95)
  {
    OUTLINED_FUNCTION_104_10();
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v108 = v107 + 32;
    v109 = *(v107 + 32);
    v109(v23, &off_2799EF000, v50);
    v110 = OUTLINED_FUNCTION_37_17();
    __swift_storeEnumTagSinglePayload(v110, v111, v112, v50);
    v109(v45, v23, v50);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v50);
    v116 = v401;
  }

  else
  {
    v108 = 1;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v50);
    v120 = [v425 hotelCheckinDate];
    if (v120)
    {
      v121 = v120;
      OUTLINED_FUNCTION_104_10();
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v108 = 0;
    }

    v116 = v401;
    OUTLINED_FUNCTION_102_10();
    __swift_storeEnumTagSinglePayload(v136, v137, v138, v139);
    v140 = OUTLINED_FUNCTION_94();
    outlined init with take of Date?(v140, v141);
    OUTLINED_FUNCTION_166(v23, 1, v50);
    if (!v307)
    {
      outlined destroy of FlightSnippet.Leg?(v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v142 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_166(v142, v143, v50);
  if (v307)
  {
    outlined destroy of FlightSnippet.Leg?(v45, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v144 = OUTLINED_FUNCTION_94();
    v145(v144);
    OUTLINED_FUNCTION_66_10();
    static Calendar.current.getter();
    Calendar.dateComponents(in:from:)();
    OUTLINED_FUNCTION_192_8();
    v146 = OUTLINED_FUNCTION_295_0();
    v147(v146);
    v148 = OUTLINED_FUNCTION_34_5();
    v149(v148);
  }

  v106 = v425;
  v104 = v415;
  OUTLINED_FUNCTION_61_19();
  __swift_storeEnumTagSinglePayload(v150, v151, v152, v153);
  v154 = [v106 &selRef_eventEstimatedStartDate];
  if (v154)
  {
    v155 = v154;
    v156 = v104;
    v157 = v402;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v104 = (v107 + 32);
    v158 = *(v107 + 32);
    v159 = OUTLINED_FUNCTION_119_5(&a15);
    v158(v159, v157, v50);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v160, v161, v162, v50);
    v158(v116, v108, v50);
    v163 = OUTLINED_FUNCTION_49_19();
    __swift_storeEnumTagSinglePayload(v163, v164, v165, v50);
    OUTLINED_FUNCTION_307();
  }

  else
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v166, v167, v168, v50);
    v169 = [v106 hotelCheckoutDate];
    if (v169)
    {
      v170 = v169;
      v156 = v104;
      OUTLINED_FUNCTION_104_10();
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v108 = v104;
      OUTLINED_FUNCTION_307();
    }

    else
    {
      v156 = v104;
      OUTLINED_FUNCTION_307();
      OUTLINED_FUNCTION_206_4();
    }

    OUTLINED_FUNCTION_102_10();
    __swift_storeEnumTagSinglePayload(v171, v172, v173, v174);
    outlined init with take of Date?(v108, v116);
    v175 = v404;
    v176 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_166(v176, v177, v50);
    if (!v307)
    {
      outlined destroy of FlightSnippet.Leg?(v175, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v178 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_166(v178, v179, v50);
  if (v307)
  {
    outlined destroy of FlightSnippet.Leg?(v116, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v180 = v396;
    (*(v107 + 32))(v396, v116, v50);
    OUTLINED_FUNCTION_66_10();
    static Calendar.current.getter();
    Calendar.dateComponents(in:from:)();
    OUTLINED_FUNCTION_192_8();
    v181 = OUTLINED_FUNCTION_295_0();
    v182(v181);
    (*(v107 + 8))(v180, v50);
  }

  v101 = v156;
LABEL_35:
  OUTLINED_FUNCTION_160_6();
  __swift_storeEnumTagSinglePayload(v183, v184, v185, v186);
  if (one-time initialization token for search != -1)
  {
LABEL_123:
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v187 = type metadata accessor for Logger();
  v188 = __swift_project_value_buffer(v187, static Logging.search);
  OUTLINED_FUNCTION_33_13();
  outlined init with copy of ResourceBundle?(v189, v190, v191, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_251_4(v22, v423);
  v192 = Logger.logObject.getter();
  v193 = static os_log_type_t.debug.getter();
  v194 = OUTLINED_FUNCTION_77_5(v193);
  v409 = v188;
  if (v194)
  {
    OUTLINED_FUNCTION_90_1();
    LODWORD(v405) = &_s10Foundation14DateComponentsVSgMR;
    v414 = OUTLINED_FUNCTION_51_13();
    v427 = v414;
    LODWORD(_s10Foundation14DateComponentsVSgMR) = 136643075;
    OUTLINED_FUNCTION_113_10();
    outlined init with copy of ResourceBundle?(v195, v196, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v197 = v423;
    String.init<A>(describing:)();
    outlined destroy of FlightSnippet.Leg?(v104, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v198 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    unk_25DBD3C34 = v198;
    word_25DBD3C3C = 2085;
    outlined init with copy of ResourceBundle?(v197, v104, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    String.init<A>(describing:)();
    v106 = v425;
    outlined destroy of FlightSnippet.Leg?(v197, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v101 = v415;
    v199 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *algn_25DBD3C3E = v199;
    v22 = v420;
    _os_log_impl(&dword_25D85C000, v192, v405, "PreExtractedEvents.HotelReservation: created check-in: %{sensitive}s, check-out: %{sensitive}s", &_s10Foundation14DateComponentsVSgMR, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    OUTLINED_FUNCTION_47_11();
    outlined destroy of FlightSnippet.Leg?(v200, v201, v202);
    OUTLINED_FUNCTION_47_11();
    outlined destroy of FlightSnippet.Leg?(v203, v204, v205);
  }

  v206 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v106, &selRef_hotelReservationForName);
  if (v207)
  {
    v208 = v206;
    v209 = v207;
  }

  else
  {
    v208 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v106, &selRef_eventProvider);
    v209 = v210;
    if (v210)
    {
      v211 = Logger.logObject.getter();
      v212 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_77_5(v212))
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_100_3(&dword_25D85C000, v213, v214, "PreExtractedEvents.HotelReservation: hotelReservationForName is nil, using hotelProvider to populate hotelReservationForName");
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }
    }
  }

  v215 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v106, &selRef_uniqueIdentifier);
  if (!v216)
  {

    v227 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v228 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v228, v229))
    {
      v230 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v230);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v231, v232, v233, v234, v235, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_33_13();
    outlined destroy of FlightSnippet.Leg?(v236, v237, v238);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of FlightSnippet.Leg?(v239, v240, v241);
LABEL_53:
    (*(v417 + 8))(v422, v421);
    v242 = OUTLINED_FUNCTION_42_21();
    v245 = v412;
    goto LABEL_121;
  }

  v217 = v215;
  v218 = v216;
  v219 = (*(*v419 + 80))(35);
  v397 = v208;
  v394 = v217;
  v393 = v218;
  if (v219)
  {
    v220 = Logger.logObject.getter();
    v221 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_77_5(v221))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_100_3(&dword_25D85C000, v222, v223, "OmniSearch/includeEventUpdateStatus FF enabled. Including updateStatus.");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v224 = [v106 eventUpdateStatus];
    v225 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_43_14(v225, v226);
  }

  else
  {
    v389 = 0;
    v388 = 0;
  }

  v414 = v209;
  v390 = CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
  v246 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v106, &selRef_hotelReservationId);
  OUTLINED_FUNCTION_163_7(v246, v247, &v423);
  v248 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v106, &selRef_hotelUnderName);
  OUTLINED_FUNCTION_78_17(v248, v249);
  v250 = &_s10Foundation14DateComponentsVSgMR;
  OUTLINED_FUNCTION_251_4(v424, v416);
  v251 = v411;
  OUTLINED_FUNCTION_251_4(v22, v411);
  v252 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v106, &selRef_hotelModifyReservationUrl);
  OUTLINED_FUNCTION_77_15(v252, v253);
  v254 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v106, &selRef_hotelReservationForTelephone);
  v387 = v255;
  v396 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v106, &selRef_hotelReservationForAddress);
  v404 = v256;
  v386 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v106, &selRef_eventProvider);
  v385 = v257;
  outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v106, &selRef_eventCustomerNames);
  OUTLINED_FUNCTION_290_0();
  v384 = v258;
  outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v106, &selRef_eventRoomNumbers);
  OUTLINED_FUNCTION_290_0();
  v383 = v259;
  v260 = [v106 eventNumberOfRooms];
  if (v260)
  {

    v261 = [v106 eventNumberOfRooms];
    OUTLINED_FUNCTION_214_3();
    if (v262)
    {
      v263 = v262;
      v382 = [v262 integerValue];

      v381 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_210_3(&v405);
      v381 = v265;
    }
  }

  else
  {
    OUTLINED_FUNCTION_210_3(&v405);
    v381 = v264;
    OUTLINED_FUNCTION_214_3();
  }

  [v106 eventDuration];
  v267 = v266;
  v399 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v106, &selRef_eventTotalCost);
  v380 = v268;
  v379 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v106, &selRef_eventStatus);
  v378 = v269;
  v270 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v418);
  OUTLINED_FUNCTION_73_15(v270, v271);
  if (!v272)
  {
    __break(1u);
    return;
  }

  v374 = v267;
  v273 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v106, &selRef_mailMessageID);
  OUTLINED_FUNCTION_138_1(v273, v274);
  v275 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v106, &selRef_eventMessageIdentifier);
  OUTLINED_FUNCTION_185_5(v275, v276);
  v376 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v106, &selRef_eventSourceBundleIdentifier);
  v375 = v277;
  v373 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v106, &selRef_startDateTimeZone);
  v372 = v278;
  v405 = dateString(fromDateComponents:)(v416);
  v106 = v279;
  v402 = dateString(fromDateComponents:)(v251);
  v423 = v280;
  v281 = OUTLINED_FUNCTION_32_0();
  outlined init with copy of ResourceBundle?(v281, v282, v283, v284);
  v285 = OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_166(v285, v286, v101);
  v377 = v254;
  if (!v307)
  {
    v287 = *(v209 + 32);
    v287(v22, &_s10Foundation14DateComponentsVSgMR, v101);
    v250 = v395;
    outlined init with copy of ResourceBundle?(v251, v395, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v288 = OUTLINED_FUNCTION_93_6();
    OUTLINED_FUNCTION_166(v288, v289, v101);
    if (!v307)
    {
      v291 = v391;
      v287(v391, v250, v101);
      v292 = v406;
      static Calendar.current.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
      v293 = type metadata accessor for Calendar.Component();
      OUTLINED_FUNCTION_14();
      v295 = v294;
      v296 = (*(v294 + 80) + 32) & ~*(v294 + 80);
      v297 = swift_allocObject();
      *(v297 + 16) = xmmword_25DBC8180;
      (*(v295 + 104))(v297 + v296, *MEMORY[0x277CC9968], v293);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5();
      v298 = v392;
      Calendar.dateComponents(_:from:to:)();

      (*(v407 + 8))(v292, v408);
      v299 = DateComponents.day.getter();
      OUTLINED_FUNCTION_191_8(v299);
      *(v301 - 256) = v300;
      v302 = *(v209 + 8);
      v302(v298, v101);
      v302(v291, v101);
      v302(v22, v101);
      goto LABEL_66;
    }

    (*(v209 + 8))(v22, v101);
  }

  outlined destroy of FlightSnippet.Leg?(v250, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_210_3(&a19);
  LODWORD(v406) = v290;
LABEL_66:
  v303 = 0;
  v104 = v426[2];
  v408 = *MEMORY[0x277CC2940];
  v371 = *MEMORY[0x277CC2938];
  v415 = MEMORY[0x277D84F90];
  v366 = "flightDepartureTerminal";
  v369 = *MEMORY[0x277CC2950];
  v367 = "hotelReservationForTelephone";
  v368 = "hotelCheckoutDateString";
  v370 = "hotelCheckinDateString";
  OUTLINED_FUNCTION_188_7("hotelReservationId");
  v395 = v304;
LABEL_67:
  v22 = (v304 + 16 * v303);
  while (v104 != v303)
  {
    if (v303 >= v426[2])
    {
      __break(1u);
      goto LABEL_123;
    }

    v101 = *(v22 - 1);
    v305 = *v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_278_2();
    v307 = v307 && v306 == v305;
    if (v307)
    {

LABEL_97:
      if (v106)
      {
        OUTLINED_FUNCTION_146_7();
        OUTLINED_FUNCTION_190_8(v320 + 4);
        v101 = v106;
        v326 = v391;
        v327 = &a16;
        goto LABEL_112;
      }

      goto LABEL_98;
    }

    v308 = OUTLINED_FUNCTION_107_9();

    if (v308)
    {
      goto LABEL_97;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_278_2();
    if (v307 && v309 == v305)
    {

LABEL_100:
      if (v423)
      {
        OUTLINED_FUNCTION_146_7();
        OUTLINED_FUNCTION_190_8(v325 + 5);
        v101 = v423;
        v326 = v370;
        v327 = &a13;
LABEL_112:
        v321 = *(v327 - 32);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v415 = v330;
        }

        v323 = *(v415 + 16);
        v322 = *(v415 + 24);
        if (v323 >= v322 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v322);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v415 = v331;
        }

        ++v303;
        *(v415 + 16) = v323 + 1;
        OUTLINED_FUNCTION_301_0(v326 | 0x8000000000000000);
        *(v324 + 48) = v321;
        *(v324 + 56) = v101;
        v304 = v395;
        goto LABEL_67;
      }

      goto LABEL_98;
    }

    OUTLINED_FUNCTION_107_9();
    OUTLINED_FUNCTION_325();
    if (v308)
    {
      goto LABEL_100;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_278_2();
    if (v307 && v311 == v305)
    {

LABEL_103:
      if (v414)
      {
        OUTLINED_FUNCTION_146_7();
        OUTLINED_FUNCTION_190_8(v328 + 5);
        v101 = v414;
        v326 = v368;
        v327 = &v425;
        goto LABEL_112;
      }

      goto LABEL_98;
    }

    OUTLINED_FUNCTION_107_9();
    OUTLINED_FUNCTION_325();
    if (v308)
    {
      goto LABEL_103;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_278_2();
    if (v307 && v313 == v305)
    {

LABEL_106:
      OUTLINED_FUNCTION_124_14();
      if (v317)
      {
        OUTLINED_FUNCTION_146_7();
        OUTLINED_FUNCTION_190_8(v329 + 8);
        v101 = v404;
        v326 = v367;
        v327 = &v424;
        goto LABEL_112;
      }

      goto LABEL_98;
    }

    OUTLINED_FUNCTION_107_9();
    OUTLINED_FUNCTION_325();
    if (v308)
    {
      goto LABEL_106;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_278_2();
    if (v307 && v315 == v305)
    {
    }

    else
    {
      OUTLINED_FUNCTION_107_9();
      OUTLINED_FUNCTION_325();
      if ((v308 & 1) == 0)
      {
        goto LABEL_98;
      }
    }

    OUTLINED_FUNCTION_133_11();
    if (v318)
    {
      v101 = v401;
      OUTLINED_FUNCTION_146_7();
      OUTLINED_FUNCTION_190_8(v319);
      v326 = v366;
      v327 = &v423;
      goto LABEL_112;
    }

LABEL_98:

    v22 += 2;
    ++v303;
  }

  OUTLINED_FUNCTION_8_40();
  _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tm(v415, v332, v333, v334);
  OUTLINED_FUNCTION_261_2();
  OUTLINED_FUNCTION_251_4(v335, v336);
  OUTLINED_FUNCTION_252_0();
  OUTLINED_FUNCTION_251_4(v337, v338);
  OUTLINED_FUNCTION_143_10();
  OUTLINED_FUNCTION_192_8();
  OUTLINED_FUNCTION_117_12();
  OUTLINED_FUNCTION_136_11();
  OUTLINED_FUNCTION_221_5();
  OUTLINED_FUNCTION_275_1();
  OUTLINED_FUNCTION_224_4();
  OUTLINED_FUNCTION_222_4();
  OUTLINED_FUNCTION_273_2();
  OUTLINED_FUNCTION_149_9();
  OUTLINED_FUNCTION_183_6();
  OUTLINED_FUNCTION_129_12();
  OUTLINED_FUNCTION_127_14();
  OUTLINED_FUNCTION_125_10();
  OUTLINED_FUNCTION_131_8();
  OUTLINED_FUNCTION_128_10();
  OUTLINED_FUNCTION_124_14();
  OUTLINED_FUNCTION_197_7();
  OUTLINED_FUNCTION_157_5();
  OUTLINED_FUNCTION_141_6();
  OUTLINED_FUNCTION_120_9();
  OUTLINED_FUNCTION_126_13();
  OUTLINED_FUNCTION_151_6();
  OUTLINED_FUNCTION_156_6();
  OUTLINED_FUNCTION_158_6();
  OUTLINED_FUNCTION_133_11();
  OUTLINED_FUNCTION_118_9();
  OUTLINED_FUNCTION_112_15();
  OUTLINED_FUNCTION_137_5();
  OUTLINED_FUNCTION_140_9();
  OUTLINED_FUNCTION_139_9();
  OUTLINED_FUNCTION_180_5();
  OUTLINED_FUNCTION_192_7();
  HotelReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:hotelReservationId:hotelUnderName:hotelCheckinDateComponents:hotelCheckoutDateComponents:hotelReservationForName:hotelModifyReservationUrl:hotelReservationForTelephone:hotelReservationForAddress:hotelBookingProvider:hotelCustomerNames:hotelRoomNumbers:hotelNumberOfRooms:hotelDuration:hotelCost:hotelStatus:hotelUpdateStatus:hotelCheckinDateString:hotelCheckoutDateString:durationInDays:startDateTimeZone:)();
  OUTLINED_FUNCTION_47_11();
  outlined destroy of FlightSnippet.Leg?(v339, v340, v341);
  OUTLINED_FUNCTION_47_11();
  outlined destroy of FlightSnippet.Leg?(v342, v343, v344);
  v345 = v398;
  v346 = *(v398 + 16);
  v347 = v412;
  v346(v410, v106, v412);
  v348 = OUTLINED_FUNCTION_119_5(&v426);
  v346(v348, v106, v347);
  v349 = v409;
  v350 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v351 = OUTLINED_FUNCTION_60_7();
  if (os_log_type_enabled(v351, v352))
  {
    OUTLINED_FUNCTION_28_3();
    v353 = swift_slowAlloc();
    v426 = swift_slowAlloc();
    v427 = v426;
    *v353 = 136642819;
    v354 = OUTLINED_FUNCTION_226_1(&v421);
    v346(v354, &_s10Foundation14DateComponentsVSgMR, v347);
    v355 = String.init<A>(describing:)();
    v356 = *(v345 + 8);
    v356(&_s10Foundation14DateComponentsVSgMR, v347);
    OUTLINED_FUNCTION_64_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_291_0();

    *(v353 + 4) = v355;
    _os_log_impl(&dword_25D85C000, v350, v349, "PreExtractedEvents.HotelReservation: created: %{sensitive}s", v353, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v426);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    v356(v403, v347);
  }

  else
  {

    v357 = *(v345 + 8);
    v357(&_s10Foundation14DateComponentsVSgMR, v347);
    v358 = OUTLINED_FUNCTION_32_3();
    (v357)(v358);
  }

  OUTLINED_FUNCTION_33_13();
  outlined destroy of FlightSnippet.Leg?(v359, v360, v361);
  OUTLINED_FUNCTION_33_13();
  outlined destroy of FlightSnippet.Leg?(v362, v363, v364);
  (*(v417 + 8))(v422, v421);
  (*(v345 + 32))(v413, v410, v347);
  v242 = OUTLINED_FUNCTION_13_2();
  v245 = v347;
LABEL_121:
  __swift_storeEnumTagSinglePayload(v242, v243, v244, v245);
  OUTLINED_FUNCTION_101_9();
}

void HotelReservation.init(id:timeIsUnknown:hotelReservationId:hotelUnderName:hotelCheckinDateComponents:hotelCheckoutDateComponents:hotelReservationForName:hotelModifyReservationUrl:hotelReservationForTelephone:hotelReservationForAddress:hotelBookingProvider:hotelCustomerNames:hotelRoomNumbers:hotelNumberOfRooms:hotelDuration:hotelCost:hotelStatus:hotelUpdateStatus:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:startDateTimeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned __int8 a36, uint64_t a37, unsigned __int8 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  OUTLINED_FUNCTION_155();
  a20 = v59;
  a21 = v60;
  v62 = v61;
  v188 = v63;
  v189 = v64;
  v202 = v65;
  v199 = v66;
  v190 = v67;
  v191 = v68;
  v197 = a49;
  v195 = v69;
  v196 = a48;
  v193 = v70;
  v194 = a47;
  v192 = a46;
  v71 = a45;
  v72 = a22;
  type metadata accessor for Calendar();
  OUTLINED_FUNCTION_14();
  v207 = v74;
  v208 = v73;
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_36();
  v210 = v76 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v78 = OUTLINED_FUNCTION_114(v77);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_36_21();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_216_3();
  v82 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_14();
  v84 = v83;
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_39_0();
  v206 = v86;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_7_4();
  v204 = v88;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v89);
  v91 = &v158 - v90;
  v205 = dateString(fromDateComponents:)(v62);
  v211 = v92;
  v203 = dateString(fromDateComponents:)(v72);
  v209 = v93;
  v198 = v62;
  outlined init with copy of ResourceBundle?(v62, v58, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_105_3(v58);
  if (v96)
  {
    outlined destroy of FlightSnippet.Leg?(v58, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_210_3(&a13);
    v186 = v94;
  }

  else
  {
    v95 = *(v84 + 32);
    v95(v91, v58, v82);
    outlined init with copy of ResourceBundle?(v72, v57, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_105_3(v57);
    if (v96)
    {
      (*(v84 + 8))(v91, v82);
      outlined destroy of FlightSnippet.Leg?(v57, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      OUTLINED_FUNCTION_210_3(&a13);
      v186 = v97;
    }

    else
    {
      v95(v204, v57, v82);
      static Calendar.current.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
      v98 = type metadata accessor for Calendar.Component();
      OUTLINED_FUNCTION_14();
      v100 = v99;
      v101 = (*(v99 + 80) + 32) & ~*(v99 + 80);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_25DBC8180;
      (*(v100 + 104))(v102 + v101, *MEMORY[0x277CC9968], v98);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5();
      v103 = v206;
      v104 = v210;
      Calendar.dateComponents(_:from:to:)();

      (*(v207 + 8))(v104, v208);
      v187 = DateComponents.day.getter();
      v186 = v105;
      v106 = *(v84 + 8);
      v106(v103, v82);
      v107 = OUTLINED_FUNCTION_65_15();
      (v106)(v107);
      v106(v91, v82);
    }
  }

  v108 = 0;
  v179 = a57;
  OUTLINED_FUNCTION_288_0(a56);
  v185 = a55;
  v184 = a54;
  v183 = a53;
  v182 = a52;
  v181 = a51;
  v180 = a50;
  v178 = a44;
  OUTLINED_FUNCTION_253_3(a43);
  OUTLINED_FUNCTION_205_5(a42);
  OUTLINED_FUNCTION_230_3(a41);
  OUTLINED_FUNCTION_259_4(a40);
  v177 = a39;
  v174 = a38;
  v176 = a37;
  v173 = a36;
  OUTLINED_FUNCTION_190_8(a35);
  OUTLINED_FUNCTION_188_7(a34);
  v175 = a33;
  v210 = *MEMORY[0x277CC27A0];
  v206 = *MEMORY[0x277CC2940];
  v164 = *MEMORY[0x277CC2938];
  v162 = *MEMORY[0x277CC2950];
  v159 = "flightDepartureTerminal";
  v160 = "hotelReservationForTelephone";
  v161 = "hotelCheckoutDateString";
  OUTLINED_FUNCTION_204_7("hotelCheckinDateString");
  v165 = "hotelReservationId";
  v172 = a32;
  v171 = a31;
  v204 = a30;
  v200 = a29;
  v170 = a28;
  v169 = a27;
  v168 = a26;
  v167 = a25;
  v207 = a24;
  v201 = a23;
  v109 = *(v71 + 16);
  v110 = v71 + 40;
  v208 = MEMORY[0x277D84F90];
  v166 = v71 + 40;
LABEL_8:
  for (i = (v110 + 16 * v108); ; i += 2)
  {
    if (v109 == v108)
    {
      OUTLINED_FUNCTION_8_40();
      _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tm(v208, v141, v142, v143);
      OUTLINED_FUNCTION_261_2();
      OUTLINED_FUNCTION_50_9();
      outlined init with copy of ResourceBundle?(v144, v145, v146, v147);
      OUTLINED_FUNCTION_252_0();
      OUTLINED_FUNCTION_50_9();
      outlined init with copy of ResourceBundle?(v148, v149, v150, v151);
      OUTLINED_FUNCTION_143_10();
      OUTLINED_FUNCTION_129_12();
      OUTLINED_FUNCTION_111_8();
      OUTLINED_FUNCTION_131_8();
      OUTLINED_FUNCTION_128_10();
      OUTLINED_FUNCTION_157_5();
      OUTLINED_FUNCTION_141_6();
      OUTLINED_FUNCTION_120_9();
      OUTLINED_FUNCTION_126_13();
      OUTLINED_FUNCTION_156_6();
      OUTLINED_FUNCTION_158_6();
      OUTLINED_FUNCTION_112_15();
      OUTLINED_FUNCTION_117_12();
      OUTLINED_FUNCTION_133_11();
      OUTLINED_FUNCTION_137_5();
      OUTLINED_FUNCTION_140_9();
      OUTLINED_FUNCTION_139_9();
      OUTLINED_FUNCTION_180_5();
      HotelReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:hotelReservationId:hotelUnderName:hotelCheckinDateComponents:hotelCheckoutDateComponents:hotelReservationForName:hotelModifyReservationUrl:hotelReservationForTelephone:hotelReservationForAddress:hotelBookingProvider:hotelCustomerNames:hotelRoomNumbers:hotelNumberOfRooms:hotelDuration:hotelCost:hotelStatus:hotelUpdateStatus:hotelCheckinDateString:hotelCheckoutDateString:durationInDays:startDateTimeZone:)();
      OUTLINED_FUNCTION_33_13();
      outlined destroy of FlightSnippet.Leg?(v152, v153, v154);
      OUTLINED_FUNCTION_33_13();
      outlined destroy of FlightSnippet.Leg?(v155, v156, v157);
      OUTLINED_FUNCTION_148();
      return;
    }

    if (v108 >= *(v71 + 16))
    {
      break;
    }

    v112 = *i;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_270_2();
    if (v96)
    {
      v114 = v113 == v112;
    }

    else
    {
      v114 = 0;
    }

    if (v114)
    {

LABEL_38:
      if (v211)
      {
        OUTLINED_FUNCTION_146_7();
        OUTLINED_FUNCTION_226_3(v129 + 4);
        v134 = v211;
        v135 = v165;
        v136 = v205;
        goto LABEL_53;
      }

      goto LABEL_39;
    }

    OUTLINED_FUNCTION_69_15();
    v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v115)
    {
      goto LABEL_38;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_270_2();
    if (v96)
    {
      v117 = v116 == v112;
    }

    else
    {
      v117 = 0;
    }

    if (v117)
    {

LABEL_41:
      if (v209)
      {
        OUTLINED_FUNCTION_146_7();
        OUTLINED_FUNCTION_226_3(v133 + 5);
        v134 = v209;
        v135 = v163;
        v136 = v203;
LABEL_53:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v208 = v139;
        }

        v131 = *(v208 + 16);
        v130 = *(v208 + 24);
        if (v131 >= v130 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v130);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v208 = v140;
        }

        ++v108;
        *(v208 + 16) = v131 + 1;
        OUTLINED_FUNCTION_301_0(v135 | 0x8000000000000000);
        *(v132 + 48) = v136;
        *(v132 + 56) = v134;
        v110 = v166;
        goto LABEL_8;
      }

      goto LABEL_39;
    }

    OUTLINED_FUNCTION_69_15();
    v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v118)
    {
      goto LABEL_41;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_270_2();
    if (v96)
    {
      v120 = v119 == v112;
    }

    else
    {
      v120 = 0;
    }

    if (v120)
    {

LABEL_44:
      if (v207)
      {
        OUTLINED_FUNCTION_146_7();
        OUTLINED_FUNCTION_226_3(v137 + 5);
        v134 = v207;
        v135 = v161;
        v136 = v201;
        goto LABEL_53;
      }

      goto LABEL_39;
    }

    OUTLINED_FUNCTION_69_15();
    v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v121)
    {
      goto LABEL_44;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_270_2();
    if (v96)
    {
      v123 = v122 == v112;
    }

    else
    {
      v123 = 0;
    }

    if (v123)
    {

LABEL_47:
      if (v204)
      {
        OUTLINED_FUNCTION_146_7();
        OUTLINED_FUNCTION_226_3(v138 + 8);
        v134 = v204;
        v135 = v160;
        v136 = v200;
        goto LABEL_53;
      }

      goto LABEL_39;
    }

    OUTLINED_FUNCTION_69_15();
    v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v124)
    {
      goto LABEL_47;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_270_2();
    if (v96)
    {
      v126 = v125 == v112;
    }

    else
    {
      v126 = 0;
    }

    if (v126)
    {
    }

    else
    {
      OUTLINED_FUNCTION_69_15();
      v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v127 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    if (v202)
    {
      v134 = v202;
      OUTLINED_FUNCTION_146_7();
      OUTLINED_FUNCTION_226_3(v128);
      v135 = v159;
      v136 = v199;
      goto LABEL_53;
    }

LABEL_39:

    ++v108;
  }

  __break(1u);
}

uint64_t (*protocol witness for InstantAnswerDocument.eventSourceBundleIdentifier.modify in conformance HotelReservation(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = HotelReservation.eventSourceBundleIdentifier.modify();
  return protocol witness for InstantAnswerDocument.eventSourceBundleIdentifier.modify in conformance HotelReservation;
}

uint64_t (*protocol witness for InstantAnswerDocument.eventSourceLLMConsumableDescription.modify in conformance HotelReservation(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = HotelReservation.eventSourceLLMConsumableDescription.modify();
  return protocol witness for InstantAnswerDocument.eventSourceLLMConsumableDescription.modify in conformance FlightReservation;
}

void RestaurantReservation.init(item:answerAttributes:requireDates:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_155();
  a20 = v23;
  a21 = v24;
  v283 = v25;
  LODWORD(v287) = v26;
  v288 = v27;
  v29 = v28;
  v277 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v32 = OUTLINED_FUNCTION_114(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_216_3();
  v274 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_14();
  v271 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_36();
  v270 = v38 - v37;
  OUTLINED_FUNCTION_78_0();
  v39 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_109();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v47);
  v49 = &v249 - v48;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_39_0();
  v278 = v51;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_4();
  v275 = v53;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7_4();
  v280 = v55;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_14_2();
  v284 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v58);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v59);
  v61 = &v249 - v60;
  v62 = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_14();
  v279 = v63;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_36();
  v67 = v66 - v65;
  v276 = type metadata accessor for RestaurantReservation();
  OUTLINED_FUNCTION_14();
  v269 = v68;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_7_4();
  v272 = v72;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_14_2();
  v273 = v74;
  v282 = v29;
  v75 = [v29 attributeSet];
  v285 = v67;
  static TimeZone.current.getter();
  v286 = v75;
  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v75, &selRef_startDateTimeZone);
  if (v76)
  {
    TimeZone.init(identifier:)();

    OUTLINED_FUNCTION_166(v61, 1, v62);
    if (v204)
    {
      outlined destroy of FlightSnippet.Leg?(v61, &_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
    }

    else
    {
      v77 = v279;
      v67 = v285;
      (*(v279 + 8))(v285, v62);
      (*(v77 + 32))(v67, v61, v62);
    }
  }

  v281 = v62;
  v78 = [v286 startDate];
  v79 = v78;
  if (v287)
  {
    if (!v78)
    {

      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v90, static Logging.search);
      v91 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v92 = OUTLINED_FUNCTION_60_7();
      v94 = os_log_type_enabled(v92, v93);
      v95 = v276;
      v96 = v281;
      v97 = v286;
      if (v94)
      {
        v98 = OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_81_4(v98);
        OUTLINED_FUNCTION_110_4();
        _os_log_impl(v99, v100, v101, v102, v103, 2u);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      goto LABEL_35;
    }

    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    static Calendar.current.getter();
    v80 = v284;
    Calendar.dateComponents(in:from:)();
    v81 = OUTLINED_FUNCTION_303_0();
    v82(v81);
    (*(v41 + 8))(v49, v39);
  }

  else
  {
    if (v78)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v83 = *(v41 + 32);
      v83(v22, v45, v39);
      v84 = OUTLINED_FUNCTION_37_17();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v39);
      v83(v21, v22, v39);
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v87, v88, v89, v39);
      v80 = v284;
    }

    else
    {
      v45 = 1;
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v104, v105, v106, v39);
      v107 = [v286 restaurantStartDate];
      if (v107)
      {
        v108 = v107;
        OUTLINED_FUNCTION_66_10();
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v45 = 0;
        v80 = v284;
      }

      else
      {
        v80 = v284;
        v67 = v265;
      }

      OUTLINED_FUNCTION_61_19();
      __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
      outlined init with take of Date?(v67, v21);
      OUTLINED_FUNCTION_166(v22, 1, v39);
      if (!v204)
      {
        outlined destroy of FlightSnippet.Leg?(v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    v113 = OUTLINED_FUNCTION_202_5();
    OUTLINED_FUNCTION_166(v113, v114, v39);
    if (v204)
    {
      outlined destroy of FlightSnippet.Leg?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v45 = v266;
      (*(v41 + 32))(v266, v21, v39);
      static Calendar.current.getter();
      Calendar.dateComponents(in:from:)();
      v115 = OUTLINED_FUNCTION_303_0();
      v116(v115);
      (*(v41 + 8))(v45, v39);
    }
  }

  type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_219_4();
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
  v121 = v280;
  if (one-time initialization token for search != -1)
  {
LABEL_90:
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v122 = type metadata accessor for Logger();
  v123 = __swift_project_value_buffer(v122, static Logging.search);
  outlined init with copy of ResourceBundle?(v80, v121, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v124 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v125 = OUTLINED_FUNCTION_60_7();
  v127 = os_log_type_enabled(v125, v126);
  v96 = v281;
  if (v127)
  {
    OUTLINED_FUNCTION_28_3();
    swift_slowAlloc();
    v128 = OUTLINED_FUNCTION_10_23();
    v289 = v128;
    *v45 = 136315138;
    outlined init with copy of ResourceBundle?(v121, v275, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    String.init<A>(describing:)();
    outlined destroy of FlightSnippet.Leg?(v121, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v45 + 4) = v129;
    OUTLINED_FUNCTION_110_4();
    _os_log_impl(v130, v131, v132, v133, v134, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v128);
    v80 = v284;
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    outlined destroy of FlightSnippet.Leg?(v121, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  }

  v135 = v286;
  v121 = v288;
  v136 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v286, &selRef_uniqueIdentifier);
  if (!v137)
  {

    v153 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v154 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v156);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v157, v158, v159, v160, v161, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    outlined destroy of FlightSnippet.Leg?(v80, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v95 = v276;
LABEL_35:
    (*(v279 + 8))(v285, v96);
    OUTLINED_FUNCTION_92();
    v165 = v95;
    goto LABEL_88;
  }

  v261 = v137;
  v262 = v136;
  v138 = (*(*v283 + 80))(35);
  v263 = v123;
  if (v138)
  {
    v139 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v140 = OUTLINED_FUNCTION_60_7();
    v142 = os_log_type_enabled(v140, v141);
    v143 = v278;
    if (v142)
    {
      v144 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v144);
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v145, v146, v147, v148, v149, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v150 = [v135 eventUpdateStatus];
    v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_74_19(v151, v152);
  }

  else
  {
    v259 = 0;
    v258 = 0;
    v143 = v278;
  }

  v260 = CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
  v264 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v135, &selRef_restaurantReservationId);
  v268 = v166;
  v167 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v135, &selRef_restaurantUnderName);
  OUTLINED_FUNCTION_294_0(v167, v168);
  v169 = OUTLINED_FUNCTION_65_15();
  outlined init with copy of ResourceBundle?(v169, v170, v171, v172);
  v173 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v135, &selRef_restaurantPartySize);
  OUTLINED_FUNCTION_39_21(v173, v174);
  v266 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v135, &selRef_eventStartLocationName);
  v287 = v175;
  v257 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v135, &selRef_eventStartLocationTelephone);
  v256 = v176;
  v265 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v135, &selRef_eventStartLocationAddress);
  v274 = v177;
  v178 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v135, &selRef_eventProvider);
  OUTLINED_FUNCTION_76_14(v178, v179);
  v180 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v135, &selRef_eventCustomerNames);
  v181 = MEMORY[0x277D84F90];
  if (v180)
  {
    v181 = v180;
  }

  OUTLINED_FUNCTION_190_8(v181);
  v182 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v135, &selRef_restaurantMealType);
  OUTLINED_FUNCTION_162_8(v182, v183, &v277);
  v184 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v135, &selRef_eventStatus);
  OUTLINED_FUNCTION_78_17(v184, v185);
  v186 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v282);
  OUTLINED_FUNCTION_156_1(v186);
  v255 = v187;
  if (!v187)
  {
    __break(1u);
    return;
  }

  v188 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v135, &selRef_mailMessageID);
  OUTLINED_FUNCTION_43_14(v188, v189);
  v190 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v135, &selRef_eventMessageIdentifier);
  OUTLINED_FUNCTION_77_15(v190, v191);
  v192 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v135, &selRef_eventSourceBundleIdentifier);
  OUTLINED_FUNCTION_71_17(v192, v193);
  v194 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v135, &selRef_startDateTimeZone);
  OUTLINED_FUNCTION_187_6(v194, v195);
  v270 = dateString(fromDateComponents:)(v143);
  v197 = v196;
  v198 = 0;
  v199 = v121[2];
  v288 = *MEMORY[0x277CC29C8];
  v271 = *MEMORY[0x277CC29C0];
  v200 = v121 + 5;
  v280 = MEMORY[0x277D84F90];
  v252 = *MEMORY[0x277CC29D8];
  v249 = "hotelReservationForAddress";
  v250 = "ationForTelephone";
  v251 = "restaurantPartySize";
  v253 = "restaurantUnderName";
  v254 = v121 + 5;
LABEL_41:
  v201 = &v200[2 * v198];
  while (v199 != v198)
  {
    if (v198 >= v121[2])
    {
      __break(1u);
      goto LABEL_90;
    }

    v202 = *v201;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_318();
    v204 = v204 && v203 == v202;
    if (v204)
    {

LABEL_66:
      if (v197)
      {
        OUTLINED_FUNCTION_83_14();
        OUTLINED_FUNCTION_204_7(v213 + 2);
        v215 = v197;
        v216 = v253;
        v80 = v270;
        goto LABEL_79;
      }

      goto LABEL_67;
    }

    v80 = OUTLINED_FUNCTION_145_6();

    if (v80)
    {
      goto LABEL_66;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_318();
    if (v204 && v205 == v202)
    {

LABEL_69:
      if (v287)
      {
        OUTLINED_FUNCTION_83_14();
        OUTLINED_FUNCTION_204_7(v214 + 5);
        v215 = v287;
        v216 = v251;
        v217 = &a16;
        goto LABEL_78;
      }

      goto LABEL_67;
    }

    v80 = OUTLINED_FUNCTION_145_6();

    if (v80)
    {
      goto LABEL_69;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_318();
    if (v204 && v207 == v202)
    {

LABEL_72:
      if (v274)
      {
        OUTLINED_FUNCTION_83_14();
        OUTLINED_FUNCTION_204_7(v218 + 8);
        v215 = v274;
        v216 = v250;
        v217 = &a15;
        goto LABEL_78;
      }

      goto LABEL_67;
    }

    v80 = OUTLINED_FUNCTION_145_6();

    if (v80)
    {
      goto LABEL_72;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_318();
    if (v204 && v209 == v202)
    {
    }

    else
    {
      v80 = OUTLINED_FUNCTION_145_6();

      if ((v80 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    OUTLINED_FUNCTION_192_8();
    if (v211)
    {
      v215 = v268;
      OUTLINED_FUNCTION_83_14();
      OUTLINED_FUNCTION_204_7(v212);
      v216 = v249;
      v217 = &a14;
LABEL_78:
      v80 = *(v217 - 32);
LABEL_79:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v280 = v221;
      }

      v45 = v280[2];
      v219 = v280[3];
      if (v45 >= v219 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v219);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v280 = v222;
      }

      ++v198;
      v280[2] = v45 + 1;
      OUTLINED_FUNCTION_301_0(v216 | 0x8000000000000000);
      *(v220 + 48) = v80;
      *(v220 + 56) = v215;
      v200 = v254;
      goto LABEL_41;
    }

LABEL_67:

    v201 += 2;
    ++v198;
  }

  OUTLINED_FUNCTION_8_40();
  v226 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tm(v280, v223, v224, v225);
  OUTLINED_FUNCTION_251_4(v278, v275);
  OUTLINED_FUNCTION_224_4();
  OUTLINED_FUNCTION_149_9();
  OUTLINED_FUNCTION_148_9();
  OUTLINED_FUNCTION_198_5();
  OUTLINED_FUNCTION_129_12();
  OUTLINED_FUNCTION_127_14();
  OUTLINED_FUNCTION_125_10();
  OUTLINED_FUNCTION_131_8();
  OUTLINED_FUNCTION_128_10();
  OUTLINED_FUNCTION_130_11();
  OUTLINED_FUNCTION_136_11();
  OUTLINED_FUNCTION_118_9();
  OUTLINED_FUNCTION_120_9();
  OUTLINED_FUNCTION_63_18();
  OUTLINED_FUNCTION_151_6();
  OUTLINED_FUNCTION_134_10();
  OUTLINED_FUNCTION_156_6();
  OUTLINED_FUNCTION_158_6();
  OUTLINED_FUNCTION_192_8();
  OUTLINED_FUNCTION_124_14();
  OUTLINED_FUNCTION_112_15();
  OUTLINED_FUNCTION_137_5();
  OUTLINED_FUNCTION_140_9();
  OUTLINED_FUNCTION_139_9();
  OUTLINED_FUNCTION_180_5();
  v227 = v272;
  RestaurantReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:restaurantReservationId:restaurantUnderName:restaurantStartDateComponents:restaurantPartySize:restaurantReservationForName:restaurantReservationForTelephone:restaurantReservationForAddress:restaurantBookingProvider:restaurantCustomerNames:restaurantMealType:restaurantStatus:restaurantUpdateStatus:restaurantStartDateString:startDateTimeZone:)();
  OUTLINED_FUNCTION_47_11();
  outlined destroy of FlightSnippet.Leg?(v228, v229, v230);
  v231 = v269;
  v232 = *(v269 + 16);
  v233 = v273;
  v234 = v276;
  v232(v273, v227, v276);
  v235 = OUTLINED_FUNCTION_226_1(&a19);
  v232(v235, v227, v234);
  v236 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v237 = OUTLINED_FUNCTION_60_7();
  if (os_log_type_enabled(v237, v238))
  {
    OUTLINED_FUNCTION_28_3();
    swift_slowAlloc();
    v288 = OUTLINED_FUNCTION_10_23();
    v289 = v288;
    *v233 = 136642819;
    v232(v267, v226, v234);
    OUTLINED_FUNCTION_32_3();
    v239 = String.init<A>(describing:)();
    v240 = *(v231 + 8);
    v240(v226, v234);
    OUTLINED_FUNCTION_64_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_291_0();

    *(v233 + 4) = v239;
    OUTLINED_FUNCTION_110_4();
    _os_log_impl(v241, v242, v243, v244, v245, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v288);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    v240(v272, v234);
  }

  else
  {

    v246 = *(v231 + 8);
    v246(v226, v234);
    v246(v227, v234);
  }

  outlined destroy of FlightSnippet.Leg?(v284, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  (*(v279 + 8))(v285, v281);
  v247 = OUTLINED_FUNCTION_32_0();
  v248(v247);
  v162 = OUTLINED_FUNCTION_13_2();
  v165 = v234;
LABEL_88:
  __swift_storeEnumTagSinglePayload(v162, v163, v164, v165);
  OUTLINED_FUNCTION_148();
}

void RestaurantReservation.init(id:timeIsUnknown:restaurantReservationId:restaurantUnderName:restaurantStartDateComponents:restaurantPartySize:restaurantReservationForName:restaurantReservationForTelephone:restaurantReservationForAddress:restaurantBookingProvider:restaurantCustomerNames:restaurantMealType:restaurantStatus:restaurantUpdateStatus:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:startDateTimeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_155();
  v43 = v42;
  v86 = v44;
  v85 = v45;
  OUTLINED_FUNCTION_288_0(a31);
  OUTLINED_FUNCTION_253_3(a29);
  OUTLINED_FUNCTION_205_5(a26);
  OUTLINED_FUNCTION_230_3(a25);
  OUTLINED_FUNCTION_259_4(a21);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_114(v46);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v48);
  v87 = dateString(fromDateComponents:)(v43);
  v50 = v49;
  v51 = 0;
  v52 = *(a38 + 16);
  v53 = a38 + 40;
  v88 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = (v53 + 16 * v51); ; i += 2)
  {
    if (v52 == v51)
    {
      OUTLINED_FUNCTION_8_40();
      _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tm(v88, v77, v78, v79);
      OUTLINED_FUNCTION_107_8();
      OUTLINED_FUNCTION_251_4(v80, v81);
      OUTLINED_FUNCTION_165_5();
      OUTLINED_FUNCTION_117_12();
      OUTLINED_FUNCTION_133_11();
      OUTLINED_FUNCTION_213_0();
      OUTLINED_FUNCTION_148_9();
      OUTLINED_FUNCTION_129_12();
      OUTLINED_FUNCTION_127_14();
      OUTLINED_FUNCTION_125_10();
      OUTLINED_FUNCTION_131_8();
      OUTLINED_FUNCTION_128_10();
      OUTLINED_FUNCTION_130_11();
      OUTLINED_FUNCTION_118_9();
      OUTLINED_FUNCTION_120_9();
      OUTLINED_FUNCTION_182_8();
      OUTLINED_FUNCTION_150_6();
      OUTLINED_FUNCTION_137_5();
      OUTLINED_FUNCTION_140_9();
      OUTLINED_FUNCTION_63_18();
      OUTLINED_FUNCTION_136_11();
      OUTLINED_FUNCTION_241_4();
      RestaurantReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:restaurantReservationId:restaurantUnderName:restaurantStartDateComponents:restaurantPartySize:restaurantReservationForName:restaurantReservationForTelephone:restaurantReservationForAddress:restaurantBookingProvider:restaurantCustomerNames:restaurantMealType:restaurantStatus:restaurantUpdateStatus:restaurantStartDateString:startDateTimeZone:)();
      OUTLINED_FUNCTION_47_11();
      outlined destroy of FlightSnippet.Leg?(v82, v83, v84);
      OUTLINED_FUNCTION_148();
      return;
    }

    if (v51 >= *(a38 + 16))
    {
      break;
    }

    v55 = *i;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_305_0();
    v57 = v57 && v56 == v55;
    if (v57)
    {

LABEL_27:
      if (v50)
      {
        OUTLINED_FUNCTION_83_14();
        OUTLINED_FUNCTION_188_7(v66 + 2);
        v71 = v50;
        v72 = "restaurantUnderName";
        v73 = v87;
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    v58 = OUTLINED_FUNCTION_154_3();

    if (v58)
    {
      goto LABEL_27;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_305_0();
    if (v57 && v59 == v55)
    {

LABEL_30:
      if (a24)
      {
        OUTLINED_FUNCTION_83_14();
        OUTLINED_FUNCTION_188_7(v70 + 5);
        v71 = a24;
        v72 = "restaurantPartySize";
        v73 = a23;
LABEL_39:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v88 = v75;
        }

        v68 = *(v88 + 16);
        v67 = *(v88 + 24);
        if (v68 >= v67 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v67);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v88 = v76;
        }

        ++v51;
        *(v88 + 16) = v68 + 1;
        OUTLINED_FUNCTION_301_0(v72 | 0x8000000000000000);
        *(v69 + 48) = v73;
        *(v69 + 56) = v71;
        v53 = a38 + 40;
        goto LABEL_2;
      }

      goto LABEL_28;
    }

    OUTLINED_FUNCTION_154_3();
    OUTLINED_FUNCTION_250_2();
    if (v58)
    {
      goto LABEL_30;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_305_0();
    if (v57 && v61 == v55)
    {

LABEL_33:
      if (a28)
      {
        OUTLINED_FUNCTION_83_14();
        OUTLINED_FUNCTION_188_7(v74 + 8);
        v71 = a28;
        v72 = "ationForTelephone";
        v73 = a27;
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    OUTLINED_FUNCTION_154_3();
    OUTLINED_FUNCTION_250_2();
    if (v58)
    {
      goto LABEL_33;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_305_0();
    if (v57 && v63 == v55)
    {
    }

    else
    {
      OUTLINED_FUNCTION_154_3();
      OUTLINED_FUNCTION_250_2();
      if ((v58 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if (v86)
    {
      v71 = v86;
      OUTLINED_FUNCTION_83_14();
      OUTLINED_FUNCTION_188_7(v65);
      v72 = "hotelReservationForAddress";
      v73 = v85;
      goto LABEL_39;
    }

LABEL_28:

    ++v51;
  }

  __break(1u);
}

uint64_t (*protocol witness for InstantAnswerDocument.eventSourceBundleIdentifier.modify in conformance RestaurantReservation(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = RestaurantReservation.eventSourceBundleIdentifier.modify();
  return protocol witness for InstantAnswerDocument.eventSourceLLMConsumableDescription.modify in conformance FlightReservation;
}

uint64_t (*protocol witness for InstantAnswerDocument.eventSourceLLMConsumableDescription.modify in conformance RestaurantReservation(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = RestaurantReservation.eventSourceLLMConsumableDescription.modify();
  return protocol witness for InstantAnswerDocument.eventSourceLLMConsumableDescription.modify in conformance FlightReservation;
}

void protocol witness for InstantAnswerDocument.eventSourceBundleIdentifier.modify in conformance FlightReservation(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void ShippingOrder.init(item:checkEventType:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v7);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_49_3();
  v170 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39_0();
  v162 = v12;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_4();
  v168 = v14;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_4();
  v167 = v16;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_4();
  v166 = v18;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_2();
  v169 = v20;
  OUTLINED_FUNCTION_78_0();
  v171 = type metadata accessor for ShippingOrder();
  OUTLINED_FUNCTION_14();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_109();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_4();
  v163 = v28;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v29);
  v31 = v147 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_123_8();
  v33 = [v4 attributeSet];
  v34 = v33;
  if ((v2 & 1) != 0 && (v35 = [v33 eventType], v36 = objc_msgSend(v35, sel_containsString_, *MEMORY[0x277CC22B8]), v35, (v36 & 1) == 0))
  {

    OUTLINED_FUNCTION_42_21();
    OUTLINED_FUNCTION_148();

    __swift_storeEnumTagSinglePayload(v142, v143, v144, v145);
  }

  else
  {
    v37 = [v4 uniqueIdentifier];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v157 = v39;
    v158 = v38;

    v40 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventGroupIdentifier);
    v155 = v41;
    v156 = v40;
    v42 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventFallbackGroupIdentifier);
    v153 = v43;
    v154 = v42;
    v44 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventMessageIdentifier);
    OUTLINED_FUNCTION_82_15(v44, v45);
    v46 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventMegadomeIdentifier);
    OUTLINED_FUNCTION_75_16(v46, v47);
    v48 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventName);
    OUTLINED_FUNCTION_81_18(v48, v49);
    v50 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventSourceBundleIdentifier);
    OUTLINED_FUNCTION_72_14(v50, v51);
    v52 = [v34 eventSourceIsForwarded];
    if (v52)
    {
      v53 = v52;
      HIDWORD(v152) = [v52 BOOLValue];
    }

    else
    {
      HIDWORD(v152) = 2;
    }

    v54 = [v34 eventType];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_73_15(v55, v56);

    v151 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.detectedEventTypes.getter(v34);
    v57 = [v34 eventSubType];
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_294_0(v58, v59);

    v60 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_accountIdentifier);
    OUTLINED_FUNCTION_39_21(v60, v61);
    v150 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v34);
    v62 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_mailMessageHeader);
    OUTLINED_FUNCTION_297_0(v62, v63);
    v64 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_mailMessageID);
    OUTLINED_FUNCTION_170_6(v64, v65);
    v66 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v34, &selRef_mailboxIdentifiers);
    OUTLINED_FUNCTION_146_1(v66);
    v67 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventStatus);
    OUTLINED_FUNCTION_162_8(v67, v68, &v162);
    v69 = [v34 eventUpdateStatus];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_78_17(v70, v71);

    v149 = CSSearchableItemAttributeSet.timeIsUnknownBool.getter();
    v72 = [v34 eventOrderDate];
    if (v72)
    {
      v73 = v72;
      v74 = v169;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v75 = type metadata accessor for Date();
      v76 = 0;
    }

    else
    {
      v75 = type metadata accessor for Date();
      v76 = 1;
      v74 = v169;
    }

    __swift_storeEnumTagSinglePayload(v74, v76, 1, v75);
    v77 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventReservationID);
    OUTLINED_FUNCTION_43_14(v77, v78);
    v79 = [v34 eventURL];
    if (v79)
    {
      v80 = v79;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for URL();
    OUTLINED_FUNCTION_219_4();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
    v85 = [v34 cost];
    v164 = v0;
    v165 = v22;
    v160 = v4;
    if (v85)
    {
      v86 = v85;
      v172 = 0;
      v173 = 1;
      MEMORY[0x25F89FB10](v85, &v172);

      v148 = v172;
    }

    else
    {
      v148 = 0;
    }

    v147[0] = v26;
    v159 = v31;
    v87 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventProvider);
    OUTLINED_FUNCTION_300_0(v87, v88);
    v147[17] = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v34, &selRef_eventStartPersonNames);
    v89 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventStartLocationName);
    OUTLINED_FUNCTION_187_6(v89, v90);
    v147[14] = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventStartLocationAddress);
    v147[13] = v91;
    v147[12] = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventStartLocationTelephone);
    v147[11] = v92;
    v147[10] = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v34, &selRef_eventEndPersonNames);
    v93 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventEndLocationName);
    OUTLINED_FUNCTION_236_3(v93, v94, &v152);
    v95 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventEndLocationAddress);
    OUTLINED_FUNCTION_138_1(v95, v96);
    v97 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventEndLocationTelephone);
    OUTLINED_FUNCTION_185_5(v97, v98);
    v147[3] = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v34, &selRef_eventCustomerNames);
    v147[2] = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v34, &selRef_eventCustomerAddresses);
    v147[1] = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v34, &selRef_eventCustomerTelephoneNumbers);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventCarrierName);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v34, &selRef_eventTrackingNumber);
    v99 = [v34 startDate];
    v161 = v6;
    if (v99)
    {
      v100 = v99;
      v101 = v166;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v102 = 0;
    }

    else
    {
      v102 = 1;
      v101 = v166;
    }

    type metadata accessor for Date();
    v103 = 1;
    OUTLINED_FUNCTION_250_4(v101, v102);
    v104 = [v34 endDate];
    if (v104)
    {
      v105 = v104;
      v106 = v167;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v107 = v106;
      v103 = 0;
    }

    else
    {
      v107 = v167;
    }

    v108 = 1;
    OUTLINED_FUNCTION_250_4(v107, v103);
    v109 = [v34 eventEstimatedStartDate];
    if (v109)
    {
      v110 = v109;
      v111 = v168;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v112 = v111;
      v108 = 0;
    }

    else
    {
      v112 = v168;
    }

    v113 = 1;
    OUTLINED_FUNCTION_250_4(v112, v108);
    v114 = [v34 eventEstimatedEndDate];
    if (v114)
    {
      v115 = v114;
      v116 = v162;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v117 = v116;
      v113 = 0;
    }

    else
    {
      v117 = v162;
    }

    OUTLINED_FUNCTION_250_4(v117, v113);
    OUTLINED_FUNCTION_258_3();
    OUTLINED_FUNCTION_266_2();
    OUTLINED_FUNCTION_265_3();
    OUTLINED_FUNCTION_274_2();
    OUTLINED_FUNCTION_223_4();
    OUTLINED_FUNCTION_221_5();
    OUTLINED_FUNCTION_275_1();
    OUTLINED_FUNCTION_222_4();
    OUTLINED_FUNCTION_225_5();
    OUTLINED_FUNCTION_184_6();
    OUTLINED_FUNCTION_129_12();
    OUTLINED_FUNCTION_111_8();
    OUTLINED_FUNCTION_143_10();
    OUTLINED_FUNCTION_131_8();
    OUTLINED_FUNCTION_128_10();
    OUTLINED_FUNCTION_130_11();
    OUTLINED_FUNCTION_150_6();
    OUTLINED_FUNCTION_157_5();
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_120_9();
    OUTLINED_FUNCTION_126_13();
    OUTLINED_FUNCTION_134_10();
    OUTLINED_FUNCTION_156_6();
    OUTLINED_FUNCTION_149_9();
    OUTLINED_FUNCTION_148_9();
    OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_117_12();
    OUTLINED_FUNCTION_165_5();
    OUTLINED_FUNCTION_124_14();
    OUTLINED_FUNCTION_136_11();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_180_5();
    v118 = v159;
    ShippingOrder.init(id:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMessageIdentifier:eventMegadomeIdentifier:eventName:eventSourceBundleIdentifier:eventSourceIsForwarded:eventType:detectedEventTypes:eventSubType:eventSourceLLMConsumableDescription:accountIdentifier:authors:mailMessageHeader:mailMessageId:mailboxes:status:shippingStatus:timeIsUnknown:orderDate:orderNumber:orderTrackingURL:orderCost:merchantName:shippingPersonNames:shippingLocationName:shippingAddress:shippingPhoneNumber:recipientNames:recipientLocationName:recipientAddress:recipientPhoneNumber:customerNames:customerAddresses:customerPhoneNumbers:carrierName:trackingNumber:shippingDate:deliveryDate:estimatedDeliveryStartDate:estimatedDeliveryEndDate:)();
    v119 = v165;
    v120 = *(v165 + 16);
    v121 = v171;
    v120(v164, v118, v171);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v122 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v122, static Logging.search);
    v123 = v163;
    v120(v163, v118, v121);
    v124 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v125 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v125, v126))
    {
      OUTLINED_FUNCTION_28_3();
      swift_slowAlloc();
      v170 = OUTLINED_FUNCTION_10_23();
      v172 = v170;
      *v119 = 136642819;
      v120(v147[0], v123, v121);
      String.init<A>(describing:)();
      v127 = v118;
      v128 = *(v165 + 8);
      v128(v123, v171);
      v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v119 + 4) = v129;
      OUTLINED_FUNCTION_110_4();
      _os_log_impl(v130, v131, v132, v133, v134, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v170);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();

      v135 = v127;
      v121 = v171;
      v128(v135, v171);
    }

    else
    {

      v136 = *(v119 + 8);
      v136(v123, v121);
      v136(v118, v121);
    }

    v137 = OUTLINED_FUNCTION_34_5();
    v138(v137);
    v139 = OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v139, v140, v141, v121);
    OUTLINED_FUNCTION_148();
  }
}

uint64_t dateString(fromDateComponents:)(uint64_t a1)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = &v31 - v2;
  v35 = type metadata accessor for Calendar();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for Date();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for DateComponents();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ResourceBundle?(v36, v13, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    v18 = &_s10Foundation14DateComponentsVSgMd;
    v19 = &_s10Foundation14DateComponentsVSgMR;
    v20 = v13;
LABEL_5:
    outlined destroy of FlightSnippet.Leg?(v20, v18, v19);
    return 0;
  }

  (*(v15 + 32))(v17, v13, v14);
  static Calendar.current.getter();
  Calendar.date(from:)();
  (*(v3 + 8))(v5, v35);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v18 = &_s10Foundation4DateVSgMd;
    v19 = &_s10Foundation4DateVSgMR;
    v20 = v8;
    goto LABEL_5;
  }

  v36 = v15;
  v22 = v34;
  v23 = v32;
  (*(v34 + 32))(v32, v8, v9);
  v24 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v25 = v33;
  DateComponents.timeZone.getter();
  v26 = type metadata accessor for TimeZone();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
  {
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(*(v26 - 8) + 8))(v25, v26);
  }

  [v24 setTimeZone_];

  v28 = Date._bridgeToObjectiveC()().super.isa;
  v29 = [v24 stringFromDate_];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v22 + 8))(v23, v9);
  (*(v36 + 8))(v17, v14);
  return v21;
}

uint64_t FlightReservation.answer.getter()
{
  v0 = HotelReservation.answers.getter();
  specialized Collection.first.getter(v0);
  v2 = v1;

  if (!v2)
  {
    ShippingOrder.eventType.getter();
  }

  return OUTLINED_FUNCTION_32_0();
}

void FlightReservation.metadata.getter()
{
  OUTLINED_FUNCTION_155();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = OUTLINED_FUNCTION_114(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_109();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_216_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SSSgtGMd, &_ss23_ContiguousArrayStorageCySS_SSSgtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBD9DD0;
  OUTLINED_FUNCTION_240_3();
  *(v9 + 32) = v8 & 0xFFFFFFFFFFFFLL | 0x754E000000000000;
  *(v9 + 40) = 0xEC0000007265626DLL;
  *(inited + 48) = ShippingOrder.eventType.getter();
  *(inited + 56) = v10;
  OUTLINED_FUNCTION_44_6();
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = v11;
  FlightReservation.flightCheckInUrl.getter();
  v12 = type metadata accessor for URL();
  OUTLINED_FUNCTION_105_3(v0);
  if (v13)
  {
    outlined destroy of FlightSnippet.Leg?(v0, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v14 = 0;
    v16 = 0;
  }

  else
  {
    v14 = URL.absoluteString.getter();
    v16 = v15;
    OUTLINED_FUNCTION_51();
    (*(v17 + 8))(v0, v12);
  }

  *(inited + 80) = v14;
  *(inited + 88) = v16;
  strcpy((inited + 96), "bookingInfoUrl");
  *(inited + 111) = -18;
  FlightReservation.flightBookingInfoUrl.getter();
  OUTLINED_FUNCTION_105_3(v5);
  if (v13)
  {
    outlined destroy of FlightSnippet.Leg?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v18 = 0;
    v20 = 0;
  }

  else
  {
    v18 = URL.absoluteString.getter();
    v20 = v19;
    OUTLINED_FUNCTION_51();
    v21 = OUTLINED_FUNCTION_64_0();
    v22(v21);
  }

  *(inited + 112) = v18;
  *(inited + 120) = v20;
  OUTLINED_FUNCTION_240_3();
  *(inited + 128) = v23 & 0xFFFFFFFFFFFFLL | 0x6143000000000000;
  *(inited + 136) = 0xED00007265697272;
  *(inited + 144) = FlightReservation.flightCarrier.getter();
  *(inited + 152) = v24;
  OUTLINED_FUNCTION_44_6();
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = v25;
  *(inited + 176) = FlightReservation.flightCarrierCode.getter();
  *(inited + 184) = v26;
  OUTLINED_FUNCTION_44_6();
  *(inited + 192) = 0xD000000000000019;
  *(inited + 200) = v27;
  *(inited + 208) = FlightReservation.flightDepartureDateString.getter();
  *(inited + 216) = v28;
  OUTLINED_FUNCTION_44_6();
  *(inited + 224) = 0xD000000000000017;
  *(inited + 232) = v29;
  *(inited + 240) = FlightReservation.flightArrivalDateString.getter();
  *(inited + 248) = v30;
  OUTLINED_FUNCTION_44_6();
  *(inited + 256) = 0xD00000000000001BLL;
  *(inited + 264) = v31;
  *(inited + 272) = FlightReservation.flightArrivalAirportAddress.getter();
  *(inited + 280) = v32;
  OUTLINED_FUNCTION_44_6();
  *(inited + 288) = 0xD00000000000001DLL;
  *(inited + 296) = v33;
  *(inited + 304) = FlightReservation.flightDepartureAirportAddress.getter();
  *(inited + 312) = v34;
  OUTLINED_FUNCTION_44_6();
  *(inited + 320) = 0xD000000000000018;
  *(inited + 328) = v35;
  *(inited + 336) = FlightReservation.flightArrivalAirportCode.getter();
  *(inited + 344) = v36;
  OUTLINED_FUNCTION_44_6();
  *(inited + 352) = 0xD00000000000001ALL;
  *(inited + 360) = v37;
  *(inited + 368) = FlightReservation.flightDepartureAirportCode.getter();
  *(inited + 376) = v38;
  OUTLINED_FUNCTION_44_6();
  *(inited + 384) = 0xD00000000000001BLL;
  *(inited + 392) = v39;
  *(inited + 400) = FlightReservation.flightArrivalAirportCountry.getter();
  *(inited + 408) = v40;
  OUTLINED_FUNCTION_44_6();
  *(inited + 416) = 0xD00000000000001DLL;
  *(inited + 424) = v41;
  *(inited + 432) = FlightReservation.flightDepartureAirportCountry.getter();
  *(inited + 440) = v42;
  OUTLINED_FUNCTION_44_6();
  *(inited + 448) = 0xD00000000000001CLL;
  *(inited + 456) = v43;
  *(inited + 464) = FlightReservation.flightArrivalAirportLocality.getter();
  *(inited + 472) = v44;
  OUTLINED_FUNCTION_44_6();
  *(inited + 480) = 0xD00000000000001ELL;
  *(inited + 488) = v45;
  *(inited + 496) = FlightReservation.flightDepartureAirportLocality.getter();
  *(inited + 504) = v46;
  OUTLINED_FUNCTION_44_6();
  *(inited + 512) = 0xD000000000000018;
  *(inited + 520) = v47;
  *(inited + 528) = FlightReservation.flightArrivalAirportName.getter();
  *(inited + 536) = v48;
  OUTLINED_FUNCTION_44_6();
  *(inited + 544) = 0xD00000000000001ALL;
  *(inited + 552) = v49;
  *(inited + 560) = FlightReservation.flightDepartureAirportName.getter();
  *(inited + 568) = v50;
  OUTLINED_FUNCTION_44_6();
  *(inited + 576) = 0xD00000000000001ALL;
  *(inited + 584) = v51;
  *(inited + 592) = FlightReservation.flightArrivalAirportRegion.getter();
  *(inited + 600) = v52;
  OUTLINED_FUNCTION_44_6();
  *(inited + 608) = 0xD00000000000001CLL;
  *(inited + 616) = v53;
  *(inited + 624) = FlightReservation.flightDepartureAirportRegion.getter();
  *(inited + 632) = v54;
  OUTLINED_FUNCTION_44_6();
  *(inited + 640) = 0xD000000000000018;
  *(inited + 648) = v55;
  *(inited + 656) = FlightReservation.flightConfirmationNumber.getter();
  *(inited + 664) = v56;
  OUTLINED_FUNCTION_44_6();
  *(inited + 672) = 0xD000000000000014;
  *(inited + 680) = v57;
  FlightReservation.flightPassengerNames.getter();
  v58 = MEMORY[0x25F89F8A0]();
  v60 = v59;

  *(inited + 688) = v58;
  *(inited + 696) = v60;
  OUTLINED_FUNCTION_44_6();
  *(inited + 704) = 0xD00000000000001ALL;
  *(inited + 712) = v61;
  FlightReservation.flightPassengerSeatNumbers.getter();
  v62 = MEMORY[0x25F89F8A0]();
  v64 = v63;

  *(inited + 720) = v62;
  *(inited + 728) = v64;
  OUTLINED_FUNCTION_44_6();
  *(inited + 736) = 0xD000000000000015;
  *(inited + 744) = v65;
  *(inited + 752) = FlightReservation.flightArrivalTerminal.getter();
  *(inited + 760) = v66;
  OUTLINED_FUNCTION_44_6();
  *(inited + 768) = 0xD000000000000017;
  *(inited + 776) = v67;
  *(inited + 784) = FlightReservation.flightDepartureTerminal.getter();
  *(inited + 792) = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  OUTLINED_FUNCTION_121_0();
  v69 = Dictionary.init(dictionaryLiteral:)();
  specialized Dictionary.compactMapValues<A>(_:)(v69);

  OUTLINED_FUNCTION_148();
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 56) + 16 * v12);
    v14 = v13[1];
    if (v14)
    {
      v15 = (*(a1 + 48) + 16 * v12);
      v29 = v15[1];
      v30 = *v15;
      v28 = *v13;
      if (*(v2 + 24) <= *(v2 + 16))
      {

        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
        v2 = v31;
      }

      else
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = v2 + 64;
      v17 = -1 << *(v2 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v17) >> 6;
        v21 = v29;
        while (++v19 != v23 || (v22 & 1) == 0)
        {
          v24 = v19 == v23;
          if (v19 == v23)
          {
            v19 = 0;
          }

          v22 |= v24;
          v25 = *(v16 + 8 * v19);
          if (v25 != -1)
          {
            v20 = __clz(__rbit64(~v25)) + (v19 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
      v21 = v29;
LABEL_23:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v26 = (*(v2 + 48) + 16 * v20);
      *v26 = v30;
      v26[1] = v21;
      v27 = (*(v2 + 56) + 16 * v20);
      *v27 = v28;
      v27[1] = v14;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v26 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v28 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v15 = v11;
    if (v10[3] < v13 + v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v19 = (v18[6] + 16 * v12);
    *v19 = v7;
    v19[1] = v6;
    v20 = (v18[7] + 16 * v12);
    *v20 = v9;
    v20[1] = v8;
    v21 = v18[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v18[2] = v23;
    v4 = v28 + 1;
    a2 = 1;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v12 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  MEMORY[0x25F89F6C0](0xD00000000000001BLL, 0x800000025DBF7830);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x25F89F6C0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v48 = a3;
  v6 = type metadata accessor for AnswerSynthesisExtractionCandidate();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMR);
  MEMORY[0x28223BE20](v10);
  v46 = (v38 - v13);
  v45 = *(a1 + 16);
  if (!v45)
  {
LABEL_13:

    return;
  }

  v38[1] = v3;
  v39 = a1;
  v14 = 0;
  v44 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v42 = v7;
  v43 = v15;
  v47 = (v7 + 32);
  v40 = v9;
  v41 = v6;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v46;
    outlined init with copy of ResourceBundle?(v44 + *(v12 + 72) * v14, v46, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMR);
    v19 = v17[1];
    v51 = *v17;
    v18 = v51;
    v52 = v19;
    v20 = *v47;
    (*v47)(v9, v17 + v43, v6);
    v21 = *v48;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_19;
    }

    v27 = v22;
    if (v21[3] < v26)
    {
      break;
    }

    if (a2)
    {
      if (v22)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMd, &_ss17_NativeDictionaryVySS15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMR);
      _NativeDictionary.copy()();
      if (v27)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v30 = *v48;
    *(*v48 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    v31 = (v30[6] + 16 * v23);
    *v31 = v18;
    v31[1] = v19;
    v6 = v41;
    v32 = v30[7] + *(v42 + 72) * v23;
    v9 = v40;
    v20(v32, v40, v41);
    v33 = v30[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_20;
    }

    ++v14;
    v30[2] = v35;
    a2 = 1;
    a1 = v39;
    v12 = v16;
    if (v45 == v14)
    {
      goto LABEL_13;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, a2 & 1);
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
  if ((v27 & 1) != (v29 & 1))
  {
    goto LABEL_21;
  }

  v23 = v28;
  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v36 = swift_allocError();
  swift_willThrow();

  v53 = v36;
  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v42 + 8))(v40, v41);

    return;
  }

LABEL_22:
  v49 = 0;
  v50 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x25F89F6C0](0xD00000000000001BLL, 0x800000025DBF7830);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x25F89F6C0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v4 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v24 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSaySSGGMd, &_ss17_NativeDictionaryVySSSaySSGGMR);
      _NativeDictionary.copy()();
      if (v14)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v7;
    v18[1] = v6;
    *(v17[7] + 8 * v11) = v8;
    v19 = v17[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v17[2] = v21;
    ++v4;
    a2 = 1;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v22 = swift_allocError();
  swift_willThrow();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  MEMORY[0x25F89F6C0](0xD00000000000001BLL, 0x800000025DBF7830);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x25F89F6C0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

_BYTE *closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t outlined init with copy of SearchResultItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s10OmniSearch13FlightSnippetV3LegVWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of FlightSnippet.Leg(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t outlined destroy of FlightSnippet.Leg?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_326_0(a1, a2, a3);
  OUTLINED_FUNCTION_17();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for RentalCarReservation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, MEMORY[0x277D37368], &protocol conformance descriptor for RentalCarReservation);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, MEMORY[0x277D37368], &protocol conformance descriptor for RentalCarReservation);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for RentalCarReservation(void *a1)
{
  v2 = MEMORY[0x277D37368];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, MEMORY[0x277D37368], MEMORY[0x277D37380]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, v2, MEMORY[0x277D37370]);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, v2, MEMORY[0x277D37378]);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TicketedTransportation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, MEMORY[0x277D37438], &protocol conformance descriptor for TicketedTransportation);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, MEMORY[0x277D37438], &protocol conformance descriptor for TicketedTransportation);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TicketedTransportation(void *a1)
{
  v2 = MEMORY[0x277D37438];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, MEMORY[0x277D37438], MEMORY[0x277D37450]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, v2, MEMORY[0x277D37440]);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, v2, MEMORY[0x277D37448]);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TicketedShow(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, MEMORY[0x277D371B8], &protocol conformance descriptor for TicketedShow);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, MEMORY[0x277D371B8], &protocol conformance descriptor for TicketedShow);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TicketedShow(void *a1)
{
  v2 = MEMORY[0x277D371B8];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, MEMORY[0x277D371B8], MEMORY[0x277D371D0]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, v2, MEMORY[0x277D371C0]);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, v2, MEMORY[0x277D371C8]);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Appointment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Appointment and conformance Appointment, MEMORY[0x277D370E8], &protocol conformance descriptor for Appointment);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Appointment and conformance Appointment, MEMORY[0x277D370E8], &protocol conformance descriptor for Appointment);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Appointment(void *a1)
{
  v2 = MEMORY[0x277D370E8];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Appointment and conformance Appointment, MEMORY[0x277D370E8], MEMORY[0x277D37100]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Appointment and conformance Appointment, v2, MEMORY[0x277D370F0]);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Appointment and conformance Appointment, v2, MEMORY[0x277D370F8]);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Party(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Party and conformance Party, MEMORY[0x277D37520], &protocol conformance descriptor for Party);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Party and conformance Party, MEMORY[0x277D37520], &protocol conformance descriptor for Party);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Party(void *a1)
{
  v2 = MEMORY[0x277D37520];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Party and conformance Party, MEMORY[0x277D37520], MEMORY[0x277D37538]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Party and conformance Party, v2, MEMORY[0x277D37528]);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Party and conformance Party, v2, MEMORY[0x277D37530]);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Trip(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Trip and conformance Trip, MEMORY[0x277D37500], &protocol conformance descriptor for Trip);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Trip and conformance Trip, MEMORY[0x277D37500], &protocol conformance descriptor for Trip);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Trip(void *a1)
{
  v2 = MEMORY[0x277D37500];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Trip and conformance Trip, MEMORY[0x277D37500], MEMORY[0x277D37518]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Trip and conformance Trip, v2, MEMORY[0x277D37508]);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type Trip and conformance Trip, v2, MEMORY[0x277D37510]);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for FlightReservation(void *a1)
{
  v2 = MEMORY[0x277D37290];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type FlightReservation and conformance FlightReservation, MEMORY[0x277D37290], MEMORY[0x277D372B0]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type FlightReservation and conformance FlightReservation, v2, MEMORY[0x277D37298]);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type FlightReservation and conformance FlightReservation, v2, MEMORY[0x277D372A8]);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for HotelReservation(void *a1)
{
  v2 = MEMORY[0x277D37250];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type HotelReservation and conformance HotelReservation, MEMORY[0x277D37250], MEMORY[0x277D37268]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type HotelReservation and conformance HotelReservation, v2, MEMORY[0x277D37258]);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type HotelReservation and conformance HotelReservation, v2, MEMORY[0x277D37260]);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for RestaurantReservation(void *a1)
{
  v2 = MEMORY[0x277D373D8];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type RestaurantReservation and conformance RestaurantReservation, MEMORY[0x277D373D8], MEMORY[0x277D373F0]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type RestaurantReservation and conformance RestaurantReservation, v2, MEMORY[0x277D373E0]);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type RestaurantReservation and conformance RestaurantReservation, v2, MEMORY[0x277D373E8]);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ShippingOrder(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, MEMORY[0x277D37218], &protocol conformance descriptor for ShippingOrder);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, MEMORY[0x277D37218], &protocol conformance descriptor for ShippingOrder);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ShippingOrder(void *a1)
{
  v2 = MEMORY[0x277D37218];
  a1[1] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, MEMORY[0x277D37218], MEMORY[0x277D37230]);
  a1[2] = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, v2, MEMORY[0x277D37220]);
  result = lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(&lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, v2, MEMORY[0x277D37228]);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type FlightSnippet.Flight and conformance FlightSnippet.Flight(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

uint64_t OUTLINED_FUNCTION_5_43@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 - 256);
  *v4 = 0;
  v4[1] = a2;
  v4[2] = 0;
  v4[3] = a2;
  v4[4] = 0;
  v4[5] = a2;
  v4[6] = 0;
  v4[7] = a2;
  v4[8] = 0;
  v4[9] = a2;
  v4[10] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[13] = a2;
  v4[14] = 0;
  v4[15] = a2;
  v4[16] = 0;
  v4[17] = a2;
  v4[18] = 0;
  v4[19] = a2;
  v4[20] = 0;
  v4[21] = a2;
  v4[22] = 0;
  v4[23] = a2;
  v4[24] = 0;
  v4[25] = a2;

  return UnknownStorage.init()();
}

void OUTLINED_FUNCTION_6_34()
{
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
}

void OUTLINED_FUNCTION_7_42()
{
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
}

uint64_t OUTLINED_FUNCTION_12_36()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2085;
  return 0;
}

uint64_t OUTLINED_FUNCTION_27_23()
{
  result = v0;
  *(v2 - 192) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_18@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v2 - 256);
  *(v6 + a1) = v1;
  v7 = (v6 + *(v3 + 40));
  *v7 = 0;
  v7[1] = 0;

  return outlined init with copy of SearchResultItem(v4, v6);
}

uint64_t OUTLINED_FUNCTION_39_21(uint64_t result, uint64_t a2)
{
  *(v2 - 376) = result;
  *(v2 - 384) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_14(uint64_t result, uint64_t a2)
{
  *(v2 - 480) = result;
  *(v2 - 488) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_17()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_46_21()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_53_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_54_22()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_58_12()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_61_20()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_71_17(uint64_t result, uint64_t a2)
{
  *(v2 - 512) = result;
  *(v2 - 520) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_72_14(uint64_t result, uint64_t a2)
{
  *(v2 - 312) = result;
  *(v2 - 320) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_73_15(uint64_t result, uint64_t a2)
{
  *(v2 - 336) = result;
  *(v2 - 344) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_19(uint64_t result, uint64_t a2)
{
  *(v2 - 344) = result;
  *(v2 - 352) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_75_16(uint64_t result, uint64_t a2)
{
  *(v2 - 280) = result;
  *(v2 - 288) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_14(uint64_t result, uint64_t a2)
{
  *(v2 - 408) = result;
  *(v2 - 416) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_15(uint64_t result, uint64_t a2)
{
  *(v2 - 496) = result;
  *(v2 - 504) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_17(uint64_t result, uint64_t a2)
{
  *(v2 - 464) = result;
  *(v2 - 472) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_18(uint64_t result, uint64_t a2)
{
  *(v2 - 296) = result;
  *(v2 - 304) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_82_15(uint64_t result, uint64_t a2)
{
  *(v2 - 264) = result;
  *(v2 - 272) = a2;
  return result;
}

void OUTLINED_FUNCTION_89_16()
{

  JUMPOUT(0x25F89F4C0);
}

uint64_t OUTLINED_FUNCTION_91_8()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_94_11@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v2 - 256);
  *(v6 + a1) = v1;
  v7 = (v6 + *(v4 + 40));
  *v7 = 0;
  v7[1] = 0;

  return outlined init with copy of SearchResultItem(v3, v6);
}

uint64_t OUTLINED_FUNCTION_107_9()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_108_10()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_115_11()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_116_8()
{
  result = *(v0 - 160);
  *(v0 - 144) = *(v0 - 176);
  *(v0 - 128) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_123_11(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v1[5] = 0xE000000000000000;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = 0;
  v1[11] = 0;
  v1[12] = 0;
  v1[13] = 0xE000000000000000;
  v1[14] = 0;
  v1[15] = 0xE000000000000000;
  v1[16] = 0;
  v1[17] = 0xE000000000000000;
  v1[18] = 0;
  v1[19] = 0xE000000000000000;
  v1[20] = 0;
  v1[21] = 0xE000000000000000;
  v1[22] = 0;
  v1[23] = 0xE000000000000000;
  v1[24] = 0;
  v1[25] = 0xE000000000000000;

  return UnknownStorage.init()();
}

uint64_t OUTLINED_FUNCTION_145_6()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_147_9()
{
  *(v0 - 512) = 0;
  *(v0 - 504) = 0;
  *(v0 - 416) = 0;
  *(v0 - 516) = 1;
}

uint64_t OUTLINED_FUNCTION_154_3()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_159_6()
{
  result = v1;
  *(v2 - 208) = v0;
  return result;
}

id OUTLINED_FUNCTION_161_4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return [v2 (v3 + 1656)];
}

uint64_t OUTLINED_FUNCTION_162_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = result;
  *(v3 - 456) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_163_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = result;
  *(v3 - 328) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_167_4(uint64_t result, uint64_t a2)
{
  *(v2 - 352) = result;
  *(v2 - 360) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_168_6(uint64_t result, uint64_t a2)
{
  *(v2 - 304) = result;
  *(v2 - 312) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_170_6(uint64_t result, uint64_t a2)
{
  *(v2 - 416) = result;
  *(v2 - 424) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_171_6(uint64_t result, uint64_t a2)
{
  *(v2 - 440) = result;
  *(v2 - 448) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_174_6(uint64_t result, uint64_t a2)
{
  *(v2 - 472) = result;
  *(v2 - 480) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_178_7(uint64_t result, uint64_t a2)
{
  *(v2 - 456) = result;
  *(v2 - 464) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_179_7(uint64_t result, uint64_t a2)
{
  *(v2 - 288) = result;
  *(v2 - 296) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_185_5(uint64_t result, uint64_t a2)
{
  *(v2 - 616) = result;
  *(v2 - 624) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_187_6(uint64_t result, uint64_t a2)
{
  *(v2 - 528) = result;
  *(v2 - 536) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_203_5(uint64_t result)
{
  *(v1 - 248) = result;
  *(v1 - 128) = result;
  return result;
}

void OUTLINED_FUNCTION_212_4(uint64_t a1, uint64_t a2)
{
  *(v3 - 328) = a1;
  *(v3 - 336) = a2;
}

id OUTLINED_FUNCTION_217_5(void *a1)
{

  return [a1 (v1 + 1144)];
}

id OUTLINED_FUNCTION_229_4()
{

  return [v0 (v1 + 1656)];
}

uint64_t OUTLINED_FUNCTION_233_4(uint64_t a1)
{

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_236_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = result;
  *(v3 - 592) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_237_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = result;
  *(v3 - 560) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_243_3()
{
  result = v1;
  *(v2 - 192) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_250_4(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_251_4(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of ResourceBundle?(a1, a2, v2, v3);
}

double OUTLINED_FUNCTION_276_1()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

id OUTLINED_FUNCTION_280_2(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_281_0()
{
  *(v2 - 216) = v1;

  return closure #1 in RentalCarReservation.init(item:checkEventType:featureFlagService:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_282_1()
{
}

unint64_t OUTLINED_FUNCTION_283_0()
{

  return type metadata accessor for CSSearchableItem();
}

uint64_t OUTLINED_FUNCTION_284_1()
{
}

void *OUTLINED_FUNCTION_285_0()
{

  return _bridgeAnyObjectToAny(_:)();
}

uint64_t OUTLINED_FUNCTION_294_0(uint64_t result, uint64_t a2)
{
  *(v2 - 360) = result;
  *(v2 - 368) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_297_0(uint64_t result, uint64_t a2)
{
  *(v2 - 400) = result;
  *(v2 - 408) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_299_0(uint64_t result, uint64_t a2)
{
  *(v2 - 488) = result;
  *(v2 - 496) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_300_0(uint64_t result, uint64_t a2)
{
  *(v2 - 504) = result;
  *(v2 - 512) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_319_0()
{
}

uint64_t OUTLINED_FUNCTION_320_0()
{
}

uint64_t OUTLINED_FUNCTION_321_0()
{
}

uint64_t OUTLINED_FUNCTION_322_0()
{
}

uint64_t OUTLINED_FUNCTION_323_0(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FEBD8](v2, a2, 22, 1, 490);
}

uint64_t OUTLINED_FUNCTION_324_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_325()
{
}

uint64_t OUTLINED_FUNCTION_326_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t Answer.init(id:answer:metadata:sourceResults:experiences:mediaURL:lowConfidenceKnowledge:dialog:pommesContextData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  v16 = type metadata accessor for Answer(0);
  result = outlined init with take of URL?(a8, a9 + v16[9]);
  *(a9 + v16[10]) = a10;
  v18 = (a9 + v16[11]);
  *v18 = a11;
  v18[1] = a12;
  v19 = (a9 + v16[12]);
  *v19 = a13;
  v19[1] = a14;
  return result;
}

uint64_t type metadata accessor for Answer(uint64_t a1)
{
  result = type metadata singleton initialization cache for Answer;
  if (!type metadata singleton initialization cache for Answer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EmailDocument.init(id:mailMessageId:subject:body:authorNames:from:to:cc:date:attachmentNames:attachmentTypes:attachmentPaths:unread:hydratable:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:csItem:featureFlagService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, unsigned __int8 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  v119 = a5;
  v120 = a6;
  v116 = a3;
  v117 = a4;
  v114 = a1;
  v115 = a2;
  v113 = a9;
  v28 = a24;
  v124 = a23;
  v125 = a20;
  v126 = a14;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v29);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_97_4();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v31);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  v34 = v105 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v35);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_49_3();
  v111 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v38);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v39);
  v41 = v105 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_114(v42);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_49_3();
  v123 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  OUTLINED_FUNCTION_114(v45);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_49_3();
  v122 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v48);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_49_3();
  v121 = v50;
  if (a24)
  {
    v109 = a8;
    v110 = v41;
    v51 = one-time initialization token for search;
    v118 = a24;
    v52 = a24;
    if (v51 != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v53 = type metadata accessor for Logger();
    v54 = __swift_project_value_buffer(v53, static Logging.search);
    v55 = v52;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    v58 = os_log_type_enabled(v56, v57);
    v105[0] = v34;
    if (v58)
    {
      v59 = OUTLINED_FUNCTION_51_0();
      v108 = v54;
      v60 = v59;
      v61 = OUTLINED_FUNCTION_49_0();
      v127 = v61;
      *v60 = 136315138;
      v62 = [v55 attributeSet];
      CSSearchableItemAttributeSet.keyStrings.getter();
      v64 = v63;

      MEMORY[0x25F89F8A0](v64, MEMORY[0x277D837D0]);

      OUTLINED_FUNCTION_13_28();
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v60 + 4) = v65;
      _os_log_impl(&dword_25D85C000, v56, v57, "EmailDocument: parsing attribute keys: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    v66 = v55;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = OUTLINED_FUNCTION_51_0();
      v70 = OUTLINED_FUNCTION_49_0();
      v127 = v70;
      *v69 = 136642819;
      v71 = [v66 attributeSet];
      CSSearchableItemAttributeSet.kvStrings.getter();
      v73 = v72;

      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
      MEMORY[0x25F89F8A0](v73, v74);

      OUTLINED_FUNCTION_13_28();
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v69 + 4) = v75;
      _os_log_impl(&dword_25D85C000, v67, v68, "EmailDocument: parsing attributes: %{sensitive}s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {
    }

    v28 = v118;
    v34 = v105[0];
    a8 = v109;
    v41 = v110;
  }

  v112 = v25;
  if (a8)
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSJ_Tt0g5();
    String.oms_trimCharacters(_:)(v76, a7, a8);
    v118 = v77;
    v110 = v78;
  }

  else
  {
    v118 = a7;
    v110 = 0;
  }

  v79 = v111;
  v106 = a19;
  v105[2] = a16;
  v105[1] = a15;
  v111 = a13;
  v108 = a11;
  v109 = a12;
  v107 = a10;
  outlined init with copy of ResourceBundle?(v126, v121, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of ResourceBundle?(v125, v122, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  outlined init with copy of ResourceBundle?(v124, v123, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  if (v28)
  {
    v80 = v28;

    v81 = OUTLINED_FUNCTION_94();
    PreExtractedCard.init(item:featureFlagService:)(v81, v82, v83);
    v84 = v80;

    v85 = OUTLINED_FUNCTION_94();
    PreExtractedContact.init(item:featureFlagService:)(v85, v86, v87);
    v88 = v84;
    PreExtractedSharedLink.init(item:)(v88, v34);
    v28 = v88;

    v89 = OUTLINED_FUNCTION_94();
    PreExtractedBreadcrumb.init(item:featureFlagService:)(v89, v90);
  }

  else
  {
    v91 = type metadata accessor for PreExtractedCard();
    OUTLINED_FUNCTION_10_24(v41, v92, v93, v91);
    v94 = type metadata accessor for PreExtractedContact();
    OUTLINED_FUNCTION_10_24(v79, v95, v96, v94);
    v97 = type metadata accessor for PreExtractedSharedLink();
    OUTLINED_FUNCTION_10_24(v34, v98, v99, v97);
    type metadata accessor for PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
  }

  EmailDocument.init(id:mailMessageId:subject:body:authorNames:from:to:cc:date:attachmentNames:attachmentTypes:attachmentPaths:unread:hydratable:instantAnswerDescription:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();

  outlined destroy of IntentApplication?(v124, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  outlined destroy of IntentApplication?(v125, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  return outlined destroy of IntentApplication?(v126, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t FileDocument.keywords.getter(uint64_t a1)
{
  v1 = FileDocument.item.getter();
  v2 = [v1 attributeSet];

  result = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.keywords.getter(v2);
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:csItem:featureFlagService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  v116 = a7;
  v117 = a8;
  v114 = a5;
  v115 = a6;
  v112 = a3;
  v113 = a4;
  v110 = a1;
  v111 = a2;
  v109 = a9;
  v29 = a26;
  v30 = a13;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v31);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_97_4();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v33);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_59_4();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v35);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v36);
  v38 = &v98 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v39);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_49_3();
  v105 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_114(v42);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_49_3();
  v125 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  OUTLINED_FUNCTION_114(v45);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_49_3();
  v124 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v48);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_49_3();
  v123 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v51);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_49_3();
  v122 = v53;
  v108 = a20[2];
  v106 = v38;
  if (!v108)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logging.search);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_25D85C000, v55, v56, "MobileSMSDocument: chatParticipants set from both 'from' and 'to' as there's no chatParticipants passed-in", v57, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v29 = a26;
    v38 = v106;
  }

  v107 = v28;
  v120 = a25;
  v121 = a22;
  v119 = a13;
  if (v29)
  {
    v103 = v27;
    v58 = one-time initialization token for search;
    v104 = v29;
    v59 = v29;
    if (v58 != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logging.search);
    v61 = v59;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = OUTLINED_FUNCTION_51_0();
      v102 = OUTLINED_FUNCTION_49_0();
      v126 = v102;
      *v64 = 136315138;
      v65 = [v61 attributeSet];
      CSSearchableItemAttributeSet.keyStrings.getter();
      v67 = v66;

      MEMORY[0x25F89F8A0](v67, MEMORY[0x277D837D0]);

      OUTLINED_FUNCTION_13_28();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v64 + 4) = v68;
      _os_log_impl(&dword_25D85C000, v62, v63, "MobileSMSDocument: parsing attribute keys: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v102);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    v69 = v61;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = OUTLINED_FUNCTION_51_0();
      v73 = OUTLINED_FUNCTION_49_0();
      v126 = v73;
      *v72 = 136642819;
      v74 = [v69 attributeSet];
      CSSearchableItemAttributeSet.kvStrings.getter();
      v76 = v75;

      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
      MEMORY[0x25F89F8A0](v76, v77);

      OUTLINED_FUNCTION_13_28();
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v72 + 4) = v78;
      _os_log_impl(&dword_25D85C000, v70, v71, "MobileSMSDocument: parsing attributes: %{sensitive}s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {
    }

    v29 = v104;
    v27 = v103;
    v38 = v106;
    v30 = v119;
  }

  outlined init with copy of ResourceBundle?(v30, v122, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of ResourceBundle?(a14, v123, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v118 = a14;
  LODWORD(v104) = a11;
  v103 = a10;
  if (v108)
  {
    v108 = a20;
  }

  else
  {

    v126 = static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(a10, a11 & 1);

    specialized Array.append<A>(contentsOf:)(v79);
    v108 = v126;
  }

  v102 = a19;
  v101 = a18;
  v100 = a17;
  v99 = a16;
  v98 = a15;
  outlined init with copy of ResourceBundle?(v121, v124, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  outlined init with copy of ResourceBundle?(v120, v125, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v80 = v105;
  if (v29)
  {
    v81 = v29;

    PreExtractedCard.init(item:featureFlagService:)(v81, a27, v80);
    v82 = v81;

    PreExtractedContact.init(item:featureFlagService:)(v82, a27, v38);
    v83 = v82;
    PreExtractedSharedLink.init(item:)(v83, v27);
    v29 = v83;

    PreExtractedBreadcrumb.init(item:featureFlagService:)(v29, a27);
  }

  else
  {
    v84 = type metadata accessor for PreExtractedCard();
    OUTLINED_FUNCTION_10_24(v80, v85, v86, v84);
    v87 = type metadata accessor for PreExtractedContact();
    OUTLINED_FUNCTION_10_24(v38, v88, v89, v87);
    v90 = type metadata accessor for PreExtractedSharedLink();
    OUTLINED_FUNCTION_10_24(v27, v91, v92, v90);
    type metadata accessor for PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
  }

  MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)(v110, v111, v112, v113, v114, v115, v116, v117, v103, v104, a12, v122, v123, v98, v99, v100, v101, v102, v108, a21);

  outlined destroy of IntentApplication?(v120, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  outlined destroy of IntentApplication?(v121, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  outlined destroy of IntentApplication?(v118, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return outlined destroy of IntentApplication?(v119, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t FileDocument.title.getter(uint64_t (*a1)(id))
{
  v1 = FileDocument.item.getter();
  v2 = [v1 attributeSet];

  return a1(v2);
}

uint64_t Photo.init(id:photoDescription:locationKeywords:season:sceneClassificationLabels:snippet:ocrString:date:businessNames:peopleNames:peopleContactIdentifiers:peoplePersonIdentifiers:extractedEventsLLMConsumableDescription:partialExtractedAttributes:csItem:featureFlagService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  v115 = a6;
  v116 = a7;
  v114 = a5;
  v111 = a2;
  v112 = a3;
  v109 = a9;
  v110 = a1;
  v26 = a21;
  v107 = a18;
  v108 = a19;
  v106 = a17;
  v104 = a15;
  v105 = a16;
  v117 = a20;
  v118 = a13;
  v102 = a12;
  v103 = a14;
  v100 = a10;
  v101 = a11;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v27);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v91 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v31);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v91 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v35);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_59_4();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v37);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v38);
  v40 = &v91 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_114(v41);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  v44 = &v91 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v45);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_97_4();
  v113 = a4;
  if (a21)
  {
    v93 = v23;
    v94 = v44;
    v95 = v40;
    v96 = v22;
    v92 = v34;
    v97 = v30;
    v98 = a22;
    v99 = a8;
    v47 = one-time initialization token for search;
    v48 = a21;
    if (v47 != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logging.search);
    v50 = v48;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = OUTLINED_FUNCTION_51_0();
      v54 = OUTLINED_FUNCTION_49_0();
      v119 = v54;
      *v53 = 136315138;
      v55 = [v50 attributeSet];
      CSSearchableItemAttributeSet.keyStrings.getter();
      v57 = v56;

      MEMORY[0x25F89F8A0](v57, MEMORY[0x277D837D0]);

      OUTLINED_FUNCTION_13_28();
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v53 + 4) = v58;
      _os_log_impl(&dword_25D85C000, v51, v52, "Photo: parsing attribute keys: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    v72 = v50;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = OUTLINED_FUNCTION_51_0();
      v76 = OUTLINED_FUNCTION_49_0();
      v119 = v76;
      *v75 = 136642819;
      v77 = [v72 &off_2799EF070 + 4];
      CSSearchableItemAttributeSet.kvStrings.getter();
      v79 = v78;

      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
      MEMORY[0x25F89F8A0](v79, v80);

      OUTLINED_FUNCTION_13_28();
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v75 + 4) = v81;
      _os_log_impl(&dword_25D85C000, v73, v74, "Photo: parsing attributes: %{sensitive}s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {
    }

    v82 = v92;
    v83 = v96;
    v84 = v95;
    v85 = v94;
    outlined init with copy of ResourceBundle?(v118, v93, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined init with copy of ResourceBundle?(v117, v85, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    v86 = v72;
    v87 = v98;

    PreExtractedCard.init(item:featureFlagService:)(v86, v87, v84);
    v88 = v86;

    PreExtractedContact.init(item:featureFlagService:)(v88, v87, v83);
    v89 = v88;
    PreExtractedSharedLink.init(item:)(v89, v82);
    v26 = v89;

    PreExtractedBreadcrumb.init(item:featureFlagService:)(v26, v87);
  }

  else
  {
    outlined init with copy of ResourceBundle?(v118, v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined init with copy of ResourceBundle?(v117, v44, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    v59 = type metadata accessor for PreExtractedCard();
    OUTLINED_FUNCTION_10_24(v40, v60, v61, v59);
    v62 = type metadata accessor for PreExtractedContact();
    OUTLINED_FUNCTION_10_24(v22, v63, v64, v62);
    v65 = type metadata accessor for PreExtractedSharedLink();
    OUTLINED_FUNCTION_10_24(v34, v66, v67, v65);
    type metadata accessor for PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  }

  Photo.init(id:photoDescription:locationKeywords:season:sceneClassificationLabels:snippet:ocrString:date:businessNames:peopleNames:peopleContactIdentifiers:peoplePersonIdentifiers:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();

  outlined destroy of IntentApplication?(v117, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  return outlined destroy of IntentApplication?(v118, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

void CSSearchableItem.preExtractedCard(featureFlagService:)(uint64_t a1)
{
  v2 = v1;

  v3 = OUTLINED_FUNCTION_14_28();

  PreExtractedCard.init(item:featureFlagService:)(v3, v4, v5);
}

void CSSearchableItem.preExtractedContact(featureFlagService:)(uint64_t a1)
{
  v2 = v1;

  v3 = OUTLINED_FUNCTION_14_28();

  PreExtractedContact.init(item:featureFlagService:)(v3, v4, v5);
}

uint64_t CSSearchableItem.preExtractedSharedLink()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;

  return PreExtractedSharedLink.init(item:)(v3, a1);
}

uint64_t CSSearchableItem.preExtractedBreadcrumb(featureFlagService:)(uint64_t a1)
{
  v2 = v1;

  v3 = OUTLINED_FUNCTION_14_28();

  return PreExtractedBreadcrumb.init(item:featureFlagService:)(v3, v4);
}

uint64_t FileDocument.contentUrl.getter@<X0>(SEL *a1@<X0>, void (*a2)(id)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = FileDocument.item.getter();
  v9 = [v8 attributeSet];

  v10 = [v9 *a1];
  if (v10)
  {
    a2(v10);

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = a3(0);

  return __swift_storeEnumTagSinglePayload(a4, v11, 1, v12);
}

uint64_t Answer.answer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Answer.metadata.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Answer.sourceResults.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Answer.experiences.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Answer.mediaURL.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_23_25() + 36);

  return outlined assign with take of URL?(v0, v2);
}

uint64_t Answer.lowConfidenceKnowledge.setter(char a1)
{
  result = type metadata accessor for Answer(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t Answer.dialog.getter()
{
  type metadata accessor for Answer(0);

  return OUTLINED_FUNCTION_94();
}

uint64_t Answer.dialog.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Answer(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Answer.pommesContextData.getter()
{
  type metadata accessor for Answer(0);
  v0 = OUTLINED_FUNCTION_94();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_94();
}

uint64_t Answer.pommesContextData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Answer(0) + 48);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t Answer.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726577736E61 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6552656372756F73 && a2 == 0xED000073746C7573;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E65697265707865 && a2 == 0xEB00000000736563;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4C5255616964656DLL && a2 == 0xE800000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x800000025DBF1930 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x676F6C616964 && a2 == 0xE600000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000011 && 0x800000025DBF7850 == a2)
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

unint64_t Answer.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x726577736E61;
      break;
    case 2:
      result = 0x617461646174656DLL;
      break;
    case 3:
      result = 0x6552656372756F73;
      break;
    case 4:
      result = 0x6E65697265707865;
      break;
    case 5:
      result = 0x4C5255616964656DLL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x676F6C616964;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Answer.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Answer.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Answer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Answer.CodingKeys and conformance Answer.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Answer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Answer.CodingKeys and conformance Answer.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Answer.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch6AnswerV10CodingKeys33_042F05767BD4111F1C2C5EE779832BDELLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch6AnswerV10CodingKeys33_042F05767BD4111F1C2C5EE779832BDELLOGMR);
  OUTLINED_FUNCTION_14();
  v8 = v7;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_59_4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Answer.CodingKeys and conformance Answer.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_26_8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_4_9();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    _sSay10OmniSearch0B6ResultVGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A]);
    OUTLINED_FUNCTION_4_9();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch16DialogExperienceCGMd, &_sSay10OmniSearch16DialogExperienceCGMR);
    lazy protocol witness table accessor for type [DialogExperience] and conformance <A> [A](&lazy protocol witness table cache variable for type [DialogExperience] and conformance <A> [A]);
    OUTLINED_FUNCTION_4_9();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = type metadata accessor for Answer(0);
    type metadata accessor for URL();
    OUTLINED_FUNCTION_7_43();
    _s10OmniSearch0B6ResultVACSEAAWlTm_4(v11);
    OUTLINED_FUNCTION_4_9();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = (v4 + *(v10 + 48));
    v14 = *v12;
    v15 = v12[1];
    outlined copy of Data?(*v12, v15);
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v14, v15);
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t Answer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_49_3();
  v41 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch6AnswerV10CodingKeys33_042F05767BD4111F1C2C5EE779832BDELLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch6AnswerV10CodingKeys33_042F05767BD4111F1C2C5EE779832BDELLOGMR);
  OUTLINED_FUNCTION_14();
  v42 = v6;
  v43 = v7;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for Answer(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = Dictionary.init(dictionaryLiteral:)();
  v15 = *(v11 + 36);
  v16 = type metadata accessor for URL();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = v14;
  v47 = v14 + *(v11 + 48);
  *v47 = xmmword_25DBC9410;
  v21 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  lazy protocol witness table accessor for type Answer.CodingKeys and conformance Answer.CodingKeys();
  v44 = v10;
  v22 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);

    outlined destroy of IntentApplication?(v20 + v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    return outlined consume of Data?(*v47, *(v47 + 1));
  }

  else
  {
    v46 = v11;
    LOBYTE(v49) = 0;
    OUTLINED_FUNCTION_26_24();
    v23 = v20;
    *v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v20[1] = v24;
    OUTLINED_FUNCTION_19_33(1);
    v20[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v20[3] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    v51 = 2;
    _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_5_44();

    v48 = v49;
    v20[4] = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    v51 = 3;
    _sSay10OmniSearch0B6ResultVGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A]);
    OUTLINED_FUNCTION_5_44();
    v20[5] = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch16DialogExperienceCGMd, &_sSay10OmniSearch16DialogExperienceCGMR);
    v51 = 4;
    lazy protocol witness table accessor for type [DialogExperience] and conformance <A> [A](&lazy protocol witness table cache variable for type [DialogExperience] and conformance <A> [A]);
    OUTLINED_FUNCTION_5_44();
    v20[6] = v49;
    LOBYTE(v49) = 5;
    OUTLINED_FUNCTION_7_43();
    _s10OmniSearch0B6ResultVACSEAAWlTm_4(v26);
    v27 = v41;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of URL?(v27, v23 + v15);
    OUTLINED_FUNCTION_19_33(6);
    OUTLINED_FUNCTION_26_24();
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v46;
    *(v23 + *(v46 + 40)) = v28 & 1;
    OUTLINED_FUNCTION_19_33(7);
    OUTLINED_FUNCTION_26_24();
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = (v23 + *(v29 + 44));
    *v31 = v30;
    v31[1] = v32;
    v51 = 8;
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_26_24();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v33 = OUTLINED_FUNCTION_17_34();
    v34(v33);
    v35 = v49;
    v36 = v50;
    v37 = v47;
    outlined consume of Data?(*v47, *(v47 + 1));
    *v37 = v35;
    *(v37 + 1) = v36;
    outlined init with copy of Answer(v23, v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    return outlined destroy of Answer(v23);
  }
}

unint64_t lazy protocol witness table accessor for type Answer.CodingKeys and conformance Answer.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys;
  if (!lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys;
  if (!lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys;
  if (!lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys;
  if (!lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Answer.CodingKeys and conformance Answer.CodingKeys);
  }

  return result;
}

unint64_t _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t _sSay10OmniSearch0B6ResultVGSayxGSEsSERzlWlTm_0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    _s10OmniSearch0B6ResultVACSEAAWlTm_4(v4);
    result = OUTLINED_FUNCTION_34_9();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DialogExperience] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch16DialogExperienceCGMd, &_sSay10OmniSearch16DialogExperienceCGMR);
    _s10OmniSearch0B6ResultVACSEAAWlTm_4(v4);
    result = OUTLINED_FUNCTION_34_9();
    atomic_store(result, v1);
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch16DialogExperienceCGMd, &_sSay10OmniSearch16DialogExperienceCGMR);
    lazy protocol witness table accessor for type ShippingOrder and conformance ShippingOrder(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined init with copy of Answer(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Answer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Answer(uint64_t a1)
{
  v2 = type metadata accessor for Answer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for EmailDocument(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type EmailDocument and conformance EmailDocument);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type EmailDocument and conformance EmailDocument);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type EmailDocument and conformance EmailDocument);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MobileSMSDocument(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type MobileSMSDocument and conformance MobileSMSDocument);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type MobileSMSDocument and conformance MobileSMSDocument);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type MobileSMSDocument and conformance MobileSMSDocument);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for CalendarEvent(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type CalendarEvent and conformance CalendarEvent);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type CalendarEvent and conformance CalendarEvent);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type CalendarEvent and conformance CalendarEvent);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Photo(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Photo and conformance Photo);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Photo and conformance Photo);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Photo and conformance Photo);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for NoteDocument(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type NoteDocument and conformance NoteDocument);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type NoteDocument and conformance NoteDocument);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type NoteDocument and conformance NoteDocument);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Reminder(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Reminder and conformance Reminder);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Reminder and conformance Reminder);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Reminder and conformance Reminder);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PhoneHistory(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type PhoneHistory and conformance PhoneHistory);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type PhoneHistory and conformance PhoneHistory);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type PhoneHistory and conformance PhoneHistory);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for VoicemailTranscript(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type VoicemailTranscript and conformance VoicemailTranscript);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type VoicemailTranscript and conformance VoicemailTranscript);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type VoicemailTranscript and conformance VoicemailTranscript);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for JournalEntry(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type JournalEntry and conformance JournalEntry);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type JournalEntry and conformance JournalEntry);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type JournalEntry and conformance JournalEntry);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for VoiceMemo(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type VoiceMemo and conformance VoiceMemo);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type VoiceMemo and conformance VoiceMemo);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type VoiceMemo and conformance VoiceMemo);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Safari(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Safari and conformance Safari);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Safari and conformance Safari);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Safari and conformance Safari);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for FileDocument(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type FileDocument and conformance FileDocument);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type FileDocument and conformance FileDocument);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type FileDocument and conformance FileDocument);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for WalletTransaction(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type WalletTransaction and conformance WalletTransaction);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type WalletTransaction and conformance WalletTransaction);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type WalletTransaction and conformance WalletTransaction);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for WalletPass(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type WalletPass and conformance WalletPass);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type WalletPass and conformance WalletPass);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type WalletPass and conformance WalletPass);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Contact(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Contact and conformance Contact);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Contact and conformance Contact);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Contact and conformance Contact);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Answer(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Answer and conformance Answer);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Answer and conformance Answer);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type Answer and conformance Answer);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for OnScreen(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type OnScreen and conformance OnScreen);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type OnScreen and conformance OnScreen);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type OnScreen and conformance OnScreen);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GenericSpotlightItem(void *a1)
{
  a1[1] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type GenericSpotlightItem and conformance GenericSpotlightItem);
  a1[2] = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type GenericSpotlightItem and conformance GenericSpotlightItem);
  result = _s10OmniSearch0B6ResultVACSEAAWlTm_4(&lazy protocol witness table cache variable for type GenericSpotlightItem and conformance GenericSpotlightItem);
  a1[3] = result;
  return result;
}

unint64_t _s10OmniSearch0B6ResultVACSEAAWlTm_4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void type metadata completion function for Answer(uint64_t a1)
{
  type metadata accessor for [String : String]();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [SearchResult](319, &lazy cache variable for type metadata for [SearchResult], type metadata accessor for SearchResult, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [SearchResult](319, &lazy cache variable for type metadata for [DialogExperience], type metadata accessor for DialogExperience, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [SearchResult](319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [SearchResult](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Answer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_44()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_23_25()
{

  return type metadata accessor for Answer(0);
}

uint64_t SpotlightIndexRequest.init(userQuery:targetMatches:spQUParse:allowedTypes:locale:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  v9 = 20;
  if ((a4 & 1) == 0)
  {
    v9 = a3;
  }

  a9[2] = v9;
  a9[3] = a5;
  a9[4] = a6;
  a9[5] = a7;
  a9[6] = a8;
  return result;
}

uint64_t SpotlightIndexRequest.userQuery.getter()
{
  v1 = *v0;

  return v1;
}

void *SpotlightIndexRequest.spQUParse.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t SpotlightIndexRequest.locale.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SpotlightIndexRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  if (v3)
  {
    v7 = v3;
    if (!outlined bridged method (pb) of @objc SPQUParse.getEncodedData()(v7))
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    v8 = Dictionary.description.getter();
    v10 = v9;

    MEMORY[0x25F89F6C0](v8, v10);

    v12 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v12 = 7104878;
    v11 = 0xE300000000000000;
  }

  _StringGuts.grow(_:)(80);
  MEMORY[0x25F89F6C0](0x6575512072657355, 0xEC000000203A7972);
  MEMORY[0x25F89F6C0](v1, v2);
  MEMORY[0x25F89F6C0](0xD000000000000012, 0x800000025DBF7870);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F89F6C0](v13);

  MEMORY[0x25F89F6C0](0x615055515053202CLL, 0xED0000203A657372);
  MEMORY[0x25F89F6C0](v12, v11);

  MEMORY[0x25F89F6C0](0xD000000000000011, 0x800000025DBF7890);
  v14 = MEMORY[0x25F89F8A0](v4, &type metadata for SearchEntityTypeIdentifier);
  MEMORY[0x25F89F6C0](v14);

  MEMORY[0x25F89F6C0](0x656C61636F6C202CLL, 0xEA0000000000203ALL);
  if (v6)
  {
    v15 = v5;
  }

  else
  {
    v15 = 7104878;
  }

  if (v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  MEMORY[0x25F89F6C0](v15, v16);

  return 0;
}

uint64_t outlined bridged method (pb) of @objc SPQUParse.getEncodedData()(void *a1)
{
  v1 = [a1 getEncodedData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t SpotlightRankingItem.intelligenceFlowTelemetry()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef9SpotlightE13RetrievalTypeOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef9SpotlightE13RetrievalTypeOSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.init()();
  v3 = SpotlightRankingItem.retrievalType.getter();
  if ((v4 & 1) == 0)
  {
    MEMORY[0x25F89E9E0](v3);
    MEMORY[0x25F89E2F0](v2);
  }

  SpotlightRankingItem.bundleId.getter();
  IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.bundleId.setter();
  v5 = SpotlightRankingItem.likelihood.getter();
  v6 = OUTLINED_FUNCTION_0_68(v5);
  MEMORY[0x25F89E2C0](v6);
  v7 = SpotlightRankingItem.topicality.getter();
  v8 = OUTLINED_FUNCTION_0_68(v7);
  MEMORY[0x25F89E2D0](v8);
  v9 = SpotlightRankingItem.pommesL1Score.getter();
  v10 = OUTLINED_FUNCTION_0_68(v9);
  MEMORY[0x25F89E2E0](v10);
  v11 = SpotlightRankingItem.pommesCalibratedL1Score.getter();
  v12 = OUTLINED_FUNCTION_0_68(v11);
  MEMORY[0x25F89E320](v12);
  v13 = SpotlightRankingItem.embeddingSimilarity.getter();
  v14 = OUTLINED_FUNCTION_0_68(v13);
  MEMORY[0x25F89E310](v14);
  matched = SpotlightRankingItem.keywordMatchScore.getter();
  v16 = OUTLINED_FUNCTION_0_68(matched);
  MEMORY[0x25F89E300](v16);
  v17 = SpotlightRankingItem.freshness.getter();
  v18 = OUTLINED_FUNCTION_0_68(v17);
  return MEMORY[0x25F89E340](v18);
}

id SPQUParse.init(from:query:isExpectingAnswer:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v204 = a4;
  v206 = a1;
  Entity = type metadata accessor for PersonQueryEntity(0);
  OUTLINED_FUNCTION_14();
  v197 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  v198 = v8;
  v210 = type metadata accessor for LocationQueryEntity(0);
  OUTLINED_FUNCTION_14();
  v196 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_3();
  v208 = v11;
  v12 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  *&v209 = &v194 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v194 - v18;
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v20, static Logging.searchComponentSignposter);
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v20, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v21 = OSSignposter.logHandle.getter();
  v22 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v23 = v12;
    v24 = a2;
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v21, v22, v26, "SearchTool.SPQUParseFromStructuredQuery", "", v25, 2u);
    a2 = v24;
    v12 = v23;
    OUTLINED_FUNCTION_42_0();
  }

  (*(v14 + 16))(v209, v19, v12);
  type metadata accessor for OSSignpostIntervalState();
  v27 = swift_allocObject();
  v203 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v19, v12);
  type metadata accessor for TokenArgumentCollector();
  v28 = swift_allocObject();
  v28[2] = MEMORY[0x277D84F90];
  v202 = v28 + 2;
  v28[3] = a2;
  v28[4] = a3;
  v29 = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_0_69();
  v207 = v27;
  EntityProperty.wrappedValue.getter();
  if (v211)
  {
    v30 = static SPQUParse.extractedTypeToIntentLabel(_:)(v211);
  }

  else
  {
    OUTLINED_FUNCTION_0_69();
    EntityProperty.wrappedValue.getter();
    v30 = static SPQUParse.preferredTypeToIntentLabel(_:)(v211);
  }

  v200 = v30;
  v201 = v31;

  v205 = v29;
  OUTLINED_FUNCTION_0_69();
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_25_26();
  if (v33)
  {
    v32 = MEMORY[0x277D84F90];
  }

  v34 = *(v32 + 16);
  if (v34)
  {
    v35 = (v32 + 32);
    v209 = xmmword_25DBC8180;
    do
    {
      v36 = *v35++;
      LOBYTE(v211) = v36;
      v37 = static SPQUParse.filterTypeToQUPPArg(_:)(&v211);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_34_28(inited);
      v39 = 0xE500000000000000;
      v40 = 0x6D72616C61;
      v42 = v41;
      switch(v36)
      {
        case 1:
          v39 = 0xE400000000000000;
          v40 = 1802465122;
          break;
        case 2:
        case 34:
          OUTLINED_FUNCTION_159_3();
          break;
        case 3:
          OUTLINED_FUNCTION_20_24();
          break;
        case 4:
          OUTLINED_FUNCTION_4_47();
          goto LABEL_25;
        case 5:
          OUTLINED_FUNCTION_30_24();
          goto LABEL_41;
        case 6:
          OUTLINED_FUNCTION_21_29();
LABEL_41:
          OUTLINED_FUNCTION_6_35();
          break;
        case 7:
          OUTLINED_FUNCTION_10_38();
          break;
        case 8:
          OUTLINED_FUNCTION_19_34();
          break;
        case 9:
          OUTLINED_FUNCTION_29_19();
          goto LABEL_52;
        case 10:
          v39 = 0xE400000000000000;
          v40 = 1818845549;
          break;
        case 11:
          OUTLINED_FUNCTION_14_29();
          break;
        case 12:
          v39 = 0xE700000000000000;
          v46 = 0x67617373656DLL;
          goto LABEL_52;
        case 13:
          OUTLINED_FUNCTION_28_25();
          break;
        case 14:
          OUTLINED_FUNCTION_22_25();
          OUTLINED_FUNCTION_69_2();
          v39 = v44 + 1264;
          break;
        case 15:
          OUTLINED_FUNCTION_3_52();
          v39 = v49 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 16:
          OUTLINED_FUNCTION_2_53();
          break;
        case 17:
          v43 = 1852794992;
          goto LABEL_36;
        case 18:
          v48 = 1953458288;
          goto LABEL_47;
        case 19:
          OUTLINED_FUNCTION_8_41();
          v39 = v51 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          break;
        case 20:
        case 21:
          OUTLINED_FUNCTION_7_44();
          break;
        case 22:
          v39 = 0xE300000000000000;
          v40 = 6447476;
          break;
        case 23:
          v40 = 0x72656D6974;
          break;
        case 24:
          v48 = 1701079414;
          goto LABEL_47;
        case 25:
          OUTLINED_FUNCTION_17_35();
          OUTLINED_FUNCTION_124_1();
          v39 = v47 + 7;
          break;
        case 26:
          OUTLINED_FUNCTION_124_1();
          goto LABEL_56;
        case 27:
          OUTLINED_FUNCTION_15_34();
          break;
        case 28:
          OUTLINED_FUNCTION_11_40();
LABEL_52:
          v40 = v46 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
          break;
        case 29:
          OUTLINED_FUNCTION_40_22();
          break;
        case 30:
          OUTLINED_FUNCTION_69_2();
          v39 = v50 + 1786;
          break;
        case 31:
          OUTLINED_FUNCTION_41_19();
          break;
        case 32:
          v48 = 1836018803;
LABEL_47:
          v40 = v48 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
          break;
        case 33:
          OUTLINED_FUNCTION_26_25();
LABEL_25:
          v39 = v45 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 35:
          v39 = 0xE400000000000000;
          v40 = 1802398060;
          break;
        case 36:
          v43 = 1769369453;
LABEL_36:
          v40 = v43 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
          break;
        case 37:
          v39 = 0xE600000000000000;
          v40 = 0x697261666173;
          break;
        case 38:
          OUTLINED_FUNCTION_69_2();
LABEL_56:
          OUTLINED_FUNCTION_16_33();
          break;
        default:
          break;
      }

      *(v42 + 32) = v40;
      *(v42 + 40) = v39;
      TokenArgumentCollector.addArguments(_:argLabel:findRange:)(v42, v37, 0);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      --v34;
    }

    while (v34);
  }

  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_25_26();
  if (v33)
  {
    v52 = MEMORY[0x277D84F90];
  }

  v53 = *(v52 + 16);
  if (v53)
  {
    v54 = (v52 + 32);
    v209 = xmmword_25DBC8180;
    do
    {
      v55 = *v54++;
      LOBYTE(v211) = v55;
      v56 = static SPQUParse.preferredTypeToQUPPArg(_:)(&v211);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v57 = swift_initStackObject();
      OUTLINED_FUNCTION_34_28(v57);
      LOBYTE(v211) = v55;
      v57[2].n128_u64[0] = PreferredType.rawValue.getter();
      v57[2].n128_u64[1] = v58;
      TokenArgumentCollector.addArguments(_:argLabel:findRange:)(v57, v56, 0);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      --v53;
    }

    while (v53);
  }

  EntityProperty.wrappedValue.getter();
  if (v211)
  {
    v59 = *(v211 + 16);

    if (v59)
    {
      EntityProperty.wrappedValue.getter();
      OUTLINED_FUNCTION_25_26();
      if (v33)
      {
        v60 = MEMORY[0x277D84F90];
      }

      v195 = v60;
      v61 = *(v60 + 16);
      if (v61)
      {
        v62 = (v195 + 32);
        v209 = xmmword_25DBC8180;
        do
        {
          v63 = *v62++;
          LOBYTE(v211) = v63;
          v64 = static SPQUParse.sourceTypeToQUPPArg(_:)(&v211);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v65 = swift_initStackObject();
          OUTLINED_FUNCTION_34_28(v65);
          v66 = 0xE700000000000000;
          v68 = v67;
          v69 = 0x726573776F7262;
          switch(v63)
          {
            case 1:
              OUTLINED_FUNCTION_159_3();
              break;
            case 2:
              OUTLINED_FUNCTION_20_24();
              break;
            case 3:
              OUTLINED_FUNCTION_4_47();
              goto LABEL_95;
            case 4:
              OUTLINED_FUNCTION_6_35();
              OUTLINED_FUNCTION_30_24();
              goto LABEL_97;
            case 5:
              OUTLINED_FUNCTION_6_35();
              OUTLINED_FUNCTION_21_29();
              break;
            case 6:
              OUTLINED_FUNCTION_10_38();
              break;
            case 7:
              OUTLINED_FUNCTION_19_34();
              break;
            case 8:
              OUTLINED_FUNCTION_29_19();
              goto LABEL_92;
            case 9:
              v66 = 0xE400000000000000;
              v69 = 1818845549;
              break;
            case 10:
              v71 = 0x67617373656DLL;
              goto LABEL_92;
            case 11:
              OUTLINED_FUNCTION_28_25();
              break;
            case 12:
              OUTLINED_FUNCTION_69_2();
              OUTLINED_FUNCTION_22_25();
              break;
            case 13:
              OUTLINED_FUNCTION_3_52();
              v66 = v74 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            case 14:
              OUTLINED_FUNCTION_2_53();
              break;
            case 15:
              v66 = 0xE500000000000000;
              v69 = 0x656E6F6870;
              break;
            case 16:
              v66 = 0xE500000000000000;
              v69 = 0x6F746F6870;
              break;
            case 17:
              OUTLINED_FUNCTION_8_41();
              v66 = v73 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
              break;
            case 18:
              OUTLINED_FUNCTION_7_44();
              break;
            case 19:
              OUTLINED_FUNCTION_7_44();
              v72 = 1953720652;
LABEL_95:
              v66 = v72 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            case 20:
              OUTLINED_FUNCTION_124_1();
              OUTLINED_FUNCTION_17_35();
              break;
            case 21:
              OUTLINED_FUNCTION_124_1();
              OUTLINED_FUNCTION_16_33();
              break;
            case 22:
              OUTLINED_FUNCTION_15_34();
              break;
            case 23:
              OUTLINED_FUNCTION_159_3();
              v70 = 0x746E657645;
LABEL_97:
              v66 = v70 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 24:
              OUTLINED_FUNCTION_14_29();
              break;
            case 25:
              OUTLINED_FUNCTION_11_40();
LABEL_92:
              v69 = v71 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              break;
            default:
              break;
          }

          *(v68 + 32) = v69;
          *(v68 + 40) = v66;
          OUTLINED_FUNCTION_37_18(v68, v64);
          swift_setDeallocating();
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          --v61;
        }

        while (v61);
      }
    }
  }

  OUTLINED_FUNCTION_0_69();
  EntityProperty.wrappedValue.getter();
  v75 = v208;
  if (v211)
  {
    v76 = *(v211 + 16);

    if (v76)
    {
      EntityProperty.wrappedValue.getter();
      OUTLINED_FUNCTION_25_26();
      if (v33)
      {
        v77 = MEMORY[0x277D84F90];
      }

      v195 = v77;
      v78 = *(v77 + 16);
      if (v78)
      {
        v79 = (v195 + 32);
        v194 = 0x800000025DBEDFF0;
        v209 = xmmword_25DBC8180;
        do
        {
          v80 = *v79++;
          LOBYTE(v211) = v80;
          v81 = static SPQUParse.containsTypeToQUPPArg(_:)(&v211);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v82 = swift_initStackObject();
          OUTLINED_FUNCTION_34_28(v82);
          v84 = v83;
          OUTLINED_FUNCTION_159_3();
          switch(v80)
          {
            case 1:
              OUTLINED_FUNCTION_20_24();
              break;
            case 2:
              OUTLINED_FUNCTION_4_47();
              goto LABEL_123;
            case 3:
              OUTLINED_FUNCTION_30_24();
              goto LABEL_126;
            case 4:
              OUTLINED_FUNCTION_21_29();
LABEL_126:
              OUTLINED_FUNCTION_6_35();
              break;
            case 5:
              OUTLINED_FUNCTION_10_38();
              break;
            case 6:
              OUTLINED_FUNCTION_19_34();
              break;
            case 7:
              OUTLINED_FUNCTION_29_19();
              goto LABEL_134;
            case 8:
              OUTLINED_FUNCTION_47_17();
              break;
            case 9:
              OUTLINED_FUNCTION_14_29();
              break;
            case 10:
              OUTLINED_FUNCTION_28_25();
              break;
            case 11:
              OUTLINED_FUNCTION_22_25();
              OUTLINED_FUNCTION_69_2();
              v85 = v90 + 1264;
              break;
            case 12:
              OUTLINED_FUNCTION_3_52();
              goto LABEL_144;
            case 13:
              OUTLINED_FUNCTION_2_53();
              break;
            case 14:
              v85 = 0xE500000000000000;
              v88 = 1953458288;
              goto LABEL_130;
            case 15:
              OUTLINED_FUNCTION_8_41();
              goto LABEL_141;
            case 16:
              OUTLINED_FUNCTION_7_44();
              break;
            case 17:
              v85 = 0xE500000000000000;
              v88 = 1701079414;
              goto LABEL_130;
            case 18:
              OUTLINED_FUNCTION_17_35();
              OUTLINED_FUNCTION_124_1();
              v85 = v94 + 7;
              break;
            case 19:
              OUTLINED_FUNCTION_124_1();
              OUTLINED_FUNCTION_16_33();
              break;
            case 20:
              OUTLINED_FUNCTION_15_34();
              break;
            case 21:
              OUTLINED_FUNCTION_11_40();
LABEL_134:
              v86 = v93 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              break;
            case 22:
              OUTLINED_FUNCTION_48_14();
              v91 = 7630437;
LABEL_144:
              v85 = v91 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            case 23:
              v85 = 0xE400000000000000;
              v86 = 1685217635;
              break;
            case 24:
              OUTLINED_FUNCTION_45_18();
              break;
            case 25:
              OUTLINED_FUNCTION_42_22();
              break;
            case 26:
              OUTLINED_FUNCTION_44_23();
              break;
            case 27:
              OUTLINED_FUNCTION_46_22();
              break;
            case 28:
              OUTLINED_FUNCTION_50_15();
              OUTLINED_FUNCTION_69_2();
              v85 = v96 + 1785;
              break;
            case 29:
              OUTLINED_FUNCTION_24_26();
              break;
            case 30:
              OUTLINED_FUNCTION_13_29();
              v86 = v95 & 0xFFFFFFFFFFFFLL | 0x6853000000000000;
              v92 = 30575;
LABEL_141:
              v85 = v92 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
              break;
            case 31:
              OUTLINED_FUNCTION_13_29();
              OUTLINED_FUNCTION_35_25();
              break;
            case 32:
              v86 = 0xD000000000000012;
              v85 = v194;
              break;
            case 33:
              OUTLINED_FUNCTION_40_22();
              break;
            case 34:
              OUTLINED_FUNCTION_69_2();
              v85 = v89 + 1786;
              break;
            case 35:
              OUTLINED_FUNCTION_41_19();
              break;
            case 36:
              v85 = 0xE500000000000000;
              v88 = 1836018803;
LABEL_130:
              v86 = v88 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
              break;
            case 37:
              OUTLINED_FUNCTION_26_25();
LABEL_123:
              v85 = v87 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            default:
              break;
          }

          *(v84 + 32) = v86;
          *(v84 + 40) = v85;
          OUTLINED_FUNCTION_37_18(v84, v81);
          swift_setDeallocating();
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          --v78;
        }

        while (v78);
      }
    }
  }

  EntityProperty.wrappedValue.getter();
  if (v211)
  {
    v97 = *(v211 + 16);

    if (v97)
    {
      EntityProperty.wrappedValue.getter();
      OUTLINED_FUNCTION_25_26();
      if (v33)
      {
        v98 = MEMORY[0x277D84F90];
      }

      v207 = v98;
      v99 = *(v98 + 16);
      if (v99)
      {
        v100 = (v207 + 32);
        v195 = 0x800000025DBEDFF0;
        v209 = xmmword_25DBC8180;
        do
        {
          v101 = *v100++;
          LOBYTE(v211) = v101;
          v102 = static SPQUParse.extractedTypeToQUPPArg(_:)(&v211);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v103 = swift_initStackObject();
          OUTLINED_FUNCTION_34_28(v103);
          v105 = v104;
          OUTLINED_FUNCTION_48_14();
          switch(v101)
          {
            case 1:
              v106 = 0xE400000000000000;
              v107 = 1685217635;
              break;
            case 2:
              OUTLINED_FUNCTION_45_18();
              break;
            case 3:
              OUTLINED_FUNCTION_42_22();
              break;
            case 4:
              OUTLINED_FUNCTION_44_23();
              break;
            case 5:
              OUTLINED_FUNCTION_47_17();
              break;
            case 6:
              OUTLINED_FUNCTION_46_22();
              break;
            case 7:
              OUTLINED_FUNCTION_69_2();
              OUTLINED_FUNCTION_50_15();
              break;
            case 8:
              OUTLINED_FUNCTION_24_26();
              break;
            case 9:
              OUTLINED_FUNCTION_13_29();
              v107 = v109 & 0xFFFFFFFFFFFFLL | 0x6853000000000000;
              v106 = 0xEA0000000000776FLL;
              break;
            case 10:
              OUTLINED_FUNCTION_13_29();
              OUTLINED_FUNCTION_35_25();
              break;
            case 11:
              v107 = 0xD000000000000012;
              v106 = v195;
              break;
            case 12:
              OUTLINED_FUNCTION_11_40();
              v107 = v108 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              break;
            default:
              break;
          }

          *(v105 + 32) = v107;
          *(v105 + 40) = v106;
          OUTLINED_FUNCTION_37_18(v105, v102);
          swift_setDeallocating();
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          --v99;
        }

        while (v99);
      }

      v75 = v208;
    }
  }

  OUTLINED_FUNCTION_0_69();
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_25_26();
  if (v33)
  {
    v111 = MEMORY[0x277D84F90];
  }

  else
  {
    v111 = v110;
  }

  v112 = *(v111 + 16);
  *&v209 = v28;
  if (v112)
  {
    v113 = *(v196 + 80);
    v195 = v111;
    v114 = v111 + ((v113 + 32) & ~v113);
    v207 = *(v196 + 72);
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v117 = MEMORY[0x277D84F90];
    do
    {
      _s10OmniSearch19LocationQueryEntityVWOcTm_1(v114, v75, type metadata accessor for LocationQueryEntity);
      EntityProperty.wrappedValue.getter();
      v118 = v212;
      if (v212)
      {
        v119 = v211;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v133 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v133);
          v117 = v134;
        }

        v121 = *(v117 + 16);
        v120 = *(v117 + 24);
        if (v121 >= v120 >> 1)
        {
          v135 = OUTLINED_FUNCTION_22_5(v120);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v135);
          v117 = v136;
        }

        *(v117 + 16) = v121 + 1;
        v122 = v117 + 16 * v121;
        *(v122 + 32) = v119;
        *(v122 + 40) = v118;
        v75 = v208;
      }

      EntityProperty.wrappedValue.getter();
      v123 = v212;
      if (v212)
      {
        v124 = v211;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v137);
          v116 = v138;
        }

        v126 = *(v116 + 16);
        v125 = *(v116 + 24);
        if (v126 >= v125 >> 1)
        {
          v139 = OUTLINED_FUNCTION_22_5(v125);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v139);
          v116 = v140;
        }

        *(v116 + 16) = v126 + 1;
        v127 = v116 + 16 * v126;
        *(v127 + 32) = v124;
        *(v127 + 40) = v123;
        v75 = v208;
      }

      EntityProperty.wrappedValue.getter();
      v128 = v212;
      if (v212)
      {
        v129 = v211;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v141 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v141);
          v115 = v142;
        }

        v131 = *(v115 + 16);
        v130 = *(v115 + 24);
        if (v131 >= v130 >> 1)
        {
          v143 = OUTLINED_FUNCTION_22_5(v130);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v143);
          v115 = v144;
        }

        *(v115 + 16) = v131 + 1;
        v132 = v115 + 16 * v131;
        *(v132 + 32) = v129;
        *(v132 + 40) = v128;
        v75 = v208;
      }

      _s10OmniSearch19LocationQueryEntityVWOhTm_0(v75, type metadata accessor for LocationQueryEntity);
      v114 += v207;
      --v112;
    }

    while (v112);
  }

  else
  {

    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v117 = MEMORY[0x277D84F90];
  }

  if (*(v117 + 16))
  {
    OUTLINED_FUNCTION_37_18(v117, 5);
  }

  if (*(v116 + 16))
  {
    OUTLINED_FUNCTION_37_18(v116, 7);
  }

  if (*(v115 + 16))
  {
    OUTLINED_FUNCTION_37_18(v115, 6);
  }

  OUTLINED_FUNCTION_0_69();
  EntityProperty.wrappedValue.getter();
  static SPQUParse.temporalReferenceToQUPPArg(_:)(&v211);
  if ((v145 & 1) == 0)
  {
    EntityProperty.wrappedValue.getter();
    v146 = 0xE600000000000000;
    v147 = 0x657275747566;
    switch(v211)
    {
      case 1:
        v146 = 0xE400000000000000;
        v147 = 1953718640;
        goto LABEL_209;
      case 2:
        v146 = 0xEB00000000646569;
        v147 = 0x6669636570736E75;
        goto LABEL_209;
      case 3:
        break;
      default:
LABEL_209:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v148 = swift_initStackObject();
        *(v148 + 16) = xmmword_25DBC8180;
        *(v148 + 32) = v147;
        *(v148 + 40) = v146;
        OUTLINED_FUNCTION_38_24(v148);
        swift_setDeallocating();
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        break;
    }
  }

  OUTLINED_FUNCTION_0_69();
  EntityProperty.wrappedValue.getter();
  if (v211 != 2)
  {
    EntityProperty.wrappedValue.getter();
    if (v211 != 2)
    {
      if (v211)
      {
        v149 = 0x69646E6563736564;
      }

      else
      {
        v149 = 0x6E69646E65637361;
      }

      if (v211)
      {
        v150 = 0xEA0000000000676ELL;
      }

      else
      {
        v150 = 0xE900000000000067;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v151 = swift_initStackObject();
      *(v151 + 16) = xmmword_25DBC8180;
      *(v151 + 32) = v149;
      *(v151 + 40) = v150;
      OUTLINED_FUNCTION_38_24(v151);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
    }
  }

  OUTLINED_FUNCTION_0_69();
  EntityProperty.wrappedValue.getter();
  v152 = static SPQUParse.appEntityStatusToQUPPArg(_:)(&v211);
  if ((v153 & 1) == 0)
  {
    v152 = EntityProperty.wrappedValue.getter();
    if (v211 != 24)
    {
      LOBYTE(v217) = v211;
      v154 = AppEntityStatus.rawValue.getter();
      v156 = v155;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v157 = swift_initStackObject();
      *(v157 + 16) = xmmword_25DBC8180;
      *(v157 + 32) = v154;
      *(v157 + 40) = v156;
      OUTLINED_FUNCTION_38_24(v157);
      swift_setDeallocating();
      v152 = specialized _ContiguousArrayStorage.__deallocating_deinit();
    }
  }

  OUTLINED_FUNCTION_36_22(v152);
  if (v211)
  {
    v158 = 96;
  }

  else
  {
    v158 = 97;
  }

  EntityProperty.wrappedValue.getter();
  if (v211)
  {
    v159 = 0x72616C75676E6973;
  }

  else
  {
    v159 = 0x6C6172756C70;
  }

  if (v211)
  {
    v160 = 0xE800000000000000;
  }

  else
  {
    v160 = 0xE600000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v161 = swift_initStackObject();
  *(v161 + 16) = xmmword_25DBC8180;
  *(v161 + 32) = v159;
  *(v161 + 40) = v160;
  TokenArgumentCollector.addArguments(_:argLabel:findRange:)(v161, v158, 0);
  swift_setDeallocating();
  v162 = specialized _ContiguousArrayStorage.__deallocating_deinit();
  OUTLINED_FUNCTION_36_22(v162);
  v163 = OUTLINED_FUNCTION_49_20();
  OUTLINED_FUNCTION_39_22(v163, 1);

  OUTLINED_FUNCTION_36_22(v164);
  v165 = OUTLINED_FUNCTION_49_20();
  OUTLINED_FUNCTION_39_22(v165, 8);

  OUTLINED_FUNCTION_36_22(v166);
  v167 = v211;
  v168 = MEMORY[0x25F89F4C0](0xD000000000000021, 0x800000025DBF78B0);
  EnumValueFromIntentArgString = getEnumValueFromIntentArgString();

  OUTLINED_FUNCTION_39_22(v167, EnumValueFromIntentArgString);

  OUTLINED_FUNCTION_36_22(v170);
  v171 = OUTLINED_FUNCTION_49_20();
  OUTLINED_FUNCTION_39_22(v171, 68);

  OUTLINED_FUNCTION_36_22(v172);
  v173 = OUTLINED_FUNCTION_49_20();
  OUTLINED_FUNCTION_39_22(v173, 69);

  v175 = MEMORY[0x277D84F90];
  v216 = MEMORY[0x277D84F90];
  v217 = MEMORY[0x277D84F90];
  v214 = MEMORY[0x277D84F90];
  v215 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_36_22(v174);
  v176 = v211;

  if (v176)
  {
    v175 = v176;
  }

  v177 = *(v175 + 16);
  if (v177)
  {
    v178 = v198;
    v179 = v175 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
    v180 = *(v197 + 72);
    do
    {
      EntityVWOcTm_1 = _s10OmniSearch19LocationQueryEntityVWOcTm_1(v179, v178, type metadata accessor for PersonQueryEntity);
      OUTLINED_FUNCTION_54_23(EntityVWOcTm_1);
      if (v211)
      {

        OUTLINED_FUNCTION_32_29();
        EntityProperty.wrappedValue.getter();
        OUTLINED_FUNCTION_32_29();
        v182 = v213;
        if (v213)
        {
          specialized Array.append<A>(contentsOf:)(v213);
        }
      }

      else
      {
        v182 = OUTLINED_FUNCTION_53_17();
      }

      OUTLINED_FUNCTION_54_23(v182);
      if (v211)
      {

        OUTLINED_FUNCTION_32_29();
        EntityProperty.wrappedValue.getter();
        OUTLINED_FUNCTION_32_29();
        v183 = v213;
        if (v213)
        {
          specialized Array.append<A>(contentsOf:)(v213);
        }
      }

      else
      {
        v183 = OUTLINED_FUNCTION_53_17();
      }

      OUTLINED_FUNCTION_54_23(v183);
      if (v211)
      {

        OUTLINED_FUNCTION_32_29();
        EntityProperty.wrappedValue.getter();
        OUTLINED_FUNCTION_32_29();
        v184 = v213;
        if (v213)
        {
          specialized Array.append<A>(contentsOf:)(v213);
        }
      }

      else
      {
        v184 = OUTLINED_FUNCTION_53_17();
      }

      OUTLINED_FUNCTION_54_23(v184);
      if (v211)
      {

        OUTLINED_FUNCTION_32_29();
        EntityProperty.wrappedValue.getter();
        OUTLINED_FUNCTION_32_29();
        if (v213)
        {
          specialized Array.append<A>(contentsOf:)(v213);
        }
      }

      else
      {
        OUTLINED_FUNCTION_53_17();
      }

      _s10OmniSearch19LocationQueryEntityVWOhTm_0(v178, type metadata accessor for PersonQueryEntity);
      v179 += v180;
      --v177;
    }

    while (v177);
  }

  if (*(v217 + 16))
  {
    OUTLINED_FUNCTION_52_20(v217, 64);
  }

  if (*(v216 + 16))
  {
    OUTLINED_FUNCTION_52_20(v216, 65);
  }

  if (*(v215 + 16))
  {
    OUTLINED_FUNCTION_52_20(v215, 66);
  }

  if (*(v214 + 16))
  {
    OUTLINED_FUNCTION_52_20(v214, 104);
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v185 = type metadata accessor for Logger();
  __swift_project_value_buffer(v185, static Logging.search);
  v186 = Logger.logObject.getter();
  v187 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v186, v187))
  {
    v188 = swift_slowAlloc();
    *v188 = 0;
    _os_log_impl(&dword_25D85C000, v186, v187, "Finished collecting tokens; instantiating SPQUParse", v188, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v189 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v190 = MEMORY[0x25F89F4C0](v200, v201);

  swift_beginAccess();
  type metadata accessor for SPQUParseTokenArgument();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v192 = [v189 initWithIntentLabel:v190 tokenArguments:isa isPQA:v204 & 1];

  if (v192)
  {
  }

  $defer #1 () in SPQUParse.init(from:query:isExpectingAnswer:)(v203);

  _s10OmniSearch19LocationQueryEntityVWOhTm_0(v206, type metadata accessor for StructuredQueryEntity);
  return v192;
}

uint64_t key path setter for TokenArgumentCollector.tokenArguments : TokenArgumentCollector(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

uint64_t TokenArgumentCollector.tokenArguments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t TokenArgumentCollector.query.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *TokenArgumentCollector.__allocating_init(for:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = MEMORY[0x277D84F90];
  result[3] = a1;
  result[4] = a2;
  return result;
}

void *TokenArgumentCollector.init(for:)(uint64_t a1, uint64_t a2)
{
  v2[2] = MEMORY[0x277D84F90];
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

void TokenArgumentCollector.addArguments(_:argLabel:findRange:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v4 = v3;
    v6 = *(a1 + 16);
    if (v6)
    {
      v39 = objc_opt_self();
      v7 = (a1 + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;

        v10 = [v39 valueWithRange_];
        if (a3)
        {
          v11 = v4[3];
          v12 = v4[4];
          type metadata accessor for FeatureFlagService();
          v13 = swift_allocObject();
          v14 = String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(v8, v9, v13, v11, v12);
          v16 = v15;
          v18 = v17;

          if ((v18 & 1) == 0)
          {
            v19 = [v39 valueWithRange_];

            v10 = v19;
          }
        }

        v20 = llmIntentArgLabel();
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        objc_allocWithZone(MEMORY[0x277D65870]);

        v24 = v10;
        v25 = @nonobjc SPQUParseTokenArgument.init(label:token:tokenRange:)(v21, v23, v8, v9, v10);
        if (v25)
        {
          v26 = v25;

          v27 = *(*v4 + 112);
          v28 = v26;
          v29 = v27(v40);
          v31 = v30;
          MEMORY[0x25F89F850]();
          if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v29(v40, 0);
        }

        else
        {
          if (one-time initialization token for llmQU != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          __swift_project_value_buffer(v32, static Logging.llmQU);

          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v40[0] = v36;
            *v35 = 136315138;
            v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v35 + 4) = v37;
            _os_log_impl(&dword_25D85C000, v33, v34, "LLMQUParseConverter: Could not create token argument for token: %s", v35, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v36);
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_42_0();
          }

          else
          {
          }
        }

        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }
}