uint64_t sub_26BD24600(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449F10, &qword_26BDA5458);
  MEMORY[0x28223BE20](v3 - 8);
  v94 = v89 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449F00, &qword_26BDA5450);
  MEMORY[0x28223BE20](v5 - 8);
  v92 = v89 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449EF0, &qword_26BDA5448);
  MEMORY[0x28223BE20](v7 - 8);
  v89[5] = v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  MEMORY[0x28223BE20](v9 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  v10 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__triggers;
  v89[1] = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__triggers;
  v11 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__scb;
  v89[2] = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__scb;
  v13 = type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__cld;
  v89[3] = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__cld;
  v15 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__c2C;
  v89[4] = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__c2C;
  v17 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v90 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__carriersInfo;
  v18 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__carriersInfo) = MEMORY[0x277D84F90];
  v91 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__relatedProducts;
  *(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__relatedProducts) = v18;
  v19 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__grlProduct);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeProduct);
  v93 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeProduct);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeSymptom);
  v95 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeSymptom);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__randevuProduct);
  v96 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__randevuProduct);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__detectedCarrierID);
  v97 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__detectedCarrierID);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPurchaseRequirementsDescription);
  v98 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPurchaseRequirementsDescription);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v99 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  *(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow) = 0;
  v100 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__secureFlowResources;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__secureFlowResources, 1, 1, v11);
  v101 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__solutionIntentResources;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__solutionIntentResources, 1, 1, v11);
  v25 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__redirectURLString);
  v102 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__redirectURLString);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__locale);
  v103 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__locale);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v104 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__curbsideDetails;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__curbsideDetails, 1, 1, v11);
  v27 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPricingDisclaimer);
  v105 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPricingDisclaimer);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v106 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__appleIDRequirement;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__appleIDRequirement, 1, 1, v11);
  v107 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__emailAttributes;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__emailAttributes, 1, 1, v11);
  v108 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__contactCarriersInfo;
  *(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__contactCarriersInfo) = v18;
  v109 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__ers;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__ers, 1, 1, v11);
  v110 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData);
  *(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData) = xmmword_26BDA19C0;
  v111 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__takeInForServiceDetails;
  *(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__takeInForServiceDetails) = v18;
  v112 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__mailIn;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__mailIn, 1, 1, v11);
  v113 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__preContact;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__preContact, 1, 1, v11);
  v114 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__manageCoverageFlow;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__manageCoverageFlow, 1, 1, v11);
  swift_beginAccess();
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v28;
  *(v1 + 24) = v29;
  swift_beginAccess();
  v31 = *(a1 + 32);
  v30 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v31;
  *(v1 + 40) = v30;
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();

  sub_26BD2E160();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__carriersInfo;
  swift_beginAccess();
  v33 = *(a1 + v32);
  v34 = v90;
  swift_beginAccess();
  *(v1 + v34) = v33;

  v35 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__relatedProducts;
  swift_beginAccess();
  v36 = *(a1 + v35);
  v37 = v91;
  swift_beginAccess();
  *(v1 + v37) = v36;

  v38 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__grlProduct);
  swift_beginAccess();
  v40 = *v38;
  v39 = v38[1];
  swift_beginAccess();
  *v19 = v40;
  v19[1] = v39;

  v41 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeProduct);
  swift_beginAccess();
  v43 = *v41;
  v42 = v41[1];
  v44 = v93;
  swift_beginAccess();
  *v44 = v43;
  v44[1] = v42;

  v45 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeSymptom);
  swift_beginAccess();
  v47 = *v45;
  v46 = v45[1];
  v48 = v95;
  swift_beginAccess();
  *v48 = v47;
  v48[1] = v46;

  v49 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__randevuProduct);
  swift_beginAccess();
  v51 = *v49;
  v50 = v49[1];
  v52 = v96;
  swift_beginAccess();
  *v52 = v51;
  v52[1] = v50;

  v53 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__detectedCarrierID);
  swift_beginAccess();
  v55 = *v53;
  v54 = v53[1];
  v56 = v97;
  swift_beginAccess();
  *v56 = v55;
  v56[1] = v54;

  v57 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPurchaseRequirementsDescription);
  swift_beginAccess();
  v59 = *v57;
  v58 = v57[1];
  v60 = v98;
  swift_beginAccess();
  *v60 = v59;
  v60[1] = v58;

  v61 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  swift_beginAccess();
  LOBYTE(v61) = *(a1 + v61);
  v62 = v99;
  swift_beginAccess();
  *(v1 + v62) = v61;
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v63 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__redirectURLString);
  swift_beginAccess();
  v65 = *v63;
  v64 = v63[1];
  v66 = v102;
  swift_beginAccess();
  *v66 = v65;
  v66[1] = v64;

  v67 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__locale);
  swift_beginAccess();
  v69 = *v67;
  v68 = v67[1];
  v70 = v103;
  swift_beginAccess();
  *v70 = v69;
  v70[1] = v68;

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v71 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPricingDisclaimer);
  swift_beginAccess();
  v73 = *v71;
  v72 = v71[1];
  v74 = v105;
  swift_beginAccess();
  *v74 = v73;
  v74[1] = v72;

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v75 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__contactCarriersInfo;
  swift_beginAccess();
  v76 = *(a1 + v75);
  v77 = v108;
  swift_beginAccess();
  *(v1 + v77) = v76;

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v78 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData);
  swift_beginAccess();
  v80 = *v78;
  v79 = v78[1];
  v81 = v110;
  swift_beginAccess();
  v82 = v81;
  v83 = *v81;
  v84 = v82[1];
  *v82 = v80;
  v82[1] = v79;
  sub_26BCFEFC4(v80, v79);
  sub_26BCFF01C(v83, v84);
  v85 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__takeInForServiceDetails;
  swift_beginAccess();
  v86 = *(a1 + v85);
  v87 = v111;
  swift_beginAccess();
  *(v1 + v87) = v86;

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD31AF8();

  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  return v1;
}

uint64_t sub_26BD25548()
{

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__triggers, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__scb, &qword_280449EF0, &qword_26BDA5448);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__cld, &qword_280449F00, &qword_26BDA5450);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__c2C, &qword_280449F10, &qword_26BDA5458);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__secureFlowResources, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__solutionIntentResources, &qword_280448F88, &qword_26BDA5440);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__curbsideDetails, &qword_280448F88, &qword_26BDA5440);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__appleIDRequirement, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__emailAttributes, &qword_280448F88, &qword_26BDA5440);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__ers, &qword_280448F88, &qword_26BDA5440);
  sub_26BCFF01C(*(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData), *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData + 8));

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__mailIn, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__preContact, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__manageCoverageFlow, &qword_280448F88, &qword_26BDA5440);
  return v0;
}

uint64_t sub_26BD257E0()
{
  v0 = sub_26BD25548();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t SupportOptionDetailsResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for SupportOptionDetailsResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for SupportOptionDetailsResponse._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_36();
    v10 = sub_26BD24600(v11);
    *(v4 + v8) = v10;
  }

  return sub_26BD258D4(v10, a1, a2, a3);
}

uint64_t sub_26BD258D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  while (1)
  {
    result = sub_26BDA0900();
    if (v5 || (v7 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        swift_beginAccess();
        sub_26BD04DD8();
        sub_26BDA0930();
        goto LABEL_16;
      case 2:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_16;
      case 3:
        swift_beginAccess();
        sub_26BDA0810();
        v8 = &qword_280449130;
        v9 = MEMORY[0x277D215C8];
        v10 = MEMORY[0x277D215C0];
        goto LABEL_13;
      case 5:
        swift_beginAccess();
        type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
        v8 = &qword_28044A098;
        v9 = type metadata accessor for SupportOptionDetailsResponse.SCBDetails;
        v10 = &protocol conformance descriptor for SupportOptionDetailsResponse.SCBDetails;
        goto LABEL_13;
      case 6:
        swift_beginAccess();
        type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
        v8 = &qword_28044A0B0;
        v9 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails;
        v10 = &protocol conformance descriptor for SupportOptionDetailsResponse.CLDDetails;
LABEL_13:
        sub_26BD2E1F8(v8, v9, v10);
        sub_26BDA09B0();
        goto LABEL_16;
      case 7:
        swift_beginAccess();
        type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
        v14 = &qword_28044A0C8;
        v15 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails;
        v16 = &protocol conformance descriptor for SupportOptionDetailsResponse.C2CDetails;
        goto LABEL_22;
      case 8:
      case 24:
        swift_beginAccess();
        sub_26BDA0810();
        v11 = &qword_280449130;
        v12 = MEMORY[0x277D215C8];
        v13 = MEMORY[0x277D215C0];
        goto LABEL_20;
      case 9:
        swift_beginAccess();
        type metadata accessor for AssociatedProductInfo(0);
        v11 = &qword_28044A058;
        v12 = type metadata accessor for AssociatedProductInfo;
        v13 = &protocol conformance descriptor for AssociatedProductInfo;
        goto LABEL_20;
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 19:
      case 20:
      case 28:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_16;
      case 16:
        swift_beginAccess();
        sub_26BDA0920();
        goto LABEL_16;
      case 17:
      case 18:
      case 21:
      case 22:
      case 23:
      case 25:
        swift_beginAccess();
        sub_26BDA0810();
        v14 = &qword_280449130;
        v15 = MEMORY[0x277D215C8];
        v16 = MEMORY[0x277D215C0];
LABEL_22:
        sub_26BD2E1F8(v14, v15, v16);
        goto LABEL_23;
      case 26:
        swift_beginAccess();
        sub_26BDA0940();
        goto LABEL_16;
      case 27:
        swift_beginAccess();
        type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(0);
        v11 = &qword_28044A0E0;
        v12 = type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails;
        v13 = &protocol conformance descriptor for SupportOptionDetailsResponse.TakeInForServiceDetails;
LABEL_20:
        sub_26BD2E1F8(v11, v12, v13);
        sub_26BDA09A0();
        goto LABEL_16;
      case 29:
      case 30:
        swift_beginAccess();
        sub_26BDA0810();
        sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
LABEL_23:
        sub_26BDA09B0();
LABEL_16:
        v5 = 0;
        swift_endAccess();
        break;
      case 31:
        swift_beginAccess();
        sub_26BDA0810();
        sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
        sub_26BDA09B0();
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t SupportOptionDetailsResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_156_0();
  type metadata accessor for SupportOptionDetailsResponse(v5);
  OUTLINED_FUNCTION_129();
  result = sub_26BD26198(v6, v7, v8, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_167();
    return sub_26BDA0830();
  }

  return result;
}

uint64_t sub_26BD26198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449F10, &qword_26BDA5458);
  MEMORY[0x28223BE20](v7 - 8);
  v170 = &v145 - v8;
  v164 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
  MEMORY[0x28223BE20](v164);
  v162 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449F00, &qword_26BDA5450);
  MEMORY[0x28223BE20](v10 - 8);
  v166 = &v145 - v11;
  v167 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
  MEMORY[0x28223BE20](v167);
  v163 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449EF0, &qword_26BDA5448);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v145 - v14;
  v169 = type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
  MEMORY[0x28223BE20](v169);
  v165 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v147 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v149 = &v145 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v150 = &v145 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v153 = &v145 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v155 = &v145 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v157 = &v145 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v158 = &v145 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v160 = &v145 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v161 = &v145 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v145 - v36;
  v173 = sub_26BDA0810();
  v168 = *(v173 - 8);
  v38 = MEMORY[0x28223BE20](v173);
  v145 = &v145 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v146 = &v145 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v148 = &v145 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v151 = &v145 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v154 = &v145 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v152 = &v145 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v156 = &v145 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v159 = &v145 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v171 = &v145 - v55;
  MEMORY[0x28223BE20](v54);
  v57 = &v145 - v56;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v58 = *(a1 + 24);
    v174 = *(a1 + 16);
    v175 = v58;
    sub_26BD04DD8();
    result = sub_26BDA0A50();
    if (v4)
    {
      return result;
    }
  }

  v176 = a4;
  v60 = v4;
  swift_beginAccess();
  v61 = *(a1 + 32);
  v62 = *(a1 + 40);
  v172 = a1;
  v63 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v63 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (v63)
  {

    sub_26BDA0AB0();
    if (v60)
    {
    }
  }

  swift_beginAccess();
  sub_26BD31AF8();
  v64 = v173;
  if (__swift_getEnumTagSinglePayload(v37, 1, v173) == 1)
  {
    sub_26BD04E80(v37, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v65 = v168;
    (*(v168 + 32))(v57, v37, v64);
    sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
    sub_26BDA0AD0();
    if (v60)
    {
      return (*(v65 + 8))(v57, v64);
    }

    v60 = 0;
    (*(v65 + 8))(v57, v64);
  }

  v66 = v172;
  swift_beginAccess();
  sub_26BD31AF8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v169);
  v68 = v170;
  v69 = v171;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_280449EF0, &qword_26BDA5448);
  }

  else
  {
    sub_26BD2DF9C();
    sub_26BD2E1F8(&qword_28044A098, type metadata accessor for SupportOptionDetailsResponse.SCBDetails, &protocol conformance descriptor for SupportOptionDetailsResponse.SCBDetails);
    sub_26BDA0AD0();
    if (v60)
    {
      return sub_26BD2E04C();
    }

    v60 = 0;
    sub_26BD2E04C();
  }

  swift_beginAccess();
  v70 = v166;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v70, 1, v167) == 1)
  {
    sub_26BD04E80(v70, &qword_280449F00, &qword_26BDA5450);
    v71 = v60;
  }

  else
  {
    sub_26BD2DF9C();
    sub_26BD2E1F8(&qword_28044A0B0, type metadata accessor for SupportOptionDetailsResponse.CLDDetails, &protocol conformance descriptor for SupportOptionDetailsResponse.CLDDetails);
    sub_26BDA0AD0();
    v71 = v60;
    if (v60)
    {
      return sub_26BD2E04C();
    }

    sub_26BD2E04C();
    v66 = v172;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v68, 1, v164) == 1)
  {
    sub_26BD04E80(v68, &qword_280449F10, &qword_26BDA5458);
    goto LABEL_27;
  }

  sub_26BD2DF9C();
  sub_26BD2E1F8(&qword_28044A0C8, type metadata accessor for SupportOptionDetailsResponse.C2CDetails, &protocol conformance descriptor for SupportOptionDetailsResponse.C2CDetails);
  sub_26BDA0AD0();
  if (v71)
  {
    return sub_26BD2E04C();
  }

  sub_26BD2E04C();
LABEL_27:
  v72 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__carriersInfo;
  swift_beginAccess();
  if (*(*(v66 + v72) + 16))
  {
    sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);

    sub_26BDA0AC0();
    if (v71)
    {
    }

    v73 = 0;
  }

  else
  {
    v73 = v71;
  }

  v74 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__relatedProducts;
  swift_beginAccess();
  if (*(*(v66 + v74) + 16))
  {
    type metadata accessor for AssociatedProductInfo(0);
    sub_26BD2E1F8(&qword_28044A058, type metadata accessor for AssociatedProductInfo, &protocol conformance descriptor for AssociatedProductInfo);

    sub_26BDA0AC0();
    v75 = v73;
    if (v73)
    {
    }
  }

  else
  {
    v75 = v73;
  }

  v76 = (v66 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__grlProduct);
  swift_beginAccess();
  v77 = *v76;
  v78 = v76[1];
  v79 = HIBYTE(v78) & 0xF;
  if ((v78 & 0x2000000000000000) == 0)
  {
    v79 = v77 & 0xFFFFFFFFFFFFLL;
  }

  if (v79)
  {

    sub_26BDA0AB0();
    if (v75)
    {
    }
  }

  v80 = (v66 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeProduct);
  swift_beginAccess();
  v81 = *v80;
  v82 = v80[1];
  v83 = HIBYTE(v82) & 0xF;
  if ((v82 & 0x2000000000000000) == 0)
  {
    v83 = v81 & 0xFFFFFFFFFFFFLL;
  }

  if (v83)
  {

    sub_26BDA0AB0();
    if (v75)
    {
    }
  }

  v84 = (v66 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeSymptom);
  swift_beginAccess();
  v85 = *v84;
  v86 = v84[1];
  v87 = HIBYTE(v86) & 0xF;
  if ((v86 & 0x2000000000000000) == 0)
  {
    v87 = v85 & 0xFFFFFFFFFFFFLL;
  }

  if (v87)
  {

    sub_26BDA0AB0();
    if (v75)
    {
    }
  }

  v88 = (v66 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__randevuProduct);
  swift_beginAccess();
  v89 = *v88;
  v90 = v88[1];
  v91 = HIBYTE(v90) & 0xF;
  if ((v90 & 0x2000000000000000) == 0)
  {
    v91 = v89 & 0xFFFFFFFFFFFFLL;
  }

  if (v91)
  {

    sub_26BDA0AB0();
    if (v75)
    {
    }
  }

  v92 = (v66 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__detectedCarrierID);
  swift_beginAccess();
  v93 = *v92;
  v94 = v92[1];
  v95 = HIBYTE(v94) & 0xF;
  if ((v94 & 0x2000000000000000) == 0)
  {
    v95 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (v95)
  {

    sub_26BDA0AB0();
    if (!v75)
    {

      goto LABEL_60;
    }
  }

LABEL_60:
  v96 = (v66 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPurchaseRequirementsDescription);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  v99 = HIBYTE(v98) & 0xF;
  if ((v98 & 0x2000000000000000) == 0)
  {
    v99 = v97 & 0xFFFFFFFFFFFFLL;
  }

  if (v99)
  {

    sub_26BDA0AB0();
    if (v75)
    {
    }
  }

  v100 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  swift_beginAccess();
  if (*(v66 + v100) != 1 || (result = sub_26BDA0A40(), !v75))
  {
    swift_beginAccess();
    v101 = v161;
    sub_26BD31AF8();
    v102 = v173;
    if (__swift_getEnumTagSinglePayload(v101, 1, v173) == 1)
    {
      sub_26BD04E80(v101, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      v103 = v101;
      v104 = v168;
      (*(v168 + 32))(v69, v103, v102);
      sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      if (v75)
      {
        return (*(v104 + 8))(v69, v102);
      }

      (*(v104 + 8))(v69, v102);
    }

    swift_beginAccess();
    v105 = v160;
    sub_26BD31AF8();
    v106 = v173;
    if (__swift_getEnumTagSinglePayload(v105, 1, v173) == 1)
    {
      sub_26BD04E80(v105, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      v107 = v105;
      v108 = v168;
      (*(v168 + 32))(v159, v107, v106);
      sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      if (v75)
      {
        return (*(v108 + 8))(v159, v106);
      }

      (*(v108 + 8))(v159, v106);
    }

    v109 = (v66 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__redirectURLString);
    swift_beginAccess();
    v110 = *v109;
    v111 = v109[1];
    v112 = HIBYTE(v111) & 0xF;
    if ((v111 & 0x2000000000000000) == 0)
    {
      v112 = v110 & 0xFFFFFFFFFFFFLL;
    }

    if (v112)
    {

      sub_26BDA0AB0();
      if (v75)
      {
      }
    }

    v113 = (v66 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__locale);
    swift_beginAccess();
    v114 = *v113;
    v115 = v113[1];
    v116 = HIBYTE(v115) & 0xF;
    if ((v115 & 0x2000000000000000) == 0)
    {
      v116 = v114 & 0xFFFFFFFFFFFFLL;
    }

    if (v116)
    {

      sub_26BDA0AB0();
      if (v75)
      {
      }
    }

    v117 = v158;
    swift_beginAccess();
    sub_26BD31AF8();
    if (__swift_getEnumTagSinglePayload(v117, 1, v173) == 1)
    {
      sub_26BD04E80(v117, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      v118 = v168;
      v119 = v156;
      v120 = v117;
      v121 = v173;
      (*(v168 + 32))(v156, v120, v173);
      sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      if (v75)
      {
        return (*(v118 + 8))(v119, v121);
      }

      (*(v118 + 8))(v119, v121);
    }

    v122 = v157;
    swift_beginAccess();
    sub_26BD31AF8();
    if (__swift_getEnumTagSinglePayload(v122, 1, v173) == 1)
    {
      v123 = v75;
      sub_26BD04E80(v122, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      v124 = v168;
      v125 = v152;
      v126 = v122;
      v127 = v173;
      (*(v168 + 32))(v152, v126, v173);
      sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      v123 = v75;
      if (v75)
      {
        return (*(v124 + 8))(v125, v127);
      }

      (*(v124 + 8))(v125, v127);
    }

    swift_beginAccess();
    v128 = v155;
    sub_26BD31AF8();
    v129 = v173;
    if (__swift_getEnumTagSinglePayload(v128, 1, v173) == 1)
    {
      sub_26BD04E80(v128, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      (*(v168 + 32))(v154, v128, v129);
      sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      if (v123)
      {
        return (*(v168 + 8))(v154, v173);
      }

      (*(v168 + 8))(v154, v173);
    }

    v130 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__contactCarriersInfo;
    v131 = v172;
    swift_beginAccess();
    if (*(*(v131 + v130) + 16))
    {
      sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);

      sub_26BDA0AC0();
      if (v123)
      {
      }
    }

    swift_beginAccess();
    v132 = v153;
    sub_26BD31AF8();
    if (__swift_getEnumTagSinglePayload(v132, 1, v173) == 1)
    {
      sub_26BD04E80(v153, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      (*(v168 + 32))(v151, v153, v173);
      sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
      sub_26BDA0AD0();
      if (v123)
      {
        return (*(v168 + 8))(v151, v173);
      }

      (*(v168 + 8))(v151, v173);
    }

    v133 = v172 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData;
    swift_beginAccess();
    if (sub_26BD50FE4(*v133, *(v133 + 8)) || (v135 = *v133, v134 = *(v133 + 8), sub_26BCFEFC4(v135, v134), sub_26BDA0A60(), result = sub_26BCFF01C(v135, v134), !v123))
    {
      v136 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__takeInForServiceDetails;
      v137 = v172;
      swift_beginAccess();
      if (!*(*(v137 + v136) + 16) || (type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(0), sub_26BD2E1F8(&qword_28044A0E0, type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails, &protocol conformance descriptor for SupportOptionDetailsResponse.TakeInForServiceDetails), , sub_26BDA0AC0(), result = , !v123))
      {
        v138 = (v172 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPricingDisclaimer);
        swift_beginAccess();
        v139 = *v138;
        v140 = v138[1];
        v141 = HIBYTE(v140) & 0xF;
        if ((v140 & 0x2000000000000000) == 0)
        {
          v141 = v139 & 0xFFFFFFFFFFFFLL;
        }

        if (!v141 || (, sub_26BDA0AB0(), result = , !v123))
        {
          swift_beginAccess();
          v142 = v150;
          sub_26BD31AF8();
          if (__swift_getEnumTagSinglePayload(v142, 1, v173) == 1)
          {
            sub_26BD04E80(v150, &qword_280448F88, &qword_26BDA5440);
          }

          else
          {
            (*(v168 + 32))(v148, v150, v173);
            sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
            sub_26BDA0AD0();
            if (v123)
            {
              return (*(v168 + 8))(v148, v173);
            }

            (*(v168 + 8))(v148, v173);
          }

          swift_beginAccess();
          v143 = v149;
          sub_26BD31AF8();
          if (__swift_getEnumTagSinglePayload(v143, 1, v173) == 1)
          {
            sub_26BD04E80(v149, &qword_280448F88, &qword_26BDA5440);
          }

          else
          {
            (*(v168 + 32))(v146, v149, v173);
            sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
            sub_26BDA0AD0();
            if (v123)
            {
              return (*(v168 + 8))(v146, v173);
            }

            (*(v168 + 8))(v146, v173);
          }

          swift_beginAccess();
          v144 = v147;
          sub_26BD31AF8();
          if (__swift_getEnumTagSinglePayload(v144, 1, v173) == 1)
          {
            return sub_26BD04E80(v147, &qword_280448F88, &qword_26BDA5440);
          }

          else
          {
            (*(v168 + 32))(v145, v147, v173);
            sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
            sub_26BDA0AD0();
            return (*(v168 + 8))(v145, v173);
          }
        }
      }
    }
  }

  return result;
}

uint64_t static SupportOptionDetailsResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_21_1();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_26BD27F08(v3, v4);

    if (!v5)
    {
      return 0;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_0_4();
  sub_26BD2E1F8(v6, v7, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_259();
  return sub_26BDA0BB0() & 1;
}

BOOL sub_26BD27F08(uint64_t a1, uint64_t a2)
{
  v331 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
  MEMORY[0x28223BE20](v331);
  v327 = &v297[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A220, &dword_26BDA61B8);
  MEMORY[0x28223BE20](v330);
  v332 = &v297[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449F10, &qword_26BDA5458);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v328 = &v297[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v340 = &v297[-v9];
  v336 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
  MEMORY[0x28223BE20](v336);
  v329 = &v297[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A228, &qword_26BDA61C0);
  MEMORY[0x28223BE20](v335);
  v337 = &v297[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449F00, &qword_26BDA5450);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v333 = &v297[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v339 = &v297[-v15];
  v342 = type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
  MEMORY[0x28223BE20](v342);
  v334 = &v297[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A230, &qword_26BDA61C8);
  MEMORY[0x28223BE20](v341);
  v343 = &v297[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449EF0, &qword_26BDA5448);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v338 = &v297[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v344 = &v297[-v21];
  v347 = sub_26BDA0810();
  v345 = *(v347 - 8);
  MEMORY[0x28223BE20](v347);
  v23 = &v297[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  v24 = MEMORY[0x28223BE20](v346);
  v308 = &v297[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v24);
  v306 = &v297[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v303 = &v297[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v311 = &v297[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v315 = &v297[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v317 = &v297[-v35];
  v36 = MEMORY[0x28223BE20](v34);
  v320 = &v297[-v37];
  v38 = MEMORY[0x28223BE20](v36);
  v324 = &v297[-v39];
  v40 = MEMORY[0x28223BE20](v38);
  v325 = &v297[-v41];
  MEMORY[0x28223BE20](v40);
  v43 = &v297[-v42];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v45 = MEMORY[0x28223BE20](v44 - 8);
  v47 = &v297[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = MEMORY[0x28223BE20](v45);
  v307 = &v297[-v49];
  v50 = MEMORY[0x28223BE20](v48);
  v305 = &v297[-v51];
  v52 = MEMORY[0x28223BE20](v50);
  v304 = &v297[-v53];
  v54 = MEMORY[0x28223BE20](v52);
  v302 = &v297[-v55];
  v56 = MEMORY[0x28223BE20](v54);
  v301 = &v297[-v57];
  v58 = MEMORY[0x28223BE20](v56);
  v309 = &v297[-v59];
  v60 = MEMORY[0x28223BE20](v58);
  v310 = &v297[-v61];
  v62 = MEMORY[0x28223BE20](v60);
  v312 = &v297[-v63];
  v64 = MEMORY[0x28223BE20](v62);
  v313 = &v297[-v65];
  v66 = MEMORY[0x28223BE20](v64);
  v314 = &v297[-v67];
  v68 = MEMORY[0x28223BE20](v66);
  v316 = &v297[-v69];
  v70 = MEMORY[0x28223BE20](v68);
  v318 = &v297[-v71];
  v72 = MEMORY[0x28223BE20](v70);
  v319 = &v297[-v73];
  v74 = MEMORY[0x28223BE20](v72);
  v321 = &v297[-v75];
  v76 = MEMORY[0x28223BE20](v74);
  v322 = &v297[-v77];
  v78 = MEMORY[0x28223BE20](v76);
  v323 = &v297[-v79];
  v80 = MEMORY[0x28223BE20](v78);
  v326 = &v297[-v81];
  v82 = MEMORY[0x28223BE20](v80);
  v84 = &v297[-v83];
  MEMORY[0x28223BE20](v82);
  v86 = &v297[-v85];
  swift_beginAccess();
  v87 = a1;
  v88 = *(a1 + 16);
  swift_beginAccess();
  v89 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v89)
    {
      case 1:
        if (v88 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v88 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v88 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v88 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v88 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v88 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v88 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v88 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v88 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v88 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v88)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v88 != v89)
  {
    return 0;
  }

LABEL_6:
  v299 = v47;
  v300 = v23;
  swift_beginAccess();
  v90 = *(v87 + 32);
  v91 = *(v87 + 40);
  v92 = a2;
  swift_beginAccess();
  v93 = v90 == *(a2 + 32) && v91 == *(a2 + 40);
  if (!v93 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v94 = *(v346 + 48);
  sub_26BD31AF8();
  v95 = v347;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v43, 1, v95) == 1)
  {

    sub_26BD04E80(v86, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v43[v94], 1, v95) == 1)
    {
      sub_26BD04E80(v43, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_18;
    }

LABEL_16:
    v98 = &qword_2804490C8;
    v99 = &qword_26BDA7780;
LABEL_67:
    v120 = v43;
    goto LABEL_68;
  }

  sub_26BD31AF8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v43[v94], 1, v95);
  v97 = v300;
  if (EnumTagSinglePayload == 1)
  {

    sub_26BD04E80(v86, &qword_280448F88, &qword_26BDA5440);
    (*(v345 + 8))(v84, v95);
    goto LABEL_16;
  }

  v100 = v87;
  v101 = v92;
  (*(v345 + 32))(v300, &v43[v94], v95);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v102 = v100;
  v103 = v97;

  v298 = sub_26BDA0BB0();
  v104 = v102;
  v105 = *(v345 + 8);
  v105(v103, v95);
  sub_26BD04E80(v86, &qword_280448F88, &qword_26BDA5440);
  v105(v84, v95);
  v92 = v101;
  v87 = v104;
  sub_26BD04E80(v43, &qword_280448F88, &qword_26BDA5440);
  if ((v298 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_18:
  swift_beginAccess();
  v106 = v344;
  sub_26BD31AF8();
  swift_beginAccess();
  v107 = *(v341 + 48);
  v43 = v343;
  sub_26BD31AF8();
  sub_26BD31AF8();
  v108 = v342;
  if (__swift_getEnumTagSinglePayload(v43, 1, v342) == 1)
  {
    sub_26BD04E80(v106, &qword_280449EF0, &qword_26BDA5448);
    v109 = __swift_getEnumTagSinglePayload(&v43[v107], 1, v108);
    v110 = v339;
    v111 = v340;
    if (v109 == 1)
    {
      sub_26BD04E80(v43, &qword_280449EF0, &qword_26BDA5448);
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  v114 = v338;
  sub_26BD31AF8();
  v115 = __swift_getEnumTagSinglePayload(&v43[v107], 1, v108);
  v110 = v339;
  v111 = v340;
  if (v115 == 1)
  {
    sub_26BD04E80(v344, &qword_280449EF0, &qword_26BDA5448);
    sub_26BD2E04C();
LABEL_26:
    v98 = &qword_28044A230;
    v99 = &qword_26BDA61C8;
    goto LABEL_67;
  }

  v116 = v334;
  sub_26BD2DF9C();
  if (*v114 != *v116 || (sub_26BD01014(v114[1], v116[1]), (v117 & 1) == 0) || (v114[2] == v116[2] ? (v118 = v114[3] == v116[3]) : (v118 = 0), !v118 && (sub_26BDA0FB0() & 1) == 0))
  {
    sub_26BD04E80(v344, &qword_280449EF0, &qword_26BDA5448);
    sub_26BD2E04C();
    sub_26BD2E04C();
    v120 = v43;
    v98 = &qword_280449EF0;
    v99 = &qword_26BDA5448;
LABEL_68:
    sub_26BD04E80(v120, v98, v99);
    goto LABEL_69;
  }

  sub_26BDA0850();
  sub_26BD2E1F8(&qword_2804490C0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v119 = sub_26BDA0BB0();
  sub_26BD04E80(v344, &qword_280449EF0, &qword_26BDA5448);
  sub_26BD2E04C();
  sub_26BD2E04C();
  sub_26BD04E80(v43, &qword_280449EF0, &qword_26BDA5448);
  if ((v119 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_21:
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v112 = *(v335 + 48);
  v43 = v337;
  sub_26BD31AF8();
  sub_26BD31AF8();
  v113 = v336;
  if (__swift_getEnumTagSinglePayload(v43, 1, v336) == 1)
  {
    sub_26BD04E80(v110, &qword_280449F00, &qword_26BDA5450);
    if (__swift_getEnumTagSinglePayload(&v43[v112], 1, v113) == 1)
    {
      sub_26BD04E80(v43, &qword_280449F00, &qword_26BDA5450);
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v43[v112], 1, v113) == 1)
  {
    sub_26BD04E80(v110, &qword_280449F00, &qword_26BDA5450);
    sub_26BD2E04C();
LABEL_59:
    v98 = &qword_28044A228;
    v99 = &qword_26BDA61C0;
    goto LABEL_67;
  }

  sub_26BD2DF9C();
  static SupportOptionDetailsResponse.CLDDetails.== infix(_:_:)();
  v122 = v121;
  sub_26BD2E04C();
  sub_26BD04E80(v110, &qword_280449F00, &qword_26BDA5450);
  sub_26BD2E04C();
  sub_26BD04E80(v43, &qword_280449F00, &qword_26BDA5450);
  if ((v122 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_61:
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v123 = *(v330 + 48);
  v43 = v332;
  sub_26BD31AF8();
  sub_26BD31AF8();
  v124 = v331;
  if (__swift_getEnumTagSinglePayload(v43, 1, v331) == 1)
  {
    sub_26BD04E80(v111, &qword_280449F10, &qword_26BDA5458);
    if (__swift_getEnumTagSinglePayload(&v43[v123], 1, v124) == 1)
    {
      sub_26BD04E80(v43, &qword_280449F10, &qword_26BDA5458);
      goto LABEL_72;
    }

    goto LABEL_66;
  }

  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v43[v123], 1, v124) == 1)
  {
    sub_26BD04E80(v111, &qword_280449F10, &qword_26BDA5458);
    sub_26BD2E04C();
LABEL_66:
    v98 = &qword_28044A220;
    v99 = &dword_26BDA61B8;
    goto LABEL_67;
  }

  sub_26BD2DF9C();
  static SupportOptionDetailsResponse.C2CDetails.== infix(_:_:)();
  v127 = v126;
  sub_26BD2E04C();
  sub_26BD04E80(v111, &qword_280449F10, &qword_26BDA5458);
  sub_26BD2E04C();
  sub_26BD04E80(v43, &qword_280449F10, &qword_26BDA5458);
  if ((v127 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_72:
  v128 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__carriersInfo;
  swift_beginAccess();
  v129 = *(v87 + v128);
  v130 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__carriersInfo;
  swift_beginAccess();
  v131 = *&v92[v130];

  sub_26BD01478(v129, v131);
  v133 = v132;

  if ((v133 & 1) == 0)
  {
    goto LABEL_69;
  }

  v134 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__relatedProducts;
  swift_beginAccess();
  v135 = *(v87 + v134);
  v136 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__relatedProducts;
  swift_beginAccess();
  v137 = *&v92[v136];

  sub_26BD04688(v135, v137);
  v139 = v138;

  if ((v139 & 1) == 0)
  {
    goto LABEL_69;
  }

  v140 = (v87 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__grlProduct);
  swift_beginAccess();
  v141 = *v140;
  v142 = v140[1];
  v143 = &v92[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__grlProduct];
  swift_beginAccess();
  v144 = v141 == *v143 && v142 == v143[1];
  if (!v144 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  v145 = (v87 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeProduct);
  swift_beginAccess();
  v146 = *v145;
  v147 = v145[1];
  v148 = &v92[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeProduct];
  swift_beginAccess();
  v149 = v146 == *v148 && v147 == v148[1];
  if (!v149 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  v150 = (v87 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeSymptom);
  swift_beginAccess();
  v151 = *v150;
  v152 = v150[1];
  v153 = &v92[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeSymptom];
  swift_beginAccess();
  v154 = v151 == *v153 && v152 == v153[1];
  if (!v154 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  v155 = (v87 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__randevuProduct);
  swift_beginAccess();
  v156 = *v155;
  v157 = v155[1];
  v158 = &v92[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__randevuProduct];
  swift_beginAccess();
  v159 = v156 == *v158 && v157 == v158[1];
  if (!v159 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  v160 = (v87 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__detectedCarrierID);
  swift_beginAccess();
  v161 = *v160;
  v162 = v160[1];
  v163 = &v92[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__detectedCarrierID];
  swift_beginAccess();
  v164 = v161 == *v163 && v162 == v163[1];
  if (!v164 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  v165 = (v87 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPurchaseRequirementsDescription);
  swift_beginAccess();
  v166 = *v165;
  v167 = v165[1];
  v168 = &v92[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPurchaseRequirementsDescription];
  swift_beginAccess();
  v169 = v166 == *v168 && v167 == v168[1];
  if (!v169 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  v170 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  swift_beginAccess();
  LODWORD(v170) = *(v87 + v170);
  v171 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  swift_beginAccess();
  if (v170 != v92[v171])
  {
    goto LABEL_69;
  }

  swift_beginAccess();
  v172 = v87;
  sub_26BD31AF8();
  swift_beginAccess();
  v173 = *(v346 + 48);
  v174 = v325;
  sub_26BD31AF8();
  v344 = v92;
  sub_26BD31AF8();
  v175 = v347;
  if (__swift_getEnumTagSinglePayload(v174, 1, v347) == 1)
  {
    sub_26BD04E80(v326, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v174 + v173, 1, v175) == 1)
    {
      sub_26BD04E80(v174, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_112;
    }

LABEL_110:
    v176 = v174;
LABEL_118:
    sub_26BD04E80(v176, &qword_2804490C8, &qword_26BDA7780);
    goto LABEL_69;
  }

  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v174 + v173, 1, v175) == 1)
  {
    sub_26BD04E80(v326, &qword_280448F88, &qword_26BDA5440);
    (*(v345 + 8))(v323, v347);
    v174 = v325;
    goto LABEL_110;
  }

  v177 = v345;
  v178 = v325;
  v179 = v300;
  v180 = v347;
  (*(v345 + 32))(v300, &v325[v173], v347);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v181 = v323;
  v182 = sub_26BDA0BB0();
  v183 = *(v177 + 8);
  v183(v179, v180);
  sub_26BD04E80(v326, &qword_280448F88, &qword_26BDA5440);
  v183(v181, v180);
  sub_26BD04E80(v178, &qword_280448F88, &qword_26BDA5440);
  if ((v182 & 1) == 0)
  {
LABEL_69:

    return 0;
  }

LABEL_112:
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v184 = *(v346 + 48);
  v185 = v324;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v185, 1, v347) == 1)
  {
    sub_26BD04E80(v322, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v324[v184], 1, v347) == 1)
    {
      sub_26BD04E80(v324, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_121;
    }

    goto LABEL_117;
  }

  v186 = v324;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v186[v184], 1, v347) == 1)
  {
    sub_26BD04E80(v322, &qword_280448F88, &qword_26BDA5440);
    (*(v345 + 8))(v321, v347);
LABEL_117:
    v176 = v324;
    goto LABEL_118;
  }

  v187 = v345;
  v188 = v324;
  v189 = v300;
  v190 = v347;
  (*(v345 + 32))(v300, &v324[v184], v347);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v191 = v321;
  v192 = sub_26BDA0BB0();
  v193 = *(v187 + 8);
  v193(v189, v190);
  sub_26BD04E80(v322, &qword_280448F88, &qword_26BDA5440);
  v193(v191, v190);
  sub_26BD04E80(v188, &qword_280448F88, &qword_26BDA5440);
  if ((v192 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_121:
  v194 = (v172 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__redirectURLString);
  swift_beginAccess();
  v195 = *v194;
  v196 = v194[1];
  v197 = &v344[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__redirectURLString];
  swift_beginAccess();
  v198 = v195 == *v197 && v196 == v197[1];
  if (!v198 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  v199 = (v172 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__locale);
  swift_beginAccess();
  v200 = *v199;
  v201 = v199[1];
  v202 = &v344[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__locale];
  swift_beginAccess();
  v203 = v200 == *v202 && v201 == v202[1];
  if (!v203 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v204 = *(v346 + 48);
  v205 = v320;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v205, 1, v347) == 1)
  {
    sub_26BD04E80(v319, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v320[v204], 1, v347) == 1)
    {
      sub_26BD04E80(v320, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_138;
    }

    goto LABEL_136;
  }

  v206 = v320;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v206[v204], 1, v347) == 1)
  {
    sub_26BD04E80(v319, &qword_280448F88, &qword_26BDA5440);
    (*(v345 + 8))(v318, v347);
LABEL_136:
    v176 = v320;
    goto LABEL_118;
  }

  v207 = v345;
  v208 = v320;
  v209 = v300;
  v210 = v347;
  (*(v345 + 32))(v300, &v320[v204], v347);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v211 = v318;
  v212 = sub_26BDA0BB0();
  v213 = *(v207 + 8);
  v213(v209, v210);
  sub_26BD04E80(v319, &qword_280448F88, &qword_26BDA5440);
  v213(v211, v210);
  sub_26BD04E80(v208, &qword_280448F88, &qword_26BDA5440);
  if ((v212 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_138:
  v214 = (v172 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPricingDisclaimer);
  swift_beginAccess();
  v215 = *v214;
  v216 = v214[1];
  v217 = &v344[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPricingDisclaimer];
  swift_beginAccess();
  v218 = v215 == *v217 && v216 == v217[1];
  if (!v218 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v219 = *(v346 + 48);
  v220 = v317;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v220, 1, v347) == 1)
  {
    sub_26BD04E80(v316, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v317[v219], 1, v347) == 1)
    {
      sub_26BD04E80(v317, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_150;
    }

    goto LABEL_148;
  }

  v221 = v317;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v221[v219], 1, v347) == 1)
  {
    sub_26BD04E80(v316, &qword_280448F88, &qword_26BDA5440);
    (*(v345 + 8))(v314, v347);
LABEL_148:
    v176 = v317;
    goto LABEL_118;
  }

  v222 = v345;
  v223 = v317;
  v224 = v300;
  v225 = v347;
  (*(v345 + 32))(v300, &v317[v219], v347);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v226 = v314;
  v227 = sub_26BDA0BB0();
  v228 = *(v222 + 8);
  v228(v224, v225);
  sub_26BD04E80(v316, &qword_280448F88, &qword_26BDA5440);
  v228(v226, v225);
  sub_26BD04E80(v223, &qword_280448F88, &qword_26BDA5440);
  if ((v227 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_150:
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v229 = *(v346 + 48);
  v230 = v315;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v230, 1, v347) == 1)
  {
    sub_26BD04E80(v313, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v315[v229], 1, v347) == 1)
    {
      sub_26BD04E80(v315, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_157;
    }

    goto LABEL_155;
  }

  v231 = v315;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v231[v229], 1, v347) == 1)
  {
    sub_26BD04E80(v313, &qword_280448F88, &qword_26BDA5440);
    (*(v345 + 8))(v312, v347);
LABEL_155:
    v176 = v315;
    goto LABEL_118;
  }

  v232 = v345;
  v233 = v315;
  v234 = v300;
  v235 = v347;
  (*(v345 + 32))(v300, &v315[v229], v347);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v236 = v312;
  v237 = sub_26BDA0BB0();
  v238 = *(v232 + 8);
  v238(v234, v235);
  sub_26BD04E80(v313, &qword_280448F88, &qword_26BDA5440);
  v238(v236, v235);
  sub_26BD04E80(v233, &qword_280448F88, &qword_26BDA5440);
  if ((v237 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_157:
  v239 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__contactCarriersInfo;
  swift_beginAccess();
  v240 = *(v172 + v239);
  v241 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__contactCarriersInfo;
  v242 = v344;
  swift_beginAccess();
  v243 = *&v242[v241];

  sub_26BD01478(v240, v243);
  LOBYTE(v242) = v244;

  if ((v242 & 1) == 0)
  {
    goto LABEL_69;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v245 = *(v346 + 48);
  v246 = v311;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v246, 1, v347) == 1)
  {
    sub_26BD04E80(v310, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v311[v245], 1, v347) == 1)
    {
      sub_26BD04E80(v311, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_165;
    }

    goto LABEL_163;
  }

  v247 = v311;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v247[v245], 1, v347) == 1)
  {
    sub_26BD04E80(v310, &qword_280448F88, &qword_26BDA5440);
    (*(v345 + 8))(v309, v347);
LABEL_163:
    v176 = v311;
    goto LABEL_118;
  }

  v248 = v345;
  v249 = v311;
  v250 = v300;
  v251 = v347;
  (*(v345 + 32))(v300, &v311[v245], v347);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v252 = v309;
  v253 = sub_26BDA0BB0();
  v254 = *(v248 + 8);
  v254(v250, v251);
  sub_26BD04E80(v310, &qword_280448F88, &qword_26BDA5440);
  v254(v252, v251);
  sub_26BD04E80(v249, &qword_280448F88, &qword_26BDA5440);
  if ((v253 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_165:
  v255 = (v172 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData);
  swift_beginAccess();
  v257 = *v255;
  v256 = v255[1];
  v258 = &v344[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData];
  swift_beginAccess();
  v260 = *v258;
  v259 = v258[1];
  sub_26BCFEFC4(v257, v256);
  sub_26BCFEFC4(v260, v259);
  v261 = MEMORY[0x26D695520](v257, v256, v260, v259);
  sub_26BCFF01C(v260, v259);
  sub_26BCFF01C(v257, v256);
  if ((v261 & 1) == 0)
  {
    goto LABEL_69;
  }

  v262 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__takeInForServiceDetails;
  swift_beginAccess();
  v263 = *(v172 + v262);
  v264 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__takeInForServiceDetails;
  v265 = v344;
  swift_beginAccess();
  v266 = *&v265[v264];

  sub_26BD048B8(v263, v266);
  LOBYTE(v265) = v267;

  if ((v265 & 1) == 0)
  {
    goto LABEL_69;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v268 = *(v346 + 48);
  v269 = v303;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v269, 1, v347) == 1)
  {
    sub_26BD04E80(v301, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v303[v268], 1, v347) == 1)
    {
      sub_26BD04E80(v303, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_174;
    }

    goto LABEL_172;
  }

  v270 = v303;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v270[v268], 1, v347) == 1)
  {
    sub_26BD04E80(v301, &qword_280448F88, &qword_26BDA5440);
    (*(v345 + 8))(v302, v347);
LABEL_172:
    v176 = v303;
    goto LABEL_118;
  }

  v271 = v345;
  v272 = v303;
  v273 = v300;
  v274 = v347;
  (*(v345 + 32))(v300, &v303[v268], v347);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v275 = v302;
  v276 = sub_26BDA0BB0();
  v277 = *(v271 + 8);
  v277(v273, v274);
  sub_26BD04E80(v301, &qword_280448F88, &qword_26BDA5440);
  v277(v275, v274);
  sub_26BD04E80(v272, &qword_280448F88, &qword_26BDA5440);
  if ((v276 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_174:
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v278 = *(v346 + 48);
  v279 = v306;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v279, 1, v347) == 1)
  {
    sub_26BD04E80(v304, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v306[v278], 1, v347) == 1)
    {
      sub_26BD04E80(v306, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_181;
    }

    goto LABEL_179;
  }

  v280 = v306;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v280[v278], 1, v347) == 1)
  {
    sub_26BD04E80(v304, &qword_280448F88, &qword_26BDA5440);
    (*(v345 + 8))(v305, v347);
LABEL_179:
    v176 = v306;
    goto LABEL_118;
  }

  v281 = v345;
  v282 = v306;
  v283 = v300;
  v284 = v347;
  (*(v345 + 32))(v300, &v306[v278], v347);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v285 = v305;
  v286 = sub_26BDA0BB0();
  v287 = *(v281 + 8);
  v287(v283, v284);
  sub_26BD04E80(v304, &qword_280448F88, &qword_26BDA5440);
  v287(v285, v284);
  sub_26BD04E80(v282, &qword_280448F88, &qword_26BDA5440);
  if ((v286 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_181:
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v288 = *(v346 + 48);
  v289 = v308;
  sub_26BD31AF8();
  sub_26BD31AF8();
  v290 = v289;
  if (__swift_getEnumTagSinglePayload(v289, 1, v347) != 1)
  {
    sub_26BD31AF8();
    if (__swift_getEnumTagSinglePayload(v289 + v288, 1, v347) == 1)
    {

      sub_26BD04E80(v307, &qword_280448F88, &qword_26BDA5440);
      (*(v345 + 8))(v299, v347);
      goto LABEL_186;
    }

    v291 = v345;
    v292 = v300;
    v293 = v347;
    (*(v345 + 32))(v300, v290 + v288, v347);
    sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
    v294 = v299;
    v295 = sub_26BDA0BB0();

    v296 = *(v291 + 8);
    v296(v292, v293);
    sub_26BD04E80(v307, &qword_280448F88, &qword_26BDA5440);
    v296(v294, v293);
    sub_26BD04E80(v290, &qword_280448F88, &qword_26BDA5440);
    return (v295 & 1) != 0;
  }

  sub_26BD04E80(v307, &qword_280448F88, &qword_26BDA5440);
  if (__swift_getEnumTagSinglePayload(v289 + v288, 1, v347) != 1)
  {
LABEL_186:
    sub_26BD04E80(v289, &qword_2804490C8, &qword_26BDA7780);
    return 0;
  }

  sub_26BD04E80(v289, &qword_280448F88, &qword_26BDA5440);
  return 1;
}

uint64_t sub_26BD2AF6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD2E1F8(&qword_28044A208, type metadata accessor for SupportOptionDetailsResponse, &protocol conformance descriptor for SupportOptionDetailsResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD2AFEC(uint64_t a1)
{
  v2 = sub_26BD2E1F8(&qword_28044A070, type metadata accessor for SupportOptionDetailsResponse, &protocol conformance descriptor for SupportOptionDetailsResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD2B05C(uint64_t a1, uint64_t a2)
{
  sub_26BD2E1F8(&qword_28044A070, type metadata accessor for SupportOptionDetailsResponse, &protocol conformance descriptor for SupportOptionDetailsResponse);

  return sub_26BDA0A00();
}

uint64_t sub_26BD2B0F4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449E70);
  __swift_project_value_buffer(v0, qword_280449E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "time_slot_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  *(v6 + 24) = "reservationSlot";
  *(v6 + 32) = 15;
  *(v6 + 40) = 2;
  v7 = *MEMORY[0x277D21878];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "start_time_seconds";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  *(v10 + 24) = "startTime";
  *(v10 + 32) = 9;
  *(v10 + 40) = 2;
  v9();
  v11 = v1[14];
  v12 = (v5 + 2 * v2);
  *v12 = 3;
  v13 = v12 + v11;
  *v13 = "end_time_seconds";
  *(v13 + 1) = 16;
  v13[16] = 2;
  *(v13 + 3) = "endTime";
  *(v13 + 4) = 7;
  v13[40] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t SupportOptionDetailsResponse.TimeSlot.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0960();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t SupportOptionDetailsResponse.TimeSlot.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_29();
  if (!v4 || (result = OUTLINED_FUNCTION_103(v2, v3, 1), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A80(), !v0))
    {
      if (!*(v1 + 24) || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A80(), !v0))
      {
        type metadata accessor for SupportOptionDetailsResponse.TimeSlot(0);
        OUTLINED_FUNCTION_129();
        return sub_26BDA0830();
      }
    }
  }

  return result;
}

uint64_t static SupportOptionDetailsResponse.TimeSlot.== infix(_:_:)()
{
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_20_0(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0 || *(v1 + 16) != *(v0 + 16) || *(v1 + 24) != *(v0 + 24))
  {
    return 0;
  }

  type metadata accessor for SupportOptionDetailsResponse.TimeSlot(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_4();
  sub_26BD2E1F8(v6, v7, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD2B5D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD2E1F8(&qword_28044A200, type metadata accessor for SupportOptionDetailsResponse.TimeSlot, &protocol conformance descriptor for SupportOptionDetailsResponse.TimeSlot);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD2B654(uint64_t a1)
{
  v2 = sub_26BD2E1F8(&qword_28044A008, type metadata accessor for SupportOptionDetailsResponse.TimeSlot, &protocol conformance descriptor for SupportOptionDetailsResponse.TimeSlot);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD2B6C4(uint64_t a1, uint64_t a2)
{
  sub_26BD2E1F8(&qword_28044A008, type metadata accessor for SupportOptionDetailsResponse.TimeSlot, &protocol conformance descriptor for SupportOptionDetailsResponse.TimeSlot);

  return sub_26BDA0A00();
}

uint64_t sub_26BD2B750()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449E88);
  __swift_project_value_buffer(v0, qword_280449E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query_time_seconds";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  *(v6 + 24) = "queryTime";
  *(v6 + 32) = 9;
  *(v6 + 40) = 2;
  v7 = *MEMORY[0x277D21878];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "time_slots";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "localized_section_footer";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t SupportOptionDetailsResponse.SCBDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_116();
        sub_26BDA0990();
LABEL_10:
        v0 = 0;
        break;
      case 2:
        type metadata accessor for SupportOptionDetailsResponse.TimeSlot(0);
        OUTLINED_FUNCTION_81_0();
        sub_26BD2E1F8(&qword_28044A008, v3, &protocol conformance descriptor for SupportOptionDetailsResponse.TimeSlot);
        OUTLINED_FUNCTION_87();
        sub_26BDA09A0();
        goto LABEL_10;
      case 1:
        OUTLINED_FUNCTION_116();
        sub_26BDA0960();
        goto LABEL_10;
    }
  }
}

uint64_t SupportOptionDetailsResponse.SCBDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  if (!*v1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A80(), (v0 = v2) == 0))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for SupportOptionDetailsResponse.TimeSlot(0), OUTLINED_FUNCTION_81_0(), sub_26BD2E1F8(v5, v6, &protocol conformance descriptor for SupportOptionDetailsResponse.TimeSlot), v2 = v0, result = sub_26BDA0AC0(), !v0))
    {
      OUTLINED_FUNCTION_29();
      if (!v9 || (result = OUTLINED_FUNCTION_103(v7, v8, 3), !v2))
      {
        type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
        OUTLINED_FUNCTION_129();
        return sub_26BDA0830();
      }
    }
  }

  return result;
}

uint64_t static SupportOptionDetailsResponse.SCBDetails.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_184();
  sub_26BD01014(*(v4 + 8), *(v5 + 8));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 16) == *(v2 + 16) && *(v3 + 24) == *(v2 + 24);
  if (!v7 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_4();
  sub_26BD2E1F8(v8, v9, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD2BCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD2E1F8(&qword_28044A1F8, type metadata accessor for SupportOptionDetailsResponse.SCBDetails, &protocol conformance descriptor for SupportOptionDetailsResponse.SCBDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD2BD4C(uint64_t a1)
{
  v2 = sub_26BD2E1F8(&qword_28044A098, type metadata accessor for SupportOptionDetailsResponse.SCBDetails, &protocol conformance descriptor for SupportOptionDetailsResponse.SCBDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD2BDBC(uint64_t a1, uint64_t a2)
{
  sub_26BD2E1F8(&qword_28044A098, type metadata accessor for SupportOptionDetailsResponse.SCBDetails, &protocol conformance descriptor for SupportOptionDetailsResponse.SCBDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BD2BE48()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449EA0);
  __swift_project_value_buffer(v0, qword_280449EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26BDA1A00;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "contactDetails";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26BDA0AE0();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_26BDA0AF0();
}

uint64_t SupportOptionDetailsResponse.CLDDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
      type metadata accessor for CallContactDetails(0);
      OUTLINED_FUNCTION_14_1();
      sub_26BD2E1F8(&qword_280449A78, v3, &protocol conformance descriptor for CallContactDetails);
      OUTLINED_FUNCTION_87();
      sub_26BDA09B0();
      v0 = 0;
    }
  }

  return result;
}

void SupportOptionDetailsResponse.CLDDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449FE0, &unk_26BDA5460);
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for CallContactDetails(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
  v11 = v0;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_26BD04E80(v5, &qword_280449FE0, &unk_26BDA5460);
LABEL_4:
    sub_26BDA0830();
    goto LABEL_5;
  }

  sub_26BD2DF9C();
  OUTLINED_FUNCTION_14_1();
  sub_26BD2E1F8(v8, v9, &protocol conformance descriptor for CallContactDetails);
  sub_26BDA0AD0();
  sub_26BD2E04C();
  if (!v1)
  {
    goto LABEL_4;
  }

LABEL_5:
  OUTLINED_FUNCTION_247();
}

void static SupportOptionDetailsResponse.CLDDetails.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_90();
  type metadata accessor for CallContactDetails(v3);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_131_0();
  v5 = OUTLINED_FUNCTION_117_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_183();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A018, &unk_26BDA54E0) - 8;
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_17();
  type metadata accessor for SupportOptionDetailsResponse.CLDDetails(v11);
  v12 = *(v9 + 56);
  OUTLINED_FUNCTION_139_0();
  OUTLINED_FUNCTION_139_0();
  OUTLINED_FUNCTION_28(v0);
  if (v13)
  {
    OUTLINED_FUNCTION_28(v0 + v12);
    if (v13)
    {
      sub_26BD04E80(v0, &qword_280449FE0, &unk_26BDA5460);
LABEL_23:
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_4();
      sub_26BD2E1F8(v22, v23, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_138_0();
      v16 = sub_26BDA0BB0();
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v0 + v12);
  if (v13)
  {
    OUTLINED_FUNCTION_84_0();
    sub_26BD2E04C();
LABEL_9:
    v14 = &qword_28044A018;
    v15 = &unk_26BDA54E0;
LABEL_10:
    sub_26BD04E80(v0, v14, v15);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_2();
  sub_26BD2DF9C();
  v17 = *v2 == *v1 && v2[1] == v1[1];
  if (!v17 && (sub_26BDA0FB0() & 1) == 0 || (v2[2] == v1[2] ? (v18 = v2[3] == v1[3]) : (v18 = 0), !v18 && (sub_26BDA0FB0() & 1) == 0))
  {
    OUTLINED_FUNCTION_85_0();
    sub_26BD2E04C();
    sub_26BD2E04C();
    v14 = &qword_280449FE0;
    v15 = &unk_26BDA5460;
    goto LABEL_10;
  }

  v19 = sub_26BDA0850();
  OUTLINED_FUNCTION_0_4();
  sub_26BD2E1F8(v20, v21, MEMORY[0x277D216D0]);
  sub_26BDA0BB0();
  OUTLINED_FUNCTION_88_0();
  sub_26BD2E04C();
  OUTLINED_FUNCTION_131();
  sub_26BD2E04C();
  sub_26BD04E80(v0, &qword_280449FE0, &unk_26BDA5460);
  if (v19)
  {
    goto LABEL_23;
  }

LABEL_11:
  v16 = 0;
LABEL_24:
  OUTLINED_FUNCTION_258(v16);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD2C5D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD2E1F8(&qword_28044A1F0, type metadata accessor for SupportOptionDetailsResponse.CLDDetails, &protocol conformance descriptor for SupportOptionDetailsResponse.CLDDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD2C654(uint64_t a1)
{
  v2 = sub_26BD2E1F8(&qword_28044A0B0, type metadata accessor for SupportOptionDetailsResponse.CLDDetails, &protocol conformance descriptor for SupportOptionDetailsResponse.CLDDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD2C6C4(uint64_t a1, uint64_t a2)
{
  sub_26BD2E1F8(&qword_28044A0B0, type metadata accessor for SupportOptionDetailsResponse.CLDDetails, &protocol conformance descriptor for SupportOptionDetailsResponse.CLDDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BD2C750()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449EB8);
  __swift_project_value_buffer(v0, qword_280449EB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contactDetails";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "localized_section_footer";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t SupportOptionDetailsResponse.C2CDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_116();
      sub_26BDA0990();
LABEL_8:
      v0 = 0;
    }

    else if (result == 1)
    {
      type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
      type metadata accessor for CallContactDetails(0);
      OUTLINED_FUNCTION_14_1();
      sub_26BD2E1F8(&qword_280449A78, v3, &protocol conformance descriptor for CallContactDetails);
      OUTLINED_FUNCTION_87();
      sub_26BDA09B0();
      goto LABEL_8;
    }
  }
}

void SupportOptionDetailsResponse.C2CDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  v2 = OUTLINED_FUNCTION_173();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_128_0();
  v7 = type metadata accessor for CallContactDetails(v6);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_44();
  type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    sub_26BD04E80(v1, &qword_280449FE0, &unk_26BDA5460);
  }

  else
  {
    sub_26BD2DF9C();
    OUTLINED_FUNCTION_14_1();
    sub_26BD2E1F8(v9, v10, &protocol conformance descriptor for CallContactDetails);
    sub_26BDA0AD0();
    sub_26BD2E04C();
    if (v0)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_29();
  if (!v11 || (sub_26BDA0AB0(), !v0))
  {
    OUTLINED_FUNCTION_167();
    sub_26BDA0830();
  }

LABEL_7:
  OUTLINED_FUNCTION_247();
}

void static SupportOptionDetailsResponse.C2CDetails.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_156_0();
  type metadata accessor for CallContactDetails(v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_44();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449FE0, &unk_26BDA5460);
  OUTLINED_FUNCTION_110(v10);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_129_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A018, &unk_26BDA54E0) - 8;
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_17();
  type metadata accessor for SupportOptionDetailsResponse.C2CDetails(v14);
  v15 = *(v12 + 56);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_28(v0);
  if (!v16)
  {
    sub_26BD31AF8();
    OUTLINED_FUNCTION_28(v0 + v15);
    if (!v16)
    {
      OUTLINED_FUNCTION_1_2();
      sub_26BD2DF9C();
      OUTLINED_FUNCTION_127_0();
      if (v20)
      {
        v23 = v21 == v22;
      }

      else
      {
        v23 = 0;
      }

      if (v23 || (sub_26BDA0FB0() & 1) != 0)
      {
        v24 = *(v2 + 16) == *(v9 + 16) && *(v2 + 24) == *(v9 + 24);
        if (v24 || (sub_26BDA0FB0() & 1) != 0)
        {
          v25 = sub_26BDA0850();
          OUTLINED_FUNCTION_0_4();
          sub_26BD2E1F8(v26, v27, MEMORY[0x277D216D0]);
          sub_26BDA0BB0();
          OUTLINED_FUNCTION_88_0();
          sub_26BD2E04C();
          OUTLINED_FUNCTION_117_0();
          sub_26BD2E04C();
          sub_26BD04E80(v0, &qword_280449FE0, &unk_26BDA5460);
          if ((v25 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_23;
        }
      }

      OUTLINED_FUNCTION_85_0();
      sub_26BD2E04C();
      sub_26BD2E04C();
      v17 = &qword_280449FE0;
      v18 = &unk_26BDA5460;
LABEL_10:
      sub_26BD04E80(v0, v17, v18);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_84_0();
    sub_26BD2E04C();
LABEL_9:
    v17 = &qword_28044A018;
    v18 = &unk_26BDA54E0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_28(v0 + v15);
  if (!v16)
  {
    goto LABEL_9;
  }

  sub_26BD04E80(v0, &qword_280449FE0, &unk_26BDA5460);
LABEL_23:
  v28 = *v1 == *v4 && v1[1] == v4[1];
  if (v28 || (sub_26BDA0FB0() & 1) != 0)
  {
    sub_26BDA0850();
    OUTLINED_FUNCTION_0_4();
    sub_26BD2E1F8(v29, v30, MEMORY[0x277D216D0]);
    v19 = OUTLINED_FUNCTION_170_0();
    goto LABEL_29;
  }

LABEL_11:
  v19 = 0;
LABEL_29:
  OUTLINED_FUNCTION_258(v19);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD2CFBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD2E1F8(&qword_28044A1E8, type metadata accessor for SupportOptionDetailsResponse.C2CDetails, &protocol conformance descriptor for SupportOptionDetailsResponse.C2CDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD2D03C(uint64_t a1)
{
  v2 = sub_26BD2E1F8(&qword_28044A0C8, type metadata accessor for SupportOptionDetailsResponse.C2CDetails, &protocol conformance descriptor for SupportOptionDetailsResponse.C2CDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD2D0AC(uint64_t a1, uint64_t a2)
{
  sub_26BD2E1F8(&qword_28044A0C8, type metadata accessor for SupportOptionDetailsResponse.C2CDetails, &protocol conformance descriptor for SupportOptionDetailsResponse.C2CDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BD2D144()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449ED0);
  __swift_project_value_buffer(v0, qword_280449ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "country_itcc_list";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localized_section_header";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "localized_section_body";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "localized_section_footer";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "localized_reminders_title";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "localized_placeholder";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "phone_number_is_required";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "relevant_store_types";
  *(v22 + 1) = 20;
  v22[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD2D4B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26BDA0B10();
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_126_0();
  v7 = *(v6 + 16);

  return v7(a3);
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(0);
        sub_26BDA0810();
        OUTLINED_FUNCTION_31_1();
        sub_26BD2E1F8(&qword_280449130, v3, MEMORY[0x277D215C0]);
        OUTLINED_FUNCTION_87();
        sub_26BDA09B0();
        goto LABEL_8;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_116();
        sub_26BDA0990();
        goto LABEL_8;
      case 7:
        OUTLINED_FUNCTION_116();
        sub_26BDA0920();
        goto LABEL_8;
      case 8:
        OUTLINED_FUNCTION_116();
        sub_26BDA0970();
LABEL_8:
        v0 = 0;
        break;
      default:
        continue;
    }
  }
}

void SupportOptionDetailsResponse.TakeInForServiceDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  v35 = v3;
  v36 = v1;
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_44();
  v13 = OUTLINED_FUNCTION_128_0();
  v14 = type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(v13);
  v34 = v4;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    v33 = v14;
    sub_26BD04E80(v8, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    (*(v11 + 32))(v2, v8, v9);
    OUTLINED_FUNCTION_31_1();
    sub_26BD2E1F8(v15, v16, MEMORY[0x277D215C0]);
    v1 = v36;
    sub_26BDA0AD0();
    if (v1)
    {
      (*(v11 + 8))(v2, v9);
      goto LABEL_21;
    }

    v33 = v14;
    (*(v11 + 8))(v2, v9);
  }

  v17 = v34;
  OUTLINED_FUNCTION_29();
  if (!v20 || (OUTLINED_FUNCTION_70_0(v18, v19, 2), !v1))
  {
    OUTLINED_FUNCTION_29();
    if (!v23 || (OUTLINED_FUNCTION_70_0(v21, v22, 3), !v1))
    {
      OUTLINED_FUNCTION_29();
      if (!v26 || (OUTLINED_FUNCTION_70_0(v24, v25, 4), !v1))
      {
        OUTLINED_FUNCTION_29();
        if (!v29 || (OUTLINED_FUNCTION_70_0(v27, v28, 5), !v1))
        {
          OUTLINED_FUNCTION_29();
          if (!v32 || (OUTLINED_FUNCTION_70_0(v30, v31, 6), !v1))
          {
            if (*(v17 + 80) != 1 || (OUTLINED_FUNCTION_164_0(), sub_26BDA0A40(), !v1))
            {
              if (!*(*(v17 + 88) + 16) || (OUTLINED_FUNCTION_164_0(), sub_26BDA0A90(), !v1))
              {
                sub_26BDA0830();
              }
            }
          }
        }
      }
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_247();
}

void static SupportOptionDetailsResponse.TakeInForServiceDetails.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v4 = v3;
  v6 = v5;
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_18();
  v28 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_131_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v10);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_129_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780) - 8;
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_183();
  type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(0);
  v14 = *(v12 + 56);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_28(v1);
  if (!v15)
  {
    OUTLINED_FUNCTION_131();
    sub_26BD31AF8();
    OUTLINED_FUNCTION_28(v1 + v14);
    if (!v15)
    {
      (*(v28 + 32))(v0, v1 + v14, v7);
      OUTLINED_FUNCTION_31_1();
      sub_26BD2E1F8(v17, v18, MEMORY[0x277D215D8]);
      v19 = OUTLINED_FUNCTION_171_0();
      v20 = *(v28 + 8);
      v20(v0, v7);
      v20(v2, v7);
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
      if ((v19 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v28 + 8))(v2, v7);
LABEL_9:
    sub_26BD04E80(v1, &qword_2804490C8, &qword_26BDA7780);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_28(v1 + v14);
  if (!v15)
  {
    goto LABEL_9;
  }

  sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
LABEL_13:
  v21 = *v6 == *v4 && *(v6 + 8) == *(v4 + 8);
  if (v21 || (sub_26BDA0FB0() & 1) != 0)
  {
    v22 = *(v6 + 16) == *(v4 + 16) && *(v6 + 24) == *(v4 + 24);
    if (v22 || (sub_26BDA0FB0() & 1) != 0)
    {
      v23 = *(v6 + 32) == *(v4 + 32) && *(v6 + 40) == *(v4 + 40);
      if (v23 || (sub_26BDA0FB0() & 1) != 0)
      {
        v24 = *(v6 + 48) == *(v4 + 48) && *(v6 + 56) == *(v4 + 56);
        if (v24 || (sub_26BDA0FB0() & 1) != 0)
        {
          v25 = *(v6 + 64) == *(v4 + 64) && *(v6 + 72) == *(v4 + 72);
          if (v25 || (sub_26BDA0FB0()) && *(v6 + 80) == *(v4 + 80) && (sub_26BCFF1F4(*(v6 + 88), *(v4 + 88)))
          {
            sub_26BDA0850();
            OUTLINED_FUNCTION_0_4();
            sub_26BD2E1F8(v26, v27, MEMORY[0x277D216D0]);
            v16 = OUTLINED_FUNCTION_170_0();
            goto LABEL_11;
          }
        }
      }
    }
  }

LABEL_10:
  v16 = 0;
LABEL_11:
  OUTLINED_FUNCTION_258(v16);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD2DD54()
{
  OUTLINED_FUNCTION_177();
  v2 = v1;
  sub_26BDA1050();
  v2(0);
  v3 = OUTLINED_FUNCTION_130();
  sub_26BD2E1F8(v3, v4, v0);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BD2DE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD2E1F8(&qword_28044A1E0, type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails, &protocol conformance descriptor for SupportOptionDetailsResponse.TakeInForServiceDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD2DEAC(uint64_t a1)
{
  v2 = sub_26BD2E1F8(&qword_28044A0E0, type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails, &protocol conformance descriptor for SupportOptionDetailsResponse.TakeInForServiceDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD2DF1C(uint64_t a1, uint64_t a2)
{
  sub_26BD2E1F8(&qword_28044A0E0, type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails, &protocol conformance descriptor for SupportOptionDetailsResponse.TakeInForServiceDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BD2DF9C()
{
  OUTLINED_FUNCTION_184();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_147();
  v3(v2);
  return v0;
}

uint64_t sub_26BD2DFF4()
{
  OUTLINED_FUNCTION_184();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_147();
  v3(v2);
  return v0;
}

uint64_t sub_26BD2E04C()
{
  v1 = OUTLINED_FUNCTION_134();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_26BD2E160()
{
  OUTLINED_FUNCTION_184();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  return v0;
}

uint64_t sub_26BD2E1F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26BD2E240()
{
  OUTLINED_FUNCTION_189();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_156_0();
  v100 = type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_44();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CA0, &qword_26BDA4B78);
  OUTLINED_FUNCTION_110(v10);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_228();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449DE8, &unk_26BDA5420);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_17();
  v99 = type metadata accessor for HMTSolutionResponse.Step(v14);
  OUTLINED_FUNCTION_18();
  v101 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_57();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v90 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_98_0(v24, v25, v26, v27, v28, v29, v30, v31, v90[0]);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1D0, &qword_26BDA61A8);
  v33 = OUTLINED_FUNCTION_110(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_57();
  v98 = (v34 - v35);
  MEMORY[0x28223BE20](v36);
  v97 = v90 - v37;
  if (v2 == v4 || *(v2 + 16) != *(v4 + 16))
  {
LABEL_57:
    OUTLINED_FUNCTION_188();
  }

  else
  {
    v94 = v12;
    v95 = v4;
    v90[0] = v9;
    v90[1] = v0;
    v38 = 0;
    v92 = v2 + 64;
    v93 = v2;
    OUTLINED_FUNCTION_32_2();
    v91 = v40 >> 6;
    while (v39)
    {
      OUTLINED_FUNCTION_48_0();
      v96 = v41;
      v43 = v42 | (v38 << 6);
LABEL_10:
      v48 = (*(v2 + 48) + 16 * v43);
      v49 = *v48;
      v50 = v48[1];
      OUTLINED_FUNCTION_93_0();
      sub_26BD2DFF4();
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1D8, &unk_26BDA61B0);
      v52 = v98;
      *v98 = v49;
      v52[1] = v50;
      OUTLINED_FUNCTION_92_0();
      sub_26BD2DF9C();
      OUTLINED_FUNCTION_151();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v51);

LABEL_11:
      v56 = v97;
      sub_26BD31AA0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1D8, &unk_26BDA61B0);
      OUTLINED_FUNCTION_28(v56);
      if (v63)
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_92_0();
      sub_26BD2DF9C();
      OUTLINED_FUNCTION_13_1();
      v57 = OUTLINED_FUNCTION_163_0();
      sub_26BD31960(v57, v58, v59, v60);
      v62 = v61;

      if ((v62 & 1) == 0)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_93_0();
      sub_26BD2DFF4();
      v63 = *v19 == *v23 && *(v19 + 8) == *(v23 + 1);
      if (!v63 && (sub_26BDA0FB0() & 1) == 0)
      {
        goto LABEL_55;
      }

      v64 = *(v19 + 16);
      v65 = *(v23 + 2);
      v66 = *(v64 + 16);
      if (v66 != *(v65 + 16))
      {
        goto LABEL_55;
      }

      if (v66 && v64 != v65)
      {
        v67 = (v64 + 40);
        v68 = (v65 + 40);
        while (1)
        {
          v69 = *(v67 - 1) == *(v68 - 1) && *v67 == *v68;
          if (!v69 && (sub_26BDA0FB0() & 1) == 0)
          {
            break;
          }

          v67 += 2;
          v68 += 2;
          if (!--v66)
          {
            goto LABEL_28;
          }
        }

LABEL_55:
        sub_26BD2E04C();
LABEL_56:
        sub_26BD2E04C();
        goto LABEL_57;
      }

LABEL_28:
      v70 = *(v19 + 24);
      v71 = *(v23 + 3);
      v72 = *(v70 + 16);
      if (v72 != *(v71 + 16))
      {
        goto LABEL_55;
      }

      if (v72)
      {
        v73 = v70 == v71;
      }

      else
      {
        v73 = 1;
      }

      if (!v73)
      {
        v74 = (v70 + 40);
        v75 = (v71 + 40);
        while (v72)
        {
          v76 = *(v74 - 1) == *(v75 - 1) && *v74 == *v75;
          if (!v76 && (sub_26BDA0FB0() & 1) == 0)
          {
            goto LABEL_55;
          }

          v74 += 2;
          v75 += 2;
          if (!--v72)
          {
            goto LABEL_41;
          }
        }

        __break(1u);
        goto LABEL_59;
      }

LABEL_41:
      if (*(v19 + 32) != v23[32])
      {
        goto LABEL_55;
      }

      v77 = *(v94 + 48);
      sub_26BD31AF8();
      sub_26BD31AF8();
      v78 = OUTLINED_FUNCTION_114();
      OUTLINED_FUNCTION_112(v78, v79, v100);
      if (v63)
      {
        OUTLINED_FUNCTION_112(v1 + v77, 1, v100);
        if (!v63)
        {
          goto LABEL_54;
        }

        sub_26BD04E80(v1, &qword_280449CA0, &qword_26BDA4B78);
      }

      else
      {
        sub_26BD31AF8();
        OUTLINED_FUNCTION_112(v1 + v77, 1, v100);
        if (v80)
        {
          sub_26BD2E04C();
LABEL_54:
          sub_26BD04E80(v1, &qword_280449DE8, &unk_26BDA5420);
          goto LABEL_55;
        }

        sub_26BD2DF9C();
        v81 = OUTLINED_FUNCTION_167();
        v83 = sub_26BD1A4D0(v81, v82);
        sub_26BD2E04C();
        sub_26BD2E04C();
        sub_26BD04E80(v1, &qword_280449CA0, &qword_26BDA4B78);
        if ((v83 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      sub_26BDA0850();
      OUTLINED_FUNCTION_0_4();
      sub_26BD2E1F8(&qword_2804490C0, v84, MEMORY[0x277D216D0]);
      v85 = sub_26BDA0BB0();
      sub_26BD2E04C();
      sub_26BD2E04C();
      v2 = v93;
      v39 = v96;
      if ((v85 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    while (1)
    {
      v44 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v44 >= v91)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1D8, &unk_26BDA61B0);
        OUTLINED_FUNCTION_157();
        OUTLINED_FUNCTION_123();
        __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
        v96 = 0;
        goto LABEL_11;
      }

      ++v38;
      if (*(v92 + 8 * v44))
      {
        OUTLINED_FUNCTION_111_0();
        v96 = v45;
        v43 = v47 | (v46 << 6);
        v38 = v46;
        goto LABEL_10;
      }
    }

LABEL_59:
    __break(1u);
  }
}

void sub_26BD2E954()
{
  OUTLINED_FUNCTION_189();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_156_0();
  type metadata accessor for HMTArticle(v4);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_57();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_166_0();
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_98_0(v11, v12, v13, v14, v15, v16, v17, v18, v60);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1C0, &qword_26BDA6198);
  v20 = OUTLINED_FUNCTION_110(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_57();
  v22 = MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_149_0(v22, v23, v24, v25, v26, v27, v28, v29, v61);
  if (v0 == v3 || *(v0 + 16) != *(v3 + 16))
  {
LABEL_55:
    OUTLINED_FUNCTION_188();
  }

  else
  {
    v30 = 0;
    OUTLINED_FUNCTION_32_2();
    v62 = v32 >> 6;
    while (v31)
    {
      OUTLINED_FUNCTION_48_0();
      v64 = v33;
LABEL_10:
      OUTLINED_FUNCTION_87_0();
      sub_26BD2DFF4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1C8, &qword_26BDA61A0);
      OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_86_0();
      sub_26BD2DF9C();
      OUTLINED_FUNCTION_151();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, &qword_28044A1C8);

LABEL_11:
      sub_26BD31AA0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1C8, &qword_26BDA61A0);
      OUTLINED_FUNCTION_28(v63);
      if (v48)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_86_0();
      sub_26BD2DF9C();
      OUTLINED_FUNCTION_13_1();
      v40 = OUTLINED_FUNCTION_163_0();
      sub_26BD31960(v40, v41, v42, v43);
      v45 = v44;

      if ((v45 & 1) == 0)
      {
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_87_0();
      sub_26BD2DFF4();
      OUTLINED_FUNCTION_127_0();
      v48 = v48 && v46 == v47;
      if (!v48 && (sub_26BDA0FB0() & 1) == 0)
      {
        goto LABEL_53;
      }

      v49 = *(v8 + 16) == *(v1 + 16) && *(v8 + 24) == *(v1 + 24);
      if (!v49 && (sub_26BDA0FB0() & 1) == 0)
      {
        goto LABEL_53;
      }

      if (*(v8 + 32) != *(v1 + 32))
      {
        goto LABEL_53;
      }

      v50 = *(v8 + 40) == *(v1 + 40) && *(v8 + 48) == *(v1 + 48);
      if (!v50 && (sub_26BDA0FB0() & 1) == 0)
      {
        goto LABEL_53;
      }

      v51 = *(v8 + 56) == *(v1 + 56) && *(v8 + 64) == *(v1 + 64);
      if (!v51 && (sub_26BDA0FB0() & 1) == 0)
      {
        goto LABEL_53;
      }

      v52 = *(v8 + 72);
      v53 = *(v1 + 72);
      if (*(v1 + 80) == 1)
      {
        if (v53)
        {
          if (v53 == 1)
          {
            if (v52 != 1)
            {
              goto LABEL_53;
            }
          }

          else if (v52 != 2)
          {
            goto LABEL_53;
          }
        }

        else if (v52)
        {
          goto LABEL_53;
        }
      }

      else if (v52 != v53)
      {
        goto LABEL_53;
      }

      v57 = *(v8 + 88) == *(v1 + 88) && *(v8 + 96) == *(v1 + 96);
      if (!v57 && (sub_26BDA0FB0() & 1) == 0)
      {
LABEL_53:
        sub_26BD2E04C();
LABEL_54:
        sub_26BD2E04C();
        goto LABEL_55;
      }

      sub_26BDA0850();
      OUTLINED_FUNCTION_0_4();
      sub_26BD2E1F8(&qword_2804490C0, v58, MEMORY[0x277D216D0]);
      v59 = OUTLINED_FUNCTION_169_0();
      sub_26BD2E04C();
      OUTLINED_FUNCTION_204();
      sub_26BD2E04C();
      v31 = v64;
      if ((v59 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    while (1)
    {
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v34 >= v62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1C8, &qword_26BDA61A0);
        v54 = OUTLINED_FUNCTION_42_1();
        __swift_storeEnumTagSinglePayload(v54, v55, 1, v56);
        v64 = 0;
        goto LABEL_11;
      }

      ++v30;
      if (*(v0 + 64 + 8 * v34))
      {
        OUTLINED_FUNCTION_111_0();
        v64 = v35;
        v30 = v36;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_26BD2EE10()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_90();
  type metadata accessor for HMTBCSSolution(v3);
  OUTLINED_FUNCTION_18();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_57();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_166_0();
  v12 = MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_98_0(v12, v13, v14, v15, v16, v17, v18, v19, v61);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1B0, &qword_26BDA6188);
  v21 = OUTLINED_FUNCTION_110(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_57();
  v23 = MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_149_0(v23, v24, v25, v26, v27, v28, v29, v30, v62);
  if (v1 == v0 || *(v1 + 16) != *(v0 + 16))
  {
LABEL_45:
    OUTLINED_FUNCTION_188();
  }

  else
  {
    v31 = 0;
    v32 = v1 + 64;
    OUTLINED_FUNCTION_32_2();
    v63 = v34 >> 6;
    while (v33)
    {
      OUTLINED_FUNCTION_48_0();
      v65 = v35;
LABEL_10:
      OUTLINED_FUNCTION_83_0();
      sub_26BD2DFF4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1B8, &qword_26BDA6190);
      OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_82_0();
      sub_26BD2DF9C();
      OUTLINED_FUNCTION_151();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, &qword_28044A1B8);

LABEL_11:
      sub_26BD31AA0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1B8, &qword_26BDA6190);
      OUTLINED_FUNCTION_28(v64);
      if (v51)
      {
        goto LABEL_45;
      }

      v42 = v5;
      OUTLINED_FUNCTION_82_0();
      sub_26BD2DF9C();
      OUTLINED_FUNCTION_13_1();
      v43 = OUTLINED_FUNCTION_163_0();
      sub_26BD31960(v43, v44, v45, v46);
      v48 = v47;

      if ((v48 & 1) == 0)
      {
        goto LABEL_44;
      }

      v5 = v42;
      OUTLINED_FUNCTION_83_0();
      sub_26BD2DFF4();
      OUTLINED_FUNCTION_127_0();
      v51 = v51 && v49 == v50;
      if (!v51 && (sub_26BDA0FB0() & 1) == 0 || *(v9 + 16) != *(v2 + 16) || (*(v9 + 24) == *(v2 + 24) ? (v52 = *(v9 + 32) == *(v2 + 32)) : (v52 = 0), !v52 && (sub_26BDA0FB0() & 1) == 0 || (*(v9 + 40) == *(v2 + 40) ? (v53 = *(v9 + 48) == *(v2 + 48)) : (v53 = 0), !v53 && (sub_26BDA0FB0() & 1) == 0 || (*(v9 + 56) == *(v2 + 56) ? (v54 = *(v9 + 64) == *(v2 + 64)) : (v54 = 0), !v54 && (sub_26BDA0FB0() & 1) == 0 || (*(v9 + 72) == *(v2 + 72) ? (v55 = *(v9 + 80) == *(v2 + 80)) : (v55 = 0), !v55 && (sub_26BDA0FB0() & 1) == 0)))))
      {
        sub_26BD2E04C();
LABEL_44:
        sub_26BD2E04C();
        goto LABEL_45;
      }

      sub_26BDA0850();
      OUTLINED_FUNCTION_0_4();
      sub_26BD2E1F8(&qword_2804490C0, v56, MEMORY[0x277D216D0]);
      v57 = OUTLINED_FUNCTION_169_0();
      sub_26BD2E04C();
      OUTLINED_FUNCTION_204();
      sub_26BD2E04C();
      v33 = v65;
      if ((v57 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    while (1)
    {
      v36 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v36 >= v63)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1B8, &qword_26BDA6190);
        v58 = OUTLINED_FUNCTION_42_1();
        __swift_storeEnumTagSinglePayload(v58, v59, 1, v60);
        v65 = 0;
        goto LABEL_11;
      }

      ++v31;
      if (*(v32 + 8 * v36))
      {
        OUTLINED_FUNCTION_111_0();
        v65 = v37;
        v31 = v38;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_26BD2F284(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 64;
    OUTLINED_FUNCTION_32_2();
    v8 = v7 >> 6;
    while (v6)
    {
      OUTLINED_FUNCTION_48_0();
      v27 = v10;
LABEL_11:
      v13 = v5;
      v14 = (*(v5 + 56) + 16 * (v9 | (v3 << 6)));
      v16 = *v14;
      v15 = v14[1];

      OUTLINED_FUNCTION_13_1();
      v17 = OUTLINED_FUNCTION_256();
      v21 = sub_26BD31960(v17, v18, v19, v20);
      v23 = v22;

      if ((v23 & 1) == 0)
      {

        return;
      }

      v24 = (*(a2 + 56) + 16 * v21);
      if (*v24 == v16 && v24[1] == v15)
      {

        v5 = v13;
        v6 = v27;
      }

      else
      {
        v26 = sub_26BDA0FB0();

        v5 = v13;
        v6 = v27;
        if ((v26 & 1) == 0)
        {
          return;
        }
      }
    }

    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        return;
      }

      v12 = *(v4 + 8 * v3);
      ++v11;
      if (v12)
      {
        v9 = __clz(__rbit64(v12));
        v27 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_26BD2FE10()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.supportOptionSubTypeString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD2FFF4()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.carriersInfo.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD30020()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.relatedProducts.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD3004C()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.grlProduct.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD30078()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.conciergeProduct.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD300A4()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.conciergeSymptom.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD300D0()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.randevuProduct.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD300FC()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.detectedCarrierID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD30128()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.localizedPurchaseRequirementsDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD30154()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.usesSecureFlow.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_26BD30248()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.redirectURLString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD30274()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.locale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD302F0()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.localizedPricingDisclaimer.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD303BC()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.contactCarriersInfo.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD30438()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.applicationData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD30464()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.takeInForServiceDetails.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD306B4()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*v1);
  }

  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175();
  if (*(v5 + 84) == v0)
  {
    v6 = v2[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
    OUTLINED_FUNCTION_175();
    if (*(v7 + 84) == v0)
    {
      v6 = v2[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
      v6 = v2[7];
    }
  }

  v8 = OUTLINED_FUNCTION_174(v6);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_26BD307C4()
{
  OUTLINED_FUNCTION_52();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_237();
    sub_26BDA0850();
    OUTLINED_FUNCTION_175();
    if (*(v5 + 84) == v3)
    {
      v6 = v2[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
      OUTLINED_FUNCTION_175();
      if (*(v7 + 84) == v3)
      {
        v6 = v2[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
        v6 = v2[7];
      }
    }

    v8 = OUTLINED_FUNCTION_107(v6);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

void sub_26BD308C8(uint64_t a1)
{
  sub_26BD309DC();
  if (v1 <= 0x3F)
  {
    sub_26BDA0850();
    if (v2 <= 0x3F)
    {
      sub_26BD30A38(319, &qword_280449340, type metadata accessor for TriageRequest.CaseMetaData, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26BD30A38(319, &unk_280449348, type metadata accessor for TriageRequest.ClientContext, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26BD309DC()
{
  if (!qword_28044A100)
  {
    v0 = sub_26BDA0B80();
    if (!v1)
    {
      atomic_store(v0, &qword_28044A100);
    }
  }
}

void sub_26BD30A38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26BD30AB0()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD30B28()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v2 = v0;
    sub_26BDA0850();
    v3 = OUTLINED_FUNCTION_107(*(v2 + 36));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_26BD30BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_134();
  sub_26BDA0850();
  OUTLINED_FUNCTION_175();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_46(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_26BD30C50()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_144_0();
  OUTLINED_FUNCTION_175();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_26BD30CE4(uint64_t a1)
{
  result = sub_26BDA0850();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SupportOptionDetailsResponse._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26BD30D94()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v2 = v0;
    sub_26BDA0850();
    v3 = OUTLINED_FUNCTION_107(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t __swift_get_extra_inhabitant_index_121Tm()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD30E88()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v2 = v0;
    sub_26BDA0850();
    v3 = OUTLINED_FUNCTION_107(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void sub_26BD30EF0(uint64_t a1)
{
  sub_26BD30A38(319, &qword_28044A148, type metadata accessor for SupportOptionDetailsResponse.TimeSlot, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26BDA0850();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD30FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_144_0();
  OUTLINED_FUNCTION_175();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449FE0, &unk_26BDA5460);
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_26BD3107C()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_144_0();
  OUTLINED_FUNCTION_175();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449FE0, &unk_26BDA5460);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

void sub_26BD31118(uint64_t a1)
{
  sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    sub_26BD30A38(319, &qword_28044A160, type metadata accessor for CallContactDetails, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD311E0()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*(v1 + 8));
  }

  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449FE0, &unk_26BDA5460);
    v6 = *(v2 + 24);
  }

  v7 = OUTLINED_FUNCTION_174(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_26BD312A4()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_237();
    sub_26BDA0850();
    OUTLINED_FUNCTION_175();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449FE0, &unk_26BDA5460);
      v4 = *(v0 + 24);
    }

    v5 = OUTLINED_FUNCTION_107(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_26BD31358(uint64_t a1)
{
  sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    sub_26BD30A38(319, &qword_28044A160, type metadata accessor for CallContactDetails, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD31430()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*(v1 + 8));
  }

  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 44);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
    v6 = *(v2 + 48);
  }

  v7 = OUTLINED_FUNCTION_174(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_26BD314F4()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_237();
    sub_26BDA0850();
    OUTLINED_FUNCTION_175();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 44);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
      v4 = *(v0 + 48);
    }

    v5 = OUTLINED_FUNCTION_107(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_26BD315A8(uint64_t a1)
{
  sub_26BD17404();
  if (v1 <= 0x3F)
  {
    sub_26BDA0850();
    if (v2 <= 0x3F)
    {
      sub_26BD30A38(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BD316A0(uint64_t a1)
{
  sub_26BD30A38(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26BD30A38(319, &qword_28044A198, type metadata accessor for SupportOptionDetailsResponse.SCBDetails, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26BD30A38(319, &qword_28044A1A0, type metadata accessor for SupportOptionDetailsResponse.CLDDetails, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26BD30A38(319, &qword_28044A1A8, type metadata accessor for SupportOptionDetailsResponse.C2CDetails, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_26BD31960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  sub_26BDA1050();
  OUTLINED_FUNCTION_129();
  a3();
  sub_26BDA1070();
  v5 = OUTLINED_FUNCTION_167();

  return a4(v5);
}

unint64_t sub_26BD319EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26BDA0FB0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_26BD31AA0()
{
  OUTLINED_FUNCTION_184();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  return v0;
}

uint64_t sub_26BD31AF8()
{
  OUTLINED_FUNCTION_184();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  return v0;
}

unint64_t sub_26BD31B50(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    while (2)
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      switch(v12)
      {
        case 0:
          if (a2)
          {
            goto LABEL_24;
          }

          break;
        case 1:
          if (a2 != 1)
          {
            goto LABEL_24;
          }

          break;
        case 2:
          if (a2 != 2)
          {
            goto LABEL_24;
          }

          break;
        case 3:
          if (a2 != 3)
          {
            goto LABEL_24;
          }

          break;
        case 4:
          if (a2 != 4)
          {
            goto LABEL_24;
          }

          break;
        case 5:
          if (a2 != 5)
          {
            goto LABEL_24;
          }

          break;
        case 6:
          if (a2 != 6)
          {
            goto LABEL_24;
          }

          break;
        default:
          if (a2 < 7 || (*v11 == a1 ? (v13 = v12 == a2) : (v13 = 0), !v13 && (sub_26BDA0FB0() & 1) == 0))
          {
LABEL_24:
            v6 = (v6 + 1) & v9;
            if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
            {
              continue;
            }
          }

          break;
      }

      break;
    }
  }

  return v6;
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for SupportOptionDetailsResponse(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_1()
{
  type metadata accessor for SupportOptionDetailsResponse._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_37_1()
{

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_57_0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_58_0()
{

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_70_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26BDA0AB0();
}

uint64_t OUTLINED_FUNCTION_71_0()
{

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_72_0()
{
  type metadata accessor for SupportOptionDetailsResponse(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_119_0()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_133_0()
{
  v3 = *(v2 - 104);
  *v3 = v1;
  v3[1] = v0;
}

uint64_t OUTLINED_FUNCTION_139_0()
{

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_140_0(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;

  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_144_0()
{

  return sub_26BDA0850();
}

uint64_t OUTLINED_FUNCTION_147_0()
{

  return sub_26BD2DF9C();
}

uint64_t OUTLINED_FUNCTION_167_0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_168_0()
{

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_169_0()
{

  return sub_26BDA0BB0();
}

uint64_t OUTLINED_FUNCTION_170_0()
{

  return sub_26BDA0BB0();
}

uint64_t OUTLINED_FUNCTION_171_0()
{

  return sub_26BDA0BB0();
}

uint64_t OUTLINED_FUNCTION_172_0()
{

  return sub_26BD31AF8();
}

uint64_t sub_26BD32440@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOptionTypeNamespace.Enum.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BD32474(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD04DD8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

void SupportOptionSubTypeNamespace.Enum.init(rawValue:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  switch(a1)
  {
    case 9:
      a1 = 5;
      break;
    case 10:
      a1 = 6;
      break;
    case 11:
      a1 = 7;
      break;
    case 12:
      a1 = 8;
      break;
    case 13:
      a1 = 9;
      break;
    case 14:
      a1 = 10;
      break;
    case 15:
      a1 = 11;
      break;
    case 16:
      a1 = 12;
      break;
    case 17:
      a1 = 13;
      break;
    case 18:
      a1 = 14;
      break;
    case 19:
      a1 = 15;
      break;
    case 20:
      a1 = 16;
      break;
    case 21:
      a1 = 17;
      break;
    case 22:
      a1 = 18;
      break;
    case 23:
      a1 = 19;
      break;
    case 24:
      a1 = 20;
      break;
    case 25:
      a1 = 21;
      break;
    case 26:
      a1 = 22;
      break;
    case 27:
      a1 = 23;
      break;
    case 28:
      a1 = 24;
      break;
    default:
      break;
  }

  *a2 = a1;
  OUTLINED_FUNCTION_1_3(a2);
}

uint64_t SupportOptionSubTypeNamespace.Enum.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_26BDA6850[result];
  }

  return result;
}

uint64_t sub_26BD326F8@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOptionSubTypeNamespace.Enum.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BD3272C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD34154();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t SupportOptionTypeNamespace.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  do
  {
    result = sub_26BDA0900();
  }

  while (!v2 && (v4 & 1) == 0);
  return result;
}

uint64_t sub_26BD3290C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD32A98(&qword_28044A340, type metadata accessor for SupportOptionTypeNamespace, &protocol conformance descriptor for SupportOptionTypeNamespace);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD3298C(uint64_t a1)
{
  v2 = sub_26BD32A98(&qword_28044A2F0, type metadata accessor for SupportOptionTypeNamespace, &protocol conformance descriptor for SupportOptionTypeNamespace);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD329FC(uint64_t a1, uint64_t a2)
{
  sub_26BD32A98(&qword_28044A2F0, type metadata accessor for SupportOptionTypeNamespace, &protocol conformance descriptor for SupportOptionTypeNamespace);

  return sub_26BDA0A00();
}

uint64_t sub_26BD32A98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BD32AE4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A250);
  __swift_project_value_buffer(v0, qword_28044A250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_26BDA3640;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 0;
  *v5 = "ORC";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  *(v5 + 24) = &unk_287CAFAD0;
  v6 = *MEMORY[0x277D21880];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "CIN";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  *(v9 + 24) = &unk_287CAFB08;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "CALL";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "CHAT";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "EML";
  *(v15 + 1) = 3;
  v15[16] = 2;
  *(v15 + 3) = &unk_287CAFB40;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "PHONE";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "CAS";
  *(v19 + 1) = 3;
  v19[16] = 2;
  *(v19 + 3) = &unk_287CAFB78;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "MCR";
  *(v21 + 1) = 3;
  v21[16] = 2;
  *(v21 + 3) = &unk_287CAFBB0;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "KB";
  *(v23 + 1) = 2;
  v23[16] = 2;
  *(v23 + 3) = &unk_287CAFBE8;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "REFER";
  *(v25 + 1) = 5;
  v25[16] = 2;
  *(v25 + 3) = &unk_287CAFC20;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "SMB";
  *(v27 + 1) = 3;
  v27[16] = 2;
  *(v27 + 3) = &unk_287CAFC58;
  v8();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD32F78(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_26BDA0B00();
}

uint64_t _s15SupportServices0A19OptionTypeNamespaceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_26BDA0850();
  sub_26BD32A98(&qword_2804490C0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_26BDA0BB0() & 1;
}

uint64_t sub_26BD330B4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_26BDA1050();
  a1(0);
  sub_26BD32A98(a2, a3, a4);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BD3315C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD32A98(&qword_28044A338, type metadata accessor for SupportOptionSubTypeNamespace, &protocol conformance descriptor for SupportOptionSubTypeNamespace);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD331DC(uint64_t a1)
{
  v2 = sub_26BD32A98(&qword_28044A308, type metadata accessor for SupportOptionSubTypeNamespace, &protocol conformance descriptor for SupportOptionSubTypeNamespace);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD3324C(uint64_t a1, uint64_t a2)
{
  sub_26BD32A98(&qword_28044A308, type metadata accessor for SupportOptionSubTypeNamespace, &protocol conformance descriptor for SupportOptionSubTypeNamespace);

  return sub_26BDA0A00();
}

uint64_t sub_26BD332E8()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A280);
  __swift_project_value_buffer(v0, qword_28044A280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_26BDA61D0;
  v4 = v56 + v3 + v1[14];
  *(v56 + v3) = 0;
  *v4 = "ORC";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  *(v4 + 24) = &unk_287CAFC90;
  v5 = *MEMORY[0x277D21880];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v56 + v3 + v2 + v1[14];
  *(v56 + v3 + v2) = 1;
  *v8 = "ASP_AND_RETAIL";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  *(v8 + 24) = &unk_287CAFCC8;
  v7();
  v9 = (v56 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "ASP";
  *(v10 + 1) = 3;
  v10[16] = 2;
  *(v10 + 3) = &unk_287CAFD00;
  v7();
  v11 = (v56 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ASPR";
  *(v12 + 1) = 4;
  v12[16] = 2;
  *(v12 + 3) = &unk_287CAFD38;
  v7();
  v13 = (v56 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "RET";
  *(v14 + 1) = 3;
  v14[16] = 2;
  *(v14 + 3) = &unk_287CAFD70;
  v7();
  v15 = (v56 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 9;
  *v16 = "C2C";
  *(v16 + 1) = 3;
  v16[16] = 2;
  *(v16 + 3) = &unk_287CAFDA8;
  v7();
  v17 = (v56 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 10;
  *v18 = "CLD";
  *(v18 + 1) = 3;
  v18[16] = 2;
  *(v18 + 3) = &unk_287CAFDE0;
  v7();
  v19 = (v56 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 11;
  *v20 = "SCB";
  *(v20 + 1) = 3;
  v20[16] = 2;
  *(v20 + 3) = &unk_287CAFE18;
  v7();
  v21 = (v56 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 12;
  *v22 = "C2CH";
  *(v22 + 1) = 4;
  v22[16] = 2;
  *(v22 + 3) = &unk_287CAFE50;
  v7();
  v23 = (v56 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 13;
  *v24 = "BZCHT";
  *(v24 + 1) = 5;
  v24[16] = 2;
  *(v24 + 3) = &unk_287CAFE88;
  v7();
  v25 = (v56 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 14;
  *v26 = "GEN";
  *(v26 + 1) = 3;
  v26[16] = 2;
  *(v26 + 3) = &unk_287CAFED8;
  v7();
  v27 = (v56 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 15;
  *v28 = "SNR";
  *(v28 + 1) = 3;
  v28[16] = 2;
  *(v28 + 3) = &unk_287CAFF10;
  v7();
  v29 = (v56 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 16;
  *v30 = "PHONE";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v7();
  v31 = (v56 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 17;
  *v32 = "CAS";
  *(v32 + 1) = 3;
  v32[16] = 2;
  *(v32 + 3) = &unk_287CAFF48;
  v7();
  v33 = (v56 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 18;
  *v34 = "MCR";
  *(v34 + 1) = 3;
  v34[16] = 2;
  *(v34 + 3) = &unk_287CAFF80;
  v7();
  v35 = (v56 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 19;
  *v36 = "KB";
  *(v36 + 1) = 2;
  v36[16] = 2;
  *(v36 + 3) = &unk_287CAFFB8;
  v7();
  v37 = (v56 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 20;
  *v38 = "BCS";
  *(v38 + 1) = 3;
  v38[16] = 2;
  *(v38 + 3) = &unk_287CAFFF0;
  v7();
  v39 = (v56 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 21;
  *v40 = "MULTIPLE";
  *(v40 + 1) = 8;
  v40[16] = 2;
  v7();
  v41 = (v56 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 22;
  *v42 = "REP_ERS";
  *(v42 + 1) = 7;
  v42[16] = 2;
  *(v42 + 3) = &unk_287CB0028;
  v7();
  v43 = (v56 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 23;
  *v44 = "REP_REQ";
  *(v44 + 1) = 7;
  v44[16] = 2;
  *(v44 + 3) = &unk_287CB0060;
  v7();
  v45 = (v56 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 24;
  *v46 = "MAASP";
  *(v46 + 1) = 5;
  v46[16] = 2;
  *(v46 + 3) = &unk_287CB00B0;
  v7();
  v47 = (v56 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 25;
  *v48 = "REP_MAIL_IN";
  *(v48 + 1) = 11;
  v48[16] = 2;
  *(v48 + 3) = &unk_287CB00E8;
  v7();
  v49 = (v56 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 26;
  *v50 = "ACMNG";
  *(v50 + 1) = 5;
  v50[16] = 2;
  v7();
  v51 = (v56 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 27;
  *v52 = "CLRDIAG";
  *(v52 + 1) = 7;
  v52[16] = 2;
  *(v52 + 3) = &unk_287CB0120;
  v7();
  v53 = (v56 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 28;
  *v54 = "ENBLA";
  *(v54 + 1) = 5;
  v54[16] = 2;
  v7();
  return sub_26BDA0AF0();
}

unint64_t sub_26BD33B5C()
{
  result = qword_28044A2A8;
  if (!qword_28044A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A2A8);
  }

  return result;
}

unint64_t sub_26BD33BB4()
{
  result = qword_28044A2B0;
  if (!qword_28044A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A2B0);
  }

  return result;
}

unint64_t sub_26BD33C40()
{
  result = qword_28044A2C8;
  if (!qword_28044A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A2C8);
  }

  return result;
}

unint64_t sub_26BD33C98()
{
  result = qword_28044A2D0;
  if (!qword_28044A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A2D0);
  }

  return result;
}

uint64_t sub_26BD33D1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26BD33FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BDA0850();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_26BD34024(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BDA0850();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t _s15SupportServices26SupportOptionTypeNamespaceV4EnumOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_2_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BD3408C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_2_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BD340D8(uint64_t a1)
{
  result = sub_26BDA0850();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26BD34154()
{
  result = qword_28044A348;
  if (!qword_28044A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A348);
  }

  return result;
}

BOOL sub_26BD342A0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 != 0;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

uint64_t sub_26BD342CC(char a1, char a2)
{
  v2 = 4475971;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x454E4F4850;
    }

    else
    {
      v3 = 0x5448435A42;
    }

    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 4475971;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x454E4F4850;
    }

    else
    {
      v2 = 0x5448435A42;
    }

    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26BDA0FB0();
  }

  return v7 & 1;
}

uint64_t sub_26BD343C8()
{
  OUTLINED_FUNCTION_42_2();
  v3 = v2 | 0x646F437200000000;
  v4 = v1 | 1;
  v6 = v5;
  v7 = v3;
  switch(v6)
  {
    case 1:
      v7 = 0x6B6F54726F727265;
      v4 = 0xEA00000000006E65;
      break;
    case 2:
      v4 = 0xE800000000000000;
      v7 = 0x726F727245776172;
      break;
    case 3:
      v7 = 0x73654D726F727265;
      v4 = 0xEC00000065676173;
      break;
    case 4:
      v7 = 0x4974736575716572;
      v4 = 0xE900000000000064;
      break;
    case 5:
      v7 = 0x746954726F727265;
      v4 = 0xEA0000000000656CLL;
      break;
    default:
      break;
  }

  v8 = v1 + 1;
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_42_2();
      v3 = v9 | 0x6B6F547200000000;
      v8 = 0xEA00000000006E65;
      break;
    case 2:
      v8 = 0xE800000000000000;
      v3 = 0x726F727245776172;
      break;
    case 3:
      OUTLINED_FUNCTION_42_2();
      v3 = v10 | 0x73654D7200000000;
      v8 = 0xEC00000065676173;
      break;
    case 4:
      v3 = 0x4974736575716572;
      v8 = 0xE900000000000064;
      break;
    case 5:
      OUTLINED_FUNCTION_42_2();
      v3 = v11 | 0x7469547200000000;
      v8 = 0xEA0000000000656CLL;
      break;
    default:
      break;
  }

  if (v7 == v3 && v4 == v8)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_26BDA0FB0();
  }

  return v13 & 1;
}

BOOL sub_26BD345CC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_26BDA7018[a1];
  }

  if (a4)
  {
    a3 = qword_26BDA7018[a3];
  }

  return a1 == a3;
}

uint64_t sub_26BD34618@<X0>(uint64_t *a1@<X8>)
{
  result = SymptomSortStrategy.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BD3464C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD3AE88();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t SymptomVisibility.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_26BD3472C@<X0>(uint64_t *a1@<X8>)
{
  result = SymptomVisibility.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BD34760(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD39B40();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t SymptomCategory.id.getter()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_154(*(v0 + v1) + 16, v2);

  return OUTLINED_FUNCTION_147();
}

void SymptomCategory.id.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_219(v8);
  }

  OUTLINED_FUNCTION_159(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.id.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127(v0 + 16);
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD34984()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.id.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_211();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD37A60(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t SymptomCategory.name.getter()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_154(*(v0 + v1) + 32, v2);

  return OUTLINED_FUNCTION_147();
}

void SymptomCategory.name.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_219(v8);
  }

  OUTLINED_FUNCTION_159(v6 + 32, v5);
  *(v6 + 32) = v2;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.name.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127(v0 + 32);
  v4 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD34B68()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.name.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_211();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD37A60(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 32);
    *(v7 + 32) = v3;
    *(v7 + 40) = v2;
  }

  free(v0);
}

uint64_t SymptomCategory.isSymptomRequired.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154(v2 + 48, v3);
  return *(v2 + 48);
}

uint64_t SymptomCategory.isSymptomRequired.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_19_3();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  result = OUTLINED_FUNCTION_159(v6 + 48, v5);
  *(v6 + 48) = a1 & 1;
  return result;
}

uint64_t SymptomCategory.isSymptomRequired.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_270(v4);
  OUTLINED_FUNCTION_127(v0 + 48);
  *(v1 + 84) = *(v0 + 48);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD34D08(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_215(v8);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 48) = v3;

  free(v1);
}

uint64_t SymptomCategory.imageID.getter()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_154(*(v0 + v1) + 56, v2);

  return OUTLINED_FUNCTION_147();
}

void SymptomCategory.imageID.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_219(v8);
  }

  OUTLINED_FUNCTION_159(v6 + 56, v5);
  *(v6 + 56) = v2;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.imageID.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127(v0 + 56);
  v4 = *(v0 + 64);
  *(v1 + 48) = *(v0 + 56);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD34ED8()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.imageID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_211();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD37A60(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 56);
    *(v7 + 56) = v3;
    *(v7 + 64) = v2;
  }

  free(v0);
}

uint64_t SymptomCategory.imageURL.getter()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_154(*(v0 + v1) + 72, v2);

  return OUTLINED_FUNCTION_147();
}

void SymptomCategory.imageURL.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_219(v8);
  }

  OUTLINED_FUNCTION_159(v6 + 72, v5);
  *(v6 + 72) = v2;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.imageURL.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127(v0 + 72);
  v4 = *(v0 + 80);
  *(v1 + 48) = *(v0 + 72);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD350BC()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.imageURL.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_211();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD37A60(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 72);
    *(v7 + 72) = v3;
    *(v7 + 80) = v2;
  }

  free(v0);
}

uint64_t SymptomCategory.visibility.getter()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_154(*(v0 + v1) + 88, v2);

  return OUTLINED_FUNCTION_147();
}

void SymptomCategory.visibility.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_219(v8);
  }

  OUTLINED_FUNCTION_159(v6 + 88, v5);
  *(v6 + 88) = v2;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.visibility.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127(v0 + 88);
  v4 = *(v0 + 96);
  *(v1 + 48) = *(v0 + 88);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD352A0()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.visibility.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_211();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD37A60(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 88);
    *(v7 + 88) = v3;
    *(v7 + 96) = v2;
  }

  free(v0);
}

uint64_t SymptomCategory.symptomCount.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154(v2 + 104, v3);
  return *(v2 + 104);
}

uint64_t SymptomCategory.symptomCount.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_19_3();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  result = OUTLINED_FUNCTION_159(v6 + 104, v5);
  *(v6 + 104) = a1;
  return result;
}

uint64_t SymptomCategory.symptomCount.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_142(v2) + 80) = v0;
  OUTLINED_FUNCTION_4_0();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127(v4 + 104);
  *(v1 + 72) = *(v4 + 104);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD35444(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_186();
  v6 = OUTLINED_FUNCTION_46_0();
  v7 = *(v5 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_36();
    v9 = sub_26BD37A60(v8);
    OUTLINED_FUNCTION_215(v9);
  }

  OUTLINED_FUNCTION_212();
  *(v7 + 104) = v4;

  free(v2);
}

uint64_t SymptomCategory.symptoms.getter()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_154(*(v0 + v1) + 112, v2);
}

uint64_t SymptomCategory.symptoms.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_19_3();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  OUTLINED_FUNCTION_159(v6 + 112, v5);
  *(v6 + 112) = a1;
}

uint64_t SymptomCategory.symptoms.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_142(v2) + 56) = v0;
  OUTLINED_FUNCTION_4_0();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127(v4 + 112);
  *(v1 + 48) = *(v4 + 112);

  return OUTLINED_FUNCTION_128();
}

void sub_26BD35628()
{
  OUTLINED_FUNCTION_186();
  v2 = *(v1 + 48);
  if (v3)
  {

    SymptomCategory.symptoms.setter(v4);
  }

  else
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v0 + 64);
      v10 = *(v0 + 56);
      type metadata accessor for SymptomCategory._StorageClass();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_36();
      v8 = sub_26BD37A60(v11);
      *(v10 + v9) = v8;
    }

    OUTLINED_FUNCTION_191(v8 + 112);
    *(v8 + 112) = v2;
  }

  free(v0);
}

uint64_t SymptomCategory.sequenceNumber.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154(v2 + 120, v3);
  return *(v2 + 120);
}

uint64_t SymptomCategory.sequenceNumber.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_19_3();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  result = OUTLINED_FUNCTION_159(v6 + 120, v5);
  *(v6 + 120) = a1;
  return result;
}

uint64_t SymptomCategory.sequenceNumber.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_142(v2) + 80) = v0;
  OUTLINED_FUNCTION_4_0();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127(v4 + 120);
  *(v1 + 72) = *(v4 + 120);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD357F0(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_186();
  v6 = OUTLINED_FUNCTION_46_0();
  v7 = *(v5 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_36();
    v9 = sub_26BD37A60(v8);
    OUTLINED_FUNCTION_215(v9);
  }

  OUTLINED_FUNCTION_212();
  *(v7 + 120) = v4;

  free(v2);
}

uint64_t SymptomCategory.safetyIssueAct.getter()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_154(*(v0 + v1) + 128, v2);

  return OUTLINED_FUNCTION_147();
}

void SymptomCategory.safetyIssueAct.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_219(v8);
  }

  OUTLINED_FUNCTION_159(v6 + 128, v5);
  *(v6 + 128) = v2;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.safetyIssueAct.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127(v0 + 128);
  v4 = *(v0 + 136);
  *(v1 + 48) = *(v0 + 128);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD359D4()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.safetyIssueAct.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_211();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD37A60(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 128);
    *(v7 + 128) = v3;
    *(v7 + 136) = v2;
  }

  free(v0);
}

uint64_t SymptomCategory.isTrapDoorEligible.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154(v2 + 144, v3);
  return *(v2 + 144);
}

uint64_t SymptomCategory.isTrapDoorEligible.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_19_3();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  result = OUTLINED_FUNCTION_159(v6 + 144, v5);
  *(v6 + 144) = a1 & 1;
  return result;
}

uint64_t SymptomCategory.isTrapDoorEligible.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_270(v4);
  OUTLINED_FUNCTION_127(v0 + 144);
  *(v1 + 84) = *(v0 + 144);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD35B74(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_215(v8);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 144) = v3;

  free(v1);
}

uint64_t SymptomCategory.isRepairEligible.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154(v2 + 145, v3);
  return *(v2 + 145);
}

uint64_t SymptomCategory.isRepairEligible.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_19_3();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  result = OUTLINED_FUNCTION_159(v6 + 145, v5);
  *(v6 + 145) = a1 & 1;
  return result;
}

uint64_t SymptomCategory.isRepairEligible.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_270(v4);
  OUTLINED_FUNCTION_127(v0 + 145);
  *(v1 + 84) = *(v0 + 145);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD35D00(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_215(v8);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 145) = v3;

  free(v1);
}

uint64_t SymptomCategory.appleIDRequired.getter()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_154(*(v0 + v1) + 152, v2);

  return OUTLINED_FUNCTION_147();
}

void SymptomCategory.appleIDRequired.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_219(v8);
  }

  OUTLINED_FUNCTION_159(v6 + 152, v5);
  *(v6 + 152) = v2;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.appleIDRequired.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127(v0 + 152);
  v4 = *(v0 + 160);
  *(v1 + 48) = *(v0 + 152);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD35ED0()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.appleIDRequired.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_211();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD37A60(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 152);
    *(v7 + 152) = v3;
    *(v7 + 160) = v2;
  }

  free(v0);
}

uint64_t SymptomCategory.webDescription.getter()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_154(*(v0 + v1) + 168, v2);

  return OUTLINED_FUNCTION_147();
}

void SymptomCategory.webDescription.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_219(v8);
  }

  OUTLINED_FUNCTION_159(v6 + 168, v5);
  *(v6 + 168) = v2;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.webDescription.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127(v0 + 168);
  v4 = *(v0 + 176);
  *(v1 + 48) = *(v0 + 168);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD360B4()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.webDescription.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_211();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD37A60(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 168);
    *(v7 + 168) = v3;
    *(v7 + 176) = v2;
  }

  free(v0);
}

uint64_t SymptomCategory.iosDiagnosticsEligible.getter()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_154(*(v0 + v1) + 184, v2);

  return OUTLINED_FUNCTION_147();
}

void SymptomCategory.iosDiagnosticsEligible.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_219(v8);
  }

  OUTLINED_FUNCTION_159(v6 + 184, v5);
  *(v6 + 184) = v2;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.iosDiagnosticsEligible.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127(v0 + 184);
  v4 = *(v0 + 192);
  *(v1 + 48) = *(v0 + 184);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD36298()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.iosDiagnosticsEligible.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_211();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD37A60(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 184);
    *(v7 + 184) = v3;
    *(v7 + 192) = v2;
  }

  free(v0);
}

uint64_t SymptomCategory.sortStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_4_0();
  v4 = *(v1 + v3);
  result = OUTLINED_FUNCTION_154(v4 + 200, v5);
  v7 = *(v4 + 208);
  *a1 = *(v4 + 200);
  *(a1 + 8) = v7;
  return result;
}

uint64_t sub_26BD36374@<X0>(uint64_t a1@<X8>)
{
  result = SymptomCategory.sortStrategy.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

void SymptomCategory.sortStrategy.setter()
{
  OUTLINED_FUNCTION_307();
  v1 = v0;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(type metadata accessor for SymptomCategory(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v9);
    *(v1 + v5) = v8;
  }

  OUTLINED_FUNCTION_159(v8 + 200, v7);
  *(v8 + 200) = v3;
  *(v8 + 208) = v4;
  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.sortStrategy.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_142(v2) + 88) = v0;
  OUTLINED_FUNCTION_4_0();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127(v4 + 200);
  v5 = *(v4 + 208);
  *(v1 + 72) = *(v4 + 200);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_133();
}

void sub_26BD364F4(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_186();
  v4 = *(v3 + 72);
  v5 = *(v2 + 84);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v2 + 84);
    v11 = *(v2 + 88);
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_36();
    v9 = sub_26BD37A60(v12);
    *(v11 + v10) = v9;
  }

  OUTLINED_FUNCTION_212();
  *(v9 + 200) = v4;
  *(v9 + 208) = v7;

  free(v2);
}

uint64_t SymptomCategory.offersDiagnostics.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154(v2 + 209, v3);
  return *(v2 + 209);
}

uint64_t SymptomCategory.offersDiagnostics.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_19_3();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  result = OUTLINED_FUNCTION_159(v6 + 209, v5);
  *(v6 + 209) = a1 & 1;
  return result;
}

uint64_t SymptomCategory.offersDiagnostics.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_270(v4);
  OUTLINED_FUNCTION_127(v0 + 209);
  *(v1 + 84) = *(v0 + 209);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD366B8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_215(v8);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 209) = v3;

  free(v1);
}

uint64_t SymptomCategory.unknownFields.getter()
{
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_147();

  return v1(v0);
}

uint64_t SymptomCategory.unknownFields.setter()
{
  OUTLINED_FUNCTION_134();
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t SymptomCategory.init()@<X0>(uint64_t a2@<X8>)
{
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v3 = *(type metadata accessor for SymptomCategory(0) + 20);
  if (qword_280448E18 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_28044A398;
}

uint64_t Symptom.id.setter()
{
  OUTLINED_FUNCTION_171();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Symptom.name.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void Symptom.visibility.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Symptom.visibility.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Symptom.safetyIssueAct.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Symptom.isEmailAttachmentEligible.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Symptom.imageURL.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Symptom.imageID.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t Symptom.summary.setter()
{
  OUTLINED_FUNCTION_171();

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t Symptom.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Symptom(0) + 80);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Symptom.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for Symptom(v2) + 80);
  sub_26BDA0850();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Symptom.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for Symptom(v0);
  return nullsub_1;
}

uint64_t Symptom.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 74) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0xE000000000000000;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0xE000000000000000;
  type metadata accessor for Symptom(0);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD36F6C()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A350);
  __swift_project_value_buffer(v0, qword_28044A350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "WEIGHTAGE";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ALPHABETICAL";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SEQUENCE";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD37198()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A368);
  __swift_project_value_buffer(v0, qword_28044A368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DEFAULT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OVERRIDE";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD373AC()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A380);
  __swift_project_value_buffer(v0, qword_28044A380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_26BDA6920;
  v4 = v46 + v3;
  v5 = v46 + v3 + v1[14];
  *(v46 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  *(v5 + 24) = "symptomCategoryId";
  *(v5 + 32) = 17;
  *(v5 + 40) = 2;
  v6 = *MEMORY[0x277D21878];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  *(v9 + 24) = "symptomCategoryDesc";
  *(v9 + 32) = 19;
  *(v9 + 40) = 2;
  v8();
  v10 = v1[14];
  v11 = (v4 + 2 * v2);
  *v11 = 3;
  v12 = v11 + v10;
  *v12 = "is_symptom_required";
  *(v12 + 1) = 19;
  v12[16] = 2;
  *(v12 + 3) = "symptomRequired";
  *(v12 + 4) = 15;
  v12[40] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "image_id";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v8();
  v15 = v1[14];
  v16 = (v4 + 4 * v2);
  *v16 = 5;
  v17 = v16 + v15;
  *v17 = "image_url";
  *(v17 + 1) = 9;
  v17[16] = 2;
  *(v17 + 3) = "imageURL";
  *(v17 + 4) = 8;
  v17[40] = 2;
  v8();
  v18 = (v4 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "visibility";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "symptom_count";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = (v4 + 7 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "symptoms";
  *(v23 + 1) = 8;
  v23[16] = 2;
  v8();
  v24 = (v4 + 8 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "sequence_number";
  *(v25 + 1) = 15;
  v25[16] = 2;
  v8();
  v26 = (v4 + 9 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "safety_issue_act";
  *(v27 + 1) = 16;
  v27[16] = 2;
  v8();
  v28 = v1[14];
  v29 = (v4 + 10 * v2);
  *v29 = 11;
  v30 = v29 + v28;
  *v30 = "is_trap_door_eligible";
  *(v30 + 1) = 21;
  v30[16] = 2;
  *(v30 + 3) = "trapDoorEligible";
  *(v30 + 4) = 16;
  v30[40] = 2;
  v8();
  v31 = (v4 + 11 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "is_repair_eligible";
  *(v32 + 1) = 18;
  v32[16] = 2;
  v8();
  v33 = (v4 + 12 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "apple_id_required";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v8();
  v35 = v1[14];
  v36 = (v4 + 13 * v2);
  *v36 = 14;
  v37 = v36 + v35;
  *v37 = "web_description";
  *(v37 + 1) = 15;
  v37[16] = 2;
  *(v37 + 3) = "webDesc";
  *(v37 + 4) = 7;
  v37[40] = 2;
  v8();
  v38 = v1[14];
  v39 = (v4 + 14 * v2);
  *v39 = 15;
  v40 = v39 + v38;
  *v40 = "ios_diagnostics_eligible";
  *(v40 + 1) = 24;
  v40[16] = 2;
  *(v40 + 3) = "iosDiagEligible";
  *(v40 + 4) = 15;
  v40[40] = 2;
  v8();
  v41 = (v4 + 15 * v2);
  v42 = v41 + v1[14];
  *v41 = 16;
  *v42 = "sort_strategy";
  *(v42 + 1) = 13;
  v42[16] = 2;
  v8();
  v43 = (v4 + 16 * v2);
  v44 = v43 + v1[14];
  *v43 = 17;
  *v44 = "offers_diagnostics";
  *(v44 + 1) = 18;
  v44[16] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD379CC()
{
  type metadata accessor for SymptomCategory._StorageClass();
  swift_allocObject();
  result = sub_26BD37A0C();
  qword_28044A398 = result;
  return result;
}

uint64_t sub_26BD37A0C()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 104) = 0;
  *(v0 + 112) = v2;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xE000000000000000;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xE000000000000000;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0xE000000000000000;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  return result;
}

uint64_t sub_26BD37A60(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0xE000000000000000;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0xE000000000000000;
  *(v1 + 104) = 0;
  *(v1 + 112) = MEMORY[0x277D84F90];
  *(v1 + 128) = 0;
  *(v1 + 120) = 0;
  *(v1 + 144) = 0;
  *(v1 + 136) = 0xE000000000000000;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0xE000000000000000;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0xE000000000000000;
  *(v1 + 184) = 0;
  *(v1 + 192) = 0xE000000000000000;
  *(v1 + 200) = 0;
  *(v1 + 208) = 1;
  swift_beginAccess();
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  swift_beginAccess();
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v6;
  *(v1 + 40) = v5;

  swift_beginAccess();
  LOBYTE(v3) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v3;
  swift_beginAccess();
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v8;
  *(v1 + 64) = v7;

  swift_beginAccess();
  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 72) = v10;
  *(v1 + 80) = v9;

  swift_beginAccess();
  v12 = *(a1 + 88);
  v11 = *(a1 + 96);
  swift_beginAccess();
  *(v1 + 88) = v12;
  *(v1 + 96) = v11;

  swift_beginAccess();
  v13 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 104) = v13;
  swift_beginAccess();
  v14 = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 112) = v14;

  swift_beginAccess();
  v15 = *(a1 + 120);
  swift_beginAccess();
  *(v1 + 120) = v15;
  swift_beginAccess();
  v17 = *(a1 + 128);
  v16 = *(a1 + 136);
  swift_beginAccess();
  *(v1 + 128) = v17;
  *(v1 + 136) = v16;

  swift_beginAccess();
  LOBYTE(v16) = *(a1 + 144);
  swift_beginAccess();
  *(v1 + 144) = v16;
  swift_beginAccess();
  LOBYTE(v16) = *(a1 + 145);
  swift_beginAccess();
  *(v1 + 145) = v16;
  swift_beginAccess();
  v19 = *(a1 + 152);
  v18 = *(a1 + 160);
  swift_beginAccess();
  *(v1 + 152) = v19;
  *(v1 + 160) = v18;

  swift_beginAccess();
  v21 = *(a1 + 168);
  v20 = *(a1 + 176);
  swift_beginAccess();
  *(v1 + 168) = v21;
  *(v1 + 176) = v20;

  swift_beginAccess();
  v23 = *(a1 + 184);
  v22 = *(a1 + 192);
  swift_beginAccess();
  *(v1 + 184) = v23;
  *(v1 + 192) = v22;

  swift_beginAccess();
  v24 = *(a1 + 200);
  v25 = *(a1 + 208);
  swift_beginAccess();
  *(v1 + 200) = v24;
  *(v1 + 208) = v25;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + 209);

  swift_beginAccess();
  *(v1 + 209) = v24;
  return v1;
}

void *sub_26BD37FD0()
{

  return v0;
}

uint64_t sub_26BD38038()
{
  v0 = sub_26BD37FD0();

  return MEMORY[0x2821FE8D8](v0, 210, 7);
}

uint64_t SymptomCategory.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for SymptomCategory(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_36();
    v10 = sub_26BD37A60(v11);
    *(v4 + v8) = v10;
  }

  return sub_26BD38104(v10, a1, a2, a3);
}

uint64_t sub_26BD38104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  while (1)
  {
    result = sub_26BDA0900();
    if (v5 || (v7 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
      case 5:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_9;
      case 3:
        swift_beginAccess();
        sub_26BDA0920();
        goto LABEL_9;
      case 6:
      case 10:
      case 13:
      case 14:
      case 15:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_9;
      case 7:
      case 9:
        swift_beginAccess();
        sub_26BDA0960();
        goto LABEL_9;
      case 8:
        swift_beginAccess();
        type metadata accessor for Symptom(0);
        sub_26BD39368(&qword_28044A430, type metadata accessor for Symptom, &protocol conformance descriptor for Symptom);
        sub_26BDA09A0();
        goto LABEL_9;
      case 11:
      case 12:
      case 17:
        swift_beginAccess();
        sub_26BDA0920();
        goto LABEL_9;
      case 16:
        swift_beginAccess();
        sub_26BD3AE88();
        sub_26BDA0930();
LABEL_9:
        v5 = 0;
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t SymptomCategory.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for SymptomCategory(0);
  result = sub_26BD38520(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_26BDA0830();
  }

  return result;
}

uint64_t sub_26BD38520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v8 = *(a1 + 40);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 48) == 1)
  {
    result = sub_26BDA0A40();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v11 = *(a1 + 64);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *(a1 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 80);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *(a1 + 72) & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    goto LABEL_23;
  }

  sub_26BDA0AB0();
  if (v4)
  {
  }

LABEL_23:
  swift_beginAccess();
  v15 = *(a1 + 96);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *(a1 + 88) & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1 + 104) || (result = sub_26BDA0A80(), !v4))
  {
    swift_beginAccess();
    if (!*(*(a1 + 112) + 16) || (type metadata accessor for Symptom(0), sub_26BD39368(&qword_28044A430, type metadata accessor for Symptom, &protocol conformance descriptor for Symptom), , sub_26BDA0AC0(), result = , !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 120) || (result = sub_26BDA0A80(), !v4))
      {
        swift_beginAccess();
        v17 = *(a1 + 136);
        v18 = HIBYTE(v17) & 0xF;
        if ((v17 & 0x2000000000000000) == 0)
        {
          v18 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
        }

        if (!v18 || (, sub_26BDA0AB0(), result = , !v4))
        {
          swift_beginAccess();
          if (*(a1 + 144) != 1 || (result = sub_26BDA0A40(), !v4))
          {
            swift_beginAccess();
            if (*(a1 + 145) != 1 || (result = sub_26BDA0A40(), !v4))
            {
              swift_beginAccess();
              v19 = *(a1 + 160);
              v20 = HIBYTE(v19) & 0xF;
              if ((v19 & 0x2000000000000000) == 0)
              {
                v20 = *(a1 + 152) & 0xFFFFFFFFFFFFLL;
              }

              if (!v20 || (, sub_26BDA0AB0(), result = , !v4))
              {
                swift_beginAccess();
                v21 = *(a1 + 176);
                v22 = HIBYTE(v21) & 0xF;
                if ((v21 & 0x2000000000000000) == 0)
                {
                  v22 = *(a1 + 168) & 0xFFFFFFFFFFFFLL;
                }

                if (!v22 || (, sub_26BDA0AB0(), result = , !v4))
                {
                  swift_beginAccess();
                  v23 = *(a1 + 192);
                  v24 = HIBYTE(v23) & 0xF;
                  if ((v23 & 0x2000000000000000) == 0)
                  {
                    v24 = *(a1 + 184) & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v24 || (, sub_26BDA0AB0(), result = , !v4))
                  {
                    swift_beginAccess();
                    if (!*(a1 + 200) || (sub_26BD3AE88(), result = sub_26BDA0A50(), !v4))
                    {
                      result = swift_beginAccess();
                      if (*(a1 + 209) == 1)
                      {
                        return sub_26BDA0A40();
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
  }

  return result;
}

uint64_t static SymptomCategory.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_0();
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_26BD38C0C(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_23_1();
  sub_26BD39368(v8, v9, MEMORY[0x277D216D0]);
  return sub_26BDA0BB0() & 1;
}

uint64_t sub_26BD38C0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (v6 || (sub_26BDA0FB0() & 1) != 0)
  {
    swift_beginAccess();
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    swift_beginAccess();
    v9 = v7 == *(a2 + 32) && v8 == *(a2 + 40);
    if (v9 || (sub_26BDA0FB0() & 1) != 0)
    {
      swift_beginAccess();
      v10 = *(a1 + 48);
      swift_beginAccess();
      if (v10 == *(a2 + 48))
      {
        swift_beginAccess();
        v13 = *(a1 + 56);
        v14 = *(a1 + 64);
        swift_beginAccess();
        v15 = v13 == *(a2 + 56) && v14 == *(a2 + 64);
        if (v15 || (sub_26BDA0FB0() & 1) != 0)
        {
          swift_beginAccess();
          v16 = *(a1 + 72);
          v17 = *(a1 + 80);
          swift_beginAccess();
          v18 = v16 == *(a2 + 72) && v17 == *(a2 + 80);
          if (v18 || (sub_26BDA0FB0() & 1) != 0)
          {
            swift_beginAccess();
            v19 = *(a1 + 88);
            v20 = *(a1 + 96);
            swift_beginAccess();
            v21 = v19 == *(a2 + 88) && v20 == *(a2 + 96);
            if (v21 || (sub_26BDA0FB0() & 1) != 0)
            {
              swift_beginAccess();
              v22 = *(a1 + 104);
              swift_beginAccess();
              if (v22 == *(a2 + 104))
              {
                swift_beginAccess();
                v23 = *(a1 + 112);
                swift_beginAccess();
                v24 = *(a2 + 112);

                sub_26BD0490C(v23, v24);
                v26 = v25;

                if (v26)
                {
                  swift_beginAccess();
                  v27 = *(a1 + 120);
                  swift_beginAccess();
                  if (v27 == *(a2 + 120))
                  {
                    swift_beginAccess();
                    v28 = *(a1 + 128);
                    v29 = *(a1 + 136);
                    swift_beginAccess();
                    v30 = v28 == *(a2 + 128) && v29 == *(a2 + 136);
                    if (v30 || (sub_26BDA0FB0() & 1) != 0)
                    {
                      swift_beginAccess();
                      v31 = *(a1 + 144);
                      swift_beginAccess();
                      if (v31 == *(a2 + 144))
                      {
                        swift_beginAccess();
                        v32 = *(a1 + 145);
                        swift_beginAccess();
                        if (v32 == *(a2 + 145))
                        {
                          swift_beginAccess();
                          v33 = *(a1 + 152);
                          v34 = *(a1 + 160);
                          swift_beginAccess();
                          v35 = v33 == *(a2 + 152) && v34 == *(a2 + 160);
                          if (v35 || (sub_26BDA0FB0() & 1) != 0)
                          {
                            swift_beginAccess();
                            v36 = *(a1 + 168);
                            v37 = *(a1 + 176);
                            swift_beginAccess();
                            v38 = v36 == *(a2 + 168) && v37 == *(a2 + 176);
                            if (v38 || (sub_26BDA0FB0() & 1) != 0)
                            {
                              swift_beginAccess();
                              v39 = *(a1 + 184);
                              v40 = *(a1 + 192);
                              swift_beginAccess();
                              v41 = v39 == *(a2 + 184) && v40 == *(a2 + 192);
                              if (v41 || (sub_26BDA0FB0() & 1) != 0)
                              {
                                swift_beginAccess();
                                v42 = *(a1 + 200);
                                v43 = *(a1 + 208);
                                swift_beginAccess();
                                if (sub_26BD343B4(v42, v43, *(a2 + 200)))
                                {
                                  swift_beginAccess();
                                  v44 = *(a1 + 209);

                                  swift_beginAccess();
                                  v45 = *(a2 + 209);

                                  v11 = v44 ^ v45 ^ 1;
                                  return v11 & 1;
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
            }
          }
        }
      }
    }
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_26BD391FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD39368(&qword_28044A468, type metadata accessor for SymptomCategory, &protocol conformance descriptor for SymptomCategory);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD3927C(uint64_t a1)
{
  v2 = sub_26BD39368(&qword_28044A418, type metadata accessor for SymptomCategory, &protocol conformance descriptor for SymptomCategory);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD392EC(uint64_t a1, uint64_t a2)
{
  sub_26BD39368(&qword_28044A418, type metadata accessor for SymptomCategory, &protocol conformance descriptor for SymptomCategory);

  return sub_26BDA0A00();
}

uint64_t sub_26BD39368(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BD393CC()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A3A0);
  __swift_project_value_buffer(v0, qword_28044A3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_26BDA6930;
  v4 = v42 + v3 + v1[14];
  *(v42 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  *(v4 + 24) = "symptomId";
  *(v4 + 32) = 9;
  *(v4 + 40) = 2;
  v5 = *MEMORY[0x277D21878];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v42 + v3 + v2 + v1[14];
  *(v42 + v3 + v2) = 2;
  *v8 = "name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  *(v8 + 24) = "symptomDesc";
  *(v8 + 32) = 11;
  *(v8 + 40) = 2;
  v7();
  v9 = (v42 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "weightage";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v42 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "visibility";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v42 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "safety_issue_act";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = v1[14];
  v16 = (v42 + v3 + 5 * v2);
  *v16 = 6;
  v17 = v16 + v15;
  *v17 = "is_case_block";
  *(v17 + 1) = 13;
  v17[16] = 2;
  *(v17 + 3) = "caseBlock";
  *(v17 + 4) = 9;
  v17[40] = 2;
  v7();
  v18 = v1[14];
  v19 = (v42 + v3 + 6 * v2);
  *v19 = 7;
  v20 = v19 + v18;
  *v20 = "should_suppress";
  *(v20 + 1) = 15;
  v20[16] = 2;
  *(v20 + 3) = "suppress";
  *(v20 + 4) = 8;
  v20[40] = 2;
  v7();
  v21 = (v42 + v3 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "is_repair_eligible";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v7();
  v23 = v1[14];
  v24 = (v42 + v3 + 8 * v2);
  *v24 = 9;
  v25 = v24 + v23;
  *v25 = "is_email_attachment_eligible";
  *(v25 + 1) = 28;
  v25[16] = 2;
  *(v25 + 3) = "elEmlAttch";
  *(v25 + 4) = 10;
  v25[40] = 2;
  v7();
  v26 = v1[14];
  v27 = (v42 + v3 + 9 * v2);
  *v27 = 10;
  v28 = v27 + v26;
  *v28 = "image_url";
  *(v28 + 1) = 9;
  v28[16] = 2;
  *(v28 + 3) = "imageURL";
  *(v28 + 4) = 8;
  v28[40] = 2;
  v7();
  v29 = (v42 + v3 + 10 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "override_rank";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v7();
  v31 = (v42 + v3 + 11 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "sequence";
  *(v32 + 1) = 8;
  v32[16] = 2;
  v7();
  v33 = (v42 + v3 + 12 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "offers_battery_check";
  *(v34 + 1) = 20;
  v34[16] = 2;
  v7();
  v35 = (v42 + v3 + 13 * v2);
  v36 = v35 + v1[14];
  *v35 = 14;
  *v36 = "offers_diagnostics";
  *(v36 + 1) = 18;
  v36[16] = 2;
  v7();
  v37 = (v42 + v3 + 14 * v2);
  v38 = v37 + v1[14];
  *v37 = 15;
  *v38 = "image_id";
  *(v38 + 1) = 8;
  v38[16] = 2;
  v7();
  v39 = (v42 + v3 + 15 * v2);
  v40 = v39 + v1[14];
  *v39 = 16;
  *v40 = "summary";
  *(v40 + 1) = 7;
  v40[16] = 2;
  v7();
  return sub_26BDA0AF0();
}

uint64_t Symptom.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  while (1)
  {
    result = sub_26BDA0900();
    if (v4 || (v6 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 5:
      case 9:
      case 10:
      case 15:
      case 16:
        OUTLINED_FUNCTION_35_2();
        sub_26BDA0990();
        goto LABEL_9;
      case 3:
      case 11:
      case 12:
        OUTLINED_FUNCTION_35_2();
        sub_26BDA0960();
        goto LABEL_9;
      case 4:
        sub_26BD39B40();
        sub_26BDA0930();
        goto LABEL_9;
      case 6:
      case 7:
      case 8:
      case 13:
      case 14:
        OUTLINED_FUNCTION_35_2();
        sub_26BDA0920();
LABEL_9:
        v4 = 0;
        break;
      default:
        continue;
    }
  }
}

unint64_t sub_26BD39B40()
{
  result = qword_28044A3C0;
  if (!qword_28044A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A3C0);
  }

  return result;
}

uint64_t Symptom.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  OUTLINED_FUNCTION_29();
  if (!v8 || (result = OUTLINED_FUNCTION_103(v6, v7, 1), (v5 = v4) == 0))
  {
    OUTLINED_FUNCTION_29();
    if (!v12 || (result = OUTLINED_FUNCTION_103(v10, v11, 2), (v5 = v4) == 0))
    {
      if (!*(v3 + 32) || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A80(), (v5 = v4) == 0))
      {
        if (!*(v3 + 40) || (sub_26BD39B40(), v4 = v5, result = sub_26BDA0A50(), !v5))
        {
          OUTLINED_FUNCTION_29();
          if (!v15 || (result = OUTLINED_FUNCTION_103(v13, v14, 5), !v4))
          {
            if (*(v3 + 72) != 1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A40(), !v4))
            {
              if (*(v3 + 73) != 1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A40(), !v4))
              {
                if (*(v3 + 74) != 1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A40(), !v4))
                {
                  OUTLINED_FUNCTION_29();
                  if (!v18 || (result = OUTLINED_FUNCTION_103(v16, v17, 9), !v4))
                  {
                    OUTLINED_FUNCTION_29();
                    if (!v21 || (result = OUTLINED_FUNCTION_103(v19, v20, 10), !v4))
                    {
                      if (!*(v3 + 112) || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A80(), !v4))
                      {
                        if (!*(v3 + 120) || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A80(), !v4))
                        {
                          if (*(v3 + 128) != 1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A40(), !v4))
                          {
                            if (*(v3 + 129) != 1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A40(), !v4))
                            {
                              OUTLINED_FUNCTION_29();
                              if (!v24 || (result = OUTLINED_FUNCTION_103(v22, v23, 15), !v4))
                              {
                                OUTLINED_FUNCTION_29();
                                if (!v27 || (result = OUTLINED_FUNCTION_103(v25, v26, 16), !v4))
                                {
                                  type metadata accessor for Symptom(0);
                                  return sub_26BDA0830();
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
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Symptom.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_26BDA0FB0() & 1) == 0 || a1[4] != *(a2 + 32))
  {
    return 0;
  }

  v6 = a1[5];
  v7 = *(a2 + 40);
  if (*(a1 + 48))
  {
    v6 = v6 != 0;
  }

  if (*(a2 + 48) == 1)
  {
    if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = a1[7] == *(a2 + 56) && a1[8] == *(a2 + 64);
  if (!v8 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 72) != *(a2 + 72) || *(a1 + 73) != *(a2 + 73) || *(a1 + 74) != *(a2 + 74))
  {
    return 0;
  }

  v9 = a1[10] == *(a2 + 80) && a1[11] == *(a2 + 88);
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v10 = a1[12] == *(a2 + 96) && a1[13] == *(a2 + 104);
  if (!v10 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  if (a1[14] != *(a2 + 112) || a1[15] != *(a2 + 120) || *(a1 + 128) != *(a2 + 128) || *(a1 + 129) != *(a2 + 129))
  {
    return 0;
  }

  v12 = a1[17] == *(a2 + 136) && a1[18] == *(a2 + 144);
  if (!v12 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v13 = a1[19] == *(a2 + 152) && a1[20] == *(a2 + 160);
  if (!v13 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Symptom(0);
  sub_26BDA0850();
  OUTLINED_FUNCTION_23_1();
  sub_26BD39368(v14, v15, MEMORY[0x277D216D0]);
  return sub_26BDA0BB0() & 1;
}

uint64_t sub_26BD3A09C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26BDA1050();
  a1(0);
  v6 = OUTLINED_FUNCTION_130();
  sub_26BD39368(v6, v7, a4);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BD3A198(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD39368(&qword_28044A460, type metadata accessor for Symptom, &protocol conformance descriptor for Symptom);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD3A218(uint64_t a1)
{
  v2 = sub_26BD39368(&qword_28044A430, type metadata accessor for Symptom, &protocol conformance descriptor for Symptom);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD3A288(uint64_t a1, uint64_t a2)
{
  sub_26BD39368(&qword_28044A430, type metadata accessor for Symptom, &protocol conformance descriptor for Symptom);

  return sub_26BDA0A00();
}

unint64_t sub_26BD3A310()
{
  result = qword_28044A3D0;
  if (!qword_28044A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A3D0);
  }

  return result;
}

unint64_t sub_26BD3A368()
{
  result = qword_28044A3D8;
  if (!qword_28044A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A3D8);
  }

  return result;
}

unint64_t sub_26BD3A3F4()
{
  result = qword_28044A3F0;
  if (!qword_28044A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A3F0);
  }

  return result;
}

unint64_t sub_26BD3A44C()
{
  result = qword_28044A3F8;
  if (!qword_28044A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A3F8);
  }

  return result;
}

uint64_t sub_26BD3A710()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3A73C()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3A768()
{
  OUTLINED_FUNCTION_65_0();
  v0 = SymptomCategory.isSymptomRequired.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD3A7B4()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.imageID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3A7E0()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.imageURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3A80C()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.visibility.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3A838()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.symptomCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD3A888()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.symptoms.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD3A8B4()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.sequenceNumber.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD3A904()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.safetyIssueAct.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3A930()
{
  OUTLINED_FUNCTION_65_0();
  v0 = SymptomCategory.isTrapDoorEligible.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD3A97C()
{
  OUTLINED_FUNCTION_65_0();
  v0 = SymptomCategory.isRepairEligible.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD3A9C8()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.appleIDRequired.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3A9F4()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.webDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3AA20()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.iosDiagnosticsEligible.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3AA54()
{
  OUTLINED_FUNCTION_65_0();
  v0 = SymptomCategory.offersDiagnostics.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD3AAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_134();
  v6 = sub_26BDA0850();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_46(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_26BD3AB84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26BDA0850();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26BD3AC2C(uint64_t a1)
{
  result = sub_26BDA0850();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SymptomCategory._StorageClass();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BD3ACC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_46(*(a1 + 8));
  }

  v7 = sub_26BDA0850();
  v8 = a1 + *(a3 + 80);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26BD3AD54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26BDA0850();
    v8 = v5 + *(a4 + 80);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26BD3ADD4(uint64_t a1)
{
  result = sub_26BDA0850();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26BD3AE88()
{
  result = qword_28044A470;
  if (!qword_28044A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A470);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for SymptomCategory(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_1()
{
  type metadata accessor for SymptomCategory(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_19_3()
{
  type metadata accessor for SymptomCategory(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return type metadata accessor for SymptomCategory._StorageClass();
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return type metadata accessor for SymptomCategory._StorageClass();
}

uint64_t OUTLINED_FUNCTION_46_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t ExecuteSupportOptionRequest.caseMetaData.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_32_3(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  v8 = type metadata accessor for TriageRequest.CaseMetaData(0);
  OUTLINED_FUNCTION_8(v8);
  if (v9)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    if (qword_280448E60 != -1)
    {
      OUTLINED_FUNCTION_226(&qword_280448E60);
    }

    result = OUTLINED_FUNCTION_106_0();
    if (a1 != 1)
    {
      return sub_26BD04E80(v1, &qword_280448F68, &qword_26BDA1A30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_126();
    return sub_26BD4F024();
  }

  return result;
}

uint64_t ExecuteSupportOptionRequest.caseMetaData.setter()
{
  OUTLINED_FUNCTION_90_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  v3 = type metadata accessor for ExecuteSupportOptionRequest(v2);
  if ((OUTLINED_FUNCTION_73_0(v3) & 1) == 0)
  {
    type metadata accessor for ExecuteSupportOptionRequest._StorageClass(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_36();
    v5 = sub_26BD439B4(v4);
    OUTLINED_FUNCTION_219(v5);
  }

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_99_0();
  type metadata accessor for TriageRequest.CaseMetaData(0);
  v6 = OUTLINED_FUNCTION_52_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_86_1();
  return swift_endAccess();
}

void ExecuteSupportOptionRequest.caseMetaData.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = type metadata accessor for TriageRequest.CaseMetaData(v8);
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_300(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_17_2();
  v14 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__caseMetaData;
  OUTLINED_FUNCTION_57_0(v0 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__caseMetaData);
  OUTLINED_FUNCTION_132(v0 + v14);
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v16 = *(v9 + 20);
    if (qword_280448E60 != -1)
    {
      OUTLINED_FUNCTION_226(&qword_280448E60);
    }

    *&v13[v16] = qword_28044A6A8;
    v17 = OUTLINED_FUNCTION_42_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, v18, v9);

    if (EnumTagSinglePayload != 1)
    {
      sub_26BD04E80(v1, &qword_280448F68, &qword_26BDA1A30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_97_0();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t ExecuteSupportOptionRequest.clientContext.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_32_3(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  v8 = type metadata accessor for TriageRequest.ClientContext(0);
  OUTLINED_FUNCTION_8(v8);
  if (v9)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    if (qword_280448E80 != -1)
    {
      OUTLINED_FUNCTION_220(&qword_280448E80);
    }

    result = OUTLINED_FUNCTION_106_0();
    if (a1 != 1)
    {
      return sub_26BD04E80(v1, &qword_280448F70, &qword_26BDA1A38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_126();
    return sub_26BD4F024();
  }

  return result;
}

uint64_t ExecuteSupportOptionRequest.clientContext.setter()
{
  OUTLINED_FUNCTION_90_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  v3 = type metadata accessor for ExecuteSupportOptionRequest(v2);
  if ((OUTLINED_FUNCTION_73_0(v3) & 1) == 0)
  {
    type metadata accessor for ExecuteSupportOptionRequest._StorageClass(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_36();
    v5 = sub_26BD439B4(v4);
    OUTLINED_FUNCTION_219(v5);
  }

  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_99_0();
  type metadata accessor for TriageRequest.ClientContext(0);
  v6 = OUTLINED_FUNCTION_52_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_86_1();
  return swift_endAccess();
}

void ExecuteSupportOptionRequest.clientContext.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = type metadata accessor for TriageRequest.ClientContext(v8);
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_300(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_17_2();
  v14 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__clientContext;
  OUTLINED_FUNCTION_57_0(v0 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__clientContext);
  OUTLINED_FUNCTION_132(v0 + v14);
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v16 = *(v9 + 20);
    if (qword_280448E80 != -1)
    {
      OUTLINED_FUNCTION_220(&qword_280448E80);
    }

    *&v13[v16] = qword_28044A6F0;
    v17 = OUTLINED_FUNCTION_42_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, v18, v9);

    if (EnumTagSinglePayload != 1)
    {
      sub_26BD04E80(v1, &qword_280448F70, &qword_26BDA1A38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_97_0();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void sub_26BD3B7B0()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_167();
    sub_26BD4F078();
    v2(v3);
    sub_26BD4F0CC();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_283();

  free(v7);
}

BOOL sub_26BD3B884(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_171();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_110(v11);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  OUTLINED_FUNCTION_17_2();
  v15 = *a3;
  OUTLINED_FUNCTION_65();
  sub_26BD04E2C(v5 + v15);
  v16 = a4(0);
  v17 = __swift_getEnumTagSinglePayload(v14, 1, v16) != 1;
  sub_26BD04E80(v14, v6, v4);
  return v17;
}

void sub_26BD3B980()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_171();
  v6 = v0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_110(v9);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_150();
  v11 = *(type metadata accessor for ExecuteSupportOptionRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v0 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ExecuteSupportOptionRequest._StorageClass(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_36();
    v13 = sub_26BD439B4(v14);
    *(v6 + v11) = v13;
  }

  v5(0);
  v15 = OUTLINED_FUNCTION_42_1();
  __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
  OUTLINED_FUNCTION_236(v13 + *v3, &v18);
  sub_26BCFF2C8(v1);
  swift_endAccess();
  OUTLINED_FUNCTION_283();
}

uint64_t ExecuteSupportOptionRequest.reportingContext.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_32_3(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  v8 = type metadata accessor for TriageRequest.ReportingContext(0);
  OUTLINED_FUNCTION_8(v8);
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    a1[4] = 0;
    a1[5] = 0xE000000000000000;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    result = OUTLINED_FUNCTION_14();
    if (!v9)
    {
      return sub_26BD04E80(v1, &qword_28044A4E0, &qword_26BDA70F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_126();
    return sub_26BD4F024();
  }

  return result;
}

uint64_t ExecuteSupportOptionRequest.reportingContext.setter()
{
  OUTLINED_FUNCTION_90_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A4E0, &qword_26BDA70F0);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  v3 = type metadata accessor for ExecuteSupportOptionRequest(v2);
  if ((OUTLINED_FUNCTION_73_0(v3) & 1) == 0)
  {
    type metadata accessor for ExecuteSupportOptionRequest._StorageClass(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_36();
    v5 = sub_26BD439B4(v4);
    OUTLINED_FUNCTION_219(v5);
  }

  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_99_0();
  type metadata accessor for TriageRequest.ReportingContext(0);
  v6 = OUTLINED_FUNCTION_52_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_86_1();
  return swift_endAccess();
}

void ExecuteSupportOptionRequest.reportingContext.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_47(v7);
  type metadata accessor for TriageRequest.ReportingContext(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_300(v10);
  *(v2 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_17_2();
  v12 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContext;
  OUTLINED_FUNCTION_57_0(v0 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContext);
  OUTLINED_FUNCTION_132(v0 + v12);
  OUTLINED_FUNCTION_9();
  if (v13)
  {
    OUTLINED_FUNCTION_100_0();
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    OUTLINED_FUNCTION_9();
    if (!v13)
    {
      sub_26BD04E80(v1, &qword_28044A4E0, &qword_26BDA70F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_97_0();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t ExecuteSupportOptionRequest.customer.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_32_3(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  v8 = type metadata accessor for TriageRequest.Customer(0);
  OUTLINED_FUNCTION_8(v8);
  if (v9)
  {
    TriageRequest.Customer.init()(a1);
    result = OUTLINED_FUNCTION_14();
    if (!v9)
    {
      return sub_26BD04E80(v1, &qword_28044A4F0, &unk_26BDA70F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_126();
    return sub_26BD4F024();
  }

  return result;
}

uint64_t ExecuteSupportOptionRequest.customer.setter()
{
  OUTLINED_FUNCTION_90_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A4F0, &unk_26BDA70F8);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  v3 = type metadata accessor for ExecuteSupportOptionRequest(v2);
  if ((OUTLINED_FUNCTION_73_0(v3) & 1) == 0)
  {
    type metadata accessor for ExecuteSupportOptionRequest._StorageClass(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_36();
    v5 = sub_26BD439B4(v4);
    OUTLINED_FUNCTION_219(v5);
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_99_0();
  type metadata accessor for TriageRequest.Customer(0);
  v6 = OUTLINED_FUNCTION_52_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_86_1();
  return swift_endAccess();
}

void ExecuteSupportOptionRequest.customer.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_47(v7);
  type metadata accessor for TriageRequest.Customer(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_300(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  OUTLINED_FUNCTION_17_2();
  v13 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__customer;
  OUTLINED_FUNCTION_57_0(v0 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__customer);
  OUTLINED_FUNCTION_132(v0 + v13);
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    OUTLINED_FUNCTION_100_0();
    v12[6] = 0;
    v12[7] = v15;
    v12[8] = 0;
    v12[9] = v15;
    v12[10] = 0;
    v12[11] = v15;
    v12[12] = 0;
    v12[13] = v15;
    v12[14] = 0;
    v12[15] = v15;
    v12[16] = 0;
    v12[17] = v15;
    v12[18] = 0;
    v12[19] = v15;
    v12[20] = 0;
    v12[21] = v15;
    v12[22] = 0;
    v12[23] = v15;
    v12[24] = 0;
    v12[25] = v15;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v1, &qword_28044A4F0, &unk_26BDA70F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_97_0();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void ExecuteSupportOptionRequest.selectedStore.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_47(v6);
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v7);
  *(v1 + 48) = v8;
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_162(v10);
  *(v1 + 64) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v12)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v12)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_21();
    v14(v13);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t ExecuteSupportOptionRequest.reportingContextMap.getter()
{
  v1 = type metadata accessor for ExecuteSupportOptionRequest(0);
  OUTLINED_FUNCTION_154(*(v0 + *(v1 + 20)) + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap, v2);
}

uint64_t ExecuteSupportOptionRequest.reportingContextMap.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for ExecuteSupportOptionRequest(v2) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ExecuteSupportOptionRequest._StorageClass(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD439B4(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  v9 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap;
  OUTLINED_FUNCTION_159(v6 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap, v5);
  *(v6 + v9) = v0;
}

uint64_t ExecuteSupportOptionRequest.reportingContextMap.modify()
{
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 56) = v0;
  v4 = type metadata accessor for ExecuteSupportOptionRequest(0);
  OUTLINED_FUNCTION_151_0(*(v4 + 20));
  v5 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap;
  OUTLINED_FUNCTION_127(v0 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap);
  *(v1 + 48) = *(v0 + v5);

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3C508()
{
  OUTLINED_FUNCTION_186();
  v4 = *(v3 + 48);
  if (v5)
  {
    OUTLINED_FUNCTION_98_1();
    ExecuteSupportOptionRequest.reportingContextMap.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_75_0();
    v7 = *(v2 + v1);
    if ((v6 & 1) == 0)
    {
      type metadata accessor for ExecuteSupportOptionRequest._StorageClass(0);
      OUTLINED_FUNCTION_119();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD439B4(v8);
      OUTLINED_FUNCTION_89_0(v9);
    }

    v10 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap;
    OUTLINED_FUNCTION_191(v7 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap);
    *(v7 + v10) = v4;
  }

  free(v0);
}

void sub_26BD3C5D0()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v8);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_150();
  v10 = *(v0 + *(v5(0) + 20));
  v11 = *v3;
  swift_beginAccess();
  OUTLINED_FUNCTION_132(v10 + v11);
  v12 = sub_26BDA0810();
  v13 = OUTLINED_FUNCTION_42_1();
  if (__swift_getEnumTagSinglePayload(v13, v14, v12) == 1)
  {
    sub_26BDA0800();
    v15 = OUTLINED_FUNCTION_42_1();
    if (__swift_getEnumTagSinglePayload(v15, v16, v12) != 1)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    (*(*(v12 - 8) + 32))(v7, v1, v12);
  }

  OUTLINED_FUNCTION_283();
}

void sub_26BD3C754()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v12);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  v16 = *(v8(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v0 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_36();
    v18 = v4(v19);
    *(v9 + v16) = v18;
  }

  v20 = sub_26BDA0810();
  OUTLINED_FUNCTION_34();
  (*(v21 + 32))(v15, v11, v20);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v20);
  OUTLINED_FUNCTION_236(v18 + *v2, &v23);
  sub_26BCFF2C8(v15);
  swift_endAccess();
  OUTLINED_FUNCTION_283();
}

void ExecuteSupportOptionRequest.selectedStoreServiceOption.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_47(v6);
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v7);
  *(v1 + 48) = v8;
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_162(v10);
  *(v1 + 64) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v12)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v12)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_21();
    v14(v13);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t ExecuteSupportOptionRequest.hmtContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_32_3(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  v8 = type metadata accessor for TriageRequest.HMTContext(0);
  OUTLINED_FUNCTION_8(v8);
  if (v9)
  {
    *a1 = 0;
    v10 = MEMORY[0x277D84F90];
    *(a1 + 8) = MEMORY[0x277D84F90];
    *(a1 + 16) = v10;
    *(a1 + 24) = v10;
    *(a1 + 32) = v10;
    *(a1 + 40) = v10;
    *(a1 + 48) = v10;
    *(a1 + 56) = v10;
    *(a1 + 64) = v10;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    result = OUTLINED_FUNCTION_14();
    if (!v9)
    {
      return sub_26BD04E80(v1, &qword_28044A518, &qword_26BDA7108);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_126();
    return sub_26BD4F024();
  }

  return result;
}

uint64_t sub_26BD3CB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_110(v9);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_173();
  sub_26BD4F078();
  return a7(v7);
}

uint64_t ExecuteSupportOptionRequest.hmtContext.setter()
{
  OUTLINED_FUNCTION_90_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A518, &qword_26BDA7108);
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_22();
  v3 = type metadata accessor for ExecuteSupportOptionRequest(v2);
  if ((OUTLINED_FUNCTION_73_0(v3) & 1) == 0)
  {
    type metadata accessor for ExecuteSupportOptionRequest._StorageClass(0);
    OUTLINED_FUNCTION_119();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_36();
    v5 = sub_26BD439B4(v4);
    OUTLINED_FUNCTION_219(v5);
  }

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_99_0();
  type metadata accessor for TriageRequest.HMTContext(0);
  v6 = OUTLINED_FUNCTION_52_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_86_1();
  return swift_endAccess();
}

void ExecuteSupportOptionRequest.hmtContext.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_47(v7);
  type metadata accessor for TriageRequest.HMTContext(v8);
  OUTLINED_FUNCTION_34();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_300(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  OUTLINED_FUNCTION_17_2();
  v13 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__hmtContext;
  OUTLINED_FUNCTION_57_0(v0 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__hmtContext);
  OUTLINED_FUNCTION_132(v0 + v13);
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    *v12 = 0;
    v15 = MEMORY[0x277D84F90];
    v12[1] = MEMORY[0x277D84F90];
    v12[2] = v15;
    v12[3] = v15;
    v12[4] = v15;
    v12[5] = v15;
    v12[6] = v15;
    v12[7] = v15;
    v12[8] = v15;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v1, &qword_28044A518, &qword_26BDA7108);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_97_0();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t ExecuteResponse.caseID.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154(v0 + 16, v1);

  return OUTLINED_FUNCTION_147();
}

void ExecuteResponse.caseID.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD47E88(v7);
    OUTLINED_FUNCTION_219(v8);
  }

  OUTLINED_FUNCTION_159(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.caseID.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127(v0 + 16);
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3D028()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.caseID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_211();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD47E88(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t ExecuteResponse.articleIds.getter()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_154(*(v0 + v1) + 32, v2);
}

uint64_t ExecuteResponse.articleIds.setter()
{
  v3 = OUTLINED_FUNCTION_31_2();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_155(v7);
  }

  OUTLINED_FUNCTION_159(v5 + 32, v4);
  *(v5 + 32) = v0;
}

uint64_t ExecuteResponse.articleIds.modify()
{
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 56) = v0;
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_151_0(v4);
  OUTLINED_FUNCTION_127(v0 + 32);
  *(v1 + 48) = *(v0 + 32);

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3D1E8()
{
  OUTLINED_FUNCTION_186();
  v4 = *(v3 + 48);
  if (v5)
  {
    OUTLINED_FUNCTION_98_1();
    ExecuteResponse.articleIds.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_75_0();
    v7 = *(v2 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_19_4();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD47E88(v8);
      OUTLINED_FUNCTION_89_0(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 32);
    *(v7 + 32) = v4;
  }

  free(v0);
}

uint64_t ExecuteResponse.solutionType.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154(v0 + 40, v1);

  return OUTLINED_FUNCTION_147();
}

void ExecuteResponse.solutionType.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD47E88(v7);
    OUTLINED_FUNCTION_219(v8);
  }

  OUTLINED_FUNCTION_159(v6 + 40, v5);
  *(v6 + 40) = v2;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.solutionType.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127(v0 + 40);
  v4 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 40);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3D3BC()
{
  OUTLINED_FUNCTION_54();
  if (v5)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.solutionType.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_211();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v8 = OUTLINED_FUNCTION_36();
      v9 = sub_26BD47E88(v8);
      OUTLINED_FUNCTION_215(v9);
    }

    OUTLINED_FUNCTION_191(v7 + 40);
    *(v7 + 40) = v3;
    *(v7 + 48) = v2;
  }

  free(v0);
}

uint64_t ExecuteResponse.solutionSubtype.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154(v0 + 56, v1);

  return OUTLINED_FUNCTION_147();
}

void ExecuteResponse.solutionSubtype.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD47E88(v7);
    OUTLINED_FUNCTION_219(v8);
  }

  OUTLINED_FUNCTION_159(v6 + 56, v5);
  *(v6 + 56) = v2;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_306();
}