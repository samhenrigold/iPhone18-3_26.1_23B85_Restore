double SearchToolDialog.init(renderedDialog:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.print.getter();
  *(a2 + 8) = v4;
  v5 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.speak.getter();
  v7 = v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  (*(*(v8 - 8) + 8))(a1, v8);
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchToolDialog(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for SearchToolDialog(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchToolDialog.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

void *EmailDocument.init(id:mailMessageId:subject:body:authorNames:from:to:cc:date:attachmentNames:attachmentTypes:attachmentPaths:unread:hydratable:instantAnswerDescription:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, char a18, uint64_t a19, uint64_t a20, __int128 *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, const void *a28)
{
  v47 = *(a21 + 4);
  v30 = type metadata accessor for EmailDocument(0);
  v31 = (a9 + v30[18]);
  v32 = a9 + v30[19];
  *(v32 + 32) = 0;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  v33 = v30[21];
  v34 = (a9 + v30[20]);
  v35 = type metadata accessor for PartialExtractedAttributes(0);
  v38 = a21[1];
  v39 = *a21;
  __swift_storeEnumTagSinglePayload(a9 + v33, 1, 1, v35);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  _s10Foundation4DateVSgWObTm_0();
  *(a9 + v30[13]) = a14;
  *(a9 + v30[14]) = a15;
  *(a9 + v30[15]) = a16;
  *(a9 + v30[16]) = a17;
  *(a9 + v30[17]) = a18;
  *v31 = a19;
  v31[1] = a20;
  outlined consume of DataDetectorResults?(*v32);
  *v32 = v39;
  *(v32 + 16) = v38;
  *(v32 + 32) = v47;
  *v34 = a22;
  v34[1] = a23;
  outlined assign with take of PartialExtractedAttributes?(a24, a9 + v33);
  _s10Foundation4DateVSgWObTm_0();
  _s10Foundation4DateVSgWObTm_0();
  _s10Foundation4DateVSgWObTm_0();
  v36 = (a9 + v30[25]);

  return memcpy(v36, a28, 0x60uLL);
}

uint64_t outlined consume of DataDetectorResults?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined assign with take of PartialExtractedAttributes?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t EmailDocument.date.getter()
{
  return EmailDocument.date.getter();
}

{
  v0 = OUTLINED_FUNCTION_35_1();
  v1(v0);
  return OUTLINED_FUNCTION_88_1();
}

uint64_t EmailDocument.attachmentNames.getter()
{
  return EmailDocument.attachmentNames.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
}

uint64_t EmailDocument.attachmentTypes.getter()
{
  return EmailDocument.attachmentTypes.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
}

uint64_t EmailDocument.attachmentPaths.getter()
{
  return EmailDocument.attachmentPaths.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
}

uint64_t EmailDocument.instantAnswerDescription.getter()
{
  type metadata accessor for EmailDocument(0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t EmailDocument.instantAnswerDescription.setter()
{
  v3 = OUTLINED_FUNCTION_129_0();
  v4 = (v1 + *(type metadata accessor for EmailDocument(v3) + 72));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t EmailDocument.instantAnswerDescription.modify()
{
  v0 = OUTLINED_FUNCTION_71();
  type metadata accessor for EmailDocument(v0);
  return OUTLINED_FUNCTION_95();
}

uint64_t EmailDocument.dataDetectorResults.getter()
{
  v1 = OUTLINED_FUNCTION_121();
  v2 = type metadata accessor for EmailDocument(v1);
  v3 = OUTLINED_FUNCTION_80_1(v0 + *(v2 + 76));
  v8 = OUTLINED_FUNCTION_257_0(v3, v4, v5, v6, v7);

  return outlined copy of DataDetectorResults?(v8, v9, v10, v11, v12);
}

uint64_t outlined copy of DataDetectorResults?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

double EmailDocument.dataDetectorResults.setter()
{
  v0 = OUTLINED_FUNCTION_259();
  v1 = type metadata accessor for EmailDocument(v0);
  OUTLINED_FUNCTION_226_0(*(v1 + 76));
  *&result = OUTLINED_FUNCTION_256_0().n128_u64[0];
  return result;
}

uint64_t EmailDocument.dataDetectorResults.modify()
{
  v0 = OUTLINED_FUNCTION_71();
  type metadata accessor for EmailDocument(v0);
  return OUTLINED_FUNCTION_95();
}

uint64_t EmailDocument.extractedEventsLLMConsumableDescription.getter()
{
  type metadata accessor for EmailDocument(0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t EmailDocument.extractedEventsLLMConsumableDescription.setter()
{
  v3 = OUTLINED_FUNCTION_129_0();
  v4 = (v1 + *(type metadata accessor for EmailDocument(v3) + 80));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t EmailDocument.extractedEventsLLMConsumableDescription.modify()
{
  v0 = OUTLINED_FUNCTION_71();
  type metadata accessor for EmailDocument(v0);
  return OUTLINED_FUNCTION_95();
}

uint64_t EmailDocument.partialExtractedAttributes.setter()
{
  v2 = OUTLINED_FUNCTION_71();
  v3 = v1 + *(type metadata accessor for EmailDocument(v2) + 84);

  return outlined assign with take of PartialExtractedAttributes?(v0, v3);
}

uint64_t EmailDocument.partialExtractedAttributes.modify()
{
  v0 = OUTLINED_FUNCTION_71();
  type metadata accessor for EmailDocument(v0);
  return OUTLINED_FUNCTION_95();
}

uint64_t EmailDocument.preExtractedSharedLink.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  type metadata accessor for EmailDocument(v0);
  return OUTLINED_FUNCTION_282_0();
}

uint64_t EmailDocument.preExtractedBreadcrumb.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for EmailDocument(v0);
  OUTLINED_FUNCTION_286(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_285_0();
  return outlined init with copy of Date?();
}

void static EmailDocument.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v2 = v1;
  v4 = v3;
  v172 = type metadata accessor for PreExtractedSharedLink(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v168 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_62(v7);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_1();
  v171 = v9;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSg_ADtMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_1();
  v173 = v11;
  v12 = OUTLINED_FUNCTION_32();
  v174 = type metadata accessor for PreExtractedContact(v12);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_2();
  v169 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_62(v15);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSg_ADtMd, &_s15OmniSearchTypes19PreExtractedContactVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_1();
  v175 = v18;
  v19 = OUTLINED_FUNCTION_32();
  v176 = type metadata accessor for PreExtractedCard(v19);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_62(v21);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSg_ADtMd, &_s15OmniSearchTypes16PreExtractedCardVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10_1();
  v177 = v24;
  v25 = OUTLINED_FUNCTION_32();
  v178 = type metadata accessor for PartialExtractedAttributes(v25);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12_2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_62(v27);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSg_ADtMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_1();
  v179 = v31;
  OUTLINED_FUNCTION_32();
  v32 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5_1();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v39);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_59_1();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_24_0();
  v43 = *v4 == *v2 && v4[1] == v2[1];
  if (!v43 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_78;
  }

  v44 = v4[3];
  v45 = v2[3];
  if (!v44)
  {
    if (v45)
    {
      goto LABEL_78;
    }

LABEL_15:
    v47 = v4[5];
    v48 = v2[5];
    if (v47)
    {
      if (!v48)
      {
        goto LABEL_78;
      }

      v49 = v4[4] == v2[4] && v47 == v48;
      if (!v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (v48)
    {
      goto LABEL_78;
    }

    v50 = v4[7];
    v51 = v2[7];
    if (v50)
    {
      if (!v51)
      {
        goto LABEL_78;
      }

      v52 = v4[6] == v2[6] && v50 == v51;
      if (!v52 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (v51)
    {
      goto LABEL_78;
    }

    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v4[8], v2[8]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v4[9], v2[9]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v4[10], v2[10]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v4[11], v2[11]) & 1) == 0)
    {
      goto LABEL_78;
    }

    v165 = type metadata accessor for EmailDocument(0);
    v53 = *(v41 + 48);
    outlined init with copy of Date?();
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v0);
    if (v43)
    {
      OUTLINED_FUNCTION_16_3(v0 + v53);
      if (v43)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v0, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        goto LABEL_48;
      }
    }

    else
    {
      outlined init with copy of Date?();
      OUTLINED_FUNCTION_16_3(v0 + v53);
      if (!v54)
      {
        OUTLINED_FUNCTION_203_0();
        v60(v38, v0 + v53, v32);
        OUTLINED_FUNCTION_0_10();
        _s10Foundation4DateVACSQAAWlTm_0(v61);
        OUTLINED_FUNCTION_317_0();
        v166 = dispatch thunk of static Equatable.== infix(_:_:)();
        v62 = *(v34 + 8);
        v63 = OUTLINED_FUNCTION_322();
        v62(v63);
        v64 = OUTLINED_FUNCTION_288();
        v62(v64);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v0, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if ((v166 & 1) == 0)
        {
          goto LABEL_78;
        }

LABEL_48:
        if ((OUTLINED_FUNCTION_280_0(v165[13]) & 1) == 0 || (OUTLINED_FUNCTION_280_0(v165[14]) & 1) == 0 || (OUTLINED_FUNCTION_280_0(v165[15]) & 1) == 0)
        {
          goto LABEL_78;
        }

        v65 = v165[16];
        v66 = *(v4 + v65);
        v67 = *(v2 + v65);
        if (v66 == 2)
        {
          if (v67 != 2)
          {
            goto LABEL_78;
          }
        }

        else if (v67 == 2 || ((v67 ^ v66) & 1) != 0)
        {
          goto LABEL_78;
        }

        v68 = v165[17];
        v69 = *(v4 + v68);
        v70 = *(v2 + v68);
        if (v69 == 2)
        {
          if (v70 != 2)
          {
            goto LABEL_78;
          }
        }

        else if (v70 == 2 || ((v70 ^ v69) & 1) != 0)
        {
          goto LABEL_78;
        }

        OUTLINED_FUNCTION_126_0();
        if (v73)
        {
          if (!v71)
          {
            goto LABEL_78;
          }

          OUTLINED_FUNCTION_25_2(v72);
          v76 = v43 && v74 == v75;
          if (!v76 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_78;
          }
        }

        else if (v71)
        {
          goto LABEL_78;
        }

        v77 = v165[19];
        v78 = *(v4 + v77);
        v162 = *(v4 + v77 + 8);
        v163 = *(v4 + v77 + 16);
        v164 = *(v4 + v77 + 24);
        v167 = *(v4 + v77 + 32);
        v79 = (v2 + v77);
        v80 = *v79;
        v81 = v79[1];
        v83 = v79[2];
        v82 = v79[3];
        v161 = v79[4];
        if (v78)
        {
          v184[0] = v78;
          v184[1] = v162;
          v184[2] = v163;
          v184[3] = v164;
          v184[4] = v167;
          v160 = v78;
          if (v80)
          {
            v189 = v80;
            v190 = v81;
            v191 = v83;
            v192 = v82;
            v193 = v161;
            outlined copy of DataDetectorResults?(v78, v162, v163, v164, v167);
            outlined copy of DataDetectorResults?(v80, v81, v83, v82, v161);
            outlined copy of DataDetectorResults?(v160, v162, v163, v164, v167);
            LODWORD(v161) = static DataDetectorResults.== infix(_:_:)(v184, &v189);

            v159 = v184[0];

            outlined consume of DataDetectorResults?(v160);
            if ((v161 & 1) == 0)
            {
              goto LABEL_78;
            }

LABEL_80:
            OUTLINED_FUNCTION_126_0();
            if (v109)
            {
              if (!v107)
              {
                goto LABEL_78;
              }

              OUTLINED_FUNCTION_25_2(v108);
              v112 = v43 && v110 == v111;
              if (!v112 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_78;
              }
            }

            else if (v107)
            {
              goto LABEL_78;
            }

            v113 = *(v29 + 48);
            OUTLINED_FUNCTION_171_0();
            outlined init with copy of Date?();
            outlined init with copy of Date?();
            v114 = OUTLINED_FUNCTION_170();
            OUTLINED_FUNCTION_66(v114, v115, v178);
            if (v43)
            {
              OUTLINED_FUNCTION_66(v179 + v113, 1, v178);
              if (v43)
              {
                outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v179, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
                goto LABEL_99;
              }
            }

            else
            {
              outlined init with copy of Date?();
              OUTLINED_FUNCTION_66(v179 + v113, 1, v178);
              if (!v116)
              {
                OUTLINED_FUNCTION_57_1();
                outlined init with take of PreExtractedSharedLink();
                v117 = OUTLINED_FUNCTION_204_0();
                static PartialExtractedAttributes.== infix(_:_:)(v117, v118, v119, v120, v121, v122, v123, v124, v159, v160, v161, v162, v163, v164, v165, v167, v168, v169, v170, v171);
                OUTLINED_FUNCTION_67_1();
                outlined destroy of PreExtractedSharedLink();
                OUTLINED_FUNCTION_281_0();
                outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v179, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
                if ((v179 & 1) == 0)
                {
                  goto LABEL_78;
                }

LABEL_99:
                OUTLINED_FUNCTION_171_0();
                outlined init with copy of Date?();
                OUTLINED_FUNCTION_120_1();
                v125 = OUTLINED_FUNCTION_170();
                OUTLINED_FUNCTION_66(v125, v126, v176);
                if (v43)
                {
                  v127 = OUTLINED_FUNCTION_244(v177);
                  OUTLINED_FUNCTION_66(v127, v128, v176);
                  if (v43)
                  {
                    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v177, &_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
                    goto LABEL_109;
                  }
                }

                else
                {
                  outlined init with copy of Date?();
                  v129 = OUTLINED_FUNCTION_243_0();
                  OUTLINED_FUNCTION_66(v129, v130, v176);
                  if (!v131)
                  {
                    OUTLINED_FUNCTION_64_1();
                    outlined init with take of PreExtractedSharedLink();
                    OUTLINED_FUNCTION_204_0();
                    static PreExtractedCard.== infix(_:_:)();
                    OUTLINED_FUNCTION_66_1();
                    outlined destroy of PreExtractedSharedLink();
                    OUTLINED_FUNCTION_281_0();
                    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v177, &_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
                    if ((v177 & 1) == 0)
                    {
                      goto LABEL_78;
                    }

LABEL_109:
                    OUTLINED_FUNCTION_171_0();
                    outlined init with copy of Date?();
                    OUTLINED_FUNCTION_120_1();
                    v132 = OUTLINED_FUNCTION_170();
                    OUTLINED_FUNCTION_66(v132, v133, v174);
                    if (v43)
                    {
                      v134 = OUTLINED_FUNCTION_244(v175);
                      OUTLINED_FUNCTION_66(v134, v135, v174);
                      if (v43)
                      {
                        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v175, &_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
LABEL_119:
                        OUTLINED_FUNCTION_171_0();
                        outlined init with copy of Date?();
                        OUTLINED_FUNCTION_120_1();
                        v139 = OUTLINED_FUNCTION_170();
                        OUTLINED_FUNCTION_66(v139, v140, v172);
                        if (v43)
                        {
                          v141 = OUTLINED_FUNCTION_244(v173);
                          OUTLINED_FUNCTION_66(v141, v142, v172);
                          if (v43)
                          {
                            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v173, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
LABEL_129:
                            v146 = v165[25];
                            v147 = v4 + v146;
                            memcpy(v188, v4 + v146, sizeof(v188));
                            v148 = v2 + v146;
                            OUTLINED_FUNCTION_290_0();
                            v149 = v188[0];
                            v150 = v188[1];
                            memcpy(v187, v147 + 16, sizeof(v187));
                            v152 = v189;
                            v151 = v190;
                            memcpy(v186, v148 + 16, sizeof(v186));
                            if (v188[1])
                            {
                              v184[0] = v188[0];
                              v184[1] = v188[1];
                              OUTLINED_FUNCTION_197_0(v184);
                              memcpy(v183, v184, sizeof(v183));
                              if (v151)
                              {
                                OUTLINED_FUNCTION_288_0();
                                v182[0] = v152;
                                v182[1] = v151;
                                OUTLINED_FUNCTION_196_0();
                                OUTLINED_FUNCTION_196_0();
                                OUTLINED_FUNCTION_196_0();
                                static PreExtractedBreadcrumb.== infix(_:_:)(v183, v182);
                                memcpy(v180, v182, sizeof(v180));
                                outlined destroy of PreExtractedBreadcrumb(v180);
                                memcpy(v181, v183, sizeof(v181));
                                outlined destroy of PreExtractedBreadcrumb(v181);
                                v182[0] = v149;
                                v182[1] = v150;
                                memcpy(&v182[2], v187, 0x50uLL);
                                OUTLINED_FUNCTION_210();
                                outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v153, v154, v155);
                                goto LABEL_78;
                              }

                              memcpy(v182, v184, sizeof(v182));
                              OUTLINED_FUNCTION_196_0();
                              OUTLINED_FUNCTION_196_0();
                              OUTLINED_FUNCTION_196_0();
                              outlined destroy of PreExtractedBreadcrumb(v182);
                            }

                            else
                            {
                              if (!v190)
                              {
                                v184[0] = v188[0];
                                v184[1] = 0;
                                OUTLINED_FUNCTION_197_0(v184);
                                OUTLINED_FUNCTION_212_0();
                                OUTLINED_FUNCTION_212_0();
                                OUTLINED_FUNCTION_210();
                                outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v156, v157, v158);
                                goto LABEL_78;
                              }

                              OUTLINED_FUNCTION_212_0();
                              OUTLINED_FUNCTION_212_0();
                            }

                            v184[0] = v149;
                            v184[1] = v150;
                            memcpy(&v184[2], v187, 0x50uLL);
                            v184[12] = v152;
                            v184[13] = v151;
                            memcpy(v185, v186, sizeof(v185));
                            v57 = &_s15OmniSearchTypes22PreExtractedBreadcrumbVSg_ADtMd;
                            v58 = &_s15OmniSearchTypes22PreExtractedBreadcrumbVSg_ADtMR;
                            v59 = v184;
                            goto LABEL_46;
                          }
                        }

                        else
                        {
                          outlined init with copy of Date?();
                          v143 = OUTLINED_FUNCTION_243_0();
                          OUTLINED_FUNCTION_66(v143, v144, v172);
                          if (!v145)
                          {
                            OUTLINED_FUNCTION_60_0();
                            outlined init with take of PreExtractedSharedLink();
                            OUTLINED_FUNCTION_204_0();
                            static PreExtractedSharedLink.== infix(_:_:)();
                            OUTLINED_FUNCTION_68_1();
                            outlined destroy of PreExtractedSharedLink();
                            OUTLINED_FUNCTION_281_0();
                            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v173, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
                            if ((v173 & 1) == 0)
                            {
                              goto LABEL_78;
                            }

                            goto LABEL_129;
                          }

                          OUTLINED_FUNCTION_61_1();
                          outlined destroy of PreExtractedSharedLink();
                        }

                        v57 = &_s15OmniSearchTypes22PreExtractedSharedLinkVSg_ADtMd;
                        v58 = &_s15OmniSearchTypes22PreExtractedSharedLinkVSg_ADtMR;
                        v59 = v173;
LABEL_46:
                        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v59, v57, v58);
                        goto LABEL_78;
                      }
                    }

                    else
                    {
                      outlined init with copy of Date?();
                      v136 = OUTLINED_FUNCTION_243_0();
                      OUTLINED_FUNCTION_66(v136, v137, v174);
                      if (!v138)
                      {
                        OUTLINED_FUNCTION_62_1();
                        outlined init with take of PreExtractedSharedLink();
                        OUTLINED_FUNCTION_204_0();
                        static PreExtractedContact.== infix(_:_:)();
                        OUTLINED_FUNCTION_69_1();
                        outlined destroy of PreExtractedSharedLink();
                        OUTLINED_FUNCTION_281_0();
                        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v175, &_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
                        if ((v175 & 1) == 0)
                        {
                          goto LABEL_78;
                        }

                        goto LABEL_119;
                      }

                      OUTLINED_FUNCTION_63_0();
                      outlined destroy of PreExtractedSharedLink();
                    }

                    v57 = &_s15OmniSearchTypes19PreExtractedContactVSg_ADtMd;
                    v58 = &_s15OmniSearchTypes19PreExtractedContactVSg_ADtMR;
                    v59 = v175;
                    goto LABEL_46;
                  }

                  OUTLINED_FUNCTION_65_1();
                  outlined destroy of PreExtractedSharedLink();
                }

                v57 = &_s15OmniSearchTypes16PreExtractedCardVSg_ADtMd;
                v58 = &_s15OmniSearchTypes16PreExtractedCardVSg_ADtMR;
                v59 = v177;
                goto LABEL_46;
              }

              OUTLINED_FUNCTION_58_0();
              outlined destroy of PreExtractedSharedLink();
            }

            v57 = &_s15OmniSearchTypes26PartialExtractedAttributesVSg_ADtMd;
            v58 = &_s15OmniSearchTypes26PartialExtractedAttributesVSg_ADtMR;
            v59 = v179;
            goto LABEL_46;
          }

          outlined copy of DataDetectorResults?(v78, v162, v163, v164, v167);
          OUTLINED_FUNCTION_117_1();
          outlined copy of DataDetectorResults?(v94, v95, v96, v97, v98);
          outlined copy of DataDetectorResults?(v160, v162, v163, v164, v167);
        }

        else
        {
          OUTLINED_FUNCTION_248_0();
          outlined copy of DataDetectorResults?(v84, v85, v86, v87, v88);
          if (!v80)
          {
            OUTLINED_FUNCTION_117_1();
            outlined copy of DataDetectorResults?(v101, v102, v103, v104, v105);
            OUTLINED_FUNCTION_248_0();
            outlined consume of DataDetectorResults?(v106);
            goto LABEL_80;
          }

          OUTLINED_FUNCTION_117_1();
          outlined copy of DataDetectorResults?(v89, v90, v91, v92, v93);
        }

        OUTLINED_FUNCTION_248_0();
        outlined consume of DataDetectorResults?(v99);
        OUTLINED_FUNCTION_117_1();
        outlined consume of DataDetectorResults?(v100);
        goto LABEL_78;
      }

      v55 = OUTLINED_FUNCTION_288();
      v56(v55);
    }

    v57 = &_s10Foundation4DateVSg_ADtMd;
    v58 = &_s10Foundation4DateVSg_ADtMR;
    v59 = v0;
    goto LABEL_46;
  }

  if (v45)
  {
    v46 = v4[2] == v2[2] && v44 == v45;
    if (v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_78:
  OUTLINED_FUNCTION_42_0();
}

uint64_t outlined destroy of PreExtractedSharedLink()
{
  v1 = OUTLINED_FUNCTION_71();
  v2(v1);
  OUTLINED_FUNCTION_9_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t outlined init with take of PreExtractedSharedLink()
{
  OUTLINED_FUNCTION_310_0();
  v1(0);
  OUTLINED_FUNCTION_9_1();
  v2 = OUTLINED_FUNCTION_38();
  v3(v2);
  return v0;
}

uint64_t EmailDocument.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7373654D6C69616DLL && a2 == 0xED00006449656761;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 2036625250 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x614E726F68747561 && a2 == 0xEB0000000073656DLL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1836020326 && a2 == 0xE400000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 28532 && a2 == 0xE200000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 25443 && a2 == 0xE200000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 1702125924 && a2 == 0xE400000000000000;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656D686361747461 && a2 == 0xEF73656D614E746ELL;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x656D686361747461 && a2 == 0xEF7365707954746ELL;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x656D686361747461 && a2 == 0xEF7368746150746ELL;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x646165726E75 && a2 == 0xE600000000000000;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6261746172647968 && a2 == 0xEA0000000000656CLL;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000018 && 0x800000025DCEBC40 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000013 && 0x800000025DCEBC60 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000027 && 0x800000025DCEBC80 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD00000000000001ALL && 0x800000025DCEBCB0 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000010 && 0x800000025DCEBCD0 == a2;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000013 && 0x800000025DCEBCF0 == a2;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000016 && 0x800000025DCEBD10 == a2;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else if (a1 == 0xD000000000000016 && 0x800000025DCEBD30 == a2)
                                          {

                                            return 21;
                                          }

                                          else
                                          {
                                            v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                            if (v27)
                                            {
                                              return 21;
                                            }

                                            else
                                            {
                                              return 22;
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
            }
          }
        }
      }
    }
  }
}

unint64_t EmailDocument.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7373654D6C69616DLL;
      break;
    case 2:
      result = 0x7463656A627573;
      break;
    case 3:
      result = 2036625250;
      break;
    case 4:
      result = 0x614E726F68747561;
      break;
    case 5:
      result = 1836020326;
      break;
    case 6:
      result = 28532;
      break;
    case 7:
      result = 25443;
      break;
    case 8:
      result = 1702125924;
      break;
    case 9:
    case 10:
    case 11:
      result = 0x656D686361747461;
      break;
    case 12:
      result = 0x646165726E75;
      break;
    case 13:
      result = 0x6261746172647968;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000027;
      break;
    case 17:
      result = 0xD00000000000001ALL;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
    case 21:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance EmailDocument.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EmailDocument.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance EmailDocument.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = EmailDocument.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EmailDocument.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EmailDocument.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void EmailDocument.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_261();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes13EmailDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes13EmailDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_0();
  v26 = OUTLINED_FUNCTION_152_1();
  OUTLINED_FUNCTION_41(v26, v27);
  lazy protocol witness table accessor for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys();
  OUTLINED_FUNCTION_132_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v46) = 0;
  OUTLINED_FUNCTION_25_4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v23)
  {
    v40 = OUTLINED_FUNCTION_138_1();
    v41(v40);
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_25_4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v46) = 3;
    OUTLINED_FUNCTION_25_4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_312();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_30_2(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_22_3();
    v46 = v24[9];
    OUTLINED_FUNCTION_17_5(5);
    v46 = v24[10];
    OUTLINED_FUNCTION_17_5(6);
    v46 = v24[11];
    OUTLINED_FUNCTION_17_5(7);
    v44 = type metadata accessor for EmailDocument(0);
    OUTLINED_FUNCTION_153_1(8);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v28);
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_174_0(v44[13]);
    OUTLINED_FUNCTION_17_5(9);
    OUTLINED_FUNCTION_174_0(v44[14]);
    OUTLINED_FUNCTION_17_5(10);
    OUTLINED_FUNCTION_174_0(v44[15]);
    OUTLINED_FUNCTION_17_5(11);
    OUTLINED_FUNCTION_86_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v46) = 13;
    OUTLINED_FUNCTION_86_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_208_0(v44[18]);
    LOBYTE(v46) = 14;
    OUTLINED_FUNCTION_25_4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v46 = OUTLINED_FUNCTION_80_1(v24 + v44[19]);
    v47 = v29;
    v48 = v30;
    v49 = v31;
    v50 = v32;
    v45[96] = 15;
    outlined copy of DataDetectorResults?(v46, v29, v30, v31, v32);
    lazy protocol witness table accessor for type DataDetectorResults and conformance DataDetectorResults();
    OUTLINED_FUNCTION_86_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_208_0(v44[20]);
    LOBYTE(v46) = 16;
    OUTLINED_FUNCTION_25_4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = OUTLINED_FUNCTION_153_1(17);
    type metadata accessor for PartialExtractedAttributes(v33);
    OUTLINED_FUNCTION_11_5();
    _s10Foundation4DateVACSQAAWlTm_0(v34);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v35 = OUTLINED_FUNCTION_153_1(18);
    type metadata accessor for PreExtractedCard(v35);
    OUTLINED_FUNCTION_10_5();
    _s10Foundation4DateVACSQAAWlTm_0(v36);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v37 = OUTLINED_FUNCTION_153_1(19);
    type metadata accessor for PreExtractedContact(v37);
    OUTLINED_FUNCTION_9_5();
    _s10Foundation4DateVACSQAAWlTm_0(v38);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    type metadata accessor for PreExtractedSharedLink(0);
    OUTLINED_FUNCTION_8_6();
    _s10Foundation4DateVACSQAAWlTm_0(v39);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_289_0();
    OUTLINED_FUNCTION_284();
    outlined init with copy of Date?();
    lazy protocol witness table accessor for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_86_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_195_0();
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v45, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
    v42 = OUTLINED_FUNCTION_138_1();
    v43(v42);
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys);
  }

  return result;
}

unint64_t _s10Foundation4DateVACSQAAWlTm_0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_1(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void EmailDocument.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_36();
  v22 = v21;
  v80 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_62(v24);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10_1();
  v79 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_62(v27);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_1();
  v78 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_62(v30);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_59_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_62(v32);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_24_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v34);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_237();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes13EmailDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes13EmailDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  v81 = v36;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_94_1();
  type metadata accessor for EmailDocument(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_1();
  v41 = (v40 - v39);
  OUTLINED_FUNCTION_254_0(v40 - v39 + *(v42 + 76));
  v83 = v43;
  v85 = v44;
  v45 = v44[21];
  v46 = type metadata accessor for PartialExtractedAttributes(0);
  v84 = v41;
  __swift_storeEnumTagSinglePayload(v41 + v45, 1, 1, v46);
  v48 = v22[3];
  v47 = v22[4];
  OUTLINED_FUNCTION_41(v22, v48);
  lazy protocol witness table accessor for type EmailDocument.CodingKeys and conformance EmailDocument.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    LOBYTE(v86) = 0;
    v49 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_191_0(v49, v55);
    OUTLINED_FUNCTION_129_1(v56);
    v84[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v84[3] = v57;
    OUTLINED_FUNCTION_129_1(2);
    v84[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v84[5] = v58;
    OUTLINED_FUNCTION_129_1(3);
    v84[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v84[7] = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_28_3(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_139_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v84[8] = v86;
    OUTLINED_FUNCTION_53_1(5);
    OUTLINED_FUNCTION_139_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v84[9] = v86;
    OUTLINED_FUNCTION_53_1(6);
    OUTLINED_FUNCTION_139_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v84[10] = v86;
    OUTLINED_FUNCTION_53_1(7);
    OUTLINED_FUNCTION_139_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v84[11] = v86;
    type metadata accessor for Date();
    LOBYTE(v86) = 8;
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v60);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_139_1();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    _s10Foundation4DateVSgWObTm_0();
    OUTLINED_FUNCTION_53_1(9);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v84 + v85[13]) = v86;
    OUTLINED_FUNCTION_53_1(10);
    OUTLINED_FUNCTION_181_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v84 + v85[14]) = v86;
    OUTLINED_FUNCTION_53_1(11);
    OUTLINED_FUNCTION_181_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v84 + v85[15]) = v86;
    OUTLINED_FUNCTION_72_1(12);
    *(v84 + v85[16]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_72_1(13);
    *(v84 + v85[17]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_72_1(14);
    v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v62 = (v84 + v85[18]);
    *v62 = v61;
    v62[1] = v63;
    lazy protocol witness table accessor for type DataDetectorResults and conformance DataDetectorResults();
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_181_0();
    OUTLINED_FUNCTION_182_0(v64);
    v82 = OUTLINED_FUNCTION_305_0();
    outlined consume of DataDetectorResults?(v65);
    *v83 = v82;
    *(v83 + 16) = v87;
    *(v83 + 32) = v88;
    OUTLINED_FUNCTION_72_1(16);
    v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v67 = (v84 + v85[20]);
    *v67 = v66;
    v67[1] = v68;
    OUTLINED_FUNCTION_11_5();
    _s10Foundation4DateVACSQAAWlTm_0(v69);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_182_0(v46);
    v70 = OUTLINED_FUNCTION_247_0();
    outlined assign with take of PartialExtractedAttributes?(v70, v71);
    type metadata accessor for PreExtractedCard(0);
    OUTLINED_FUNCTION_10_5();
    _s10Foundation4DateVACSQAAWlTm_0(v72);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_108_1();
    OUTLINED_FUNCTION_423();
    _s10Foundation4DateVSgWObTm_0();
    type metadata accessor for PreExtractedContact(0);
    OUTLINED_FUNCTION_9_5();
    _s10Foundation4DateVACSQAAWlTm_0(v73);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_108_1();
    _s10Foundation4DateVSgWObTm_0();
    type metadata accessor for PreExtractedSharedLink(0);
    OUTLINED_FUNCTION_8_6();
    _s10Foundation4DateVACSQAAWlTm_0(v74);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_108_1();
    _s10Foundation4DateVSgWObTm_0();
    lazy protocol witness table accessor for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_181_0();
    OUTLINED_FUNCTION_182_0(v75);
    v76 = OUTLINED_FUNCTION_272_0();
    v77(v76);
    OUTLINED_FUNCTION_287(v85[25]);
    OUTLINED_FUNCTION_222_0();
    outlined init with copy of EmailDocument();
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_270_0();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_2_9();
  __swift_destroy_boxed_opaque_existential_1(v22);
  OUTLINED_FUNCTION_124_1();
  if (v48)
  {

    if ((v47 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (!v47)
  {
LABEL_5:
    if (v78)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  if (v78)
  {
LABEL_6:

    v50 = v85;
    if ((v79 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v50 = v85;
  if (!v79)
  {
LABEL_7:
    if (v80)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v84 + v50[12], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v80)
  {
LABEL_8:

    if ((v81 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (!v81)
  {
LABEL_9:
    OUTLINED_FUNCTION_237_0();
    if (!v51)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:

  OUTLINED_FUNCTION_237_0();
  if (v54)
  {
LABEL_10:
  }

LABEL_11:

  v52 = OUTLINED_FUNCTION_80_1(v83);
  outlined consume of DataDetectorResults?(v52);

  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v84 + v45, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_276_0();
  if (v53)
  {
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v84 + v50[22], &_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  }

LABEL_13:
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_35();
}

void *MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, const void *a29)
{
  v46 = *(a22 + 32);
  v32 = type metadata accessor for MobileSMSDocument(0);
  v33 = a9 + v32[18];
  *(v33 + 32) = 0;
  *v33 = 0u;
  *(v33 + 16) = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  OUTLINED_FUNCTION_223();
  _s10Foundation4DateVSgWObTm_0();
  _s10Foundation4DateVSgWObTm_0();
  *(a9 + v32[13]) = a15;
  v34 = (a9 + v32[14]);
  *v34 = a16;
  v34[1] = a17;
  v35 = (a9 + v32[15]);
  *v35 = a18;
  v35[1] = a19;
  *(a9 + v32[16]) = a20;
  *(a9 + v32[17]) = a21;
  outlined consume of DataDetectorResults?(*v33);
  v36 = *(a22 + 16);
  *v33 = *a22;
  *(v33 + 16) = v36;
  *(v33 + 32) = v46;
  v37 = (a9 + v32[19]);
  *v37 = a23;
  v37[1] = a24;
  _s10Foundation4DateVSgWObTm_0();
  _s10Foundation4DateVSgWObTm_0();
  _s10Foundation4DateVSgWObTm_0();
  _s10Foundation4DateVSgWObTm_0();
  v38 = (a9 + v32[24]);

  return memcpy(v38, a29, 0x60uLL);
}

uint64_t _s10Foundation4DateVSgWObTm_0()
{
  OUTLINED_FUNCTION_310_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9_1();
  v3 = OUTLINED_FUNCTION_38();
  v4(v3);
  return v0;
}

uint64_t MobileSMSDocument.date.getter()
{
  return MobileSMSDocument.date.getter();
}

{
  v0 = OUTLINED_FUNCTION_121();
  v1(v0);
  return OUTLINED_FUNCTION_282_0();
}

uint64_t outlined init with copy of Date?()
{
  OUTLINED_FUNCTION_310_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9_1();
  v3 = OUTLINED_FUNCTION_38();
  v4(v3);
  return v0;
}

uint64_t MobileSMSDocument.serviceName.getter()
{
  type metadata accessor for MobileSMSDocument(0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t MobileSMSDocument.chatName.getter()
{
  type metadata accessor for MobileSMSDocument(0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t MobileSMSDocument.chatParticipants.getter()
{
  type metadata accessor for MobileSMSDocument(0);
}

uint64_t MobileSMSDocument.chatMessages.getter()
{
  type metadata accessor for MobileSMSDocument(0);
}

uint64_t MobileSMSDocument.dataDetectorResults.getter()
{
  v1 = OUTLINED_FUNCTION_121();
  v2 = type metadata accessor for MobileSMSDocument(v1);
  v3 = OUTLINED_FUNCTION_80_1(v0 + *(v2 + 72));
  v8 = OUTLINED_FUNCTION_257_0(v3, v4, v5, v6, v7);

  return outlined copy of DataDetectorResults?(v8, v9, v10, v11, v12);
}

double MobileSMSDocument.dataDetectorResults.setter()
{
  v0 = OUTLINED_FUNCTION_259();
  v1 = type metadata accessor for MobileSMSDocument(v0);
  OUTLINED_FUNCTION_226_0(*(v1 + 72));
  *&result = OUTLINED_FUNCTION_256_0().n128_u64[0];
  return result;
}

uint64_t MobileSMSDocument.dataDetectorResults.modify()
{
  v0 = OUTLINED_FUNCTION_71();
  type metadata accessor for MobileSMSDocument(v0);
  return OUTLINED_FUNCTION_95();
}

uint64_t MobileSMSDocument.extractedEventsLLMConsumableDescription.getter()
{
  type metadata accessor for MobileSMSDocument(0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t MobileSMSDocument.partialExtractedAttributes.getter()
{
  return MobileSMSDocument.partialExtractedAttributes.getter();
}

{
  v0 = OUTLINED_FUNCTION_35_1();
  v1(v0);
  return OUTLINED_FUNCTION_88_1();
}

uint64_t EmailDocument.partialExtractedAttributes.getter()
{
  v0 = OUTLINED_FUNCTION_35_1();
  v1(v0);
  return OUTLINED_FUNCTION_88_1();
}

uint64_t EmailDocument.preExtractedCard.getter()
{
  v0 = OUTLINED_FUNCTION_35_1();
  v1(v0);
  return OUTLINED_FUNCTION_88_1();
}

uint64_t EmailDocument.preExtractedContact.getter()
{
  v0 = OUTLINED_FUNCTION_35_1();
  v1(v0);
  return OUTLINED_FUNCTION_88_1();
}

uint64_t MobileSMSDocument.preExtractedBreadcrumb.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for MobileSMSDocument(v0);
  OUTLINED_FUNCTION_286(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_285_0();
  return outlined init with copy of Date?();
}

void static MobileSMSDocument.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v2 = v1;
  v4 = v3;
  v204 = type metadata accessor for PreExtractedSharedLink(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v197 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_62(v7);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_1();
  v199 = v9;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSg_ADtMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_1();
  v205 = v11;
  v12 = OUTLINED_FUNCTION_32();
  v206 = type metadata accessor for PreExtractedContact(v12);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_2();
  v198 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_62(v15);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_1();
  v203 = v17;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSg_ADtMd, &_s15OmniSearchTypes19PreExtractedContactVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_1();
  v207 = v19;
  v20 = OUTLINED_FUNCTION_32();
  v208 = type metadata accessor for PreExtractedCard(v20);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_2();
  v201 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_62(v23);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSg_ADtMd, &_s15OmniSearchTypes16PreExtractedCardVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10_1();
  v209 = v26;
  v27 = OUTLINED_FUNCTION_32();
  v210 = type metadata accessor for PartialExtractedAttributes(v27);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12_2();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_62(v29);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSg_ADtMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_1();
  v211 = v32;
  OUTLINED_FUNCTION_32();
  v217 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v213 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12_2();
  v212 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v36);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_79_0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_10_1();
  v215 = v40;
  OUTLINED_FUNCTION_32();
  v41 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v219 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_5_1();
  v46 = v45 - v44;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v47);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_51_1();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_255();
  v52 = *v4 == *v51 && *(v4 + 8) == v51[1];
  if (!v52)
  {
    OUTLINED_FUNCTION_236(*v4);
    OUTLINED_FUNCTION_315();
    if ((v53 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  v54 = *(v4 + 24);
  v55 = v51[3];
  if (!v54)
  {
    if (v55)
    {
      goto LABEL_60;
    }

LABEL_15:
    v59 = *(v4 + 40);
    v60 = v51[5];
    if (v59)
    {
      if (!v60)
      {
        goto LABEL_60;
      }

      v61 = *(v4 + 32);
      if (v61 != v51[4] || v59 != v60)
      {
        OUTLINED_FUNCTION_236(v61);
        OUTLINED_FUNCTION_315();
        if ((v63 & 1) == 0)
        {
          goto LABEL_60;
        }
      }
    }

    else if (v60)
    {
      goto LABEL_60;
    }

    v64 = *(v4 + 56);
    v65 = v51[7];
    if (v64)
    {
      if (!v65)
      {
        goto LABEL_60;
      }

      v66 = *(v4 + 48);
      if (v66 != v51[6] || v64 != v65)
      {
        OUTLINED_FUNCTION_236(v66);
        OUTLINED_FUNCTION_315();
        if ((v68 & 1) == 0)
        {
          goto LABEL_60;
        }
      }
    }

    else if (v65)
    {
      goto LABEL_60;
    }

    v69 = v51;
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*(v4 + 64), v51[8]) & 1) == 0)
    {
      goto LABEL_60;
    }

    v70 = *(v4 + 72);
    v71 = *(v69 + 72);
    if (v70 == 2)
    {
      if (v71 != 2)
      {
        goto LABEL_60;
      }
    }

    else if (v71 == 2 || ((v71 ^ v70) & 1) != 0)
    {
      goto LABEL_60;
    }

    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*(v4 + 80), v69[10]) & 1) == 0)
    {
      goto LABEL_60;
    }

    v195 = type metadata accessor for MobileSMSDocument(0);
    v72 = *(v49 + 48);
    outlined init with copy of Date?();
    v194 = v69;
    v196 = v72;
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v2);
    if (v52)
    {
      OUTLINED_FUNCTION_16_3(v2 + v72);
      if (v52)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        goto LABEL_50;
      }
    }

    else
    {
      OUTLINED_FUNCTION_292_0();
      outlined init with copy of Date?();
      OUTLINED_FUNCTION_16_3(v2 + v72);
      if (!v73)
      {
        (*(v219 + 32))(v46, v2 + v72, v41);
        OUTLINED_FUNCTION_0_10();
        _s10Foundation4DateVACSQAAWlTm_0(v79);
        LODWORD(v196) = dispatch thunk of static Equatable.== infix(_:_:)();
        v80 = *(v219 + 8);
        v80(v46, v41);
        v81 = OUTLINED_FUNCTION_283();
        (v80)(v81);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if ((v196 & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_50:
        v82 = *(v38 + 48);
        OUTLINED_FUNCTION_212_0();
        OUTLINED_FUNCTION_212_0();
        v83 = OUTLINED_FUNCTION_299_0();
        OUTLINED_FUNCTION_66(v83, v84, v217);
        if (v52)
        {
          OUTLINED_FUNCTION_66(v215 + v82, 1, v217);
          if (v52)
          {
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v215, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_62;
          }
        }

        else
        {
          outlined init with copy of Date?();
          OUTLINED_FUNCTION_66(v215 + v82, 1, v217);
          if (!v85)
          {
            (*(v213 + 32))(v212, v215 + v82, v217);
            OUTLINED_FUNCTION_1_9();
            _s10Foundation4DateVACSQAAWlTm_0(v86);
            v87 = dispatch thunk of static Equatable.== infix(_:_:)();
            v88 = *(v213 + 8);
            v89 = OUTLINED_FUNCTION_273_0();
            v88(v89);
            (v88)(v0, v217);
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v215, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            if ((v87 & 1) == 0)
            {
              goto LABEL_60;
            }

LABEL_62:
            if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15OmniSearchTypes5PhotoV_Tt1g5(*(v4 + v195[13]), *(v69 + v195[13])) & 1) == 0)
            {
              goto LABEL_60;
            }

            v90 = v195[14];
            v91 = *(v69 + v90 + 8);
            v92 = v69;
            if (*(v4 + v90 + 8))
            {
              if (!v91)
              {
                goto LABEL_60;
              }

              OUTLINED_FUNCTION_25_2(v4 + v90);
              if (!v52 || v93 != v94)
              {
                v96 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v92 = v69;
                if ((v96 & 1) == 0)
                {
                  goto LABEL_60;
                }
              }
            }

            else if (v91)
            {
              goto LABEL_60;
            }

            v97 = v195[15];
            v98 = *(v92 + v97 + 8);
            if (*(v4 + v97 + 8))
            {
              if (!v98)
              {
                goto LABEL_60;
              }

              OUTLINED_FUNCTION_25_2(v4 + v97);
              if (!v52 || v99 != v100)
              {
                v102 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v92 = v69;
                if ((v102 & 1) == 0)
                {
                  goto LABEL_60;
                }
              }
            }

            else if (v98)
            {
              goto LABEL_60;
            }

            v103 = v92;
            if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*(v4 + v195[16]), *(v92 + v195[16])) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15OmniSearchTypes17MobileSMSDocumentV_Tt1g5(*(v4 + v195[17]), *(v103 + v195[17])) & 1) == 0)
            {
              goto LABEL_60;
            }

            v104 = v195[18];
            v105 = *(v4 + v104);
            v106 = *(v4 + v104 + 8);
            v108 = *(v4 + v104 + 16);
            v107 = *(v4 + v104 + 24);
            v109 = *(v4 + v104 + 32);
            v110 = (v194 + v104);
            v112 = *v110;
            v111 = v110[1];
            v113 = v110[2];
            v214 = v110[3];
            v216 = v110[4];
            v218 = v109;
            if (v105)
            {
              v224[0] = v105;
              v224[1] = v106;
              v224[2] = v108;
              v224[3] = v107;
              v224[4] = v109;
              if (v112)
              {
                v229 = v112;
                v230 = v111;
                v231 = v113;
                v232 = v214;
                v233 = v216;
                v196 = v107;
                outlined copy of DataDetectorResults?(v105, v106, v108, v107, v109);
                outlined copy of DataDetectorResults?(v112, v111, v113, v214, v216);
                outlined copy of DataDetectorResults?(v105, v106, v108, v107, v218);
                v114 = static DataDetectorResults.== infix(_:_:)(v224, &v229);

                v115 = OUTLINED_FUNCTION_227_0();
                outlined consume of DataDetectorResults?(v115);
                if ((v114 & 1) == 0)
                {
                  goto LABEL_60;
                }

LABEL_92:
                v139 = v195[19];
                v140 = *(v194 + v139 + 8);
                if (*(v4 + v139 + 8))
                {
                  if (!v140)
                  {
                    goto LABEL_60;
                  }

                  OUTLINED_FUNCTION_25_2(v4 + v139);
                  v143 = v52 && v141 == v142;
                  if (!v143 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_60;
                  }
                }

                else if (v140)
                {
                  goto LABEL_60;
                }

                OUTLINED_FUNCTION_308_0();
                OUTLINED_FUNCTION_212_0();
                OUTLINED_FUNCTION_128_1();
                v144 = OUTLINED_FUNCTION_216_0();
                OUTLINED_FUNCTION_66(v144, v145, v210);
                if (v52)
                {
                  v146 = OUTLINED_FUNCTION_307_0(v211);
                  OUTLINED_FUNCTION_66(v146, v147, v148);
                  if (v52)
                  {
                    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v211, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
                    goto LABEL_111;
                  }
                }

                else
                {
                  outlined init with copy of Date?();
                  v149 = OUTLINED_FUNCTION_306_0();
                  OUTLINED_FUNCTION_66(v149, v150, v210);
                  if (!v151)
                  {
                    OUTLINED_FUNCTION_57_1();
                    outlined init with take of PreExtractedSharedLink();
                    v152 = OUTLINED_FUNCTION_138_1();
                    static PartialExtractedAttributes.== infix(_:_:)(v152, v153, v154, v155, v156, v157, v158, v159, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204);
                    OUTLINED_FUNCTION_67_1();
                    outlined destroy of PreExtractedSharedLink();
                    OUTLINED_FUNCTION_227_0();
                    outlined destroy of PreExtractedSharedLink();
                    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v211, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
                    if ((v211 & 1) == 0)
                    {
                      goto LABEL_60;
                    }

LABEL_111:
                    OUTLINED_FUNCTION_308_0();
                    OUTLINED_FUNCTION_212_0();
                    OUTLINED_FUNCTION_128_1();
                    v160 = OUTLINED_FUNCTION_216_0();
                    OUTLINED_FUNCTION_66(v160, v161, v208);
                    if (v52)
                    {
                      v162 = OUTLINED_FUNCTION_307_0(v209);
                      OUTLINED_FUNCTION_66(v162, v163, v208);
                      if (v52)
                      {
                        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v209, &_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
                        goto LABEL_121;
                      }
                    }

                    else
                    {
                      outlined init with copy of Date?();
                      v164 = OUTLINED_FUNCTION_306_0();
                      OUTLINED_FUNCTION_66(v164, v165, v208);
                      if (!v166)
                      {
                        OUTLINED_FUNCTION_64_1();
                        outlined init with take of PreExtractedSharedLink();
                        OUTLINED_FUNCTION_138_1();
                        static PreExtractedCard.== infix(_:_:)();
                        OUTLINED_FUNCTION_66_1();
                        outlined destroy of PreExtractedSharedLink();
                        OUTLINED_FUNCTION_227_0();
                        outlined destroy of PreExtractedSharedLink();
                        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v209, &_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
                        if ((v209 & 1) == 0)
                        {
                          goto LABEL_60;
                        }

LABEL_121:
                        OUTLINED_FUNCTION_308_0();
                        OUTLINED_FUNCTION_212_0();
                        OUTLINED_FUNCTION_128_1();
                        v167 = OUTLINED_FUNCTION_216_0();
                        OUTLINED_FUNCTION_66(v167, v168, v206);
                        if (v52)
                        {
                          v169 = OUTLINED_FUNCTION_307_0(v207);
                          OUTLINED_FUNCTION_66(v169, v170, v206);
                          if (v52)
                          {
                            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v207, &_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
LABEL_131:
                            OUTLINED_FUNCTION_308_0();
                            OUTLINED_FUNCTION_212_0();
                            OUTLINED_FUNCTION_128_1();
                            v174 = OUTLINED_FUNCTION_216_0();
                            OUTLINED_FUNCTION_66(v174, v175, v204);
                            if (v52)
                            {
                              v176 = OUTLINED_FUNCTION_307_0(v205);
                              OUTLINED_FUNCTION_66(v176, v177, v178);
                              if (v52)
                              {
                                outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v205, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
LABEL_141:
                                v182 = v195[24];
                                memcpy(v228, (v4 + v182), sizeof(v228));
                                OUTLINED_FUNCTION_290_0();
                                v183 = v228[0];
                                v184 = v228[1];
                                memcpy(v227, (v4 + v182 + 16), sizeof(v227));
                                v186 = v229;
                                v185 = v230;
                                memcpy(v226, (v194 + v182 + 16), sizeof(v226));
                                if (v228[1])
                                {
                                  v224[0] = v228[0];
                                  v224[1] = v228[1];
                                  OUTLINED_FUNCTION_197_0(v224);
                                  memcpy(v223, v224, sizeof(v223));
                                  if (v185)
                                  {
                                    OUTLINED_FUNCTION_288_0();
                                    v222[0] = v186;
                                    v222[1] = v185;
                                    OUTLINED_FUNCTION_188_0();
                                    OUTLINED_FUNCTION_188_0();
                                    OUTLINED_FUNCTION_188_0();
                                    static PreExtractedBreadcrumb.== infix(_:_:)(v223, v222);
                                    memcpy(v220, v222, sizeof(v220));
                                    outlined destroy of PreExtractedBreadcrumb(v220);
                                    memcpy(v221, v223, sizeof(v221));
                                    outlined destroy of PreExtractedBreadcrumb(v221);
                                    v222[0] = v183;
                                    v222[1] = v184;
                                    memcpy(&v222[2], v227, 0x50uLL);
                                    OUTLINED_FUNCTION_210();
                                    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v187, v188, v189);
                                    goto LABEL_60;
                                  }

                                  memcpy(v222, v224, sizeof(v222));
                                  OUTLINED_FUNCTION_188_0();
                                  OUTLINED_FUNCTION_188_0();
                                  OUTLINED_FUNCTION_188_0();
                                  outlined destroy of PreExtractedBreadcrumb(v222);
                                }

                                else
                                {
                                  if (!v230)
                                  {
                                    v224[0] = v228[0];
                                    v224[1] = 0;
                                    OUTLINED_FUNCTION_197_0(v224);
                                    OUTLINED_FUNCTION_212_0();
                                    OUTLINED_FUNCTION_212_0();
                                    OUTLINED_FUNCTION_210();
                                    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v190, v191, v192);
                                    goto LABEL_60;
                                  }

                                  OUTLINED_FUNCTION_212_0();
                                  OUTLINED_FUNCTION_212_0();
                                }

                                v224[0] = v183;
                                v224[1] = v184;
                                memcpy(&v224[2], v227, 0x50uLL);
                                v224[12] = v186;
                                v224[13] = v185;
                                memcpy(v225, v226, sizeof(v225));
                                v76 = &_s15OmniSearchTypes22PreExtractedBreadcrumbVSg_ADtMd;
                                v77 = &_s15OmniSearchTypes22PreExtractedBreadcrumbVSg_ADtMR;
                                v78 = v224;
                                goto LABEL_59;
                              }
                            }

                            else
                            {
                              outlined init with copy of Date?();
                              v179 = OUTLINED_FUNCTION_306_0();
                              OUTLINED_FUNCTION_66(v179, v180, v204);
                              if (!v181)
                              {
                                OUTLINED_FUNCTION_60_0();
                                outlined init with take of PreExtractedSharedLink();
                                OUTLINED_FUNCTION_138_1();
                                static PreExtractedSharedLink.== infix(_:_:)();
                                OUTLINED_FUNCTION_68_1();
                                outlined destroy of PreExtractedSharedLink();
                                OUTLINED_FUNCTION_227_0();
                                outlined destroy of PreExtractedSharedLink();
                                outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v205, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
                                if ((v205 & 1) == 0)
                                {
                                  goto LABEL_60;
                                }

                                goto LABEL_141;
                              }

                              OUTLINED_FUNCTION_61_1();
                              outlined destroy of PreExtractedSharedLink();
                            }

                            v76 = &_s15OmniSearchTypes22PreExtractedSharedLinkVSg_ADtMd;
                            v77 = &_s15OmniSearchTypes22PreExtractedSharedLinkVSg_ADtMR;
                            v78 = v205;
LABEL_59:
                            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v78, v76, v77);
                            goto LABEL_60;
                          }
                        }

                        else
                        {
                          outlined init with copy of Date?();
                          v171 = OUTLINED_FUNCTION_306_0();
                          OUTLINED_FUNCTION_66(v171, v172, v206);
                          if (!v173)
                          {
                            OUTLINED_FUNCTION_62_1();
                            outlined init with take of PreExtractedSharedLink();
                            OUTLINED_FUNCTION_138_1();
                            static PreExtractedContact.== infix(_:_:)();
                            OUTLINED_FUNCTION_69_1();
                            outlined destroy of PreExtractedSharedLink();
                            OUTLINED_FUNCTION_227_0();
                            outlined destroy of PreExtractedSharedLink();
                            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v207, &_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
                            if ((v207 & 1) == 0)
                            {
                              goto LABEL_60;
                            }

                            goto LABEL_131;
                          }

                          OUTLINED_FUNCTION_63_0();
                          outlined destroy of PreExtractedSharedLink();
                        }

                        v76 = &_s15OmniSearchTypes19PreExtractedContactVSg_ADtMd;
                        v77 = &_s15OmniSearchTypes19PreExtractedContactVSg_ADtMR;
                        v78 = v207;
                        goto LABEL_59;
                      }

                      OUTLINED_FUNCTION_65_1();
                      outlined destroy of PreExtractedSharedLink();
                    }

                    v76 = &_s15OmniSearchTypes16PreExtractedCardVSg_ADtMd;
                    v77 = &_s15OmniSearchTypes16PreExtractedCardVSg_ADtMR;
                    v78 = v209;
                    goto LABEL_59;
                  }

                  OUTLINED_FUNCTION_58_0();
                  outlined destroy of PreExtractedSharedLink();
                }

                v76 = &_s15OmniSearchTypes26PartialExtractedAttributesVSg_ADtMd;
                v77 = &_s15OmniSearchTypes26PartialExtractedAttributesVSg_ADtMR;
                v78 = v211;
                goto LABEL_59;
              }

              outlined copy of DataDetectorResults?(v105, v106, v108, v107, v109);
              OUTLINED_FUNCTION_199();
              outlined copy of DataDetectorResults?(v126, v127, v128, v129, v130);
              outlined copy of DataDetectorResults?(v105, v106, v108, v107, v218);
            }

            else
            {
              OUTLINED_FUNCTION_179_0();
              outlined copy of DataDetectorResults?(v116, v117, v118, v119, v120);
              if (!v112)
              {
                OUTLINED_FUNCTION_199();
                outlined copy of DataDetectorResults?(v133, v134, v135, v136, v137);
                OUTLINED_FUNCTION_179_0();
                outlined consume of DataDetectorResults?(v138);
                goto LABEL_92;
              }

              OUTLINED_FUNCTION_199();
              outlined copy of DataDetectorResults?(v121, v122, v123, v124, v125);
            }

            OUTLINED_FUNCTION_179_0();
            outlined consume of DataDetectorResults?(v131);
            OUTLINED_FUNCTION_199();
            outlined consume of DataDetectorResults?(v132);
            goto LABEL_60;
          }

          (*(v213 + 8))(v0, v217);
        }

        v76 = &_s10Foundation3URLVSg_ADtMd;
        v77 = &_s10Foundation3URLVSg_ADtMR;
        v78 = v215;
        goto LABEL_59;
      }

      v74 = OUTLINED_FUNCTION_283();
      v75(v74);
    }

    v76 = &_s10Foundation4DateVSg_ADtMd;
    v77 = &_s10Foundation4DateVSg_ADtMR;
    v78 = v2;
    goto LABEL_59;
  }

  if (v55)
  {
    v56 = *(v4 + 16);
    if (v56 == v51[2] && v54 == v55)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_236(v56);
    OUTLINED_FUNCTION_315();
    if (v58)
    {
      goto LABEL_15;
    }
  }

LABEL_60:
  OUTLINED_FUNCTION_42_0();
}

uint64_t MobileSMSDocument.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x644974616863 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 2036625250 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1836020326 && a2 == 0xE400000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x654D6D6F72467369 && a2 == 0xE800000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 28532 && a2 == 0xE200000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1702125924 && a2 == 0xE400000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x55746E65746E6F63 && a2 == 0xEA00000000004C52;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x800000025DCEBD50 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x656D614E74616863 && a2 == 0xE800000000000000;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000010 && 0x800000025DCEBD70 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x7373654D74616863 && a2 == 0xEC00000073656761;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000013 && 0x800000025DCEBC60 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000027 && 0x800000025DCEBC80 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD00000000000001ALL && 0x800000025DCEBCB0 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000010 && 0x800000025DCEBCD0 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000013 && 0x800000025DCEBCF0 == a2;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000016 && 0x800000025DCEBD10 == a2;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else if (a1 == 0xD000000000000016 && 0x800000025DCEBD30 == a2)
                                        {

                                          return 20;
                                        }

                                        else
                                        {
                                          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                          if (v26)
                                          {
                                            return 20;
                                          }

                                          else
                                          {
                                            return 21;
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
          }
        }
      }
    }
  }
}

unint64_t MobileSMSDocument.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x644974616863;
      break;
    case 2:
      result = 0x4E79616C70736964;
      break;
    case 3:
      result = 2036625250;
      break;
    case 4:
      result = 1836020326;
      break;
    case 5:
      result = 0x654D6D6F72467369;
      break;
    case 6:
      result = 28532;
      break;
    case 7:
      result = 1702125924;
      break;
    case 8:
      result = 0x55746E65746E6F63;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x4E65636976726573;
      break;
    case 11:
      result = 0x656D614E74616863;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x7373654D74616863;
      break;
    case 14:
    case 18:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000027;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 19:
    case 20:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MobileSMSDocument.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MobileSMSDocument.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MobileSMSDocument.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MobileSMSDocument.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void MobileSMSDocument.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_261();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes17MobileSMSDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes17MobileSMSDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_0();
  v26 = OUTLINED_FUNCTION_152_1();
  OUTLINED_FUNCTION_41(v26, v27);
  lazy protocol witness table accessor for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys();
  OUTLINED_FUNCTION_132_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v48) = 0;
  OUTLINED_FUNCTION_25_4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v23)
  {
    v41 = OUTLINED_FUNCTION_138_1();
    v42(v41);
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_25_4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_25_4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_312();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_30_2(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_22_3();
    LOBYTE(v48) = 5;
    OUTLINED_FUNCTION_86_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v48 = *(v24 + 80);
    OUTLINED_FUNCTION_17_5(6);
    v45 = type metadata accessor for MobileSMSDocument(0);
    OUTLINED_FUNCTION_153_1(7);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v28);
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_153_1(8);
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v29);
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_174_0(v45[13]);
    v47 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes5PhotoVGMd, &_sSay15OmniSearchTypes5PhotoVGMR);
    lazy protocol witness table accessor for type [Photo] and conformance <A> [A](&lazy protocol witness table cache variable for type [Photo] and conformance <A> [A]);
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_208_0(v45[14]);
    LOBYTE(v48) = 10;
    OUTLINED_FUNCTION_25_4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_208_0(v45[15]);
    LOBYTE(v48) = 11;
    OUTLINED_FUNCTION_25_4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_174_0(v45[16]);
    OUTLINED_FUNCTION_17_5(12);
    OUTLINED_FUNCTION_174_0(v45[17]);
    v47 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes17MobileSMSDocumentVGMd, &_sSay15OmniSearchTypes17MobileSMSDocumentVGMR);
    lazy protocol witness table accessor for type [MobileSMSDocument] and conformance <A> [A](&lazy protocol witness table cache variable for type [MobileSMSDocument] and conformance <A> [A]);
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v48 = OUTLINED_FUNCTION_80_1(v24 + v45[18]);
    v49 = v30;
    v50 = v31;
    v51 = v32;
    v52 = v33;
    v47 = 14;
    outlined copy of DataDetectorResults?(v48, v30, v31, v32, v33);
    lazy protocol witness table accessor for type DataDetectorResults and conformance DataDetectorResults();
    OUTLINED_FUNCTION_86_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_208_0(v45[19]);
    LOBYTE(v48) = 15;
    OUTLINED_FUNCTION_25_4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v34 = OUTLINED_FUNCTION_153_1(16);
    type metadata accessor for PartialExtractedAttributes(v34);
    OUTLINED_FUNCTION_11_5();
    _s10Foundation4DateVACSQAAWlTm_0(v35);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v36 = OUTLINED_FUNCTION_153_1(17);
    type metadata accessor for PreExtractedCard(v36);
    OUTLINED_FUNCTION_10_5();
    _s10Foundation4DateVACSQAAWlTm_0(v37);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v38 = OUTLINED_FUNCTION_153_1(18);
    type metadata accessor for PreExtractedContact(v38);
    OUTLINED_FUNCTION_9_5();
    _s10Foundation4DateVACSQAAWlTm_0(v39);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    type metadata accessor for PreExtractedSharedLink(0);
    OUTLINED_FUNCTION_8_6();
    _s10Foundation4DateVACSQAAWlTm_0(v40);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_289_0();
    OUTLINED_FUNCTION_284();
    outlined init with copy of Date?();
    lazy protocol witness table accessor for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_86_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_195_0();
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(&v46, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
    v43 = OUTLINED_FUNCTION_138_1();
    v44(v43);
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [MobileSMSDocument] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_1(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15OmniSearchTypes17MobileSMSDocumentVGMd, &_sSay15OmniSearchTypes17MobileSMSDocumentVGMR);
    v3 = OUTLINED_FUNCTION_231_0();
    _s10Foundation4DateVACSQAAWlTm_0(v3);
    OUTLINED_FUNCTION_240_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void MobileSMSDocument.init(from:)()
{
  OUTLINED_FUNCTION_36();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_62(v7);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_62(v9);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_1();
  v59 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_62(v12);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_62(v14);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_59_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v16);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_94_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v18);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_51_1();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes17MobileSMSDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes17MobileSMSDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  v21 = v20;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_237();
  type metadata accessor for MobileSMSDocument(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_1();
  v62 = v24;
  v61 = v26 - v25;
  OUTLINED_FUNCTION_254_0(v26 - v25 + v24[18]);
  v58 = v27;
  v28 = v6[3];
  v29 = v6[4];
  OUTLINED_FUNCTION_41(v6, v28);
  lazy protocol witness table accessor for type MobileSMSDocument.CodingKeys and conformance MobileSMSDocument.CodingKeys();
  OUTLINED_FUNCTION_230_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    LOBYTE(v63) = 0;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_191_0(v30, v37);
    OUTLINED_FUNCTION_129_1(v38);
    *(v61 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v61 + 24) = v39;
    OUTLINED_FUNCTION_129_1(2);
    *(v61 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v61 + 40) = v40;
    OUTLINED_FUNCTION_129_1(3);
    *(v61 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v61 + 56) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_28_3(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_115_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v61 + 64) = v63;
    OUTLINED_FUNCTION_129_1(5);
    *(v61 + 72) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_53_1(6);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v61 + 80) = v63;
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v42);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_192_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_223();
    _s10Foundation4DateVSgWObTm_0();
    type metadata accessor for URL();
    LOBYTE(v63) = 8;
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v43);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_192_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_316_0();
    _s10Foundation4DateVSgWObTm_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes5PhotoVGMd, &_sSay15OmniSearchTypes5PhotoVGMR);
    lazy protocol witness table accessor for type [Photo] and conformance <A> [A](&lazy protocol witness table cache variable for type [Photo] and conformance <A> [A]);
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_192_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v61 + v62[13]) = v63;
    OUTLINED_FUNCTION_129_1(10);
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_250_0(v44, v45, v62[14]);
    OUTLINED_FUNCTION_129_1(11);
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_250_0(v46, v47, v62[15]);
    OUTLINED_FUNCTION_53_1(12);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v61 + v62[16]) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes17MobileSMSDocumentVGMd, &_sSay15OmniSearchTypes17MobileSMSDocumentVGMR);
    lazy protocol witness table accessor for type [MobileSMSDocument] and conformance <A> [A](&lazy protocol witness table cache variable for type [MobileSMSDocument] and conformance <A> [A]);
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_118_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v61 + v62[17]) = v63;
    lazy protocol witness table accessor for type DataDetectorResults and conformance DataDetectorResults();
    OUTLINED_FUNCTION_115_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v56 = OUTLINED_FUNCTION_305_0();
    outlined consume of DataDetectorResults?(v48);
    *v58 = v56;
    *(v58 + 16) = v64;
    *(v58 + 32) = v65;
    OUTLINED_FUNCTION_129_1(15);
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_250_0(v49, v50, v62[19]);
    type metadata accessor for PartialExtractedAttributes(0);
    OUTLINED_FUNCTION_11_5();
    _s10Foundation4DateVACSQAAWlTm_0(v51);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_175_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    _s10Foundation4DateVSgWObTm_0();
    type metadata accessor for PreExtractedCard(0);
    OUTLINED_FUNCTION_10_5();
    _s10Foundation4DateVACSQAAWlTm_0(v52);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_118_1();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_423();
    OUTLINED_FUNCTION_304_0();
    _s10Foundation4DateVSgWObTm_0();
    type metadata accessor for PreExtractedContact(0);
    OUTLINED_FUNCTION_9_5();
    _s10Foundation4DateVACSQAAWlTm_0(v53);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_118_1();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    _s10Foundation4DateVSgWObTm_0();
    type metadata accessor for PreExtractedSharedLink(0);
    OUTLINED_FUNCTION_8_6();
    _s10Foundation4DateVACSQAAWlTm_0(v54);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_118_1();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_247_0();
    _s10Foundation4DateVSgWObTm_0();
    lazy protocol witness table accessor for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_115_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v21 + 8))(v3, v60);
    OUTLINED_FUNCTION_287(v62[24]);
    OUTLINED_FUNCTION_222_0();
    outlined init with copy of EmailDocument();
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_270_0();
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_109_0();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_4_5();
  __swift_destroy_boxed_opaque_existential_1(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_142_1();

    if (v28)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_142_1();
    if (v28)
    {
LABEL_5:

      if ((v2 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:

      goto LABEL_19;
    }
  }

  if (v2)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (!v21)
  {
    v31 = v62;
    if (!v4)
    {
      goto LABEL_21;
    }

LABEL_8:

    if (v29)
    {
      goto LABEL_22;
    }

LABEL_9:
    if (!v55)
    {
      goto LABEL_23;
    }

LABEL_10:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v61 + v31[12], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_276_0();
    if (v32)
    {
      goto LABEL_24;
    }

LABEL_11:
    OUTLINED_FUNCTION_237_0();
    if (!v33)
    {
      goto LABEL_25;
    }

LABEL_12:
    OUTLINED_FUNCTION_112();
    if (v1)
    {
      goto LABEL_26;
    }

LABEL_13:
    if (!v59)
    {
      goto LABEL_27;
    }

LABEL_14:

    if ((v60 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v31 = v62;
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_21:
  if (!v29)
  {
    goto LABEL_9;
  }

LABEL_22:
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v61 + v31[11], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v55)
  {
    goto LABEL_10;
  }

LABEL_23:
  OUTLINED_FUNCTION_276_0();
  if (!v34)
  {
    goto LABEL_11;
  }

LABEL_24:

  OUTLINED_FUNCTION_237_0();
  if (v35)
  {
    goto LABEL_12;
  }

LABEL_25:
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_26:
  OUTLINED_FUNCTION_112();
  if (v59)
  {
    goto LABEL_14;
  }

LABEL_27:
  if (v60)
  {
LABEL_28:
  }

LABEL_29:
  v36 = OUTLINED_FUNCTION_80_1(v58);
  outlined consume of DataDetectorResults?(v36);
  if (v3)
  {
    OUTLINED_FUNCTION_112();
  }

  if (v57)
  {
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v61 + v31[23], &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  }

LABEL_33:
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type [Photo] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_1(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15OmniSearchTypes5PhotoVGMd, &_sSay15OmniSearchTypes5PhotoVGMR);
    v3 = OUTLINED_FUNCTION_231_0();
    _s10Foundation4DateVACSQAAWlTm_0(v3);
    OUTLINED_FUNCTION_240_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined init with copy of EmailDocument()
{
  OUTLINED_FUNCTION_310_0();
  v1(0);
  OUTLINED_FUNCTION_9_1();
  v2 = OUTLINED_FUNCTION_38();
  v3(v2);
  return v0;
}

__n128 CalendarEvent.init(id:title:contentDescription:startDate:endDate:locationName:organizerNames:participantNames:notes:itemAppEntityInstanceId:dataDetectorResults:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v30 = *(a16 + 32);
  v23 = type metadata accessor for CalendarEvent(0);
  v24 = a7 + v23[14];
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  _s10Foundation4DateVSgWObTm_0();
  _s10Foundation4DateVSgWObTm_0();
  v25 = (a7 + v23[9]);
  *v25 = a8;
  v25[1] = a9;
  *(a7 + v23[10]) = a10;
  *(a7 + v23[11]) = a11;
  v26 = (a7 + v23[12]);
  *v26 = a12;
  v26[1] = a13;
  v27 = (a7 + v23[13]);
  *v27 = a14;
  v27[1] = a15;
  outlined consume of DataDetectorResults?(*v24);
  result = *a16;
  v29 = *(a16 + 16);
  *v24 = *a16;
  *(v24 + 1) = v29;
  *(v24 + 4) = v30;
  return result;
}

uint64_t CalendarEvent.startDate.getter()
{
  return CalendarEvent.startDate.getter();
}

{
  v0 = OUTLINED_FUNCTION_35_1();
  v1(v0);
  return OUTLINED_FUNCTION_88_1();
}

uint64_t CalendarEvent.endDate.getter()
{
  return CalendarEvent.endDate.getter();
}

{
  v0 = OUTLINED_FUNCTION_35_1();
  v1(v0);
  return OUTLINED_FUNCTION_88_1();
}

uint64_t CalendarEvent.locationName.getter()
{
  return CalendarEvent.locationName.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t CalendarEvent.organizerNames.getter()
{
  type metadata accessor for CalendarEvent(0);
}

uint64_t CalendarEvent.participantNames.getter()
{
  type metadata accessor for CalendarEvent(0);
}

uint64_t CalendarEvent.notes.getter()
{
  return CalendarEvent.notes.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t CalendarEvent.itemAppEntityInstanceId.getter()
{
  type metadata accessor for CalendarEvent(0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t CalendarEvent.dataDetectorResults.getter()
{
  v1 = OUTLINED_FUNCTION_121();
  v2 = type metadata accessor for CalendarEvent(v1);
  v3 = OUTLINED_FUNCTION_80_1(v0 + *(v2 + 56));
  v8 = OUTLINED_FUNCTION_257_0(v3, v4, v5, v6, v7);

  return outlined copy of DataDetectorResults?(v8, v9, v10, v11, v12);
}

double CalendarEvent.dataDetectorResults.setter()
{
  v0 = OUTLINED_FUNCTION_259();
  v1 = type metadata accessor for CalendarEvent(v0);
  OUTLINED_FUNCTION_226_0(*(v1 + 56));
  *&result = OUTLINED_FUNCTION_256_0().n128_u64[0];
  return result;
}

uint64_t CalendarEvent.dataDetectorResults.modify()
{
  v0 = OUTLINED_FUNCTION_71();
  type metadata accessor for CalendarEvent(v0);
  return OUTLINED_FUNCTION_95();
}

void static CalendarEvent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_129_0();
  v3 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = OUTLINED_FUNCTION_62(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_42_1();
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_42_1();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_130();
  v21 = v21 && v19 == v20;
  if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  v22 = *(v0 + 24);
  if (!*(v1 + 24))
  {
    if (v22)
    {
      goto LABEL_44;
    }

LABEL_15:
    v26 = *(v0 + 40);
    if (*(v1 + 40))
    {
      if (!v26)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_128();
      v29 = v21 && v27 == v28;
      if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (v26)
    {
      goto LABEL_44;
    }

    v131 = v9;
    v133 = v5;
    v132 = type metadata accessor for CalendarEvent(0);
    v30 = *(v13 + 48);
    outlined init with copy of Date?();
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v2);
    if (v21)
    {
      OUTLINED_FUNCTION_16_3(v2 + v30);
      if (v21)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_34:
        v40 = *(v13 + 48);
        OUTLINED_FUNCTION_323();
        OUTLINED_FUNCTION_323();
        OUTLINED_FUNCTION_16_3(v17);
        if (v21)
        {
          OUTLINED_FUNCTION_16_3(v17 + v40);
          if (v21)
          {
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            goto LABEL_46;
          }
        }

        else
        {
          outlined init with copy of Date?();
          OUTLINED_FUNCTION_16_3(v17 + v40);
          if (!v41)
          {
            OUTLINED_FUNCTION_30();
            v44(v131, v17 + v40, v3);
            OUTLINED_FUNCTION_0_10();
            _s10Foundation4DateVACSQAAWlTm_0(v45);
            OUTLINED_FUNCTION_317_0();
            OUTLINED_FUNCTION_171_0();
            v46 = dispatch thunk of static Equatable.== infix(_:_:)();
            v47 = *(v133 + 8);
            v48 = OUTLINED_FUNCTION_302_0();
            v47(v48);
            v49 = OUTLINED_FUNCTION_288();
            v47(v49);
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            if ((v46 & 1) == 0)
            {
              goto LABEL_44;
            }

LABEL_46:
            OUTLINED_FUNCTION_10_3();
            if (v52)
            {
              if (!v50)
              {
                goto LABEL_44;
              }

              OUTLINED_FUNCTION_25_2(v51);
              v55 = v21 && v53 == v54;
              if (!v55 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_44;
              }
            }

            else if (v50)
            {
              goto LABEL_44;
            }

            if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*(v1 + v132[10]), *(v0 + v132[10])) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*(v1 + v132[11]), *(v0 + v132[11])) & 1) == 0)
            {
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_10_3();
            if (v58)
            {
              if (!v56)
              {
                goto LABEL_44;
              }

              OUTLINED_FUNCTION_25_2(v57);
              v61 = v21 && v59 == v60;
              if (!v61 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_44;
              }
            }

            else if (v56)
            {
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_10_3();
            if (v64)
            {
              if (!v62)
              {
                goto LABEL_44;
              }

              OUTLINED_FUNCTION_25_2(v63);
              v67 = v21 && v65 == v66;
              if (!v67 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_44;
              }
            }

            else if (v62)
            {
              goto LABEL_44;
            }

            v68 = v132[14];
            v69 = v1 + v68;
            v71 = *(v1 + v68);
            v70 = *(v1 + v68 + 8);
            v73 = *(v1 + v68 + 16);
            v72 = *(v1 + v68 + 24);
            v74 = *(v69 + 32);
            v75 = (v0 + v68);
            v77 = *v75;
            v76 = v75[1];
            v79 = v75[2];
            v78 = v75[3];
            v80 = v75[4];
            if (v71)
            {
              v135[0] = v71;
              v135[1] = v70;
              v135[2] = v73;
              v135[3] = v72;
              v135[4] = v74;
              if (v77)
              {
                v134[0] = v77;
                v134[1] = v76;
                v134[2] = v79;
                v134[3] = v78;
                v134[4] = v80;
                v81 = OUTLINED_FUNCTION_44_3();
                outlined copy of DataDetectorResults?(v81, v82, v83, v84, v85);
                OUTLINED_FUNCTION_84_1();
                outlined copy of DataDetectorResults?(v86, v87, v88, v89, v90);
                v91 = OUTLINED_FUNCTION_44_3();
                outlined copy of DataDetectorResults?(v91, v92, v93, v94, v95);
                static DataDetectorResults.== infix(_:_:)(v135, v134);

                v96 = OUTLINED_FUNCTION_44_3();
                outlined consume of DataDetectorResults?(v96);
                goto LABEL_44;
              }

              v107 = OUTLINED_FUNCTION_44_3();
              outlined copy of DataDetectorResults?(v107, v108, v109, v110, v111);
              OUTLINED_FUNCTION_84_1();
              outlined copy of DataDetectorResults?(v112, v113, v114, v115, v116);
              v117 = OUTLINED_FUNCTION_44_3();
              outlined copy of DataDetectorResults?(v117, v118, v119, v120, v121);
            }

            else
            {
              OUTLINED_FUNCTION_50_1();
              outlined copy of DataDetectorResults?(v97, v98, v99, v100, v101);
              if (!v77)
              {
                OUTLINED_FUNCTION_84_1();
                outlined copy of DataDetectorResults?(v124, v125, v126, v127, v128);
                OUTLINED_FUNCTION_50_1();
                outlined consume of DataDetectorResults?(v129);
                goto LABEL_44;
              }

              OUTLINED_FUNCTION_84_1();
              outlined copy of DataDetectorResults?(v102, v103, v104, v105, v106);
            }

            v122 = OUTLINED_FUNCTION_44_3();
            outlined consume of DataDetectorResults?(v122);
            OUTLINED_FUNCTION_84_1();
            outlined consume of DataDetectorResults?(v123);
            goto LABEL_44;
          }

          v42 = OUTLINED_FUNCTION_288();
          v43(v42);
        }

        v34 = v17;
LABEL_43:
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v34, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
        goto LABEL_44;
      }
    }

    else
    {
      outlined init with copy of Date?();
      OUTLINED_FUNCTION_16_3(v2 + v30);
      if (!v31)
      {
        OUTLINED_FUNCTION_203_0();
        v35(v9, v2 + v30, v3);
        OUTLINED_FUNCTION_0_10();
        _s10Foundation4DateVACSQAAWlTm_0(v36);
        v130 = dispatch thunk of static Equatable.== infix(_:_:)();
        v37 = *(v133 + 8);
        v38 = OUTLINED_FUNCTION_283();
        v37(v38);
        v39 = OUTLINED_FUNCTION_430();
        v37(v39);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if ((v130 & 1) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_34;
      }

      v32 = OUTLINED_FUNCTION_430();
      v33(v32);
    }

    v34 = v2;
    goto LABEL_43;
  }

  if (v22)
  {
    OUTLINED_FUNCTION_129();
    v25 = v21 && v23 == v24;
    if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_44:
  OUTLINED_FUNCTION_42_0();
}

uint64_t CalendarEvent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x800000025DCEBD90 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC000000656D614ELL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x657A696E6167726FLL && a2 == 0xEE0073656D614E72;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x800000025DCEBDB0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7365746F6ELL && a2 == 0xE500000000000000;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000017 && 0x800000025DCEBDD0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000013 && 0x800000025DCEBC60 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t CalendarEvent.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x7461447472617473;
      break;
    case 4:
      result = 0x65746144646E65;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    case 6:
      result = 0x657A696E6167726FLL;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x7365746F6ELL;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CalendarEvent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CalendarEvent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CalendarEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CalendarEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void CalendarEvent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_147_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes13CalendarEventV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes13CalendarEventV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_94();
  v26 = lazy protocol witness table accessor for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys();
  OUTLINED_FUNCTION_18(&unk_286F920C8, v27, v26);
  OUTLINED_FUNCTION_41_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v23)
  {
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = type metadata accessor for CalendarEvent(0);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v29);
    OUTLINED_FUNCTION_40_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_40_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[9]);
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_30_2(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_40_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_40_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[12]);
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[13]);
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v36 = OUTLINED_FUNCTION_80_1(v24 + v28[14]);
    outlined copy of DataDetectorResults?(v36, v30, v31, v32, v33);
    lazy protocol witness table accessor for type DataDetectorResults and conformance DataDetectorResults();
    OUTLINED_FUNCTION_5();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of DataDetectorResults?(v36);
  }

  v34 = OUTLINED_FUNCTION_134_0();
  v35(v34);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys);
  }

  return result;
}

void CalendarEvent.init(from:)()
{
  OUTLINED_FUNCTION_36();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = OUTLINED_FUNCTION_62(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_42_1();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes13CalendarEventV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes13CalendarEventV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for CalendarEvent(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_1();
  v36 = v14 - v13;
  v37 = v12;
  OUTLINED_FUNCTION_254_0(v14 - v13 + v12[14]);
  v35 = v15;
  v17 = v3[3];
  v16 = v3[4];
  OUTLINED_FUNCTION_41(v3, v17);
  lazy protocol witness table accessor for type CalendarEvent.CodingKeys and conformance CalendarEvent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_346();
    OUTLINED_FUNCTION_242();
    __swift_destroy_boxed_opaque_existential_1(v3);
    if (v17)
    {

      if (v3)
      {
        goto LABEL_5;
      }
    }

    else if (v3)
    {
LABEL_5:

      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v8)
    {
LABEL_6:
      if (v16)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:

    if (v16)
    {
LABEL_7:
      v19 = v37;
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v36 + v37[7], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((v0 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    v19 = v37;
    if (!v0)
    {
LABEL_8:
      if (!v1)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_16:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v36 + v19[8], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((v1 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    OUTLINED_FUNCTION_112();
LABEL_10:
    v20 = OUTLINED_FUNCTION_80_1(v35);
    outlined consume of DataDetectorResults?(v20);
    goto LABEL_11;
  }

  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  OUTLINED_FUNCTION_191_0(v18, v21);
  OUTLINED_FUNCTION_264_0(v22);
  *(v36 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v36 + 24) = v23;
  OUTLINED_FUNCTION_264_0(2);
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_322_0(v24, v25);
  OUTLINED_FUNCTION_0_10();
  _s10Foundation4DateVACSQAAWlTm_0(v26);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_223();
  _s10Foundation4DateVSgWObTm_0();
  LOBYTE(v38) = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_223();
  _s10Foundation4DateVSgWObTm_0();
  OUTLINED_FUNCTION_264_0(5);
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_143(v27, v28, v37[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  OUTLINED_FUNCTION_28_3(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v36 + v37[10]) = v38;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  OUTLINED_FUNCTION_423();
  *(v36 + v37[11]) = v38;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_143(v29, v30, v37[12]);
  LOBYTE(v38) = 9;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = (v36 + v37[13]);
  *v32 = v31;
  v32[1] = v33;
  lazy protocol witness table accessor for type DataDetectorResults and conformance DataDetectorResults();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  MEMORY[8](v1, v34);
  outlined consume of DataDetectorResults?(*v35);
  *v35 = v38;
  *(v35 + 16) = v39;
  *(v35 + 32) = v40;
  outlined init with copy of EmailDocument();
  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_270_0();
LABEL_11:
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

void *Photo.init(id:photoDescription:locationKeywords:season:sceneClassificationLabels:snippet:ocrString:date:businessNames:peopleNames:peopleContactIdentifiers:peoplePersonIdentifiers:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  v24 = type metadata accessor for Photo(0);
  OUTLINED_FUNCTION_223();
  _s10Foundation4DateVSgWObTm_0();
  *(a9 + v24[12]) = a13;
  *(a9 + v24[13]) = a14;
  *(a9 + v24[14]) = a15;
  *(a9 + v24[15]) = a16;
  v25 = (a9 + v24[16]);
  *v25 = a17;
  v25[1] = a18;
  OUTLINED_FUNCTION_316_0();
  _s10Foundation4DateVSgWObTm_0();
  _s10Foundation4DateVSgWObTm_0();
  _s10Foundation4DateVSgWObTm_0();
  _s10Foundation4DateVSgWObTm_0();
  v26 = (a9 + v24[21]);

  return memcpy(v26, a23, 0x60uLL);
}

uint64_t Photo.businessNames.getter()
{
  type metadata accessor for Photo(0);
}

uint64_t Photo.extractedEventsLLMConsumableDescription.getter()
{
  type metadata accessor for Photo(0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t Photo.partialExtractedAttributes.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  type metadata accessor for Photo(v0);
  return OUTLINED_FUNCTION_282_0();
}

uint64_t Photo.preExtractedCard.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  type metadata accessor for Photo(v0);
  return OUTLINED_FUNCTION_282_0();
}

uint64_t Photo.preExtractedContact.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  type metadata accessor for Photo(v0);
  return OUTLINED_FUNCTION_282_0();
}

uint64_t Photo.preExtractedBreadcrumb.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for Photo(v0);
  OUTLINED_FUNCTION_286(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_285_0();
  return outlined init with copy of Date?();
}

void static Photo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v2 = v1;
  v4 = v3;
  v123 = type metadata accessor for PreExtractedSharedLink(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v118 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_62(v7);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_1();
  v121 = v9;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSg_ADtMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_1();
  v126 = v11;
  v12 = OUTLINED_FUNCTION_32();
  v128 = type metadata accessor for PreExtractedContact(v12);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_2();
  v119 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_62(v15);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_1();
  v125 = v17;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSg_ADtMd, &_s15OmniSearchTypes19PreExtractedContactVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_1();
  v129 = v19;
  v20 = OUTLINED_FUNCTION_32();
  v130 = type metadata accessor for PreExtractedCard(v20);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_2();
  v122 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_62(v23);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSg_ADtMd, &_s15OmniSearchTypes16PreExtractedCardVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10_1();
  v132 = v26;
  v27 = OUTLINED_FUNCTION_32();
  v28 = type metadata accessor for PartialExtractedAttributes(v27);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12_2();
  v127 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_62(v31);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_1();
  v131 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSg_ADtMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_1();
  v133 = v36;
  OUTLINED_FUNCTION_32();
  v37 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v134 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5_1();
  v42 = v41 - v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v43);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_59_1();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_24_0();
  v47 = *v4 == *v2 && v4[1] == v2[1];
  if (!v47 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_60;
  }

  v48 = v4[3];
  v49 = v2[3];
  if (!v48)
  {
    if (v49)
    {
      goto LABEL_60;
    }

LABEL_15:
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v4[4], v2[4]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v4[5], v2[5]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v4[6], v2[6]) & 1) == 0)
    {
      goto LABEL_60;
    }

    v51 = v4[8];
    v52 = v2[8];
    if (v51)
    {
      if (!v52)
      {
        goto LABEL_60;
      }

      v53 = v4[7] == v2[7] && v51 == v52;
      if (!v53 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v52)
    {
      goto LABEL_60;
    }

    v54 = v4[10];
    v55 = v2[10];
    if (v54)
    {
      if (!v55)
      {
        goto LABEL_60;
      }

      v56 = v4[9] == v2[9] && v54 == v55;
      if (!v56 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v55)
    {
      goto LABEL_60;
    }

    v116 = type metadata accessor for Photo(0);
    v57 = *(v45 + 48);
    outlined init with copy of Date?();
    v117 = v57;
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v0);
    if (v47)
    {
      OUTLINED_FUNCTION_16_3(v0 + v57);
      if (v47)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v0, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        goto LABEL_47;
      }
    }

    else
    {
      outlined init with copy of Date?();
      OUTLINED_FUNCTION_16_3(v0 + v57);
      if (!v58)
      {
        (*(v134 + 32))(v42, v0 + v57, v37);
        OUTLINED_FUNCTION_0_10();
        _s10Foundation4DateVACSQAAWlTm_0(v64);
        OUTLINED_FUNCTION_317_0();
        LODWORD(v117) = dispatch thunk of static Equatable.== infix(_:_:)();
        v65 = OUTLINED_FUNCTION_322();
        v67 = v66;
        v66(v65);
        v68 = OUTLINED_FUNCTION_288();
        v67(v68);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v0, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if ((v117 & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_47:
        if ((OUTLINED_FUNCTION_280_0(v116[12]) & 1) == 0 || (OUTLINED_FUNCTION_280_0(v116[13]) & 1) == 0 || (OUTLINED_FUNCTION_280_0(v116[14]) & 1) == 0 || (OUTLINED_FUNCTION_280_0(v116[15]) & 1) == 0)
        {
          goto LABEL_60;
        }

        OUTLINED_FUNCTION_126_0();
        if (v71)
        {
          if (!v69)
          {
            goto LABEL_60;
          }

          OUTLINED_FUNCTION_25_2(v70);
          v74 = v47 && v72 == v73;
          if (!v74 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        else if (v69)
        {
          goto LABEL_60;
        }

        v75 = *(v34 + 48);
        OUTLINED_FUNCTION_396();
        outlined init with copy of Date?();
        outlined init with copy of Date?();
        OUTLINED_FUNCTION_66(v133, 1, v28);
        if (v47)
        {
          OUTLINED_FUNCTION_66(v133 + v75, 1, v28);
          if (v47)
          {
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v133, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
            goto LABEL_71;
          }
        }

        else
        {
          outlined init with copy of Date?();
          OUTLINED_FUNCTION_66(v133 + v75, 1, v28);
          if (!v76)
          {
            OUTLINED_FUNCTION_57_1();
            outlined init with take of PreExtractedSharedLink();
            static PartialExtractedAttributes.== infix(_:_:)(v131, v127, v77, v78, v79, v80, v81, v82, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
            OUTLINED_FUNCTION_67_1();
            outlined destroy of PreExtractedSharedLink();
            outlined destroy of PreExtractedSharedLink();
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v133, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
            if ((&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd & 1) == 0)
            {
              goto LABEL_60;
            }

LABEL_71:
            OUTLINED_FUNCTION_171_0();
            outlined init with copy of Date?();
            OUTLINED_FUNCTION_120_1();
            v83 = OUTLINED_FUNCTION_170();
            OUTLINED_FUNCTION_66(v83, v84, v130);
            if (v47)
            {
              v85 = OUTLINED_FUNCTION_244(v132);
              OUTLINED_FUNCTION_66(v85, v86, v130);
              if (v47)
              {
                outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v132, &_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
                goto LABEL_81;
              }
            }

            else
            {
              outlined init with copy of Date?();
              v87 = OUTLINED_FUNCTION_243_0();
              OUTLINED_FUNCTION_66(v87, v88, v130);
              if (!v89)
              {
                OUTLINED_FUNCTION_64_1();
                outlined init with take of PreExtractedSharedLink();
                OUTLINED_FUNCTION_204_0();
                static PreExtractedCard.== infix(_:_:)();
                OUTLINED_FUNCTION_66_1();
                outlined destroy of PreExtractedSharedLink();
                OUTLINED_FUNCTION_281_0();
                outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v132, &_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
                if ((v132 & 1) == 0)
                {
                  goto LABEL_60;
                }

LABEL_81:
                OUTLINED_FUNCTION_171_0();
                outlined init with copy of Date?();
                OUTLINED_FUNCTION_120_1();
                v90 = OUTLINED_FUNCTION_170();
                OUTLINED_FUNCTION_66(v90, v91, v128);
                if (v47)
                {
                  v92 = OUTLINED_FUNCTION_244(v129);
                  OUTLINED_FUNCTION_66(v92, v93, v128);
                  if (v47)
                  {
                    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v129, &_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
LABEL_91:
                    OUTLINED_FUNCTION_171_0();
                    outlined init with copy of Date?();
                    OUTLINED_FUNCTION_120_1();
                    v97 = OUTLINED_FUNCTION_170();
                    OUTLINED_FUNCTION_66(v97, v98, v123);
                    if (v47)
                    {
                      v99 = OUTLINED_FUNCTION_244(v126);
                      OUTLINED_FUNCTION_66(v99, v100, v123);
                      if (v47)
                      {
                        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v126, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
LABEL_101:
                        v104 = v4 + v116[21];
                        memcpy(v143, v104, 0x60uLL);
                        v105 = v2 + v116[21];
                        OUTLINED_FUNCTION_290_0();
                        v106 = v143[0];
                        v107 = v143[1];
                        memcpy(v142, v104 + 16, sizeof(v142));
                        v109 = v143[12];
                        v108 = v144;
                        memcpy(v141, v105 + 16, sizeof(v141));
                        if (v143[1])
                        {
                          v139[0] = v143[0];
                          v139[1] = v143[1];
                          OUTLINED_FUNCTION_197_0(v139);
                          memcpy(v138, v139, sizeof(v138));
                          if (v108)
                          {
                            OUTLINED_FUNCTION_288_0();
                            v137[0] = v109;
                            v137[1] = v108;
                            OUTLINED_FUNCTION_187_0();
                            OUTLINED_FUNCTION_187_0();
                            OUTLINED_FUNCTION_187_0();
                            static PreExtractedBreadcrumb.== infix(_:_:)(v138, v137);
                            memcpy(v135, v137, sizeof(v135));
                            outlined destroy of PreExtractedBreadcrumb(v135);
                            memcpy(v136, v138, sizeof(v136));
                            outlined destroy of PreExtractedBreadcrumb(v136);
                            v137[0] = v106;
                            v137[1] = v107;
                            memcpy(&v137[2], v142, 0x50uLL);
                            OUTLINED_FUNCTION_210();
                            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v110, v111, v112);
                            goto LABEL_60;
                          }

                          memcpy(v137, v139, sizeof(v137));
                          OUTLINED_FUNCTION_187_0();
                          OUTLINED_FUNCTION_187_0();
                          OUTLINED_FUNCTION_187_0();
                          outlined destroy of PreExtractedBreadcrumb(v137);
                        }

                        else
                        {
                          if (!v144)
                          {
                            v139[0] = v143[0];
                            v139[1] = 0;
                            OUTLINED_FUNCTION_197_0(v139);
                            OUTLINED_FUNCTION_212_0();
                            OUTLINED_FUNCTION_212_0();
                            OUTLINED_FUNCTION_210();
                            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v113, v114, v115);
                            goto LABEL_60;
                          }

                          OUTLINED_FUNCTION_212_0();
                          OUTLINED_FUNCTION_212_0();
                        }

                        v139[0] = v106;
                        v139[1] = v107;
                        memcpy(&v139[2], v142, 0x50uLL);
                        v139[12] = v109;
                        v139[13] = v108;
                        memcpy(v140, v141, sizeof(v140));
                        v61 = &_s15OmniSearchTypes22PreExtractedBreadcrumbVSg_ADtMd;
                        v62 = &_s15OmniSearchTypes22PreExtractedBreadcrumbVSg_ADtMR;
                        v63 = v139;
                        goto LABEL_45;
                      }
                    }

                    else
                    {
                      outlined init with copy of Date?();
                      v101 = OUTLINED_FUNCTION_243_0();
                      OUTLINED_FUNCTION_66(v101, v102, v123);
                      if (!v103)
                      {
                        OUTLINED_FUNCTION_60_0();
                        outlined init with take of PreExtractedSharedLink();
                        OUTLINED_FUNCTION_204_0();
                        static PreExtractedSharedLink.== infix(_:_:)();
                        OUTLINED_FUNCTION_68_1();
                        outlined destroy of PreExtractedSharedLink();
                        OUTLINED_FUNCTION_281_0();
                        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v126, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
                        if ((v126 & 1) == 0)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_101;
                      }

                      OUTLINED_FUNCTION_61_1();
                      outlined destroy of PreExtractedSharedLink();
                    }

                    v61 = &_s15OmniSearchTypes22PreExtractedSharedLinkVSg_ADtMd;
                    v62 = &_s15OmniSearchTypes22PreExtractedSharedLinkVSg_ADtMR;
                    v63 = v126;
LABEL_45:
                    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v63, v61, v62);
                    goto LABEL_60;
                  }
                }

                else
                {
                  outlined init with copy of Date?();
                  v94 = OUTLINED_FUNCTION_243_0();
                  OUTLINED_FUNCTION_66(v94, v95, v128);
                  if (!v96)
                  {
                    OUTLINED_FUNCTION_62_1();
                    outlined init with take of PreExtractedSharedLink();
                    OUTLINED_FUNCTION_204_0();
                    static PreExtractedContact.== infix(_:_:)();
                    OUTLINED_FUNCTION_69_1();
                    outlined destroy of PreExtractedSharedLink();
                    OUTLINED_FUNCTION_281_0();
                    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v129, &_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
                    if ((v129 & 1) == 0)
                    {
                      goto LABEL_60;
                    }

                    goto LABEL_91;
                  }

                  OUTLINED_FUNCTION_63_0();
                  outlined destroy of PreExtractedSharedLink();
                }

                v61 = &_s15OmniSearchTypes19PreExtractedContactVSg_ADtMd;
                v62 = &_s15OmniSearchTypes19PreExtractedContactVSg_ADtMR;
                v63 = v129;
                goto LABEL_45;
              }

              OUTLINED_FUNCTION_65_1();
              outlined destroy of PreExtractedSharedLink();
            }

            v61 = &_s15OmniSearchTypes16PreExtractedCardVSg_ADtMd;
            v62 = &_s15OmniSearchTypes16PreExtractedCardVSg_ADtMR;
            v63 = v132;
            goto LABEL_45;
          }

          OUTLINED_FUNCTION_58_0();
          outlined destroy of PreExtractedSharedLink();
        }

        v61 = &_s15OmniSearchTypes26PartialExtractedAttributesVSg_ADtMd;
        v62 = &_s15OmniSearchTypes26PartialExtractedAttributesVSg_ADtMR;
        v63 = v133;
        goto LABEL_45;
      }

      v59 = OUTLINED_FUNCTION_288();
      v60(v59);
    }

    v61 = &_s10Foundation4DateVSg_ADtMd;
    v62 = &_s10Foundation4DateVSg_ADtMR;
    v63 = v0;
    goto LABEL_45;
  }

  if (v49)
  {
    v50 = v4[2] == v2[2] && v48 == v49;
    if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_60:
  OUTLINED_FUNCTION_42_0();
}

uint64_t Photo.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000025DCEBDF0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000025DCEBE10 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F73616573 && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000019 && 0x800000025DCEBE30 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x74657070696E73 && a2 == 0xE700000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6972745372636FLL && a2 == 0xE900000000000067;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1702125924 && a2 == 0xE400000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7373656E69737562 && a2 == 0xED000073656D614ELL;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x614E656C706F6570 && a2 == 0xEB0000000073656DLL;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000018 && 0x800000025DCEBE50 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000017 && 0x800000025DCEBE70 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000027 && 0x800000025DCEBC80 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001ALL && 0x800000025DCEBCB0 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000010 && 0x800000025DCEBCD0 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000013 && 0x800000025DCEBCF0 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000016 && 0x800000025DCEBD10 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 0xD000000000000016 && 0x800000025DCEBD30 == a2)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                    if (v23)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
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
    }
  }
}

unint64_t Photo.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6E6F73616573;
      break;
    case 4:
      v3 = 9;
      goto LABEL_16;
    case 5:
      result = 0x74657070696E73;
      break;
    case 6:
      result = 0x6E6972745372636FLL;
      break;
    case 7:
      result = 1702125924;
      break;
    case 8:
      result = 0x7373656E69737562;
      break;
    case 9:
      result = 0x614E656C706F6570;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0xD000000000000027;
      break;
    case 13:
      v3 = 10;
LABEL_16:
      result = v3 | 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
    case 17:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Photo.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Photo.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance Photo.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = Photo.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Photo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Photo.CodingKeys and conformance Photo.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Photo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Photo.CodingKeys and conformance Photo.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void Photo.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_261();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes5PhotoV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes5PhotoV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_0();
  v26 = OUTLINED_FUNCTION_152_1();
  OUTLINED_FUNCTION_41(v26, v27);
  lazy protocol witness table accessor for type Photo.CodingKeys and conformance Photo.CodingKeys();
  OUTLINED_FUNCTION_132_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v43) = 0;
  OUTLINED_FUNCTION_25_4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v23)
  {
    v36 = OUTLINED_FUNCTION_138_1();
    v37(v36);
  }

  else
  {
    LOBYTE(v43) = 1;
    OUTLINED_FUNCTION_25_4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v43 = v24[4];
    v42[0] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_30_2(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_22_3();
    v43 = v24[5];
    OUTLINED_FUNCTION_17_5(3);
    v43 = v24[6];
    OUTLINED_FUNCTION_17_5(4);
    LOBYTE(v43) = 5;
    OUTLINED_FUNCTION_25_4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v43) = 6;
    OUTLINED_FUNCTION_25_4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v40 = type metadata accessor for Photo(0);
    OUTLINED_FUNCTION_153_1(7);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v28);
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_174_0(v40[12]);
    OUTLINED_FUNCTION_17_5(8);
    OUTLINED_FUNCTION_174_0(v40[13]);
    OUTLINED_FUNCTION_17_5(9);
    OUTLINED_FUNCTION_174_0(v40[14]);
    OUTLINED_FUNCTION_17_5(10);
    OUTLINED_FUNCTION_174_0(v40[15]);
    OUTLINED_FUNCTION_17_5(11);
    OUTLINED_FUNCTION_208_0(v40[16]);
    LOBYTE(v43) = 12;
    OUTLINED_FUNCTION_25_4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = OUTLINED_FUNCTION_153_1(13);
    type metadata accessor for PartialExtractedAttributes(v29);
    OUTLINED_FUNCTION_11_5();
    _s10Foundation4DateVACSQAAWlTm_0(v30);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v31 = OUTLINED_FUNCTION_153_1(14);
    type metadata accessor for PreExtractedCard(v31);
    OUTLINED_FUNCTION_10_5();
    _s10Foundation4DateVACSQAAWlTm_0(v32);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v33 = OUTLINED_FUNCTION_153_1(15);
    type metadata accessor for PreExtractedContact(v33);
    OUTLINED_FUNCTION_9_5();
    _s10Foundation4DateVACSQAAWlTm_0(v34);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    type metadata accessor for PreExtractedSharedLink(0);
    OUTLINED_FUNCTION_8_6();
    _s10Foundation4DateVACSQAAWlTm_0(v35);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_24_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_289_0();
    OUTLINED_FUNCTION_284();
    outlined init with copy of Date?();
    lazy protocol witness table accessor for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_86_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_195_0();
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(&v41, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
    v38 = OUTLINED_FUNCTION_138_1();
    v39(v38);
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type Photo.CodingKeys and conformance Photo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Photo.CodingKeys and conformance Photo.CodingKeys;
  if (!lazy protocol witness table cache variable for type Photo.CodingKeys and conformance Photo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Photo.CodingKeys and conformance Photo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Photo.CodingKeys and conformance Photo.CodingKeys;
  if (!lazy protocol witness table cache variable for type Photo.CodingKeys and conformance Photo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Photo.CodingKeys and conformance Photo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Photo.CodingKeys and conformance Photo.CodingKeys;
  if (!lazy protocol witness table cache variable for type Photo.CodingKeys and conformance Photo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Photo.CodingKeys and conformance Photo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Photo.CodingKeys and conformance Photo.CodingKeys;
  if (!lazy protocol witness table cache variable for type Photo.CodingKeys and conformance Photo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Photo.CodingKeys and conformance Photo.CodingKeys);
  }

  return result;
}

void Photo.init(from:)()
{
  OUTLINED_FUNCTION_36();
  v7 = v6;
  v50 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_62(v9);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_1();
  v49 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_62(v12);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_237();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_62(v14);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_62(v16);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v18);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_59_1();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes5PhotoV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes5PhotoV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  v21 = v20;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_94_1();
  v52 = type metadata accessor for Photo(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_2();
  v53 = v24;
  v25 = *(v7 + 24);
  v26 = *(v7 + 32);
  v27 = OUTLINED_FUNCTION_211_0();
  OUTLINED_FUNCTION_41(v27, v28);
  lazy protocol witness table accessor for type Photo.CodingKeys and conformance Photo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v54) = 0;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_191_0(v29, v35);
    OUTLINED_FUNCTION_129_1(v36);
    v53[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53[3] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_28_3(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_46_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v53[4] = v54;
    OUTLINED_FUNCTION_46_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v53[5] = v54;
    OUTLINED_FUNCTION_46_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v53[6] = v54;
    OUTLINED_FUNCTION_129_1(5);
    v53[7] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53[8] = v38;
    OUTLINED_FUNCTION_129_1(6);
    v53[9] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53[10] = v39;
    type metadata accessor for Date();
    LOBYTE(v54) = 7;
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v40);
    OUTLINED_FUNCTION_136_1();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_316_0();
    _s10Foundation4DateVSgWObTm_0();
    OUTLINED_FUNCTION_46_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v53 + v52[12]) = v54;
    OUTLINED_FUNCTION_46_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v53 + v52[13]) = v54;
    OUTLINED_FUNCTION_53_1(10);
    OUTLINED_FUNCTION_321_0();
    *(v53 + v52[14]) = v54;
    OUTLINED_FUNCTION_53_1(11);
    OUTLINED_FUNCTION_321_0();
    *(v53 + v52[15]) = v54;
    OUTLINED_FUNCTION_129_1(12);
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = (v53 + v52[16]);
    *v42 = v41;
    v42[1] = v43;
    type metadata accessor for PartialExtractedAttributes(0);
    OUTLINED_FUNCTION_11_5();
    _s10Foundation4DateVACSQAAWlTm_0(v44);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_175_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    _s10Foundation4DateVSgWObTm_0();
    type metadata accessor for PreExtractedCard(0);
    OUTLINED_FUNCTION_10_5();
    _s10Foundation4DateVACSQAAWlTm_0(v45);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_175_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_423();
    _s10Foundation4DateVSgWObTm_0();
    type metadata accessor for PreExtractedContact(0);
    OUTLINED_FUNCTION_9_5();
    _s10Foundation4DateVACSQAAWlTm_0(v46);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_175_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_247_0();
    _s10Foundation4DateVSgWObTm_0();
    type metadata accessor for PreExtractedSharedLink(0);
    OUTLINED_FUNCTION_8_6();
    _s10Foundation4DateVACSQAAWlTm_0(v47);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_175_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    _s10Foundation4DateVSgWObTm_0();
    lazy protocol witness table accessor for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb();
    OUTLINED_FUNCTION_115_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v21 + 8))(v0, v51);
    OUTLINED_FUNCTION_287(v52[21]);
    OUTLINED_FUNCTION_222_0();
    outlined init with copy of EmailDocument();
    v48 = OUTLINED_FUNCTION_304_0();
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_270_0();
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_0();
  OUTLINED_FUNCTION_14_4();
  v30 = OUTLINED_FUNCTION_304_0();
  __swift_destroy_boxed_opaque_existential_1(v30);
  if (v21)
  {

    if (v5)
    {
      goto LABEL_19;
    }

LABEL_5:
    if (!v4)
    {
      goto LABEL_20;
    }

LABEL_6:

    if (v3)
    {
      goto LABEL_21;
    }

LABEL_7:
    if (!v26)
    {
      goto LABEL_22;
    }

LABEL_8:

    if (v2)
    {
      goto LABEL_23;
    }

LABEL_9:
    if (!v25)
    {
      goto LABEL_24;
    }

LABEL_10:
    v31 = v52;
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v53 + v52[11], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_276_0();
    if (v32)
    {
      goto LABEL_25;
    }

LABEL_11:
    if (!v49)
    {
      goto LABEL_26;
    }

LABEL_12:

    if (v50)
    {
      goto LABEL_27;
    }

LABEL_13:
    if (!v0)
    {
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_19:

  if (v4)
  {
    goto LABEL_6;
  }

LABEL_20:
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_21:

  if (v26)
  {
    goto LABEL_8;
  }

LABEL_22:
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_23:

  if (v25)
  {
    goto LABEL_10;
  }

LABEL_24:
  v31 = v52;
  OUTLINED_FUNCTION_276_0();
  if (!v34)
  {
    goto LABEL_11;
  }

LABEL_25:

  if (v49)
  {
    goto LABEL_12;
  }

LABEL_26:
  if (!v50)
  {
    goto LABEL_13;
  }

LABEL_27:

  if ((v0 & 1) == 0)
  {
LABEL_28:
    if (!v51)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_14:

  if ((v51 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_29:
  OUTLINED_FUNCTION_112();
LABEL_15:
  OUTLINED_FUNCTION_237_0();
  if (v33)
  {
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v53 + v31[19], &_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  }

LABEL_30:
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_35();
}

uint64_t NoteDocument.init(id:title:contentSnippet:folderName:creationDate:lastUsedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  OUTLINED_FUNCTION_180_0(a1, a2, a3, a4, a5, a6, a7);
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  type metadata accessor for NoteDocument(0);
  _s10Foundation4DateVSgWObTm_0();
  return _s10Foundation4DateVSgWObTm_0();
}

uint64_t NoteDocument.lastUsedDate.getter()
{
  return NoteDocument.lastUsedDate.getter();
}

{
  v0 = OUTLINED_FUNCTION_35_1();
  v1(v0);
  return OUTLINED_FUNCTION_88_1();
}

void static NoteDocument.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_251_0();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = OUTLINED_FUNCTION_62(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_267();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  OUTLINED_FUNCTION_266();
  v18 = v18 && v16 == v17;
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_53;
  }

  v19 = v0[3];
  if (!v1[3])
  {
    if (v19)
    {
      goto LABEL_53;
    }

LABEL_15:
    v23 = v1[5];
    v24 = v0[5];
    if (v23)
    {
      if (!v24)
      {
        goto LABEL_53;
      }

      v25 = v1[4] == v0[4] && v23 == v24;
      if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (v24)
    {
      goto LABEL_53;
    }

    v26 = v1[7];
    v27 = v0[7];
    if (v26)
    {
      if (!v27)
      {
        goto LABEL_53;
      }

      v28 = v1[6] == v0[6] && v26 == v27;
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (v27)
    {
      goto LABEL_53;
    }

    v54 = v3;
    v53 = type metadata accessor for NoteDocument(0);
    v55 = *(v8 + 48);
    outlined init with copy of Date?();
    v29 = v55;
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v15);
    if (v18)
    {
      OUTLINED_FUNCTION_16_3(v29 + v15);
      if (v18)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_43:
        v41 = *(v8 + 48);
        OUTLINED_FUNCTION_271_0();
        outlined init with copy of Date?();
        OUTLINED_FUNCTION_271_0();
        outlined init with copy of Date?();
        OUTLINED_FUNCTION_16_3(v12);
        if (v18)
        {
          OUTLINED_FUNCTION_16_3(v12 + v41);
          if (v18)
          {
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            goto LABEL_53;
          }
        }

        else
        {
          OUTLINED_FUNCTION_292_0();
          outlined init with copy of Date?();
          OUTLINED_FUNCTION_16_3(v12 + v41);
          if (!v42)
          {
            v45 = v54;
            OUTLINED_FUNCTION_30();
            v46 = OUTLINED_FUNCTION_311_0();
            v47(v46);
            OUTLINED_FUNCTION_0_10();
            _s10Foundation4DateVACSQAAWlTm_0(v48);
            OUTLINED_FUNCTION_134_0();
            dispatch thunk of static Equatable.== infix(_:_:)();
            v49 = *(v45 + 8);
            v50 = OUTLINED_FUNCTION_38();
            v49(v50);
            v51 = OUTLINED_FUNCTION_283();
            v49(v51);
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            goto LABEL_53;
          }

          v43 = OUTLINED_FUNCTION_283();
          v44(v43);
        }

        v34 = v12;
LABEL_52:
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v34, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
        goto LABEL_53;
      }
    }

    else
    {
      outlined init with copy of Date?();
      OUTLINED_FUNCTION_16_3(v29 + v15);
      v31 = v54;
      if (!v30)
      {
        v35 = OUTLINED_FUNCTION_311_0();
        v36(v35);
        OUTLINED_FUNCTION_0_10();
        _s10Foundation4DateVACSQAAWlTm_0(v37);
        OUTLINED_FUNCTION_317_0();
        HIDWORD(v52) = dispatch thunk of static Equatable.== infix(_:_:)();
        v55 = *(v31 + 8);
        v38 = OUTLINED_FUNCTION_38();
        v39(v38);
        v40 = OUTLINED_FUNCTION_288();
        v55(v40);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if ((v52 & 0x100000000) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_43;
      }

      v32 = OUTLINED_FUNCTION_288();
      v33(v32);
    }

    v34 = v15;
    goto LABEL_52;
  }

  if (v19)
  {
    OUTLINED_FUNCTION_249_0();
    v22 = v18 && v20 == v21;
    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_53:
  OUTLINED_FUNCTION_42_0();
}

uint64_t NoteDocument.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x53746E65746E6F63 && a2 == 0xEE0074657070696ELL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x614E7265646C6F66 && a2 == 0xEA0000000000656DLL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x646573557473616CLL && a2 == 0xEC00000065746144)
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

uint64_t NoteDocument.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x53746E65746E6F63;
      break;
    case 3:
      result = 0x614E7265646C6F66;
      break;
    case 4:
      result = 0x6E6F697461657263;
      break;
    case 5:
      result = 0x646573557473616CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NoteDocument.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = NoteDocument.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NoteDocument.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NoteDocument.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void NoteDocument.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_140_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes12NoteDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes12NoteDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_94();
  v24 = lazy protocol witness table accessor for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys();
  OUTLINED_FUNCTION_18(&unk_286F91FA8, v25, v24);
  OUTLINED_FUNCTION_48_1();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v22)
  {
    OUTLINED_FUNCTION_32_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_47_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_137_0();
    OUTLINED_FUNCTION_52_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for NoteDocument(0);
    OUTLINED_FUNCTION_151_1();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v26);
    OUTLINED_FUNCTION_40_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_40_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v27 = OUTLINED_FUNCTION_134_0();
  v28(v27);
  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys);
  }

  return result;
}

void NoteDocument.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_36();
  v23 = v22;
  v43[4] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v26 = OUTLINED_FUNCTION_62(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v27);
  v29 = v43 - v28;
  v43[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes12NoteDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes12NoteDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  v31 = v30;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_79_0();
  v43[6] = type metadata accessor for NoteDocument(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_278_0();
  v44 = v23;
  v34 = OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_41(v34, v35);
  lazy protocol witness table accessor for type NoteDocument.CodingKeys and conformance NoteDocument.CodingKeys();
  OUTLINED_FUNCTION_263_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v43[1] = v21;
    v43[2] = v29;
    v43[3] = v31;
    OUTLINED_FUNCTION_159_0();
    OUTLINED_FUNCTION_156_0();
    *v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v19[1] = v36;
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_156_0();
    v19[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19[3] = v37;
    OUTLINED_FUNCTION_113_0();
    OUTLINED_FUNCTION_156_0();
    v19[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19[5] = v38;
    OUTLINED_FUNCTION_137_0();
    OUTLINED_FUNCTION_156_0();
    v19[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19[7] = v39;
    type metadata accessor for Date();
    OUTLINED_FUNCTION_151_1();
    OUTLINED_FUNCTION_0_10();
    v43[0] = _s10Foundation4DateVACSQAAWlTm_0(v40);
    OUTLINED_FUNCTION_156_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    _s10Foundation4DateVSgWObTm_0();
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_156_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v41 = OUTLINED_FUNCTION_135_1();
    v42(v41);
    _s10Foundation4DateVSgWObTm_0();
    outlined init with copy of EmailDocument();
    __swift_destroy_boxed_opaque_existential_1(v44);
    outlined destroy of PreExtractedSharedLink();
  }

  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_35();
}

uint64_t Reminder.init(id:title:note:creationDate:dueDate:dueDateIsAllDay:namedLocation:physicalAddress:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_198_0();
  v20 = OUTLINED_FUNCTION_319_0(v14, v15, v16, v17, v18, v19);
  v21 = type metadata accessor for Reminder(v20);
  OUTLINED_FUNCTION_318_0();
  _s10Foundation4DateVSgWObTm_0();
  _s10Foundation4DateVSgWObTm_0();
  *(v13 + v21[9]) = a9;
  v22 = (v13 + v21[10]);
  *v22 = a10;
  v22[1] = a11;
  v23 = (v13 + v21[11]);
  *v23 = a12;
  v23[1] = a13;
  return _s10Foundation4DateVSgWObTm_0();
}

uint64_t Reminder.namedLocation.getter()
{
  return Reminder.namedLocation.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t Reminder.physicalAddress.getter()
{
  return Reminder.physicalAddress.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

void static Reminder.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v3 = OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_333();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v7);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_1();
  v96 = v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_1();
  v98 = v11;
  OUTLINED_FUNCTION_32();
  v12 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v101 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_2();
  v100 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v17 = OUTLINED_FUNCTION_62(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_42_1();
  v99 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v90[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_42_1();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v90[-v29];
  OUTLINED_FUNCTION_194_0();
  v33 = v33 && v31 == v32;
  if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  v34 = v0[3];
  if (!v1[3])
  {
    if (v34)
    {
      goto LABEL_44;
    }

LABEL_15:
    v38 = v1[5];
    v39 = v0[5];
    if (v38)
    {
      if (!v39)
      {
        goto LABEL_44;
      }

      v40 = v1[4] == v0[4] && v38 == v39;
      if (!v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (v39)
    {
      goto LABEL_44;
    }

    v93 = v3;
    v94 = v2;
    v92 = v5;
    v95 = type metadata accessor for Reminder(0);
    v41 = *(v23 + 48);
    outlined init with copy of Date?();
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v30);
    if (v33)
    {
      OUTLINED_FUNCTION_16_3(&v30[v41]);
      if (v33)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        goto LABEL_34;
      }
    }

    else
    {
      OUTLINED_FUNCTION_273_0();
      outlined init with copy of Date?();
      OUTLINED_FUNCTION_16_3(&v30[v41]);
      if (!v42)
      {
        v47 = v101;
        v48 = OUTLINED_FUNCTION_311_0();
        v49(v48);
        OUTLINED_FUNCTION_0_10();
        _s10Foundation4DateVACSQAAWlTm_0(v50);
        v91 = dispatch thunk of static Equatable.== infix(_:_:)();
        v51 = *(v47 + 8);
        v52 = OUTLINED_FUNCTION_38();
        v51(v52);
        (v51)(v22, v12);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if ((v91 & 1) == 0)
        {
          goto LABEL_44;
        }

LABEL_34:
        v53 = v95;
        v54 = *(v23 + 48);
        outlined init with copy of Date?();
        outlined init with copy of Date?();
        OUTLINED_FUNCTION_16_3(v27);
        if (v33)
        {
          OUTLINED_FUNCTION_16_3(v27 + v54);
          v55 = v94;
          if (v33)
          {
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_46:
            if (*(v1 + *(v53 + 36)) != *(v0 + *(v53 + 36)))
            {
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_119_1();
            if (v67)
            {
              if (!v65)
              {
                goto LABEL_44;
              }

              OUTLINED_FUNCTION_25_2(v66);
              v70 = v33 && v68 == v69;
              if (!v70 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_44;
              }
            }

            else if (v65)
            {
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_119_1();
            if (v73)
            {
              if (!v71)
              {
                goto LABEL_44;
              }

              OUTLINED_FUNCTION_25_2(v72);
              v76 = v33 && v74 == v75;
              if (!v76 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_44;
              }
            }

            else if (v71)
            {
              goto LABEL_44;
            }

            v77 = *(v97 + 48);
            v78 = v98;
            OUTLINED_FUNCTION_65();
            outlined init with copy of Date?();
            OUTLINED_FUNCTION_65();
            outlined init with copy of Date?();
            v79 = OUTLINED_FUNCTION_299_0();
            v80 = v93;
            OUTLINED_FUNCTION_66(v79, v81, v93);
            if (v33)
            {
              OUTLINED_FUNCTION_16_3(v78 + v77);
              if (v33)
              {
                outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v78, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                goto LABEL_44;
              }
            }

            else
            {
              v82 = v96;
              outlined init with copy of Date?();
              OUTLINED_FUNCTION_16_3(v78 + v77);
              if (!v83)
              {
                v86 = v92;
                OUTLINED_FUNCTION_203_0();
                v87(v55, v78 + v77, v80);
                OUTLINED_FUNCTION_1_9();
                _s10Foundation4DateVACSQAAWlTm_0(v88);
                OUTLINED_FUNCTION_171_0();
                dispatch thunk of static Equatable.== infix(_:_:)();
                v89 = *(v86 + 8);
                v89(v55, v80);
                v89(v82, v80);
                outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v78, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                goto LABEL_44;
              }

              v84 = OUTLINED_FUNCTION_283();
              v85(v84);
            }

            v44 = &_s10Foundation3URLVSg_ADtMd;
            v45 = &_s10Foundation3URLVSg_ADtMR;
            v46 = v78;
LABEL_43:
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v46, v44, v45);
            goto LABEL_44;
          }
        }

        else
        {
          outlined init with copy of Date?();
          OUTLINED_FUNCTION_16_3(v27 + v54);
          v55 = v94;
          if (!v56)
          {
            OUTLINED_FUNCTION_262_0();
            v59(v100, v27 + v54, v12);
            OUTLINED_FUNCTION_0_10();
            _s10Foundation4DateVACSQAAWlTm_0(v60);
            v61 = dispatch thunk of static Equatable.== infix(_:_:)();
            v62 = *(v53 + 8);
            v63 = OUTLINED_FUNCTION_283();
            v62(v63);
            v64 = OUTLINED_FUNCTION_38();
            v62(v64);
            v53 = v95;
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            if ((v61 & 1) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_46;
          }

          OUTLINED_FUNCTION_390();
          v57 = OUTLINED_FUNCTION_38();
          v58(v57);
        }

        v44 = &_s10Foundation4DateVSg_ADtMd;
        v45 = &_s10Foundation4DateVSg_ADtMR;
        v46 = v27;
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_390();
      v43(v22, v12);
    }

    v44 = &_s10Foundation4DateVSg_ADtMd;
    v45 = &_s10Foundation4DateVSg_ADtMR;
    v46 = v30;
    goto LABEL_43;
  }

  if (v34)
  {
    OUTLINED_FUNCTION_265_0();
    v37 = v33 && v35 == v36;
    if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_44:
  OUTLINED_FUNCTION_42_0();
}

uint64_t Reminder.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702129518 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65746144657564 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4965746144657564 && a2 == 0xEF7961446C6C4173;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x636F4C64656D616ELL && a2 == 0xED00006E6F697461;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C61636973796870 && a2 == 0xEF73736572646441;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t Reminder.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 1702129518;
      break;
    case 3:
      result = 0x6E6F697461657263;
      break;
    case 4:
      result = 0x65746144657564;
      break;
    case 5:
      result = 0x4965746144657564;
      break;
    case 6:
      result = 0x636F4C64656D616ELL;
      break;
    case 7:
      result = 0x6C61636973796870;
      break;
    case 8:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Reminder.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Reminder.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance Reminder.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = Reminder.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Reminder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Reminder.CodingKeys and conformance Reminder.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Reminder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Reminder.CodingKeys and conformance Reminder.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void Reminder.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_147_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes8ReminderV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes8ReminderV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_94();
  v21 = lazy protocol witness table accessor for type Reminder.CodingKeys and conformance Reminder.CodingKeys();
  OUTLINED_FUNCTION_18(&unk_286F91F18, v22, v21);
  OUTLINED_FUNCTION_158_0();
  OUTLINED_FUNCTION_41_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v19)
  {
    OUTLINED_FUNCTION_32_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_96_1();
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = type metadata accessor for Reminder(0);
    OUTLINED_FUNCTION_137_0();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v24);
    OUTLINED_FUNCTION_40_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_40_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_5();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_70(*(v23 + 40));
    OUTLINED_FUNCTION_309_0();
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(*(v23 + 44));
    OUTLINED_FUNCTION_221_0(7);
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v25);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v26 = OUTLINED_FUNCTION_134_0();
  v27(v26);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type Reminder.CodingKeys and conformance Reminder.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Reminder.CodingKeys and conformance Reminder.CodingKeys;
  if (!lazy protocol witness table cache variable for type Reminder.CodingKeys and conformance Reminder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Reminder.CodingKeys and conformance Reminder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Reminder.CodingKeys and conformance Reminder.CodingKeys;
  if (!lazy protocol witness table cache variable for type Reminder.CodingKeys and conformance Reminder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Reminder.CodingKeys and conformance Reminder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Reminder.CodingKeys and conformance Reminder.CodingKeys;
  if (!lazy protocol witness table cache variable for type Reminder.CodingKeys and conformance Reminder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Reminder.CodingKeys and conformance Reminder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Reminder.CodingKeys and conformance Reminder.CodingKeys;
  if (!lazy protocol witness table cache variable for type Reminder.CodingKeys and conformance Reminder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Reminder.CodingKeys and conformance Reminder.CodingKeys);
  }

  return result;
}

void Reminder.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_36();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v24);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_59_1();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v27 = OUTLINED_FUNCTION_62(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_42_1();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes8ReminderV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes8ReminderV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  v50 = v32;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47();
  v51 = type metadata accessor for Reminder(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_278_0();
  v35 = v23[4];
  v36 = OUTLINED_FUNCTION_211_0();
  OUTLINED_FUNCTION_41(v36, v37);
  lazy protocol witness table accessor for type Reminder.CodingKeys and conformance Reminder.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    OUTLINED_FUNCTION_171();
    __swift_destroy_boxed_opaque_existential_1(v23);
    if (v21)
    {

      if (v35)
      {
        goto LABEL_9;
      }
    }

    else if (v35)
    {
LABEL_9:

      if ((v30 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    if (!v30)
    {
      goto LABEL_10;
    }

LABEL_6:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v19 + v51[7], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_21_1();
  *v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v19[1] = v38;
  OUTLINED_FUNCTION_77_1();
  v19[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19[3] = v39;
  OUTLINED_FUNCTION_113_0();
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_322_0(v40, v41);
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_0_10();
  _s10Foundation4DateVACSQAAWlTm_0(v42);
  OUTLINED_FUNCTION_277_0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_223();
  _s10Foundation4DateVSgWObTm_0();
  OUTLINED_FUNCTION_151_1();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_316_0();
  _s10Foundation4DateVSgWObTm_0();
  OUTLINED_FUNCTION_220();
  *(v19 + v51[9]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  OUTLINED_FUNCTION_309_0();
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_143(v43, v44, v51[10]);
  OUTLINED_FUNCTION_258_0();
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_143(v45, v46, v51[11]);
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1_9();
  _s10Foundation4DateVACSQAAWlTm_0(v47);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v48 = OUTLINED_FUNCTION_123_1();
  v49(v48, v50);
  _s10Foundation4DateVSgWObTm_0();
  OUTLINED_FUNCTION_222_0();
  outlined init with copy of EmailDocument();
  __swift_destroy_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_270_0();
LABEL_10:
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_35();
}

uint64_t PhoneHistory.init(id:authors:recipients:participants:phoneNumbers:callStatus:callDate:callType:description:url:)@<X0>(void *a1@<X8>, uint64_t x0_0@<X0>, uint64_t x1_0@<X1>, uint64_t x2_0@<X2>, uint64_t x3_0@<X3>, uint64_t x4_0@<X4>, uint64_t a7@<X5>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_180_0(x0_0, x1_0, x2_0, x3_0, x4_0, a7, a1);
  *(v15 + 48) = v13;
  *(v15 + 56) = v14;
  v16 = type metadata accessor for PhoneHistory(0);
  _s10Foundation4DateVSgWObTm_0();
  v17 = (a1 + *(v16 + 44));
  *v17 = a3;
  v17[1] = a4;
  v18 = (a1 + *(v16 + 48));
  *v18 = a5;
  v18[1] = a6;
  return _s10Foundation4DateVSgWObTm_0();
}

uint64_t PhoneHistory.callDate.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  type metadata accessor for PhoneHistory(v0);
  return OUTLINED_FUNCTION_282_0();
}

uint64_t PhoneHistory.url.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  type metadata accessor for PhoneHistory(v0);
  return OUTLINED_FUNCTION_282_0();
}

void static PhoneHistory.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v69 = OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_1();
  v67 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_279(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v7);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_1();
  v68 = v11;
  OUTLINED_FUNCTION_32();
  v12 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_333();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v16);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_94_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_194_0();
  v22 = v22 && v20 == v21;
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_45;
  }

  v23 = v1[2];
  v24 = v0[2];
  if (v23)
  {
    if (!v24 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v23, v24) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v24)
  {
    goto LABEL_45;
  }

  v25 = v1[3];
  v26 = v0[3];
  if (v25)
  {
    if (!v26 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v25, v26) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v26)
  {
    goto LABEL_45;
  }

  v27 = v1[4];
  v28 = v0[4];
  if (v27)
  {
    if (!v28 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v27, v28) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v28)
  {
    goto LABEL_45;
  }

  v29 = v1[5];
  v30 = v0[5];
  if (v29)
  {
    if (!v30 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v29, v30) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v30)
  {
    goto LABEL_45;
  }

  v31 = v1[7];
  v32 = v0[7];
  if (!v31)
  {
    if (v32)
    {
      goto LABEL_45;
    }

LABEL_35:
    type metadata accessor for PhoneHistory(0);
    v34 = *(v18 + 48);
    outlined init with copy of Date?();
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v3);
    if (v22)
    {
      OUTLINED_FUNCTION_16_3(v3 + v34);
      if (v22)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_47:
        OUTLINED_FUNCTION_119_1();
        if (v47)
        {
          if (!v45)
          {
            goto LABEL_45;
          }

          OUTLINED_FUNCTION_25_2(v46);
          v50 = v22 && v48 == v49;
          if (!v50 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        else if (v45)
        {
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_119_1();
        if (v53)
        {
          if (!v51)
          {
            goto LABEL_45;
          }

          OUTLINED_FUNCTION_25_2(v52);
          v56 = v22 && v54 == v55;
          if (!v56 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        else if (v51)
        {
          goto LABEL_45;
        }

        v57 = *(v9 + 48);
        OUTLINED_FUNCTION_65();
        outlined init with copy of Date?();
        OUTLINED_FUNCTION_65();
        outlined init with copy of Date?();
        OUTLINED_FUNCTION_66(v68, 1, v69);
        if (v22)
        {
          OUTLINED_FUNCTION_66(v68 + v57, 1, v69);
          if (v22)
          {
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_45;
          }
        }

        else
        {
          OUTLINED_FUNCTION_273_0();
          outlined init with copy of Date?();
          OUTLINED_FUNCTION_66(v68 + v57, 1, v69);
          if (!v58)
          {
            OUTLINED_FUNCTION_30();
            v61(v66, v68 + v57, v69);
            OUTLINED_FUNCTION_1_9();
            _s10Foundation4DateVACSQAAWlTm_0(v62);
            dispatch thunk of static Equatable.== infix(_:_:)();
            v63 = *(v67 + 8);
            v63(v66, v69);
            v64 = OUTLINED_FUNCTION_148();
            (v63)(v64);
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_45;
          }

          v59 = OUTLINED_FUNCTION_148();
          v60(v59);
        }

        v38 = &_s10Foundation3URLVSg_ADtMd;
        v39 = &_s10Foundation3URLVSg_ADtMR;
        v40 = v68;
LABEL_44:
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v40, v38, v39);
        goto LABEL_45;
      }
    }

    else
    {
      outlined init with copy of Date?();
      OUTLINED_FUNCTION_16_3(v3 + v34);
      if (!v35)
      {
        (*(v14 + 32))(v2, v3 + v34, v12);
        OUTLINED_FUNCTION_0_10();
        _s10Foundation4DateVACSQAAWlTm_0(v41);
        OUTLINED_FUNCTION_396();
        v65 = dispatch thunk of static Equatable.== infix(_:_:)();
        v42 = *(v14 + 8);
        v43 = OUTLINED_FUNCTION_288();
        v42(v43);
        v44 = OUTLINED_FUNCTION_38();
        v42(v44);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if ((v65 & 1) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_47;
      }

      v36 = OUTLINED_FUNCTION_38();
      v37(v36);
    }

    v38 = &_s10Foundation4DateVSg_ADtMd;
    v39 = &_s10Foundation4DateVSg_ADtMR;
    v40 = v3;
    goto LABEL_44;
  }

  if (v32)
  {
    v33 = v1[6] == v0[6] && v31 == v32;
    if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_35;
    }
  }

LABEL_45:
  OUTLINED_FUNCTION_42_0();
}

uint64_t PhoneHistory.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73726F68747561 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746174536C6C6163 && a2 == 0xEA00000000007375;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x657461446C6C6163 && a2 == 0xE800000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x657079546C6C6163 && a2 == 0xE800000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 7107189 && a2 == 0xE300000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

uint64_t PhoneHistory.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x73726F68747561;
      break;
    case 2:
      result = 0x6E65697069636572;
      break;
    case 3:
      result = 0x7069636974726170;
      break;
    case 4:
      result = 0x6D754E656E6F6870;
      break;
    case 5:
      result = 0x746174536C6C6163;
      break;
    case 6:
      result = 0x657461446C6C6163;
      break;
    case 7:
      result = 0x657079546C6C6163;
      break;
    case 8:
      result = 0x7470697263736564;
      break;
    case 9:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PhoneHistory.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PhoneHistory.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PhoneHistory.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PhoneHistory.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PhoneHistory.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_326_0();
  OUTLINED_FUNCTION_147_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes12PhoneHistoryV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes12PhoneHistoryV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_94();
  v3 = lazy protocol witness table accessor for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys();
  OUTLINED_FUNCTION_18(&unk_286F91E88, v4, v3);
  OUTLINED_FUNCTION_41_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_30_2(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_221_0(5);
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v5 = type metadata accessor for PhoneHistory(0);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v6);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(*(v5 + 44));
    OUTLINED_FUNCTION_221_0(7);
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(*(v5 + 48));
    OUTLINED_FUNCTION_221_0(8);
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v7);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v8 = OUTLINED_FUNCTION_10();
  v9(v8);
  OUTLINED_FUNCTION_325_0();
}

unint64_t lazy protocol witness table accessor for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys);
  }

  return result;
}

void PhoneHistory.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_36();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v14);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v16);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_94_1();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes12PhoneHistoryV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes12PhoneHistoryV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_79_0();
  v36 = type metadata accessor for PhoneHistory(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_2();
  v35 = v22;
  v23 = v13[4];
  v24 = OUTLINED_FUNCTION_211_0();
  OUTLINED_FUNCTION_41(v24, v25);
  lazy protocol witness table accessor for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    OUTLINED_FUNCTION_166();
    __swift_destroy_boxed_opaque_existential_1(v13);
    if (v11)
    {

      if ((v23 & 1) == 0)
      {
LABEL_9:
        if (!v19)
        {
          goto LABEL_11;
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    else if (!v23)
    {
      goto LABEL_9;
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  LOBYTE(a10) = 0;
  OUTLINED_FUNCTION_21_1();
  *v35 = KeyedDecodingContainer.decode(_:forKey:)();
  v35[1] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  OUTLINED_FUNCTION_28_3(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  OUTLINED_FUNCTION_78_1();
  v35[2] = a10;
  OUTLINED_FUNCTION_78_1();
  v35[3] = a10;
  OUTLINED_FUNCTION_78_1();
  v35[4] = a10;
  OUTLINED_FUNCTION_78_1();
  v35[5] = a10;
  OUTLINED_FUNCTION_21_1();
  v35[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35[7] = v27;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_0_10();
  _s10Foundation4DateVACSQAAWlTm_0(v28);
  OUTLINED_FUNCTION_21_1();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_423();
  _s10Foundation4DateVSgWObTm_0();
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_21_1();
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_143(v29, v30, *(v36 + 44));
  OUTLINED_FUNCTION_21_1();
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_143(v31, v32, *(v36 + 48));
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1_9();
  _s10Foundation4DateVACSQAAWlTm_0(v33);
  OUTLINED_FUNCTION_21_1();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v19 + 8))(v11, v34);
  _s10Foundation4DateVSgWObTm_0();
  OUTLINED_FUNCTION_222_0();
  outlined init with copy of EmailDocument();
  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_270_0();
LABEL_11:
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_35();
}

uint64_t VoicemailTranscript.init(id:displayTitle:phoneNumber:date:url:)()
{
  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_180_0(v0, v1, v2, v3, v4, v5, v6);
  type metadata accessor for VoicemailTranscript(0);
  OUTLINED_FUNCTION_318_0();
  _s10Foundation4DateVSgWObTm_0();
  return _s10Foundation4DateVSgWObTm_0();
}

void static VoicemailTranscript.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v4 = OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_279(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v9);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_1();
  v61 = v13;
  OUTLINED_FUNCTION_32();
  v14 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v62 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_333();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v17);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_94_1();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_194_0();
  v23 = v23 && v21 == v22;
  if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  v24 = v0[3];
  if (!v1[3])
  {
    if (v24)
    {
      goto LABEL_44;
    }

LABEL_15:
    v28 = v1[5];
    v29 = v0[5];
    if (v28)
    {
      if (!v29)
      {
        goto LABEL_44;
      }

      v30 = v1[4] == v0[4] && v28 == v29;
      if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (v29)
    {
      goto LABEL_44;
    }

    v59 = v4;
    type metadata accessor for VoicemailTranscript(0);
    v31 = *(v19 + 48);
    outlined init with copy of Date?();
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v3);
    if (v23)
    {
      OUTLINED_FUNCTION_16_3(v3 + v31);
      if (v23)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_34:
        v44 = *(v11 + 48);
        OUTLINED_FUNCTION_65();
        outlined init with copy of Date?();
        OUTLINED_FUNCTION_65();
        outlined init with copy of Date?();
        v45 = OUTLINED_FUNCTION_299_0();
        OUTLINED_FUNCTION_66(v45, v46, v59);
        if (v23)
        {
          v47 = OUTLINED_FUNCTION_242_0();
          OUTLINED_FUNCTION_66(v47, v48, v59);
          if (v23)
          {
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v61, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_44;
          }
        }

        else
        {
          outlined init with copy of Date?();
          v49 = OUTLINED_FUNCTION_242_0();
          OUTLINED_FUNCTION_66(v49, v50, v59);
          if (!v51)
          {
            OUTLINED_FUNCTION_203_0();
            v54(v60, v61 + v44, v59);
            OUTLINED_FUNCTION_1_9();
            _s10Foundation4DateVACSQAAWlTm_0(v55);
            OUTLINED_FUNCTION_227_0();
            dispatch thunk of static Equatable.== infix(_:_:)();
            v56 = *(v6 + 8);
            v57 = OUTLINED_FUNCTION_292_0();
            v56(v57);
            v58 = OUTLINED_FUNCTION_138_1();
            v56(v58);
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v61, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_44;
          }

          v52 = OUTLINED_FUNCTION_138_1();
          v53(v52);
        }

        v35 = &_s10Foundation3URLVSg_ADtMd;
        v36 = &_s10Foundation3URLVSg_ADtMR;
        v37 = v61;
LABEL_43:
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v37, v35, v36);
        goto LABEL_44;
      }
    }

    else
    {
      outlined init with copy of Date?();
      OUTLINED_FUNCTION_16_3(v3 + v31);
      if (!v32)
      {
        OUTLINED_FUNCTION_203_0();
        v38(v2, v3 + v31, v14);
        OUTLINED_FUNCTION_0_10();
        _s10Foundation4DateVACSQAAWlTm_0(v39);
        OUTLINED_FUNCTION_396();
        v40 = dispatch thunk of static Equatable.== infix(_:_:)();
        v41 = *(v62 + 8);
        v42 = OUTLINED_FUNCTION_288();
        v41(v42);
        v43 = OUTLINED_FUNCTION_38();
        v41(v43);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if ((v40 & 1) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_34;
      }

      OUTLINED_FUNCTION_390();
      v33 = OUTLINED_FUNCTION_38();
      v34(v33);
    }

    v35 = &_s10Foundation4DateVSg_ADtMd;
    v36 = &_s10Foundation4DateVSg_ADtMR;
    v37 = v3;
    goto LABEL_43;
  }

  if (v24)
  {
    OUTLINED_FUNCTION_265_0();
    v27 = v23 && v25 == v26;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_44:
  OUTLINED_FUNCTION_42_0();
}

uint64_t VoicemailTranscript.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5479616C70736964 && a2 == 0xEC000000656C7469;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702125924 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t VoicemailTranscript.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x5479616C70736964;
      break;
    case 2:
      result = 0x6D754E656E6F6870;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance VoicemailTranscript.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = VoicemailTranscript.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VoicemailTranscript.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance VoicemailTranscript.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void VoicemailTranscript.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_326_0();
  OUTLINED_FUNCTION_140_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes19VoicemailTranscriptV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes19VoicemailTranscriptV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_94();
  v3 = lazy protocol witness table accessor for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys();
  OUTLINED_FUNCTION_18(&unk_286F91DF8, v4, v3);
  OUTLINED_FUNCTION_48_1();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_32_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_47_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for VoicemailTranscript(0);
    OUTLINED_FUNCTION_137_0();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v5);
    OUTLINED_FUNCTION_56_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_151_1();
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v6);
    OUTLINED_FUNCTION_56_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v7 = OUTLINED_FUNCTION_10();
  v8(v7);
  OUTLINED_FUNCTION_325_0();
}

unint64_t lazy protocol witness table accessor for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys()
{
  result = lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys);
  }

  return result;
}

void VoicemailTranscript.init(from:)()
{
  OUTLINED_FUNCTION_36();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v3);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_279(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v6);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_59_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes19VoicemailTranscriptV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes19VoicemailTranscriptV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  v21 = v8;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_237();
  type metadata accessor for VoicemailTranscript(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_1();
  v13 = (v12 - v11);
  OUTLINED_FUNCTION_41(v2, v2[3]);
  lazy protocol witness table accessor for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys();
  OUTLINED_FUNCTION_230_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_159_0();
    *v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v13[1] = v14;
    OUTLINED_FUNCTION_77_1();
    v13[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13[3] = v15;
    OUTLINED_FUNCTION_113_0();
    v13[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13[5] = v16;
    type metadata accessor for Date();
    OUTLINED_FUNCTION_137_0();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v17);
    OUTLINED_FUNCTION_277_0();
    OUTLINED_FUNCTION_320_0();
    _s10Foundation4DateVSgWObTm_0();
    type metadata accessor for URL();
    OUTLINED_FUNCTION_151_1();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v18);
    OUTLINED_FUNCTION_320_0();
    v19 = OUTLINED_FUNCTION_150_0();
    v20(v19, v21);
    _s10Foundation4DateVSgWObTm_0();
    OUTLINED_FUNCTION_314_0();
    outlined init with copy of EmailDocument();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_231_0();
    outlined destroy of PreExtractedSharedLink();
  }

  OUTLINED_FUNCTION_35();
}

uint64_t JournalEntry.init(id:displayTitle:text:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  OUTLINED_FUNCTION_180_0(a1, a2, a3, a4, a5, a6, a7);
  type metadata accessor for JournalEntry(0);
  return _s10Foundation4DateVSgWObTm_0();
}

void static JournalEntry.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_251_0();
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v6);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_51_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_266();
  v12 = v12 && v10 == v11;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_33;
  }

  v13 = v1[3];
  if (!v2[3])
  {
    if (v13)
    {
      goto LABEL_33;
    }

LABEL_15:
    v17 = v2[5];
    v18 = v1[5];
    if (v17)
    {
      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = v2[4] == v1[4] && v17 == v18;
      if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      goto LABEL_33;
    }

    type metadata accessor for JournalEntry(0);
    v20 = *(v8 + 48);
    OUTLINED_FUNCTION_271_0();
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_271_0();
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v0);
    if (v12)
    {
      OUTLINED_FUNCTION_16_3(v0 + v20);
      if (v12)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v0, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        goto LABEL_33;
      }
    }

    else
    {
      OUTLINED_FUNCTION_292_0();
      outlined init with copy of Date?();
      OUTLINED_FUNCTION_16_3(v0 + v20);
      if (!v21)
      {
        OUTLINED_FUNCTION_30();
        v24 = OUTLINED_FUNCTION_311_0();
        v25(v24);
        OUTLINED_FUNCTION_1_9();
        _s10Foundation4DateVACSQAAWlTm_0(v26);
        OUTLINED_FUNCTION_134_0();
        dispatch thunk of static Equatable.== infix(_:_:)();
        v27 = *(v4 + 8);
        v28 = OUTLINED_FUNCTION_38();
        v27(v28);
        v29 = OUTLINED_FUNCTION_283();
        v27(v29);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v0, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_390();
      v22 = OUTLINED_FUNCTION_283();
      v23(v22);
    }

    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v0, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
    goto LABEL_33;
  }

  if (v13)
  {
    OUTLINED_FUNCTION_249_0();
    v16 = v12 && v14 == v15;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_42_0();
}

uint64_t JournalEntry.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5479616C70736964 && a2 == 0xEC000000656C7469;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1954047348 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t JournalEntry.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x5479616C70736964;
      break;
    case 2:
      result = 1954047348;
      break;
    case 3:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance JournalEntry.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = JournalEntry.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JournalEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JournalEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void JournalEntry.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_326_0();
  OUTLINED_FUNCTION_140_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes12JournalEntryV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes12JournalEntryV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_94();
  v3 = lazy protocol witness table accessor for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys();
  OUTLINED_FUNCTION_18(&unk_286F91D68, v4, v3);
  OUTLINED_FUNCTION_48_1();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_32_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_47_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for JournalEntry(0);
    OUTLINED_FUNCTION_137_0();
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v5);
    OUTLINED_FUNCTION_56_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v6 = OUTLINED_FUNCTION_10();
  v7(v6);
  OUTLINED_FUNCTION_325_0();
}

unint64_t lazy protocol witness table accessor for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys);
  }

  return result;
}

void JournalEntry.init(from:)()
{
  OUTLINED_FUNCTION_36();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v3);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_237();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes12JournalEntryV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes12JournalEntryV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_1();
  type metadata accessor for JournalEntry(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = (v8 - v7);
  v10 = OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_41(v10, v11);
  lazy protocol witness table accessor for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys();
  OUTLINED_FUNCTION_263_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_159_0();
    OUTLINED_FUNCTION_186();
    *v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[1] = v12;
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_186();
    v9[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v9[3] = v13;
    OUTLINED_FUNCTION_113_0();
    v9[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v9[5] = v14;
    type metadata accessor for URL();
    OUTLINED_FUNCTION_137_0();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v15);
    OUTLINED_FUNCTION_277_0();
    OUTLINED_FUNCTION_186();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v16 = OUTLINED_FUNCTION_141_0();
    v17(v16);
    _s10Foundation4DateVSgWObTm_0();
    OUTLINED_FUNCTION_314_0();
    outlined init with copy of EmailDocument();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_231_0();
    outlined destroy of PreExtractedSharedLink();
  }

  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_35();
}

uint64_t VoiceMemo.init(id:displayName:creationDate:durationInSeconds:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, char a6@<W6>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for VoiceMemo(0);
  _s10Foundation4DateVSgWObTm_0();
  v11 = a7 + *(v10 + 28);
  *v11 = a5;
  v11[8] = a6 & 1;
  return _s10Foundation4DateVSgWObTm_0();
}

uint64_t VoiceMemo.creationDate.getter()
{
  return VoiceMemo.creationDate.getter();
}

{
  v0 = OUTLINED_FUNCTION_35_1();
  v1(v0);
  return OUTLINED_FUNCTION_88_1();
}

void static VoiceMemo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v5 = OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v12);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_279(v14);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_1();
  v65 = v16;
  OUTLINED_FUNCTION_32();
  v17 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v66 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_333();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v20);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_255();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_194_0();
  v26 = v26 && v24 == v25;
  if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v27 = *(v1 + 24);
  if (!*(v2 + 24))
  {
    if (v27)
    {
      goto LABEL_25;
    }

LABEL_15:
    v63 = v11;
    v61 = v5;
    v62 = type metadata accessor for VoiceMemo(0);
    v31 = *(v22 + 48);
    outlined init with copy of Date?();
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v4);
    if (v26)
    {
      OUTLINED_FUNCTION_16_3(v4 + v31);
      if (v26)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_27:
        v42 = *(v62 + 28);
        v43 = *(v2 + v42 + 8);
        v44 = *(v1 + v42 + 8);
        if (v43)
        {
          v45 = v63;
          if (!v44)
          {
            goto LABEL_25;
          }
        }

        else
        {
          OUTLINED_FUNCTION_247();
          v45 = v63;
          if (v46)
          {
            goto LABEL_25;
          }
        }

        v47 = *(v64 + 48);
        OUTLINED_FUNCTION_65();
        outlined init with copy of Date?();
        OUTLINED_FUNCTION_65();
        outlined init with copy of Date?();
        v48 = OUTLINED_FUNCTION_299_0();
        OUTLINED_FUNCTION_66(v48, v49, v61);
        if (v26)
        {
          v50 = OUTLINED_FUNCTION_242_0();
          OUTLINED_FUNCTION_66(v50, v51, v61);
          if (v26)
          {
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v65, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_25;
          }
        }

        else
        {
          outlined init with copy of Date?();
          v52 = OUTLINED_FUNCTION_242_0();
          OUTLINED_FUNCTION_66(v52, v53, v61);
          if (!v54)
          {
            OUTLINED_FUNCTION_203_0();
            v57(v45, v65 + v47, v61);
            OUTLINED_FUNCTION_1_9();
            _s10Foundation4DateVACSQAAWlTm_0(v58);
            dispatch thunk of static Equatable.== infix(_:_:)();
            v59 = *(v7 + 8);
            v59(v45, v61);
            v60 = OUTLINED_FUNCTION_138_1();
            (v59)(v60);
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v65, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_25;
          }

          v55 = OUTLINED_FUNCTION_138_1();
          v56(v55);
        }

        v34 = &_s10Foundation3URLVSg_ADtMd;
        v35 = &_s10Foundation3URLVSg_ADtMR;
        v36 = v65;
        goto LABEL_24;
      }
    }

    else
    {
      outlined init with copy of Date?();
      OUTLINED_FUNCTION_16_3(v4 + v31);
      if (!v32)
      {
        OUTLINED_FUNCTION_203_0();
        v37(v3, v4 + v31, v17);
        OUTLINED_FUNCTION_0_10();
        _s10Foundation4DateVACSQAAWlTm_0(v38);
        OUTLINED_FUNCTION_396();
        v39 = dispatch thunk of static Equatable.== infix(_:_:)();
        v40 = *(v66 + 8);
        v41 = OUTLINED_FUNCTION_288();
        v40(v41);
        (v40)(v0, v17);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if ((v39 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }

      OUTLINED_FUNCTION_390();
      v33(v0, v17);
    }

    v34 = &_s10Foundation4DateVSg_ADtMd;
    v35 = &_s10Foundation4DateVSg_ADtMR;
    v36 = v4;
LABEL_24:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v36, v34, v35);
    goto LABEL_25;
  }

  if (v27)
  {
    OUTLINED_FUNCTION_265_0();
    v30 = v26 && v28 == v29;
    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_42_0();
}

uint64_t VoiceMemo.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x800000025DCEB2B0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

unint64_t VoiceMemo.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 0x6E6F697461657263;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance VoiceMemo.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = VoiceMemo.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VoiceMemo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance VoiceMemo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void VoiceMemo.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_326_0();
  OUTLINED_FUNCTION_140_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes9VoiceMemoV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes9VoiceMemoV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_94();
  v4 = lazy protocol witness table accessor for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys();
  OUTLINED_FUNCTION_18(&unk_286F91CD8, v5, v4);
  OUTLINED_FUNCTION_48_1();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    OUTLINED_FUNCTION_32_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v6 = type metadata accessor for VoiceMemo(0);
    OUTLINED_FUNCTION_131_1();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v7);
    OUTLINED_FUNCTION_56_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_296(v1 + *(v6 + 28));
    OUTLINED_FUNCTION_137_0();
    OUTLINED_FUNCTION_52_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_151_1();
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v8);
    OUTLINED_FUNCTION_56_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v9 = OUTLINED_FUNCTION_10();
  v10(v9);
  OUTLINED_FUNCTION_325_0();
}

unint64_t lazy protocol witness table accessor for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys);
  }

  return result;
}

void VoiceMemo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_36();
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v25);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v27);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_94_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes9VoiceMemoV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes9VoiceMemoV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  v44 = v30;
  v45 = v29;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_59_1();
  v32 = type metadata accessor for VoiceMemo(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5_1();
  v36 = (v35 - v34);
  OUTLINED_FUNCTION_41(v24, v24[3]);
  lazy protocol witness table accessor for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    OUTLINED_FUNCTION_159_0();
    *v36 = KeyedDecodingContainer.decode(_:forKey:)();
    v36[1] = v37;
    OUTLINED_FUNCTION_77_1();
    v36[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36[3] = v38;
    type metadata accessor for Date();
    OUTLINED_FUNCTION_131_1();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v39);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    _s10Foundation4DateVSgWObTm_0();
    OUTLINED_FUNCTION_137_0();
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v36 + *(v32 + 28);
    *v41 = v40;
    v41[8] = v42 & 1;
    type metadata accessor for URL();
    OUTLINED_FUNCTION_151_1();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v43);
    OUTLINED_FUNCTION_175_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v44 + 8))(v22, v45);
    _s10Foundation4DateVSgWObTm_0();
    OUTLINED_FUNCTION_314_0();
    outlined init with copy of EmailDocument();
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_231_0();
    outlined destroy of PreExtractedSharedLink();
  }

  OUTLINED_FUNCTION_35();
}

void Safari.init(id:websiteTitle:websiteUrl:body:contentType:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_43_0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  *v28 = v30;
  v28[1] = v31;
  v28[2] = v32;
  v28[3] = v33;
  v34 = type metadata accessor for Safari(0);
  OUTLINED_FUNCTION_229_0();
  _s10Foundation4DateVSgWObTm_0();
  v35 = (v29 + *(v34 + 28));
  *v35 = v27;
  v35[1] = v25;
  v36 = (v29 + *(v34 + 32));
  *v36 = v23;
  v36[1] = a21;
  OUTLINED_FUNCTION_229_0();
  _s10Foundation4DateVSgWObTm_0();
  OUTLINED_FUNCTION_42_0();
}

uint64_t Safari.body.getter()
{
  type metadata accessor for Safari(0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t Safari.contentType.getter()
{
  return Safari.contentType.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

void static Safari.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_251_0();
  v4 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = OUTLINED_FUNCTION_62(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42_1();
  MEMORY[0x28223BE20](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_266();
  v19 = v19 && v17 == v18;
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v20 = *(v1 + 24);
  if (!*(v2 + 24))
  {
    if (v20)
    {
      goto LABEL_25;
    }

LABEL_15:
    v54 = v0;
    v55 = v10;
    type metadata accessor for Safari(0);
    v24 = *(v14 + 48);
    outlined init with copy of Date?();
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v3);
    if (v19)
    {
      OUTLINED_FUNCTION_16_3(v3 + v24);
      if (v19)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_27:
        OUTLINED_FUNCTION_293_0();
        if (v36)
        {
          if (!v34)
          {
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_25_2(v35);
          v39 = v19 && v37 == v38;
          if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else if (v34)
        {
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_293_0();
        if (v42)
        {
          if (!v40)
          {
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_25_2(v41);
          v45 = v19 && v43 == v44;
          if (!v45 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else if (v40)
        {
          goto LABEL_25;
        }

        v46 = *(v14 + 48);
        OUTLINED_FUNCTION_323();
        OUTLINED_FUNCTION_323();
        OUTLINED_FUNCTION_16_3(v54);
        if (v19)
        {
          OUTLINED_FUNCTION_16_3(v54 + v46);
          if (v19)
          {
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_25;
          }
        }

        else
        {
          outlined init with copy of Date?();
          OUTLINED_FUNCTION_16_3(v54 + v46);
          if (!v47)
          {
            OUTLINED_FUNCTION_203_0();
            v50(v55, v54 + v46, v4);
            OUTLINED_FUNCTION_1_9();
            _s10Foundation4DateVACSQAAWlTm_0(v51);
            dispatch thunk of static Equatable.== infix(_:_:)();
            v52 = *(v6 + 8);
            v52(v55, v4);
            v53 = OUTLINED_FUNCTION_302_0();
            (v52)(v53);
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_390();
          v48 = OUTLINED_FUNCTION_302_0();
          v49(v48);
        }

        v28 = v54;
LABEL_24:
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v28, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
        goto LABEL_25;
      }
    }

    else
    {
      outlined init with copy of Date?();
      OUTLINED_FUNCTION_16_3(v3 + v24);
      if (!v25)
      {
        (*(v6 + 32))(v55, v3 + v24, v4);
        OUTLINED_FUNCTION_1_9();
        _s10Foundation4DateVACSQAAWlTm_0(v29);
        OUTLINED_FUNCTION_135_1();
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        v31 = *(v6 + 8);
        v32 = OUTLINED_FUNCTION_302_0();
        v31(v32);
        v33 = OUTLINED_FUNCTION_430();
        v31(v33);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        if ((v30 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }

      OUTLINED_FUNCTION_390();
      v26 = OUTLINED_FUNCTION_430();
      v27(v26);
    }

    v28 = v3;
    goto LABEL_24;
  }

  if (v20)
  {
    OUTLINED_FUNCTION_249_0();
    v23 = v19 && v21 == v22;
    if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_42_0();
}

uint64_t Safari.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5465746973626577 && a2 == 0xEC000000656C7469;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5565746973626577 && a2 == 0xEA00000000006C72;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 2036625250 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t Safari.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x5465746973626577;
      break;
    case 2:
      result = 0x5565746973626577;
      break;
    case 3:
      result = 2036625250;
      break;
    case 4:
      result = 0x54746E65746E6F63;
      break;
    case 5:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Safari.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Safari.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Safari.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Safari.CodingKeys and conformance Safari.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Safari.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Safari.CodingKeys and conformance Safari.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void Safari.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_140_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes6SafariV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes6SafariV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_94();
  v26 = lazy protocol witness table accessor for type Safari.CodingKeys and conformance Safari.CodingKeys();
  OUTLINED_FUNCTION_18(&unk_286F91C48, v27, v26);
  OUTLINED_FUNCTION_48_1();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v24)
  {
    OUTLINED_FUNCTION_32_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for Safari(0);
    OUTLINED_FUNCTION_131_1();
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v28);
    OUTLINED_FUNCTION_40_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_137_0();
    OUTLINED_FUNCTION_52_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_151_1();
    OUTLINED_FUNCTION_52_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_40_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v29 = OUTLINED_FUNCTION_134_0();
  v30(v29);
  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type Safari.CodingKeys and conformance Safari.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys;
  if (!lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys;
  if (!lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys;
  if (!lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys;
  if (!lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys);
  }

  return result;
}

void Safari.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_36();
  v23 = v22;
  v49[4] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v26 = OUTLINED_FUNCTION_62(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v27);
  v29 = v49 - v28;
  v49[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes6SafariV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes6SafariV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_79_0();
  v50 = type metadata accessor for Safari(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_278_0();
  v51 = v23;
  v32 = OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_41(v32, v33);
  lazy protocol witness table accessor for type Safari.CodingKeys and conformance Safari.CodingKeys();
  OUTLINED_FUNCTION_263_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    v49[3] = v21;
    OUTLINED_FUNCTION_159_0();
    OUTLINED_FUNCTION_156_0();
    *v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v19[1] = v34;
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_156_0();
    v19[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19[3] = v35;
    v36 = type metadata accessor for URL();
    OUTLINED_FUNCTION_131_1();
    OUTLINED_FUNCTION_1_9();
    v38 = _s10Foundation4DateVACSQAAWlTm_0(v37);
    v49[2] = v29;
    OUTLINED_FUNCTION_156_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v49[0] = v38;
    v49[1] = v36;
    v39 = v19;
    v40 = v50;
    _s10Foundation4DateVSgWObTm_0();
    OUTLINED_FUNCTION_137_0();
    OUTLINED_FUNCTION_156_0();
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = (v39 + *(v40 + 28));
    *v42 = v41;
    v42[1] = v43;
    OUTLINED_FUNCTION_151_1();
    OUTLINED_FUNCTION_156_0();
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = (v39 + *(v40 + 32));
    *v45 = v44;
    v45[1] = v46;
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_156_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v47 = OUTLINED_FUNCTION_95_1();
    v48(v47);
    _s10Foundation4DateVSgWObTm_0();
    OUTLINED_FUNCTION_314_0();
    outlined init with copy of EmailDocument();
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_231_0();
    outlined destroy of PreExtractedSharedLink();
  }

  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_35();
}

uint64_t FileDocument.init(id:item:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t FileDocument.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

id key path getter for FileDocument.item : FileDocument@<X0>(void *a1@<X8>)
{
  result = FileDocument.item.getter();
  *a1 = result;
  return result;
}

uint64_t static FileDocument.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_200_0(a1);
  v4 = *(v3 + 16);
  v5 = v2[2];
  v6 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CSSearchableItem();
  v7 = v4;
  v8 = v5;
  v9 = static NSObject.== infix(_:_:)();

  return v9 & 1;
}

unint64_t type metadata accessor for CSSearchableItem()
{
  result = lazy cache variable for type metadata for CSSearchableItem;
  if (!lazy cache variable for type metadata for CSSearchableItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CSSearchableItem);
  }

  return result;
}

uint64_t FileDocument.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1835365481 && a2 == 0xE400000000000000)
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

uint64_t FileDocument.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1835365481;
  }

  else
  {
    return 25705;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FileDocument.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = FileDocument.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FileDocument.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FileDocument.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void FileDocument.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes12FileDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes12FileDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_51_1();
  v9 = *(v0 + 16);
  OUTLINED_FUNCTION_41(v3, v3[3]);
  lazy protocol witness table accessor for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys();
  OUTLINED_FUNCTION_148_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_158_0();
  OUTLINED_FUNCTION_41_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_122_1();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    lazy protocol witness table accessor for type CodableNSSecureCoding<CSSearchableItem> and conformance CodableNSSecureCoding<A>(&lazy protocol witness table cache variable for type CodableNSSecureCoding<CSSearchableItem> and conformance CodableNSSecureCoding<A>);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v7 = OUTLINED_FUNCTION_134_0();
  v8(v7);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys);
  }

  return result;
}

void FileDocument.init(from:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_260_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes12FileDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes12FileDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_41(v0, v0[3]);
  lazy protocol witness table accessor for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys();
  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_132_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_159_0();
    v5 = OUTLINED_FUNCTION_215(v4);
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    OUTLINED_FUNCTION_122_1();
    lazy protocol witness table accessor for type CodableNSSecureCoding<CSSearchableItem> and conformance CodableNSSecureCoding<A>(&lazy protocol witness table cache variable for type CodableNSSecureCoding<CSSearchableItem> and conformance CodableNSSecureCoding<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = OUTLINED_FUNCTION_0_0();
    v9(v8);
    *v2 = v5;
    v2[1] = v7;
    v2[2] = v11;

    v10 = v11;
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}