uint64_t sub_25DC67D18@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  result = (*(v2 + 88))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_25DC67DEC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _s15OmniSearchTypes34AnswerSynthesisExtractionCandidateO22OnScreenTextCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOs0K3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = AnswerSynthesisExtractionCandidate.AppEntityCodingKeys.init(stringValue:)(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t _s15OmniSearchTypes29AnswerSynthesisResolutionTypeO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOs0J3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25DC67EB0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25DC682BC(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x694C746C75736572;
  }
}

uint64_t sub_25DC6834C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TypedValue();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_25DC683D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TypedValue();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25DC685D8()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  v4 = v1;
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  OUTLINED_FUNCTION_72();
  if (*(v6 + 84) == v5)
  {
    v7 = v4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v8 + 84) == v5)
    {
      v7 = v4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
      OUTLINED_FUNCTION_72();
      if (*(v9 + 84) == v5)
      {
        v7 = v4[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
        OUTLINED_FUNCTION_72();
        if (*(v10 + 84) == v5)
        {
          v7 = v4[8];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
          OUTLINED_FUNCTION_72();
          if (*(v11 + 84) == v5)
          {
            v7 = v4[9];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
            OUTLINED_FUNCTION_72();
            if (*(v12 + 84) == v5)
            {
              v7 = v4[10];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
              OUTLINED_FUNCTION_72();
              if (*(v13 + 84) == v5)
              {
                v7 = v4[11];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
                OUTLINED_FUNCTION_72();
                if (*(v14 + 84) == v5)
                {
                  v7 = v4[12];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
                  OUTLINED_FUNCTION_72();
                  if (*(v15 + 84) == v5)
                  {
                    v7 = v4[13];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
                    v7 = v4[14];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v16 = OUTLINED_FUNCTION_118(v7);

  return __swift_getEnumTagSinglePayload(v16, v17, v18);
}

void sub_25DC688FC()
{
  OUTLINED_FUNCTION_99();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v7 + 84) == v6)
    {
      v8 = v5[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
      OUTLINED_FUNCTION_72();
      if (*(v9 + 84) == v6)
      {
        v8 = v5[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
        OUTLINED_FUNCTION_72();
        if (*(v10 + 84) == v6)
        {
          v8 = v5[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
          OUTLINED_FUNCTION_72();
          if (*(v11 + 84) == v6)
          {
            v8 = v5[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
            OUTLINED_FUNCTION_72();
            if (*(v12 + 84) == v6)
            {
              v8 = v5[9];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
              OUTLINED_FUNCTION_72();
              if (*(v13 + 84) == v6)
              {
                v8 = v5[10];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
                OUTLINED_FUNCTION_72();
                if (*(v14 + 84) == v6)
                {
                  v8 = v5[11];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
                  OUTLINED_FUNCTION_72();
                  if (*(v15 + 84) == v6)
                  {
                    v8 = v5[12];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
                    OUTLINED_FUNCTION_72();
                    if (*(v16 + 84) == v6)
                    {
                      v8 = v5[13];
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
                      v8 = v5[14];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v17 = OUTLINED_FUNCTION_118(v8);

    __swift_storeEnumTagSinglePayload(v17, v18, v0, v19);
  }
}

uint64_t sub_25DC68C30()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  v4 = v1;
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_72();
  if (*(v6 + 84) == v5)
  {
    v7 = *(v4 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v7 = *(v4 + 48);
  }

  v8 = OUTLINED_FUNCTION_118(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_25DC68CF4()
{
  OUTLINED_FUNCTION_99();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v8 = *(v5 + 48);
    }

    v9 = OUTLINED_FUNCTION_118(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_25DC6935C()
{
  OUTLINED_FUNCTION_125();
  if (v1)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = OUTLINED_FUNCTION_118(*(v0 + 140));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_25DC693D0()
{
  OUTLINED_FUNCTION_99();
  if (v1)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v3 = OUTLINED_FUNCTION_187(*(v2 + 140));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_25DC69444()
{
  OUTLINED_FUNCTION_125();
  if (v1)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = OUTLINED_FUNCTION_118(*(v0 + 116));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_25DC694B8()
{
  OUTLINED_FUNCTION_99();
  if (v1)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v3 = OUTLINED_FUNCTION_187(*(v2 + 116));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_25DC6952C()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_72();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 120);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v5 = *(v1 + 128);
  }

  v6 = OUTLINED_FUNCTION_118(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_25DC695EC()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 120);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v4 = *(v0 + 128);
    }

    v5 = OUTLINED_FUNCTION_187(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_25DC696AC()
{
  OUTLINED_FUNCTION_125();
  if (v1)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = OUTLINED_FUNCTION_118(*(v0 + 112));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_25DC69720()
{
  OUTLINED_FUNCTION_99();
  if (v1)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v3 = OUTLINED_FUNCTION_187(*(v2 + 112));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_25DC69794()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 100);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v5 = *(v1 + 112);
  }

  v6 = OUTLINED_FUNCTION_118(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_25DC69854()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 100);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v4 = *(v0 + 112);
    }

    v5 = OUTLINED_FUNCTION_187(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_25DC69914()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 92);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v5 = *(v1 + 108);
  }

  v6 = OUTLINED_FUNCTION_118(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_25DC699D4()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 92);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v4 = *(v0 + 108);
    }

    v5 = OUTLINED_FUNCTION_187(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_25DC69A94()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_72();
  if (*(v4 + 84) == v0)
  {
    v5 = v1[14];
  }

  else
  {
    type metadata accessor for DateComponents();
    OUTLINED_FUNCTION_72();
    if (*(v6 + 84) == v0)
    {
      v5 = v1[19];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v5 = v1[39];
    }
  }

  v7 = OUTLINED_FUNCTION_118(v5);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_25DC69B94()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v3 + 84) == v1)
    {
      v4 = v0[14];
    }

    else
    {
      type metadata accessor for DateComponents();
      OUTLINED_FUNCTION_72();
      if (*(v5 + 84) == v1)
      {
        v4 = v0[19];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v4 = v0[39];
      }
    }

    v6 = OUTLINED_FUNCTION_187(v4);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_25DC69C9C()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 96);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v5 = *(v1 + 104);
  }

  v6 = OUTLINED_FUNCTION_118(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_25DC69D5C()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 96);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v4 = *(v0 + 104);
    }

    v5 = OUTLINED_FUNCTION_187(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_25DC6A278()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72();
  if (*(v4 + 84) == v0)
  {
    v5 = v1[12];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v6 + 84) == v0)
    {
      v5 = v1[21];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
      OUTLINED_FUNCTION_72();
      if (*(v7 + 84) == v0)
      {
        v5 = v1[22];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
        OUTLINED_FUNCTION_72();
        if (*(v8 + 84) == v0)
        {
          v5 = v1[23];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
          v5 = v1[24];
        }
      }
    }
  }

  v9 = OUTLINED_FUNCTION_118(v5);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_25DC6A41C()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v3 + 84) == v1)
    {
      v4 = v0[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
      OUTLINED_FUNCTION_72();
      if (*(v5 + 84) == v1)
      {
        v4 = v0[21];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
        OUTLINED_FUNCTION_72();
        if (*(v6 + 84) == v1)
        {
          v4 = v0[22];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
          OUTLINED_FUNCTION_72();
          if (*(v7 + 84) == v1)
          {
            v4 = v0[23];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
            v4 = v0[24];
          }
        }
      }
    }

    v8 = OUTLINED_FUNCTION_187(v4);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_25DC6A5C0()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72();
  if (*(v4 + 84) == v0)
  {
    v5 = v1[11];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v6 + 84) == v0)
    {
      v5 = v1[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
      OUTLINED_FUNCTION_72();
      if (*(v7 + 84) == v0)
      {
        v5 = v1[20];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
        OUTLINED_FUNCTION_72();
        if (*(v8 + 84) == v0)
        {
          v5 = v1[21];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
          OUTLINED_FUNCTION_72();
          if (*(v9 + 84) == v0)
          {
            v5 = v1[22];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
            v5 = v1[23];
          }
        }
      }
    }
  }

  v10 = OUTLINED_FUNCTION_118(v5);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_25DC6A7B0()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v3 + 84) == v1)
    {
      v4 = v0[11];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      OUTLINED_FUNCTION_72();
      if (*(v5 + 84) == v1)
      {
        v4 = v0[12];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
        OUTLINED_FUNCTION_72();
        if (*(v6 + 84) == v1)
        {
          v4 = v0[20];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
          OUTLINED_FUNCTION_72();
          if (*(v7 + 84) == v1)
          {
            v4 = v0[21];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
            OUTLINED_FUNCTION_72();
            if (*(v8 + 84) == v1)
            {
              v4 = v0[22];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
              v4 = v0[23];
            }
          }
        }
      }
    }

    v9 = OUTLINED_FUNCTION_187(v4);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_25DC6A9A0()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72();
  if (*(v4 + 84) == v0)
  {
    v5 = v1[11];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v6 + 84) == v0)
    {
      v5 = v1[17];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
      OUTLINED_FUNCTION_72();
      if (*(v7 + 84) == v0)
      {
        v5 = v1[18];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
        OUTLINED_FUNCTION_72();
        if (*(v8 + 84) == v0)
        {
          v5 = v1[19];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
          v5 = v1[20];
        }
      }
    }
  }

  v9 = OUTLINED_FUNCTION_118(v5);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_25DC6AB44()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v3 + 84) == v1)
    {
      v4 = v0[11];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
      OUTLINED_FUNCTION_72();
      if (*(v5 + 84) == v1)
      {
        v4 = v0[17];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
        OUTLINED_FUNCTION_72();
        if (*(v6 + 84) == v1)
        {
          v4 = v0[18];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
          OUTLINED_FUNCTION_72();
          if (*(v7 + 84) == v1)
          {
            v4 = v0[19];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
            v4 = v0[20];
          }
        }
      }
    }

    v8 = OUTLINED_FUNCTION_187(v4);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_25DC6ACE8()
{
  OUTLINED_FUNCTION_125();
  if (v1)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = OUTLINED_FUNCTION_118(*(v0 + 32));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_25DC6AD5C()
{
  OUTLINED_FUNCTION_99();
  if (v1)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v3 = OUTLINED_FUNCTION_187(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_25DC6ADD0()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v5 = *(v1 + 48);
  }

  v6 = OUTLINED_FUNCTION_118(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_25DC6AE90()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v4 = *(v0 + 48);
    }

    v5 = OUTLINED_FUNCTION_187(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_25DC6AF50()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v5 = *(v1 + 52);
  }

  v6 = OUTLINED_FUNCTION_118(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_25DC6B010()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 40);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v4 = *(v0 + 52);
    }

    v5 = OUTLINED_FUNCTION_187(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_25DC6B0D0()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v5 = *(v1 + 32);
  }

  v6 = OUTLINED_FUNCTION_118(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_25DC6B190()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v4 = *(v0 + 32);
    }

    v5 = OUTLINED_FUNCTION_187(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_25DC6B278()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v5 = *(v1 + 32);
  }

  v6 = OUTLINED_FUNCTION_118(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_25DC6B338()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v4 = *(v0 + 32);
    }

    v5 = OUTLINED_FUNCTION_187(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_25DC6B3F8()
{
  OUTLINED_FUNCTION_125();
  if (v1)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = OUTLINED_FUNCTION_118(*(v0 + 24));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_25DC6B46C()
{
  OUTLINED_FUNCTION_99();
  if (v1)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v3 = OUTLINED_FUNCTION_187(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_25DC6B778(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UTType();
    v9 = &a1[*(a3 + 24)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_25DC6B7F8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UTType();
    v8 = &v5[*(a4 + 24)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t one-time initialization function for typeDisplayRepresentation()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static MemoryCreationModelType.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static MemoryCreationModelType.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v4, static SearchResultType.typeDisplayRepresentation);
  __swift_project_value_buffer(v4, static SearchResultType.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t static MemoryCreationModelType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static MemoryCreationModelType.typeDisplayRepresentation);
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

uint64_t static MemoryCreationModelType.caseDisplayRepresentations.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15OmniSearchTypes23MemoryCreationModelTypeO_10AppIntents21DisplayRepresentationVtGMd, &_ss23_ContiguousArrayStorageCy15OmniSearchTypes23MemoryCreationModelTypeO_10AppIntents21DisplayRepresentationVtGMR);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeO_10AppIntents21DisplayRepresentationVtMd, &_s15OmniSearchTypes23MemoryCreationModelTypeO_10AppIntents21DisplayRepresentationVtMR) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25DCE1C90;
  v7 = v6 + v5;
  *(v6 + v5) = 0;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
  v11 = type metadata accessor for DisplayRepresentation.Image();
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v7 + v4) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v2);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v11);
  DisplayRepresentation.init(title:subtitle:image:)();
  type metadata accessor for DisplayRepresentation();
  lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType();
  return Dictionary.init(dictionaryLiteral:)();
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

unint64_t lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType()
{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

uint64_t static MemoryCreationModelType.modelTypeForBool(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = (result & 1) == 0;
  }

  *a2 = v2;
  return result;
}

OmniSearchTypes::MemoryCreationModelType_optional __swiftcall MemoryCreationModelType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MemoryCreationModelType.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t MemoryCreationModelType.rawValue.getter()
{
  if (*v0)
  {
    return 1769496941;
  }

  else
  {
    return 1768843629;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MemoryCreationModelType@<X0>(uint64_t *a1@<X8>)
{
  result = MemoryCreationModelType.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance MemoryCreationModelType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance MemoryCreationModelType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t default argument 1 of JSONEncoder.init(dateEncodingStrategy:outputFormatting:keyEncodingStrategy:)()
{
  type metadata accessor for JSONEncoder.OutputFormatting();
  lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
  lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A](&lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A], &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR, MEMORY[0x277D83970]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting()
{
  result = lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting)
  {
    type metadata accessor for JSONEncoder.OutputFormatting();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting);
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

uint64_t default argument 2 of JSONEncoder.init(dateEncodingStrategy:outputFormatting:keyEncodingStrategy:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CC8740];
  v3 = type metadata accessor for JSONEncoder.KeyEncodingStrategy();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for MemoryCreationModelType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MemoryCreationModelType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NSDecimal(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NSDecimal(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for _NSRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _NSRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for NSDecimal(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
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

Swift::Int MemoryCreationQUError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A2420](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MemoryCreationQUError(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A2420](0);
  return Hasher._finalize()();
}

uint64_t MemoryCreationQUParse.query.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MemoryCreationQUParse.__allocating_init(query:attributes:isTrip:isOpenEndedTimeRange:sortOrder:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char *a6)
{
  OUTLINED_FUNCTION_11();
  result = swift_allocObject();
  v13 = *a6;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 41) = a5;
  *(result + 42) = v13;
  return result;
}

uint64_t MemoryCreationQUParse.init(query:attributes:isTrip:isOpenEndedTimeRange:sortOrder:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char *a6)
{
  v7 = *a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 41) = a5;
  *(v6 + 42) = v7;
  return v6;
}

uint64_t MemoryCreationQUParse.encode()()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for MemoryCreationQUParse();
  OUTLINED_FUNCTION_3();
  lazy protocol witness table accessor for type MemoryCreationQUParse and conformance MemoryCreationQUParse(v0, v1, v2, &protocol conformance descriptor for MemoryCreationQUParse);
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v3;
}

uint64_t static MemoryCreationQUParse.makeFrom(data:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for MemoryCreationQUParse();
  OUTLINED_FUNCTION_3();
  lazy protocol witness table accessor for type MemoryCreationQUParse and conformance MemoryCreationQUParse(v3, v4, v5, &protocol conformance descriptor for MemoryCreationQUParse);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v2)
  {
    return v7;
  }

  return result;
}

uint64_t MemoryCreationQUParse.description.getter()
{
  MEMORY[0x25F8A1F10](*(v0 + 16), *(v0 + 24));
  MEMORY[0x25F8A1F10](10, 0xE100000000000000);
  if (*(v0 + 40))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x25F8A1F10](v1, v2);

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();

  _StringGuts.grow(_:)(25);

  if (*(v0 + 41))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 41))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x25F8A1F10](v3, v4);

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();

  v5 = 0xE500000000000000;
  v6 = 0x7473726966;
  if (*(v0 + 42) != 1)
  {
    v6 = 1953718636;
    v5 = 0xE400000000000000;
  }

  if (*(v0 + 42))
  {
    v7 = v6;
  }

  else
  {
    v7 = 1701736302;
  }

  if (*(v0 + 42))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x25F8A1F10](v7, v8);

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();

  MEMORY[0x25F8A1F10](0x7475626972747441, 0xEC0000000A3A7365);
  v9 = *(v0 + 32);
  result = specialized Array._getCount()(v9);
  if (!result)
  {
    return 0x203A7972657551;
  }

  v11 = result;
  if (result >= 1)
  {
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x25F8A2110](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      ++v12;
      v15 = (*(*v13 + 144))();
      v16 = v14;
      OUTLINED_FUNCTION_8();
      MEMORY[0x25F8A1F10](v15, v16);
    }

    while (v11 != v12);
    return 0x203A7972657551;
  }

  __break(1u);
  return result;
}

uint64_t MemoryCreationQUParseSortOrder.rawValue.getter()
{
  v1 = 0x7473726966;
  if (*v0 != 1)
  {
    v1 = 1953718636;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t MemoryCreationQUParse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7475626972747461 && a2 == 0xEA00000000007365;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x706972547369 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x800000025DCEA7D0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6564724F74726F73 && a2 == 0xE900000000000072)
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

unint64_t MemoryCreationQUParse.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x706972547369;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6564724F74726F73;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MemoryCreationQUParse.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x25F8A2420](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MemoryCreationQUParse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MemoryCreationQUParse.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MemoryCreationQUParse.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = MemoryCreationQUParse.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MemoryCreationQUParse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MemoryCreationQUParse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MemoryCreationQUParse.deinit()
{

  return v0;
}

uint64_t MemoryCreationQUParse.__deallocating_deinit()
{
  MemoryCreationQUParse.deinit();
  v0 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t MemoryCreationQUParse.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes21MemoryCreationQUParseC10CodingKeys33_39EBC670B26013877BC578C315098C50LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes21MemoryCreationQUParseC10CodingKeys33_39EBC670B26013877BC578C315098C50LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = lazy protocol witness table accessor for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys();
  OUTLINED_FUNCTION_18(&unk_286F8F2D0, v5, v4);
  OUTLINED_FUNCTION_5();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes31MemoryCreationQUParseAttributesCGMd, &_sSay15OmniSearchTypes31MemoryCreationQUParseAttributesCGMR);
    lazy protocol witness table accessor for type [MemoryCreationQUParseAttributes] and conformance <A> [A](&lazy protocol witness table cache variable for type [MemoryCreationQUParseAttributes] and conformance <A> [A], &lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes and conformance MemoryCreationQUParseAttributes, &protocol conformance descriptor for MemoryCreationQUParseAttributes, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_5();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_5();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_5();
    KeyedEncodingContainer.encode(_:forKey:)();
    lazy protocol witness table accessor for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder();
    OUTLINED_FUNCTION_5();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v6 = OUTLINED_FUNCTION_10();
  return v7(v6);
}

uint64_t MemoryCreationQUParse.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_11();
  v2 = swift_allocObject();
  MemoryCreationQUParse.init(from:)(a1);
  return v2;
}

uint64_t MemoryCreationQUParse.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes21MemoryCreationQUParseC10CodingKeys33_39EBC670B26013877BC578C315098C50LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes21MemoryCreationQUParseC10CodingKeys33_39EBC670B26013877BC578C315098C50LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for MemoryCreationQUParse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_15();
    *(v1 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + 24) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes31MemoryCreationQUParseAttributesCGMd, &_sSay15OmniSearchTypes31MemoryCreationQUParseAttributesCGMR);
    lazy protocol witness table accessor for type [MemoryCreationQUParseAttributes] and conformance <A> [A](&lazy protocol witness table cache variable for type [MemoryCreationQUParseAttributes] and conformance <A> [A], &lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes and conformance MemoryCreationQUParseAttributes, &protocol conformance descriptor for MemoryCreationQUParseAttributes, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_15();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 32) = v10;
    *(v1 + 40) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    OUTLINED_FUNCTION_15();
    *(v1 + 41) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    lazy protocol witness table accessor for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder();
    OUTLINED_FUNCTION_15();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = OUTLINED_FUNCTION_4();
    v9(v8, v4);
    *(v1 + 42) = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance MemoryCreationQUParse@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 152))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t MemoryCreationQUParseAttributes.substring.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *MemoryCreationQUParseAttributes.__allocating_init(attributeKey:range:substring:expansionStringValues:expansionDateValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_12();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  return result;
}

void *MemoryCreationQUParseAttributes.init(attributeKey:range:substring:expansionStringValues:expansionDateValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[8] = a7;
  v8[9] = a8;
  return v8;
}

uint64_t MemoryCreationQUParseAttributes.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_12();
  v2 = swift_allocObject();
  MemoryCreationQUParseAttributes.init(from:)(a1);
  return v2;
}

uint64_t MemoryCreationQUParseAttributes.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes31MemoryCreationQUParseAttributesC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes31MemoryCreationQUParseAttributesC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v16) = 0;
    *(v1 + 16) = OUTLINED_FUNCTION_17();
    *(v1 + 24) = v6;
    type metadata accessor for _NSRange(0);
    OUTLINED_FUNCTION_2();
    lazy protocol witness table accessor for type MemoryCreationQUParse and conformance MemoryCreationQUParse(v7, 255, v8, MEMORY[0x277CC9E38]);
    OUTLINED_FUNCTION_7();
    *(v1 + 32) = v16;
    LOBYTE(v16) = 2;
    *(v1 + 48) = OUTLINED_FUNCTION_17();
    *(v1 + 56) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_7();
    *(v1 + 64) = v16;
    LOBYTE(v18) = 4;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v16;
    type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25DCE1C90;
    *(v12 + 32) = type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
    *(v12 + 40) = type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSDate, 0x277CBEAA8);
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6NSDateCGMd, &_sSaySo6NSDateCGMR);
      if (swift_dynamicCast())
      {
        v13 = v18;
        outlined consume of Data._Representation(v11, *(&v11 + 1));
LABEL_10:
        v14 = OUTLINED_FUNCTION_0_0();
        v15(v14);
        *(v3 + 72) = v13;
        goto LABEL_4;
      }
    }

    else
    {
      outlined destroy of Any?(&v16);
    }

    outlined consume of Data._Representation(v11, *(&v11 + 1));
    v13 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  type metadata accessor for MemoryCreationQUParseAttributes();
  swift_deallocPartialClassInstance();
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t MemoryCreationQUParseAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v24 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes31MemoryCreationQUParseAttributesC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes31MemoryCreationQUParseAttributesC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = lazy protocol witness table accessor for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys();
  OUTLINED_FUNCTION_18(&type metadata for MemoryCreationQUParseAttributes.CodingKeys, v7, v6);
  LOBYTE(v23) = 0;
  OUTLINED_FUNCTION_5();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    goto LABEL_3;
  }

  v23 = *(v3 + 32);
  type metadata accessor for _NSRange(0);
  OUTLINED_FUNCTION_2();
  lazy protocol witness table accessor for type MemoryCreationQUParse and conformance MemoryCreationQUParse(v8, 255, v9, MEMORY[0x277CC9E28]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v23) = 2;
  OUTLINED_FUNCTION_5();
  KeyedEncodingContainer.encode(_:forKey:)();
  *&v23 = *(v3 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v13 = objc_opt_self();
  type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSDate, 0x277CBEAA8);
  isa = Array._bridgeToObjectiveC()().super.isa;
  *&v23 = 0;
  v15 = [v13 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v23];

  v16 = v23;
  if (!v15)
  {
    v22 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_3:
    v10 = OUTLINED_FUNCTION_10();
    return v11(v10);
  }

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *&v23 = v17;
  *(&v23 + 1) = v19;
  lazy protocol witness table accessor for type Data and conformance Data();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v20 = OUTLINED_FUNCTION_10();
  v21(v20);
  return outlined consume of Data._Representation(v17, v19);
}

OmniSearchTypes::MemoryCreationQUParseAttributes::CodingKeys_optional __swiftcall MemoryCreationQUParseAttributes.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v3 = OUTLINED_FUNCTION_14();
  v5 = countAndFlagsBits == v3 && object == v4;
  if (v5 || (OUTLINED_FUNCTION_6(v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = countAndFlagsBits == 0x65676E6172 && object == 0xE500000000000000;
    if (v7 || (OUTLINED_FUNCTION_6(0x65676E6172) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = countAndFlagsBits == 0x6E69727473627573 && object == 0xE900000000000067;
      if (v8 || (OUTLINED_FUNCTION_6(0x6E69727473627573) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = countAndFlagsBits == 0xD000000000000015 && 0x800000025DCEA700 == object;
        if (v9 || (OUTLINED_FUNCTION_6(0xD000000000000015) & 1) != 0)
        {

          return 3;
        }

        else if (countAndFlagsBits == 0xD000000000000013 && 0x800000025DCEA720 == object)
        {

          return 4;
        }

        else
        {
          v11 = OUTLINED_FUNCTION_6(0xD000000000000013);

          if (v11)
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

Swift::Int MemoryCreationQUParse.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A2420](a1);
  return Hasher._finalize()();
}

uint64_t MemoryCreationQUParseAttributes.CodingKeys.stringValue.getter(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14();
  switch(v3)
  {
    case 1:
      result = 0x65676E6172;
      break;
    case 2:
      result = 0x6E69727473627573;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MemoryCreationQUParseAttributes.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MemoryCreationQUParseAttributes.CodingKeys.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

OmniSearchTypes::MemoryCreationQUParseAttributes::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance MemoryCreationQUParseAttributes.CodingKeys@<W0>(uint64_t a1@<X0>, OmniSearchTypes::MemoryCreationQUParseAttributes::CodingKeys_optional *a2@<X8>)
{
  result.value = MemoryCreationQUParseAttributes.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MemoryCreationQUParseAttributes.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MemoryCreationQUParseAttributes.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MemoryCreationQUParseAttributes.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(67);
  MEMORY[0x25F8A1F10](v1[6], v1[7]);
  MEMORY[0x25F8A1F10](0x6E6172203E2D2D20, 0xEC000000203A6567);
  v2 = _NSRange.description.getter();
  MEMORY[0x25F8A1F10](v2);

  MEMORY[0x25F8A1F10](0x203A79656B202CLL, 0xE700000000000000);
  MEMORY[0x25F8A1F10](v1[2], v1[3]);
  MEMORY[0x25F8A1F10](0xD000000000000014, 0x800000025DCEA740);
  v3 = MEMORY[0x25F8A1FC0](v0[8], MEMORY[0x277D837D0]);
  MEMORY[0x25F8A1F10](v3);

  MEMORY[0x25F8A1F10](0xD000000000000012, 0x800000025DCEA760);
  v4 = v0[9];
  v5 = type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSDate, 0x277CBEAA8);
  v6 = MEMORY[0x25F8A1FC0](v4, v5);
  MEMORY[0x25F8A1F10](v6);

  return 0;
}

void *MemoryCreationQUParseAttributes.deinit()
{

  return v0;
}

uint64_t MemoryCreationQUParseAttributes.__deallocating_deinit()
{
  MemoryCreationQUParseAttributes.deinit();
  v0 = OUTLINED_FUNCTION_12();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t protocol witness for Decodable.init(from:) in conformance MemoryCreationQUParseAttributes@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

OmniSearchTypes::MemoryCreationQUParseSortOrder_optional __swiftcall MemoryCreationQUParseSortOrder.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MemoryCreationQUParseSortOrder.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MemoryCreationQUParseSortOrder@<X0>(uint64_t *a1@<X8>)
{
  result = MemoryCreationQUParseSortOrder.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x25F8A21B0);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder);
  }

  return result;
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

uint64_t lazy protocol witness table accessor for type [MemoryCreationQUParseAttributes] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15OmniSearchTypes31MemoryCreationQUParseAttributesCGMd, &_sSay15OmniSearchTypes31MemoryCreationQUParseAttributesCGMR);
    lazy protocol witness table accessor for type MemoryCreationQUParse and conformance MemoryCreationQUParse(a2, v8, type metadata accessor for MemoryCreationQUParseAttributes, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys);
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

uint64_t type metadata accessor for NSKeyedUnarchiver(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type MemoryCreationQUParse and conformance MemoryCreationQUParse(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUError and conformance MemoryCreationQUError()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUError and conformance MemoryCreationQUError;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUError and conformance MemoryCreationQUError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUError and conformance MemoryCreationQUError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MemoryCreationQUError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for MemoryCreationQUError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MemoryCreationQUParseSortOrder(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MemoryCreationQUParseSortOrder(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MemoryCreationQUParseAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MemoryCreationQUParseAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_7()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_8()
{

  JUMPOUT(0x25F8A1F10);
}

void OUTLINED_FUNCTION_13()
{

  JUMPOUT(0x25F8A1F10);
}

uint64_t OUTLINED_FUNCTION_17()
{

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t MemoryCreationQUPerformanceMetrics.llmQUModelLatency.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t MemoryCreationQUPerformanceMetrics.encode()()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for MemoryCreationQUPerformanceMetrics();
  lazy protocol witness table accessor for type MemoryCreationQUPerformanceMetrics and conformance MemoryCreationQUPerformanceMetrics(&lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics and conformance MemoryCreationQUPerformanceMetrics, &protocol conformance descriptor for MemoryCreationQUPerformanceMetrics);
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v0;
}

uint64_t MemoryCreationQUPerformanceMetrics.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  return result;
}

uint64_t MemoryCreationQUPerformanceMetrics.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  return result;
}

uint64_t static MemoryCreationQUPerformanceMetrics.makeFrom(data:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for MemoryCreationQUPerformanceMetrics();
  lazy protocol witness table accessor for type MemoryCreationQUPerformanceMetrics and conformance MemoryCreationQUPerformanceMetrics(&lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics and conformance MemoryCreationQUPerformanceMetrics, &protocol conformance descriptor for MemoryCreationQUPerformanceMetrics);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MemoryCreationQUPerformanceMetrics and conformance MemoryCreationQUPerformanceMetrics(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MemoryCreationQUPerformanceMetrics();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MemoryCreationQUPerformanceMetrics.description.getter()
{
  _StringGuts.grow(_:)(21);
  v1 = MEMORY[0x25F8A1F10](0xD000000000000013, 0x800000025DCEA850);
  (*(*v0 + 88))(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t MemoryCreationQUPerformanceMetrics.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000025DCEA8B0 == a2)
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

Swift::Int MemoryCreationQUPerformanceMetrics.CodingKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A2420](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MemoryCreationQUPerformanceMetrics.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MemoryCreationQUPerformanceMetrics.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MemoryCreationQUPerformanceMetrics.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static Equatable.== infix(_:_:) in conformance MemoryCreationQUError();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MemoryCreationQUPerformanceMetrics.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MemoryCreationQUPerformanceMetrics.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MemoryCreationQUPerformanceMetrics.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes34MemoryCreationQUPerformanceMetricsC10CodingKeys33_6DF99F28387DAF0533857C71AB06954DLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes34MemoryCreationQUPerformanceMetricsC10CodingKeys33_6DF99F28387DAF0533857C71AB06954DLLOGMR);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys();
  v10 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v2 + 88))(v10);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v4);
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys);
  }

  return result;
}

uint64_t MemoryCreationQUPerformanceMetrics.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  MemoryCreationQUPerformanceMetrics.init(from:)(a1);
  return v2;
}

uint64_t MemoryCreationQUPerformanceMetrics.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes34MemoryCreationQUPerformanceMetricsC10CodingKeys33_6DF99F28387DAF0533857C71AB06954DLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes34MemoryCreationQUPerformanceMetricsC10CodingKeys33_6DF99F28387DAF0533857C71AB06954DLLOGMR);
  OUTLINED_FUNCTION_1();
  v16 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
  }

  else
  {
    v10 = v16;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v10 + 8))(v9, v5);
    swift_beginAccess();
    *(v3 + 16) = v11;
    *(v3 + 24) = v13 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t protocol witness for Decodable.init(from:) in conformance MemoryCreationQUPerformanceMetrics@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MemoryCreationQUPerformanceMetrics.CodingKeys(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t type metadata completion function for ProtoGenerationIgnored(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProtoGenerationIgnored(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void storeEnumTagSinglePayload for ProtoGenerationIgnored(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t ProtoSchemaGenerator.__allocating_init()()
{
  v0 = swift_allocObject();
  ProtoSchemaGenerator.init()();
  return v0;
}

void *ProtoSchemaGenerator.init()()
{
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000025DCEA8D0;
  v1 = MEMORY[0x277D84FA0];
  v0[4] = MEMORY[0x277D84FA0];
  v0[5] = Dictionary.init(dictionaryLiteral:)();
  v0[6] = v1;
  v0[7] = v1;
  return v0;
}

Swift::String __swiftcall ProtoSchemaGenerator.generate(messageTypes:enums:externalMessagesContext:)(Swift::OpaquePointer messageTypes, Swift::OpaquePointer enums, Swift::OpaquePointer externalMessagesContext)
{
  v4 = *(messageTypes._rawValue + 2);
  v5 = MEMORY[0x277D84F90];
  rawValue = enums._rawValue;
  if (v4)
  {
    v109 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_21();
    v5 = v109;
    v7 = (messageTypes._rawValue + 32);
    do
    {
      v115 = *v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16ProtoConvertible_pXpMd, &_s15OmniSearchTypes16ProtoConvertible_pXpMR);
      v8 = String.init<A>(describing:)();
      v10 = v9;
      v12 = *(v109 + 16);
      v11 = *(v109 + 24);
      if (v12 >= v11 >> 1)
      {
        v14 = OUTLINED_FUNCTION_17_0(v11);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14, v12 + 1, 1);
      }

      *(v109 + 16) = v12 + 1;
      v13 = v109 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      ++v7;
      --v4;
    }

    while (v4);
    v15 = v106;
    enums._rawValue = rawValue;
  }

  else
  {
    v15 = v3;
  }

  v16 = *(enums._rawValue + 2);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v18 = enums._rawValue;
    v110 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_21();
    v17 = v110;
    v19 = (v18 + 32);
    do
    {
      v115 = *v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20ProtoEnumConvertible_pXpMd, &_s15OmniSearchTypes20ProtoEnumConvertible_pXpMR);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      v24 = *(v110 + 16);
      v23 = *(v110 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_17_0(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v24 + 1, 1);
      }

      *(v110 + 16) = v24 + 1;
      v25 = v110 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      ++v19;
      --v16;
    }

    while (v16);
    v15 = v106;
  }

  v27 = externalMessagesContext._rawValue;
  v28 = *(externalMessagesContext._rawValue + 2);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    *&v115 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v29 = v115;
    v30 = externalMessagesContext._rawValue + 32;
    v107 = v28;
    v31 = v28;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
      v32 = String.init<A>(describing:)();
      v34 = v33;
      *&v115 = v29;
      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      if (v36 >= v35 >> 1)
      {
        v38 = OUTLINED_FUNCTION_17_0(v35);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38, v36 + 1, 1);
        v29 = v115;
      }

      *(v29 + 16) = v36 + 1;
      v37 = v29 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v30 += 24;
      --v31;
    }

    while (v31);
    v27 = externalMessagesContext._rawValue;
    v15 = v106;
    v28 = v107;
  }

  *&v115 = v5;
  specialized Array.append<A>(contentsOf:)(v17);

  specialized Array.append<A>(contentsOf:)(v39);
  v15[4] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v5);

  v15[6] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v29);

  v40 = Dictionary.init(dictionaryLiteral:)();
  v41 = (v27 + 48);
  if (v28)
  {
    while (1)
    {
      v108 = v28;
      v42 = *(v41 - 1);
      v43 = *v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
      v44 = String.init<A>(describing:)();
      v46 = v45;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v115 = v40;
      v48 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v46);
      v50 = v40[2];
      v51 = (v49 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        break;
      }

      v53 = v48;
      v54 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, _ss17_NativeDictionaryVyS2SGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v52))
      {
        v55 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v46);
        if ((v54 & 1) != (v56 & 1))
        {
          goto LABEL_61;
        }

        v53 = v55;
      }

      if (v54)
      {

        v40 = v115;
        v57 = (*(v115 + 56) + 16 * v53);
        *v57 = v42;
        v57[1] = v43;
      }

      else
      {
        v40 = v115;
        *(v115 + 8 * (v53 >> 6) + 64) |= 1 << v53;
        v58 = (v40[6] + 16 * v53);
        *v58 = v44;
        v58[1] = v46;
        v59 = (v40[7] + 16 * v53);
        *v59 = v42;
        v59[1] = v43;

        v60 = v40[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v61)
        {
          goto LABEL_60;
        }

        v40[2] = v62;
      }

      v41 += 3;
      v15 = v106;
      v28 = v108 - 1;
      if (v108 == 1)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
LABEL_30:
    v15[5] = v40;

    swift_beginAccess();
    v15[7] = MEMORY[0x277D84FA0];

    v63 = v15[3];
    v113 = v15[2];
    v114 = v63;

    v64 = ProtoSchemaGenerator.generateEnums(for:)(rawValue);
    v66 = v65;
    v67 = HIBYTE(v65) & 0xF;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v67 = v64 & 0xFFFFFFFFFFFFLL;
    }

    if (v67)
    {
      v68 = v64;
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x25F8A1F10](v68, v66);
    }

    v69 = messageTypes._rawValue;

    while (1)
    {
      v70 = *(v69 + 2);
      if (!v70)
      {
        break;
      }

      v71 = *(v69 + 4);
      v72 = *(v69 + 5);
      v73 = swift_isUniquelyReferenced_nonNull_native();
      if (!v73 || (v70 - 1) > *(v69 + 3) >> 1)
      {
        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v73, v70, 1, v69);
      }

      v74 = *(v69 + 2);
      memmove(v69 + 32, v69 + 48, 16 * v74 - 16);
      *(v69 + 2) = v74 - 1;
      v112 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16ProtoConvertible_pXpMd, &_s15OmniSearchTypes16ProtoConvertible_pXpMR);
      v75 = String.init<A>(describing:)();
      v77 = v76;
      v78 = v15[7];

      v79 = specialized Set.contains(_:)(v75, v77, v78);

      if (v79 || (v80 = ProtoSchemaGenerator.generateMessage(for:)(v71, v72), !v81))
      {
      }

      else
      {
        v83 = v80;
        v84 = v81;
        v85 = v82;
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x25F8A1F10](v83, v84);

        swift_beginAccess();
        specialized Set._Variant.insert(_:)(v111, v75, v77);
        swift_endAccess();

        specialized Array.append<A>(contentsOf:)(v85);
      }

      v69 = v112;
    }

    v87 = specialized _NativeSet.filter(_:)(v86, v15);
    v88 = 0;
    v89 = v87 + 56;
    v90 = 1 << *(v87 + 32);
    v91 = -1;
    if (v90 < 64)
    {
      v91 = ~(-1 << v90);
    }

    v92 = v91 & *(v87 + 56);
    v93 = (v90 + 63) >> 6;
    if (v92)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v94 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      if (v94 >= v93)
      {

        v100 = v113;
        v101 = v114;
        goto LABEL_62;
      }

      v92 = *(v89 + 8 * v94);
      ++v88;
      if (v92)
      {
        v88 = v94;
        do
        {
LABEL_51:

          OUTLINED_FUNCTION_15_0();
          if (*(v106[5] + 16) && (, v95 = OUTLINED_FUNCTION_8_0(), specialized __RawDictionaryStorage.find<A>(_:)(v95, v96), v98 = v97, , (v98 & 1) != 0))
          {
          }

          else
          {
          }

          v92 &= v92 - 1;
          v99 = OUTLINED_FUNCTION_8_0();
          MEMORY[0x25F8A1F10](v99);
        }

        while (v92);
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  v100 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_62:
  result._object = v101;
  result._countAndFlagsBits = v100;
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = MEMORY[0x25F8A1FD0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    specialized Set._Variant.insert(_:)(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.first.getter@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(v6) = MEMORY[0x25F8A2500](v3, v4, v5, v6);
  swift_unknownObjectRelease();
  if (v6)
  {
    result = swift_unknownObjectRelease();
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  else
  {
    dispatch thunk of _AnyCollectionBox.subscript.getter();

    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 16 * v7 + 32), (a1 + 32), 16 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t ProtoSchemaGenerator.generateMessage(for:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Mirror();
  OUTLINED_FUNCTION_5_0();
  v77 = v5;
  v78 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 8);
  v94 = a1;
  v95 = a2;
  __swift_allocate_boxed_opaque_existential_1Tm(v93);
  v9 = OUTLINED_FUNCTION_13_0();
  v8(v9);
  v10 = v94;
  __swift_project_boxed_opaque_existential_1(v93, v94);
  *(&v90 + 1) = v10;
  __swift_allocate_boxed_opaque_existential_1Tm(&v89);
  OUTLINED_FUNCTION_16_0();
  (*(v11 + 16))();
  Mirror.init(reflecting:)();
  *&v89 = a1;
  *(&v89 + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16ProtoConvertible_pXpMd, &_s15OmniSearchTypes16ProtoConvertible_pXpMR);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  *&v89 = 0x206567617373656DLL;
  *(&v89 + 1) = 0xE800000000000000;
  v81 = v12;
  MEMORY[0x25F8A1F10]();
  MEMORY[0x25F8A1F10](686880, 0xE300000000000000);
  v92 = v89;
  v76 = v7;
  Mirror.children.getter();
  v15 = dispatch thunk of _AnySequenceBox._makeIterator()();

  v79 = MEMORY[0x277D84F90];
  v75 = 1;
  *&v16 = 136315394;
  v80 = v16;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          dispatch thunk of _AnyIteratorBoxBase.next()();
          if (!v91)
          {

            MEMORY[0x25F8A1F10](125, 0xE100000000000000);
            (*(v77 + 8))(v76, v78);
            __swift_destroy_boxed_opaque_existential_1(v93);
            return OUTLINED_FUNCTION_13_0();
          }

          v87 = v89;
          outlined init with take of Any(&v90, &v88);
          v17 = OUTLINED_FUNCTION_9_0();
          outlined init with copy of Mirror.DisplayStyle?(v17, v18, v19, &_sSSSg5label_yp5valuetMR);
          v20 = v85;
          if (v85)
          {
            break;
          }

          v31 = OUTLINED_FUNCTION_12_0();
          outlined destroy of ProtoGenerationIgnored<Any>?(v31, v32, &_sSSSg5label_yp5valuetMR);
          __swift_destroy_boxed_opaque_existential_1(v86);
        }

        v21 = v84;
        __swift_destroy_boxed_opaque_existential_1(v86);
        v22 = OUTLINED_FUNCTION_9_0();
        outlined init with copy of Mirror.DisplayStyle?(v22, v23, v24, &_sSSSg5label_yp5valuetMR);

        outlined init with take of Any(v86, v83);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMd, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMR);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_25(&v82);
        if (one-time initialization token for proto != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static Logging.proto);
        OUTLINED_FUNCTION_19();

        v26 = Logger.logObject.getter();
        v27 = v14;
        v28 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v26, v28))
        {
          v29 = OUTLINED_FUNCTION_24();
          v84 = OUTLINED_FUNCTION_23();
          *v29 = v80;
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v84);

          *(v29 + 4) = v30;
          *(v29 + 12) = 2080;
          *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v27, &v84);
          _os_log_impl(&dword_25DC66000, v26, v28, "Ignoring property '%s' in '%s'.", v29, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_10_0();
        }

        else
        {
        }

        outlined destroy of ProtoGenerationIgnored<Any>?(&v87, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        v14 = v27;
      }

      v73 = v14;
      v33 = OUTLINED_FUNCTION_9_0();
      outlined init with copy of Mirror.DisplayStyle?(v33, v34, v35, &_sSSSg5label_yp5valuetMR);
      v36 = v75;
      ProtoSchemaGenerator.protoField(for:fieldNumber:)(v84, v85, v86, &v96);

      __swift_destroy_boxed_opaque_existential_1(v86);
      v37 = v97;
      if (v97)
      {
        break;
      }

      if (one-time initialization token for proto != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      __swift_project_value_buffer(v54, static Logging.proto);
      OUTLINED_FUNCTION_19();

      v14 = v73;

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_24();
        v72[0] = v55;
        v58 = v57;
        v84 = OUTLINED_FUNCTION_23();
        *v58 = v80;
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v84);
        v60 = v56;
        v61 = v59;

        *(v58 + 4) = v61;
        *(v58 + 12) = 2080;
        *(v58 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v73, &v84);
        v62 = v60;
        v63 = v72[0];
        _os_log_impl(&dword_25DC66000, v72[0], v62, "Cannot determine protobuf type for property '%s' in '%s'. Skipping.", v58, 0x16u);
        swift_arrayDestroy();
        v14 = v73;
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_10_0();
      }

      else
      {
      }

      v66 = OUTLINED_FUNCTION_12_0();
      outlined destroy of ProtoGenerationIgnored<Any>?(v66, v67, &_sSSSg5label_yp5valuetMR);
    }

    v71 = v15;
    *v72 = v98;
    v38 = v99;
    v39 = v96;

    v84 = 8224;
    v85 = 0xE200000000000000;
    MEMORY[0x25F8A1F10](v39, v37);
    outlined destroy of ProtoGenerationIgnored<Any>?(&v96, &_sSS5field_15OmniSearchTypes16ProtoConvertible_pXmTSg10nestedTypeypXmTSg013innerConcreteH0tSgMd, &_sSS5field_15OmniSearchTypes16ProtoConvertible_pXmTSg10nestedTypeypXmTSg013innerConcreteH0tSgMR);
    MEMORY[0x25F8A1F10](10, 0xE100000000000000);
    MEMORY[0x25F8A1F10](v84, v85);

    v41 = __OFADD__(v36, 1);
    v42 = v36 + 1;
    if (v41)
    {
      break;
    }

    v75 = v42;
    if (v72[0])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v79 + 2) + 1, 1, v79);
      }

      v44 = *(v79 + 2);
      v43 = *(v79 + 3);
      v45 = *v72;
      if (v44 >= v43 >> 1)
      {
        v68 = OUTLINED_FUNCTION_17_0(v43);
        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v68, v44 + 1, 1, v79);
        v45 = *v72;
        v79 = v69;
      }

      v46 = v79;
      *(v79 + 2) = v44 + 1;
      *&v46[16 * v44 + 32] = v45;
      if (!v38)
      {
LABEL_27:
        v52 = OUTLINED_FUNCTION_12_0();
        goto LABEL_28;
      }
    }

    else if (!v38)
    {
      goto LABEL_27;
    }

    v84 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
    v47 = String.init<A>(describing:)();
    v49 = v48;
    v50 = *(v74 + 48);

    v51 = specialized Set.contains(_:)(v47, v49, v50);

    if (v51)
    {
      swift_beginAccess();
      specialized Set._Variant.insert(_:)(v83, v47, v49);
      swift_endAccess();

      v52 = OUTLINED_FUNCTION_12_0();
LABEL_28:
      outlined destroy of ProtoGenerationIgnored<Any>?(v52, v53, &_sSSSg5label_yp5valuetMR);
      goto LABEL_30;
    }

    v64 = OUTLINED_FUNCTION_12_0();
    outlined destroy of ProtoGenerationIgnored<Any>?(v64, v65, &_sSSSg5label_yp5valuetMR);

LABEL_30:
    v15 = v71;
    v14 = v73;
  }

  __break(1u);
  return result;
}

NSObject *ProtoSchemaGenerator.protoField(for:fieldNumber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject **a5@<X8>)
{
  v6 = a2;
  v75[0] = a1;
  v75[1] = a2;
  v8 = v75;
  outlined init with copy of Any(a3, v76);
  outlined init with copy of Mirror.DisplayStyle?(v75, &v71, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
  v9 = v72;
  if (v72)
  {
    v10 = v71;

    __swift_destroy_boxed_opaque_existential_1(v73);
    v11._countAndFlagsBits = 95;
    v11._object = 0xE100000000000000;
    v68 = a5;
    if (String.hasPrefix(_:)(v11))
    {
      v12 = specialized Collection.dropFirst(_:)(1uLL, v10, v9);
      MEMORY[0x25F8A1E90](v12);
    }

    v13 = OUTLINED_FUNCTION_8_0();
    ProtoSchemaGenerator.toSnakeCase(_:)(v13, v14);
    ProtoSchemaGenerator.getTypeInfo(for:)(v76, &v71);
    v15 = LOBYTE(v73[0]);
    v16 = *(v73 + 1) | ((*(v73 + 5) | (HIBYTE(v73[0]) << 16)) << 32);
    v17 = v73[1];
    v6 = v73[2];
    v8 = v74;
    switch(v74 >> 6)
    {
      case 1:

        v53 = OUTLINED_FUNCTION_7_0();
        ProtoSchemaGenerator.mapSwiftTypeToProto(_:)(v53, v54);
        if (!v55)
        {
          goto LABEL_44;
        }

        v6 = v15 | (v16 << 8);
        _StringGuts.grow(_:)(20);

        v69 = 0x6465746165706572;
        v70 = 0xE900000000000020;
        v56 = OUTLINED_FUNCTION_8_0();
        MEMORY[0x25F8A1F10](v56);

        v42 = 32;
        v43 = 0xE100000000000000;
        goto LABEL_34;
      case 2:
        v27 = OUTLINED_FUNCTION_7_0();
        v29 = ProtoSchemaGenerator.mapSwiftTypeToProto(_:)(v27, v28);
        if (!v30)
        {
          goto LABEL_43;
        }

        v31 = v29;
        v32 = v30;
        v33 = ProtoSchemaGenerator.mapSwiftTypeToProto(_:)(v15 | (v16 << 8), v17);
        if (!v34)
        {

LABEL_43:

LABEL_44:

          outlined destroy of ProtoSchemaGenerator.ReflectedTypeInfo(&v71);
          outlined destroy of ProtoGenerationIgnored<Any>?(v75, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
          result = OUTLINED_FUNCTION_11_0();
          goto LABEL_45;
        }

        v35 = v33;
        v36 = v34;
        v69 = v31;
        v70 = v32;
        lazy protocol witness table accessor for type String and conformance String();
        lazy protocol witness table accessor for type String and conformance String();
        if (BidirectionalCollection<>.starts<A>(with:)() & 1) != 0 || (v31 == 0x676E69727473 ? (v37 = v32 == 0xE600000000000000) : (v37 = 0), v37 || (OUTLINED_FUNCTION_7_0(), (_stringCompareWithSmolCheck(_:_:expecting:)())))
        {

          v38 = (v8 & 1) == 0;
          if (v8)
          {
            v39 = 0x6C616E6F6974706FLL;
          }

          else
          {
            v39 = 0;
          }

          if (v38)
          {
            v40 = 0xE000000000000000;
          }

          else
          {
            v40 = 0xE900000000000020;
          }

          _StringGuts.grow(_:)(22);

          v69 = v39;
          v70 = v40;
          MEMORY[0x25F8A1F10](1013997933, 0xE400000000000000);
          v41 = OUTLINED_FUNCTION_7_0();
          MEMORY[0x25F8A1F10](v41);

          MEMORY[0x25F8A1F10](8236, 0xE200000000000000);
          MEMORY[0x25F8A1F10](v35, v36);

          v42 = 8254;
          v43 = 0xE200000000000000;
LABEL_34:
          MEMORY[0x25F8A1F10](v42, v43);
          OUTLINED_FUNCTION_20();

          OUTLINED_FUNCTION_14_0();
          v57 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x25F8A1F10](v57);

          MEMORY[0x25F8A1F10](59, 0xE100000000000000);
          outlined destroy of ProtoSchemaGenerator.ReflectedTypeInfo(&v71);
          v5 = v69;
          v8 = v70;
          outlined destroy of ProtoGenerationIgnored<Any>?(v75, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
          result = dynamic_cast_existential_1_conditional(v6, v6, &protocol descriptor for ProtoConvertible);
          if (result)
          {
            v26 = v58;
          }

          else
          {
            v26 = 0;
          }

LABEL_45:
          a5 = v68;
          goto LABEL_46;
        }

        a5 = v68;
        if (one-time initialization token for proto != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        __swift_project_value_buffer(v59, static Logging.proto);

        v5 = Logger.logObject.getter();
        v8 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v5, v8))
        {
          v6 = OUTLINED_FUNCTION_24();
          v69 = OUTLINED_FUNCTION_23();
          *v6 = 136315394;
          v60 = OUTLINED_FUNCTION_7_0();
          v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v62);

          *(v6 + 4) = v63;
          *(v6 + 12) = 2080;
          v64 = OUTLINED_FUNCTION_8_0();
          v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v66);

          *(v6 + 14) = v67;
          v52 = "Invalid map key type '%s' for property '%s'. Skipping.";
LABEL_31:
          _os_log_impl(&dword_25DC66000, v5, v8, v52, v6, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_10_0();
        }

        else
        {

LABEL_39:
        }

        outlined destroy of ProtoSchemaGenerator.ReflectedTypeInfo(&v71);
        outlined destroy of ProtoGenerationIgnored<Any>?(v75, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        break;
      case 3:

        if (one-time initialization token for proto != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, static Logging.proto);
        OUTLINED_FUNCTION_19();

        outlined init with copy of ProtoSchemaGenerator.ReflectedTypeInfo(&v71, &v69);
        v5 = Logger.logObject.getter();
        v8 = static os_log_type_t.error.getter();

        outlined destroy of ProtoSchemaGenerator.ReflectedTypeInfo(&v71);
        a5 = v68;
        if (os_log_type_enabled(v5, v8))
        {
          v6 = OUTLINED_FUNCTION_24();
          v69 = OUTLINED_FUNCTION_23();
          *v6 = 136315394;
          v45 = OUTLINED_FUNCTION_8_0();
          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v47);

          *(v6 + 4) = v48;
          *(v6 + 12) = 2080;
          v49 = OUTLINED_FUNCTION_7_0();
          *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v51);
          v52 = "Property '%s' is unsupported: %s. Skipping.";
          goto LABEL_31;
        }

        goto LABEL_39;
      default:

        v18 = OUTLINED_FUNCTION_7_0();
        v20 = ProtoSchemaGenerator.mapSwiftTypeToProto(_:)(v18, v19);
        if (!v21)
        {
          goto LABEL_44;
        }

        v22 = 0x6C616E6F6974706FLL;
        if ((v15 & 1) == 0)
        {
          v22 = 0;
        }

        v23 = 0xE000000000000000;
        if (v15)
        {
          v23 = 0xE900000000000020;
        }

        v69 = v22;
        v70 = v23;
        MEMORY[0x25F8A1F10](v20);

        MEMORY[0x25F8A1F10](32, 0xE100000000000000);
        OUTLINED_FUNCTION_20();

        OUTLINED_FUNCTION_14_0();
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x25F8A1F10](v24);

        MEMORY[0x25F8A1F10](59, 0xE100000000000000);
        outlined destroy of ProtoSchemaGenerator.ReflectedTypeInfo(&v71);
        v5 = v69;
        v8 = v70;
        outlined destroy of ProtoGenerationIgnored<Any>?(v75, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        result = 0;
        v26 = 0;
        v6 = v17;
        goto LABEL_45;
    }
  }

  else
  {

    outlined destroy of ProtoGenerationIgnored<Any>?(v75, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
    __swift_destroy_boxed_opaque_existential_1(v73);
  }

  result = OUTLINED_FUNCTION_11_0();
LABEL_46:
  *a5 = v5;
  a5[1] = v8;
  a5[2] = result;
  a5[3] = v26;
  a5[4] = v6;
  return result;
}

void ProtoSchemaGenerator.getTypeInfo(for:)(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v66 - v8;
  v10 = type metadata accessor for Mirror();
  OUTLINED_FUNCTION_5_0();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v68 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v69 = &v66 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v66 - v21;
  outlined init with copy of Any(a1, &v82);
  Mirror.init(reflecting:)();
  outlined init with copy of Any(a1, &v82);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMd, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMR);
  if (swift_dynamicCast())
  {
    v67 = a2;
    v79 = v76;
    v80 = v77;
    *(&v83 + 1) = v23;
    *&v82 = swift_allocObject();
    outlined init with copy of Mirror.DisplayStyle?(&v79, v82 + 16, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMd, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMR);
    Mirror.init(reflecting:)();
    v24 = Mirror.children.getter();
    specialized Collection.first.getter(v24, &v82);

    if (*(&v84 + 1))
    {

      outlined init with take of Any(&v83, &v76);
      outlined destroy of ProtoGenerationIgnored<Any>?(&v76, &_sypSgMd, &_sypSgMR);
      *&v82 = 0;
      *(&v82 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      *&v76 = 0xD000000000000023;
      *(&v76 + 1) = 0x800000025DCEAB40;
      outlined init with copy of Any(a1, &v82);
      v25 = String.init<A>(describing:)();
      MEMORY[0x25F8A1F10](v25);

      v26 = *(&v76 + 1);
      v27 = v76;
      v28 = *(v12 + 8);
      (v28)(v20, v10);
      outlined destroy of ProtoGenerationIgnored<Any>?(&v79, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMd, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMR);
      v29 = v10;
      v10 = v26;
      (v28)(v22, v29);
      OUTLINED_FUNCTION_2_0();
      v30 = -64;
      a2 = v67;
      goto LABEL_34;
    }

    a1 = v10;
    (*(v12 + 8))(v20, v10);
    outlined destroy of ProtoGenerationIgnored<Any>?(&v79, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMd, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMR);
    outlined destroy of ProtoGenerationIgnored<Any>?(&v82, &_sSSSg5label_yp5valuetSgMd, &_sSSSg5label_yp5valuetSgMR);
    v76 = 0u;
    v77 = 0u;
    outlined destroy of ProtoGenerationIgnored<Any>?(&v76, &_sypSgMd, &_sypSgMR);
    a2 = v67;
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
    outlined destroy of ProtoGenerationIgnored<Any>?(&v76, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGSgMd, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGSgMR);
    a1 = v10;
  }

  Mirror.displayStyle.getter();
  v31 = type metadata accessor for Mirror.DisplayStyle();
  if (__swift_getEnumTagSinglePayload(v9, 1, v31) == 1)
  {
LABEL_7:
    *&v82 = Mirror.subjectType.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
    v27 = String.init<A>(describing:)();
    v10 = v32;
    v28 = Mirror.subjectType.getter();
    v33 = OUTLINED_FUNCTION_3_0();
    v34(v33);
    outlined destroy of ProtoGenerationIgnored<Any>?(v9, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    v20 = 0;
    a1 = 0;
    v30 = 0;
    goto LABEL_34;
  }

  outlined init with copy of Mirror.DisplayStyle?(v9, v7, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v35 = *(v31 - 8);
  v36 = (*(v35 + 88))(v7, v31);
  if (v36 != *MEMORY[0x277D84C18])
  {
    if (v36 == *MEMORY[0x277D84BF0])
    {
      v28 = Mirror.children.getter();
      specialized Collection.first.getter(v28, &v79);

      if (*(&v81 + 1))
      {
        OUTLINED_FUNCTION_6_0();
        if (BYTE8(v81) <= 0x3Fu)
        {
          v20 = *(&v80 + 1);
          v10 = *(&v79 + 1);
          v27 = v79;
          outlined destroy of ProtoGenerationIgnored<Any>?(&v82, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
          v38 = OUTLINED_FUNCTION_3_0();
          v39(v38);
          outlined destroy of ProtoGenerationIgnored<Any>?(v9, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
          v28 = 0;
          a1 = 0;
          v30 = 64;
          goto LABEL_34;
        }

        outlined destroy of ProtoSchemaGenerator.ReflectedTypeInfo(&v79);
        OUTLINED_FUNCTION_18_0();
        outlined destroy of ProtoGenerationIgnored<Any>?(&v82, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        v52 = OUTLINED_FUNCTION_3_0();
        v53(v52);
        outlined destroy of ProtoGenerationIgnored<Any>?(v9, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
        OUTLINED_FUNCTION_1_0();
        v27 = v54 + 3;
      }

      else
      {
        outlined destroy of ProtoGenerationIgnored<Any>?(&v79, &_sSSSg5label_yp5valuetSgMd, &_sSSSg5label_yp5valuetSgMR);
        OUTLINED_FUNCTION_18_0();
        v49 = OUTLINED_FUNCTION_3_0();
        v50(v49);
        outlined destroy of ProtoGenerationIgnored<Any>?(v9, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
        OUTLINED_FUNCTION_1_0();
        v27 = v51 + 10;
      }

LABEL_33:
      v30 = -64;
      goto LABEL_34;
    }

    if (v36 != *MEMORY[0x277D84BF8])
    {
      (*(v35 + 8))(v7, v31);
      goto LABEL_7;
    }

    v28 = Mirror.children.getter();
    specialized Collection.first.getter(v28, &v79);

    if (!*(&v81 + 1))
    {
      outlined destroy of ProtoGenerationIgnored<Any>?(&v79, &_sSSSg5label_yp5valuetSgMd, &_sSSSg5label_yp5valuetSgMR);
      OUTLINED_FUNCTION_18_0();
      v55 = OUTLINED_FUNCTION_3_0();
      v56(v55);
      outlined destroy of ProtoGenerationIgnored<Any>?(v9, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      OUTLINED_FUNCTION_1_0();
      v27 = v57 + 18;
      goto LABEL_33;
    }

    v20 = &v79;
    v82 = v79;
    v83 = v80;
    v84 = v81;
    outlined init with copy of Mirror.DisplayStyle?(&v82, &v79, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

    v40 = v69;
    Mirror.init(reflecting:)();
    v41 = Mirror.children.getter();
    specialized Collection.first.getter(v41, &v76);

    if (*(&v78 + 1))
    {
      v79 = v76;
      v80 = v77;
      v81 = v78;
      Mirror.children.getter();
      v20 = dispatch thunk of _AnySequenceBox._dropFirst(_:)();

      specialized Collection.first.getter(v20, &v73);

      if (*(&v75 + 1))
      {
        v76 = v73;
        v77 = v74;
        v78 = v75;
        outlined init with copy of Mirror.DisplayStyle?(&v79, &v73, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

        v42 = v68;
        Mirror.init(reflecting:)();
        v43 = Mirror.subjectType.getter();
        v44 = *(v12 + 8);
        v68 = a1;
        v67 = v44;
        (v44)(v42, a1);
        *&v73 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
        v27 = String.init<A>(describing:)();
        v10 = v45;
        ProtoSchemaGenerator.getTypeInfo(for:)(&v77, &v73);
        if (BYTE8(v75) <= 0x3Fu)
        {
          a1 = *(&v74 + 1);
          v28 = *(&v73 + 1);
          v20 = v73;
          outlined destroy of ProtoGenerationIgnored<Any>?(&v76, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
          outlined destroy of ProtoGenerationIgnored<Any>?(&v79, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
          v46 = v67;
          (v67)(v69, v68);
          outlined destroy of ProtoGenerationIgnored<Any>?(&v82, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
          (v46)(v22, v68);
          outlined destroy of ProtoGenerationIgnored<Any>?(v9, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
          v30 = 0x80;
          goto LABEL_34;
        }

        outlined destroy of ProtoSchemaGenerator.ReflectedTypeInfo(&v73);

        v71 = 0;
        v72 = 0xE000000000000000;
        _StringGuts.grow(_:)(89);
        MEMORY[0x25F8A1F10](0xD00000000000004CLL, 0x800000025DCEAA50);
        __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
        DynamicType = swift_getDynamicType();
        v62 = OUTLINED_FUNCTION_22(DynamicType);
        MEMORY[0x25F8A1F10](v62);

        MEMORY[0x25F8A1F10](0x3A65756C6176202CLL, 0xE900000000000020);
        __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
        v63 = swift_getDynamicType();
        v64 = OUTLINED_FUNCTION_22(v63);
        MEMORY[0x25F8A1F10](v64);

        v27 = v71;
        v10 = v72;
        v28 = &_sSSSg5label_yp5valuetMd;
        v20 = &_sSSSg5label_yp5valuetMR;
        OUTLINED_FUNCTION_25(&v76);
        OUTLINED_FUNCTION_25(&v79);
        a1 = v68;
        v65 = v67;
        (v67)(v69, v68);
        OUTLINED_FUNCTION_25(&v82);
        (v65)(v22, a1);
        outlined destroy of ProtoGenerationIgnored<Any>?(v9, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
        OUTLINED_FUNCTION_2_0();
        goto LABEL_33;
      }

      outlined destroy of ProtoGenerationIgnored<Any>?(&v79, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      v58 = &v73;
    }

    else
    {
      v58 = &v76;
    }

    outlined destroy of ProtoGenerationIgnored<Any>?(v58, &_sSSSg5label_yp5valuetSgMd, &_sSSSg5label_yp5valuetSgMR);
    v28 = *(v12 + 8);
    v59 = v40;
    v10 = 0x800000025DCEAA20;
    (v28)(v59, a1);
    outlined destroy of ProtoGenerationIgnored<Any>?(&v82, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
    (v28)(v22, a1);
    outlined destroy of ProtoGenerationIgnored<Any>?(v9, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    OUTLINED_FUNCTION_1_0();
    v27 = v60 + 11;
    goto LABEL_33;
  }

  v28 = Mirror.children.getter();
  specialized Collection.first.getter(v28, &v79);

  if (!*(&v81 + 1))
  {
    outlined destroy of ProtoGenerationIgnored<Any>?(&v79, &_sSSSg5label_yp5valuetSgMd, &_sSSSg5label_yp5valuetSgMR);
    OUTLINED_FUNCTION_18_0();
    v47 = OUTLINED_FUNCTION_3_0();
    v48(v47);
    outlined destroy of ProtoGenerationIgnored<Any>?(v9, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    OUTLINED_FUNCTION_2_0();
    v27 = 0xD000000000000037;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_6_0();
  v69 = *(&v79 + 1);
  v70 = v79;
  v68 = *(&v80 + 1);
  v20 = v80;
  v37 = a1;
  a1 = v81;
  v30 = BYTE8(v81);
  outlined destroy of ProtoGenerationIgnored<Any>?(&v82, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
  (*(v12 + 8))(v22, v37);
  v10 = *(&v79 + 1);
  v27 = v79;
  v28 = *(&v80 + 1);
  switch(BYTE8(v81) >> 6)
  {
    case 1:
    case 3:
      outlined destroy of ProtoGenerationIgnored<Any>?(v9, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      v27 = v70;
      v10 = v69;
      v28 = v68;
      break;
    case 2:
      a1 = v81;
      v20 = v80;

      outlined destroy of ProtoSchemaGenerator.ReflectedTypeInfo(&v79);
      outlined destroy of ProtoGenerationIgnored<Any>?(v9, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      v30 = -127;
      break;
    default:
      outlined destroy of ProtoGenerationIgnored<Any>?(v9, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      a1 = 0;
      v30 = 0;
      v20 = 1;
      break;
  }

LABEL_34:
  *a2 = v27;
  a2[1] = v10;
  a2[2] = v20;
  a2[3] = v28;
  a2[4] = a1;
  *(a2 + 40) = v30;
}

uint64_t ProtoSchemaGenerator.generateEnums(for:)(uint64_t a1)
{
  v35 = 0;
  v36 = 0xE000000000000000;
  v23 = *(a1 + 16);
  if (!v23)
  {
    return 0;
  }

  v1 = 0;
  v22 = a1 + 32;
  do
  {
    v25 = *(v22 + 16 * v1);
    v24 = v1 + 1;
    *v31 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20ProtoEnumConvertible_pXpMd, &_s15OmniSearchTypes20ProtoEnumConvertible_pXpMR);
    v2 = String.init<A>(describing:)();
    v31[0] = 0x206D756E65;
    v31[1] = 0xE500000000000000;
    MEMORY[0x25F8A1F10](v2);

    MEMORY[0x25F8A1F10](686880, 0xE300000000000000);
    v34 = *v31;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1Tm(v28);
    OUTLINED_FUNCTION_13_0();
    dispatch thunk of static CaseIterable.allCases.getter();
    __swift_project_boxed_opaque_existential_1(v28, AssociatedTypeWitness);
    OUTLINED_FUNCTION_5_0();
    MEMORY[0x28223BE20](v3);
    (*(v5 + 16))(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = swift_getAssociatedTypeWitness();
    v33 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1Tm(v31);
    dispatch thunk of Sequence.makeIterator()();
    __swift_destroy_boxed_opaque_existential_1(v28);
    v6 = 0;
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      v7 = swift_getAssociatedTypeWitness();
      v8 = type metadata accessor for Optional();
      OUTLINED_FUNCTION_5_0();
      v10 = v9;
      MEMORY[0x28223BE20](v11);
      v13 = &v21 - v12;
      dispatch thunk of IteratorProtocol.next()();
      if (__swift_getEnumTagSinglePayload(v13, 1, v7) == 1)
      {
        break;
      }

      AssociatedTypeWitness = v7;
      __swift_allocate_boxed_opaque_existential_1Tm(v28);
      OUTLINED_FUNCTION_16_0();
      (*(v14 + 32))();
      outlined init with take of Any(v28, &v27);
      v15 = String.init<A>(describing:)();
      ProtoSchemaGenerator.toSnakeCase(_:)(v15, v16);

      OUTLINED_FUNCTION_13_0();
      v17 = String.uppercased()();

      *&v27 = 8224;
      *(&v27 + 1) = 0xE200000000000000;
      MEMORY[0x25F8A1F10](v17._countAndFlagsBits, v17._object);

      OUTLINED_FUNCTION_14_0();
      v26 = v6;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x25F8A1F10](v18);

      MEMORY[0x25F8A1F10](2619, 0xE200000000000000);
      MEMORY[0x25F8A1F10](v27, *(&v27 + 1));

      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return result;
      }
    }

    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x25F8A1F10](2685, 0xE200000000000000);
    MEMORY[0x25F8A1F10](v34, *(&v34 + 1));

    v1 = v24;
  }

  while (v24 != v23);
  return v35;
}

uint64_t ProtoSchemaGenerator.mapSwiftTypeToProto(_:)(uint64_t a1, unint64_t a2)
{
  v3 = 0x676E69727453;
  if (a1 == 0x676E69727453 && a2 == 0xE600000000000000)
  {
    return v3 | 0x20;
  }

  if (OUTLINED_FUNCTION_4_0(0x676E69727453))
  {
    return v3 + 32;
  }

  v3 = 0x3233746E49;
  if (a1 == 0x3233746E49 && a2 == 0xE500000000000000)
  {
    return v3 | 0x20;
  }

  if (OUTLINED_FUNCTION_4_0(0x3233746E49))
  {
    return v3 + 32;
  }

  v7 = 0x3436746E69;
  if (a1 != 7630409 || a2 != 0xE300000000000000)
  {
    v10 = OUTLINED_FUNCTION_4_0(7630409);
    v11 = a1 == 0x3436746E49 && a2 == 0xE500000000000000;
    v12 = v11;
    if ((v10 & 1) == 0 && !v12 && (OUTLINED_FUNCTION_4_0(0x3436746E49) & 1) == 0)
    {
      v3 = 1819242306;
      if (a1 != 1819242306 || a2 != 0xE400000000000000)
      {
        if (OUTLINED_FUNCTION_4_0(1819242306))
        {
          return v3 + 32;
        }

        v3 = 0x74616F6C46;
        if (a1 != 0x74616F6C46 || a2 != 0xE500000000000000)
        {
          if (OUTLINED_FUNCTION_4_0(0x74616F6C46))
          {
            return v3 + 32;
          }

          v3 = 0x656C62756F44;
          if (a1 != 0x656C62756F44 || a2 != 0xE600000000000000)
          {
            if (OUTLINED_FUNCTION_4_0(0x656C62756F44))
            {
              return v3 + 32;
            }

            v7 = 0x7365747962;
            v16 = a1 == 1635017028 && a2 == 0xE400000000000000;
            if (!v16 && (OUTLINED_FUNCTION_4_0(1635017028) & 1) == 0)
            {
              v18 = *(v2 + 32);

              v19 = specialized Set.contains(_:)(a1, a2, v18);

              if (v19 || (v20 = *(v2 + 48), , v21 = specialized Set.contains(_:)(a1, a2, v20), , v21))
              {

                return a1;
              }

              else
              {
                if (one-time initialization token for proto != -1)
                {
                  OUTLINED_FUNCTION_0_2();
                  swift_once();
                }

                v22 = type metadata accessor for Logger();
                __swift_project_value_buffer(v22, static Logging.proto);

                v23 = Logger.logObject.getter();
                v24 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v23, v24))
                {
                  v25 = swift_slowAlloc();
                  v26 = swift_slowAlloc();
                  v27 = v26;
                  *v25 = 136315138;
                  *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v27);
                  _os_log_impl(&dword_25DC66000, v23, v24, "Unknown swift type: %s", v25, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v26);
                  OUTLINED_FUNCTION_10_0();
                  OUTLINED_FUNCTION_10_0();
                }

                return 0;
              }
            }

            return v7;
          }
        }
      }

      return v3 | 0x20;
    }
  }

  return v7;
}

uint64_t ProtoSchemaGenerator.toSnakeCase(_:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v4 = @nonobjc NSRegularExpression.init(pattern:options:)(0xD000000000000011, 0x800000025DCEA990, 0);
  String.count.getter();
  v5 = OUTLINED_FUNCTION_19();
  v6 = MEMORY[0x25F8A1E10](v5, a2);
  v7 = MEMORY[0x25F8A1E10](0x32245F3124, 0xE500000000000000);
  v8 = [v4 stringByReplacingMatchesInString:v6 options:0 range:0 withTemplate:{v3, v7}];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.lowercased()();

  return OUTLINED_FUNCTION_13_0();
}

void *ProtoSchemaGenerator.deinit()
{

  return v0;
}

uint64_t ProtoSchemaGenerator.__deallocating_deinit()
{
  ProtoSchemaGenerator.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

id @nonobjc NSRegularExpression.init(pattern:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x25F8A1E10](a1);

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15OmniSearchTypes15LLMSearchResultV_Tt1g5(v8, v7);
  v10 = *(type metadata accessor for LLMSearchResult(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15OmniSearchTypes16ProtoConvertible_pXpGMd, &_ss23_ContiguousArrayStorageCy15OmniSearchTypes16ProtoConvertible_pXpGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
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
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    if (v10 != a4 || &v13[v8] <= v12)
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15OmniSearchTypes15LLMSearchResultV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15OmniSearchTypes15LLMSearchResultVGMd, &_ss23_ContiguousArrayStorageCy15OmniSearchTypes15LLMSearchResultVGMR);
  v4 = *(type metadata accessor for LLMSearchResult(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for LLMSearchResult(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for LLMSearchResult(0);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

BOOL specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    v19 = Hasher._finalize()();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

Swift::Int specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v42 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v35 = v3;
    v33[1] = v33;
    MEMORY[0x28223BE20](v10);
    v34 = v8;
    v38 = (v33 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v8, v38);
    v11 = 0;
    v12 = 0;
    v8 = v5 + 56;
    v13 = 1 << *(v5 + 32);
    v14 = v13 < 64 ? ~(-1 << v13) : -1;
    v15 = v14 & *(v5 + 56);
    v3 = (v13 + 63) >> 6;
    v36 = v5;
    v37 = a2;
LABEL_6:
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v19 = v16 | (v12 << 6);
      v20 = *(a2 + 48);
      if (*(v20 + 16))
      {
        v40 = v15;
        v41 = v11;
        v21 = *(v5 + 48);
        v39 = v19;
        v22 = (v21 + 16 * v19);
        v9 = *v22;
        v23 = v22[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v24 = Hasher._finalize()();
        v25 = ~(-1 << *(v20 + 32));
        do
        {
          v26 = v24 & v25;
          if (((*(v20 + 56 + (((v24 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v25)) & 1) == 0)
          {

            v5 = v36;
            a2 = v37;
            v15 = v40;
            v11 = v41;
            goto LABEL_6;
          }

          v27 = (*(v20 + 48) + 16 * v26);
          if (*v27 == v9 && v27[1] == v23)
          {
            break;
          }

          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v24 = v26 + 1;
        }

        while ((v29 & 1) == 0);

        *(v38 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
        v15 = v40;
        v11 = v41 + 1;
        v5 = v36;
        a2 = v37;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_28;
        }
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v3)
      {
        v30 = specialized _NativeSet.extractSubset(using:count:)(v38, v34, v11, v5);

        return v30;
      }

      v18 = *(v8 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v32 = swift_slowAlloc();

  v30 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n186_s15OmniSearchTypes20ProtoSchemaGeneratorC8generate07messageC05enums23externalMessagesContextSSSayAA0D11Convertible_pXpG_SayAA0d4EnumM0_pXpGSayypXp9swiftType_SS10definitiontGtFSbSSXEfU3_0sT5Types0vwX0CTf1nnc_n(v32, v8, v5, a2);

  MEMORY[0x25F8A2A10](v32, -1, -1);

  return v30;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_25DCE2860;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t *specialized closure #1 in _NativeSet.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v28 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
LABEL_5:
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(v4 + 48);
    if (*(v15 + 16))
    {
      v31 = v10;
      v32 = v5;
      v29 = v12 | (v6 << 6);
      v16 = (*(a3 + 48) + 16 * v29);
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v19 = Hasher._finalize()();
      v20 = ~(-1 << *(v15 + 32));
      do
      {
        v21 = v19 & v20;
        if (((*(v15 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {

          v4 = a4;
          v5 = v32;
          v10 = v31;
          goto LABEL_5;
        }

        v22 = (*(v15 + 48) + 16 * v21);
        if (*v22 == v17 && v22[1] == v18)
        {
          break;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v19 = v21 + 1;
      }

      while ((v24 & 1) == 0);

      *(v28 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v5 = v32 + 1;
      v4 = a4;
      v10 = v31;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v25 = specialized _NativeSet.extractSubset(using:count:)(v28, a2, v5, a3);

      return v25;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n186_s15OmniSearchTypes20ProtoSchemaGeneratorC8generate07messageC05enums23externalMessagesContextSSSayAA0D11Convertible_pXpG_SayAA0d4EnumM0_pXpGSayypXp9swiftType_SS10definitiontGtFSbSSXEfU3_0sT5Types0vwX0CTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    v8 = specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v18 = Hasher._finalize()();
        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v5 + 48) + 16 * v22);
        *v27 = v16;
        v27[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of Mirror.DisplayStyle?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_16_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t outlined destroy of ProtoGenerationIgnored<Any>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_16_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ProtoSchemaGenerator.ReflectedTypeInfo(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFD && *(a1 + 41))
    {
      v2 = *a1 + 16380;
    }

    else
    {
      v2 = ((*(a1 + 40) >> 6) | (4 * ((*(a1 + 32) >> 57) & 0x78 | *(a1 + 32) & 7 | (((*(a1 + 40) >> 1) & 0x1F) << 7)))) ^ 0x3FFF;
      if (v2 >> 2 >= 0xFFF)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for ProtoSchemaGenerator.ReflectedTypeInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 16381;
    if (a3 >= 0x3FFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 40) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ProtoSchemaGenerator.ReflectedTypeInfo(uint64_t result, char a2)
{
  v2 = *(result + 40) & 1 | (a2 << 6);
  *(result + 32) &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 40) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_6_0()
{
  v2 = v0 - 192;
  v3 = *(v0 - 176);
  v4 = *(v0 - 160);
  *(v2 + 48) = *(v0 - 192);
  *(v2 + 64) = v3;
  *(v2 + 80) = v4;

  return ProtoSchemaGenerator.getTypeInfo(for:)((v0 - 128), v2);
}

void OUTLINED_FUNCTION_10_0()
{

  JUMPOUT(0x25F8A2A10);
}

void OUTLINED_FUNCTION_14_0()
{

  JUMPOUT(0x25F8A1F10);
}

void OUTLINED_FUNCTION_15_0()
{

  JUMPOUT(0x25F8A1F10);
}

void OUTLINED_FUNCTION_20()
{

  JUMPOUT(0x25F8A1F10);
}

char *OUTLINED_FUNCTION_21()
{

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1)
{
  *(v1 - 312) = a1;

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1)
{

  return outlined destroy of ProtoGenerationIgnored<Any>?(a1, v1, v2);
}

uint64_t AnswerSynthesisExtractionCandidate.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E45707061 && a2 == 0xE900000000000079;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657263536E6FLL && a2 == 0xEC00000074786554)
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

Swift::Int AnswerSynthesisExtractionCandidate.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A2420](a1 & 1);
  return Hasher._finalize()();
}

uint64_t AnswerSynthesisExtractionCandidate.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E65657263536E6FLL;
  }

  else
  {
    return 0x7469746E45707061;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisExtractionCandidate.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnswerSynthesisExtractionCandidate.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AnswerSynthesisExtractionCandidate.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AnswerSynthesisExtractionCandidate.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisExtractionCandidate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisExtractionCandidate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void AnswerSynthesisExtractionCandidate.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_36();
  a22 = v24;
  a23 = v25;
  v57 = v23;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO22OnScreenTextCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO22OnScreenTextCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO19AppEntityCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO19AppEntityCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_32();
  type metadata accessor for TypedValue();
  OUTLINED_FUNCTION_1();
  v55 = v31;
  v56 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_1();
  v34 = v33 - v32;
  type metadata accessor for AnswerSynthesisExtractionCandidate(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5_1();
  v38 = v37 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_41(v27, v27[3]);
  lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys();
  OUTLINED_FUNCTION_40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of AnswerSynthesisExtractionCandidate(v57, v38, type metadata accessor for AnswerSynthesisExtractionCandidate);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a13 = 1;
    v40 = lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys();
    OUTLINED_FUNCTION_34(&unk_286F8FCA0, &a13, v41, v42, v40);
    KeyedEncodingContainer.encode(_:forKey:)();

    v43 = OUTLINED_FUNCTION_28();
    v44(v43);
  }

  else
  {
    OUTLINED_FUNCTION_30();
    v47(v34, v38, v56);
    a12 = 0;
    v48 = lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys();
    OUTLINED_FUNCTION_34(&unk_286F8FC10, &a12, v49, v50, v48);
    OUTLINED_FUNCTION_16_1();
    lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v51, v52, MEMORY[0x277D72A80]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v53 = OUTLINED_FUNCTION_33();
    v54(v53);
    (*(v55 + 8))(v34, v56);
  }

  v45 = OUTLINED_FUNCTION_26();
  v46(v45);
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys);
  }

  return result;
}

void AnswerSynthesisExtractionCandidate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_36();
  a22 = v25;
  a23 = v26;
  v106 = v23;
  v28 = v27;
  v97 = v29;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO22OnScreenTextCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO22OnScreenTextCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v101 = v30;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_1();
  v103 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO19AppEntityCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO19AppEntityCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v99 = v34;
  v100 = v33;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_1();
  v102 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v104 = v38;
  v105 = v37;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_25_0();
  v40 = type metadata accessor for AnswerSynthesisExtractionCandidate(0);
  OUTLINED_FUNCTION_9_1();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v93 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v93 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v93 - v48;
  OUTLINED_FUNCTION_41(v28, v28[3]);
  lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys();
  v50 = v106;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v50)
  {
    goto LABEL_8;
  }

  v94 = v49;
  v95 = v44;
  v93 = v47;
  v96 = v40;
  v106 = v28;
  v51 = v105;
  v52 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC15OmniSearchTypes34AnswerSynthesisExtractionCandidateO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLO_Tt1g5(v52, 0);
  if (v55 == v54 >> 1)
  {
LABEL_7:
    v69 = v96;
    v70 = type metadata accessor for DecodingError();
    swift_allocError();
    v72 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v72 = v69;
    v73 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_27(v73);
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x277D84160], v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    v74 = OUTLINED_FUNCTION_28();
    v75(v74);
    v28 = v106;
LABEL_8:
    v76 = v28;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v76);
    OUTLINED_FUNCTION_35();
    return;
  }

  OUTLINED_FUNCTION_29();
  if (v60 < (v56 >> 1))
  {
    v61 = *(v59 + v57);
    specialized ArraySlice.subscript.getter(v57 + 1, v56 >> 1, started, v59, v57, v58);
    v63 = v62;
    v65 = v64;
    swift_unknownObjectRelease();
    v66 = v95;
    if (v63 == v65 >> 1)
    {
      v67 = v61;
      v68 = v51;
      if (v67)
      {
        a13 = 1;
        lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys();
        OUTLINED_FUNCTION_45(&unk_286F8FCA0, &a13);
        v81 = KeyedDecodingContainer.decode(_:forKey:)();
        v83 = v82;
        swift_unknownObjectRelease();
        v84 = OUTLINED_FUNCTION_22_0();
        v85(v84);
        v86 = OUTLINED_FUNCTION_21_0();
        v87(v86);
        *v66 = v81;
        v66[1] = v83;
        swift_storeEnumTagMultiPayload();
        v88 = v66;
        v89 = v97;
        v90 = v94;
      }

      else
      {
        a12 = 0;
        lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys();
        OUTLINED_FUNCTION_45(&unk_286F8FC10, &a12);
        v90 = v94;
        type metadata accessor for TypedValue();
        OUTLINED_FUNCTION_16_1();
        lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v77, v78, MEMORY[0x277D72A98]);
        v79 = v93;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v80 = v104;
        swift_unknownObjectRelease();
        v91 = OUTLINED_FUNCTION_6_1();
        v92(v91);
        (*(v80 + 8))(v24, v68);
        swift_storeEnumTagMultiPayload();
        v88 = v79;
        v89 = v97;
      }

      outlined init with take of AnswerSynthesisExtractionCandidate(v88, v90, type metadata accessor for AnswerSynthesisExtractionCandidate);
      outlined init with take of AnswerSynthesisExtractionCandidate(v90, v89, type metadata accessor for AnswerSynthesisExtractionCandidate);
      v76 = v106;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t AnswerSynthesisResolutionType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461676976616ELL && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616964656DLL && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7107189 && a2 == 0xE300000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702125892 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x706D6F4365746144 && a2 == 0xEE0073746E656E6FLL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F73726550 && a2 == 0xE600000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x656C62756F44 && a2 == 0xE600000000000000)
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

uint64_t AnswerSynthesisResolutionType.CodingKeys.stringValue.getter(char a1)
{
  result = 0x697461676976616ELL;
  switch(a1)
  {
    case 1:
      result = 0x616964656DLL;
      break;
    case 2:
      result = 7107189;
      break;
    case 3:
      result = 1702125892;
      break;
    case 4:
      result = 0x706D6F4365746144;
      break;
    case 5:
      result = 0x6E6F73726550;
      break;
    case 6:
      result = 0x656C62756F44;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisResolutionType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnswerSynthesisResolutionType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AnswerSynthesisResolutionType.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AnswerSynthesisResolutionType.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionType.DateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateCodingKeys and conformance AnswerSynthesisResolutionType.DateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionType.DateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateCodingKeys and conformance AnswerSynthesisResolutionType.DateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionType.DoubleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionType.DoubleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionType.MediaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.MediaCodingKeys and conformance AnswerSynthesisResolutionType.MediaCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionType.MediaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.MediaCodingKeys and conformance AnswerSynthesisResolutionType.MediaCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionType.NavigationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.NavigationCodingKeys and conformance AnswerSynthesisResolutionType.NavigationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionType.NavigationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.NavigationCodingKeys and conformance AnswerSynthesisResolutionType.NavigationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionType.PersonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionType.PersonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionType.UrlCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.UrlCodingKeys and conformance AnswerSynthesisResolutionType.UrlCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionType.UrlCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.UrlCodingKeys and conformance AnswerSynthesisResolutionType.UrlCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void AnswerSynthesisResolutionType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_36();
  a26 = v29;
  a27 = v30;
  v31 = v27;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO16DoubleCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO16DoubleCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v110 = v35;
  v111 = v34;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10_1();
  v109 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO16PersonCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO16PersonCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v107 = v39;
  v108 = v38;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10_1();
  v106 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v104 = v43;
  v105 = v42;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10_1();
  v103 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO14DateCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO14DateCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v101 = v47;
  v102 = v46;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_10_1();
  v100 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO13UrlCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO13UrlCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v98 = v51;
  v99 = v50;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_10_1();
  v97 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO15MediaCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO15MediaCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v95 = v55;
  v96 = v54;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v56);
  v58 = v94 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO20NavigationCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO20NavigationCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v94[1] = v60;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_25_0();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v63 = v62;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_24_0();
  v65 = *v31;
  OUTLINED_FUNCTION_41(v33, v33[3]);
  lazy protocol witness table accessor for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys();
  OUTLINED_FUNCTION_40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v65)
  {
    case 1:
      a12 = 1;
      v85 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.MediaCodingKeys and conformance AnswerSynthesisResolutionType.MediaCodingKeys();
      OUTLINED_FUNCTION_3_1(&unk_286F8FA50, &a12, v86, v87, v85);
      v78 = v95;
      v77 = v96;
      goto LABEL_9;
    case 2:
      a13 = 2;
      v79 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.UrlCodingKeys and conformance AnswerSynthesisResolutionType.UrlCodingKeys();
      v58 = v97;
      OUTLINED_FUNCTION_3_1(&unk_286F8FA70, &a13, v80, v81, v79);
      v78 = v98;
      v77 = v99;
      goto LABEL_9;
    case 3:
      a14 = 3;
      v82 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateCodingKeys and conformance AnswerSynthesisResolutionType.DateCodingKeys();
      v58 = v100;
      OUTLINED_FUNCTION_3_1(&unk_286F8FA90, &a14, v83, v84, v82);
      v78 = v101;
      v77 = v102;
      goto LABEL_9;
    case 4:
      a15 = 4;
      v74 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys();
      v58 = v103;
      OUTLINED_FUNCTION_3_1(&unk_286F8FAB0, &a15, v75, v76, v74);
      v78 = v104;
      v77 = v105;
      goto LABEL_9;
    case 5:
      a16 = 5;
      v88 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys();
      v58 = v106;
      OUTLINED_FUNCTION_3_1(&unk_286F8FAD0, &a16, v89, v90, v88);
      v78 = v107;
      v77 = v108;
      goto LABEL_9;
    case 6:
      a17 = 6;
      v91 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys();
      v58 = v109;
      OUTLINED_FUNCTION_3_1(&unk_286F8FAF0, &a17, v92, v93, v91);
      v78 = v110;
      v77 = v111;
LABEL_9:
      (*(v78 + 8))(v58, v77);
      v73 = *(v63 + 8);
      v71 = v28;
      v72 = v59;
      break;
    default:
      a11 = 0;
      v66 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.NavigationCodingKeys and conformance AnswerSynthesisResolutionType.NavigationCodingKeys();
      OUTLINED_FUNCTION_34(&unk_286F8FA30, &a11, v67, v68, v66);
      v69 = OUTLINED_FUNCTION_28();
      v70(v69);
      v71 = OUTLINED_FUNCTION_26();
      break;
  }

  v73(v71, v72);
  OUTLINED_FUNCTION_35();
}

Swift::Int AnswerSynthesisResolutionType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8A2420](v1);
  return Hasher._finalize()();
}

void AnswerSynthesisResolutionType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_36();
  a26 = v29;
  a27 = v30;
  v124 = v27;
  v32 = v31;
  v119 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO16DoubleCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO16DoubleCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v115 = v34;
  v116 = v35;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10_1();
  v122 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO16PersonCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO16PersonCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v113 = v38;
  v114 = v39;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10_1();
  v121 = v41;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v112 = v42;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_1();
  v118 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO14DateCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO14DateCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v110 = v46;
  v111 = v45;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_10_1();
  v117 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO13UrlCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO13UrlCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v108 = v50;
  v109 = v49;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_10_1();
  v120 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO15MediaCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO15MediaCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v105 = v54;
  v106 = v53;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v55);
  v57 = v99 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO20NavigationCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO20NavigationCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v104 = v59;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v60);
  v62 = v99 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v65 = v64;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_24_0();
  v67 = v32[3];
  v123 = v32;
  OUTLINED_FUNCTION_41(v32, v67);
  lazy protocol witness table accessor for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys();
  OUTLINED_FUNCTION_40();
  v68 = v124;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v68)
  {
    goto LABEL_8;
  }

  v102 = v62;
  v101 = v58;
  v103 = v57;
  v70 = v120;
  v69 = v121;
  v71 = v122;
  v124 = v63;
  v72 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC15OmniSearchTypes34AnswerSynthesisExtractionCandidateO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLO_Tt1g5(v72, 0);
  if (v75 == v74 >> 1)
  {
LABEL_7:
    v89 = v28;
    v90 = type metadata accessor for DecodingError();
    swift_allocError();
    v92 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v92 = &type metadata for AnswerSynthesisResolutionType;
    v93 = v124;
    v94 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_27(v94);
    (*(*(v90 - 8) + 104))(v92, *MEMORY[0x277D84160], v90);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v65 + 8))(v89, v93);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v123);
LABEL_9:
    OUTLINED_FUNCTION_35();
    return;
  }

  OUTLINED_FUNCTION_29();
  v99[1] = 0;
  if (v80 < (v76 >> 1))
  {
    v100 = *(v79 + v77);
    specialized ArraySlice.subscript.getter(v77 + 1, v76 >> 1, started, v79, v77, v78);
    v82 = v81;
    v84 = v83;
    swift_unknownObjectRelease();
    if (v82 == v84 >> 1)
    {
      v85 = v65;
      v86 = v119;
      v87 = v124;
      switch(v100)
      {
        case 1:
          a12 = 1;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionType.MediaCodingKeys and conformance AnswerSynthesisResolutionType.MediaCodingKeys();
          v71 = v103;
          OUTLINED_FUNCTION_2_1(&unk_286F8FA50, &a12);
          swift_unknownObjectRelease();
          v97 = v105;
          v96 = v106;
          goto LABEL_16;
        case 2:
          a13 = 2;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionType.UrlCodingKeys and conformance AnswerSynthesisResolutionType.UrlCodingKeys();
          OUTLINED_FUNCTION_2_1(&unk_286F8FA70, &a13);
          swift_unknownObjectRelease();
          (*(v108 + 8))(v70, v109);
          break;
        case 3:
          a14 = 3;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateCodingKeys and conformance AnswerSynthesisResolutionType.DateCodingKeys();
          v71 = v117;
          OUTLINED_FUNCTION_2_1(&unk_286F8FA90, &a14);
          swift_unknownObjectRelease();
          v97 = v110;
          v96 = v111;
          goto LABEL_16;
        case 4:
          a15 = 4;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys();
          v95 = v118;
          OUTLINED_FUNCTION_2_1(&unk_286F8FAB0, &a15);
          swift_unknownObjectRelease();
          (*(v112 + 8))(v95, v107);
          break;
        case 5:
          a16 = 5;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys();
          OUTLINED_FUNCTION_2_1(&unk_286F8FAD0, &a16);
          swift_unknownObjectRelease();
          (*(v114 + 8))(v69, v113);
          break;
        case 6:
          a17 = 6;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys();
          OUTLINED_FUNCTION_2_1(&unk_286F8FAF0, &a17);
          swift_unknownObjectRelease();
          v96 = v115;
          v97 = v116;
LABEL_16:
          (*(v97 + 8))(v71, v96);
          break;
        default:
          a11 = 0;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionType.NavigationCodingKeys and conformance AnswerSynthesisResolutionType.NavigationCodingKeys();
          v88 = v102;
          OUTLINED_FUNCTION_2_1(&unk_286F8FA30, &a11);
          swift_unknownObjectRelease();
          (*(v104 + 8))(v88, v101);
          break;
      }

      (*(v85 + 8))(v28, v87);
      v98 = v123;
      *v86 = v100;
      __swift_destroy_boxed_opaque_existential_1(v98);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t AnswerSynthesisResolutionResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461676976616ELL && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7107189 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702125892 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x706D6F4365746144 && a2 == 0xEE0073746E656E6FLL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F73726550 && a2 == 0xE600000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x656C62756F44 && a2 == 0xE600000000000000)
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

uint64_t AnswerSynthesisResolutionResult.CodingKeys.stringValue.getter(char a1)
{
  result = 0x697461676976616ELL;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 1702125892;
      break;
    case 3:
      result = 0x706D6F4365746144;
      break;
    case 4:
      result = 0x6E6F73726550;
      break;
    case 5:
      result = 0x656C62756F44;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AnswerSynthesisExtractionCandidate.AppEntityCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisResolutionResult.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnswerSynthesisResolutionResult.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AnswerSynthesisResolutionResult.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AnswerSynthesisResolutionResult.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.CodingKeys and conformance AnswerSynthesisResolutionResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.CodingKeys and conformance AnswerSynthesisResolutionResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionResult.DateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DateCodingKeys and conformance AnswerSynthesisResolutionResult.DateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionResult.DateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DateCodingKeys and conformance AnswerSynthesisResolutionResult.DateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionResult.DateComponentsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionResult.DateComponentsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionResult.DateComponentsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionResult.DateComponentsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionResult.DoubleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DoubleCodingKeys and conformance AnswerSynthesisResolutionResult.DoubleCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionResult.DoubleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DoubleCodingKeys and conformance AnswerSynthesisResolutionResult.DoubleCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionResult.NavigationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.NavigationCodingKeys and conformance AnswerSynthesisResolutionResult.NavigationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionResult.NavigationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.NavigationCodingKeys and conformance AnswerSynthesisResolutionResult.NavigationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionResult.PersonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.PersonCodingKeys and conformance AnswerSynthesisResolutionResult.PersonCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionResult.PersonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.PersonCodingKeys and conformance AnswerSynthesisResolutionResult.PersonCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionResult.UrlCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.UrlCodingKeys and conformance AnswerSynthesisResolutionResult.UrlCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionResult.UrlCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.UrlCodingKeys and conformance AnswerSynthesisResolutionResult.UrlCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnswerSynthesisResolutionResult.encode(to:)(void *a1)
{
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO16DoubleCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO16DoubleCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v132 = v3;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_1();
  v128 = v5;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO16PersonCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO16PersonCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v133 = v6;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_1();
  v129 = v8;
  OUTLINED_FUNCTION_32();
  type metadata accessor for IntentPerson();
  OUTLINED_FUNCTION_1();
  v130 = v10;
  v131 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_1();
  v127 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v125 = v14;
  v126 = v13;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_1();
  v122 = v16;
  OUTLINED_FUNCTION_32();
  type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_1();
  v123 = v18;
  v124 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_1();
  v121 = v20 - v19;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO14DateCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO14DateCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v119 = v21;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_1();
  v116 = v23;
  OUTLINED_FUNCTION_32();
  v118 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v117 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_1();
  v115 = v27 - v26;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO13UrlCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO13UrlCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v113 = v28;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10_1();
  v110 = v30;
  OUTLINED_FUNCTION_32();
  v112 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v111 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_1();
  v109 = v34 - v33;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO20NavigationCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO20NavigationCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v107 = v35;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  v38 = &v105 - v37;
  v39 = type metadata accessor for PlaceDescriptor();
  OUTLINED_FUNCTION_1();
  v106 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_1();
  v44 = v43 - v42;
  v45 = type metadata accessor for AnswerSynthesisResolutionResult(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_5_1();
  v49 = v48 - v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v137 = v51;
  v138 = v50;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_41(a1, a1[3]);
  lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.CodingKeys and conformance AnswerSynthesisResolutionResult.CodingKeys();
  v136 = v1;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of AnswerSynthesisExtractionCandidate(v139, v49, type metadata accessor for AnswerSynthesisResolutionResult);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v61 = v111;
      OUTLINED_FUNCTION_30();
      v62 = v109;
      v91 = OUTLINED_FUNCTION_33();
      v60 = v112;
      v92(v91);
      v141 = 1;
      v93 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.UrlCodingKeys and conformance AnswerSynthesisResolutionResult.UrlCodingKeys();
      v66 = v110;
      OUTLINED_FUNCTION_7_1(&unk_286F8F740, &v141, v94, v95, v93);
      OUTLINED_FUNCTION_13_1();
      lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v96, v97, MEMORY[0x277CC9268]);
      v98 = OUTLINED_FUNCTION_39();
      v72 = v114;
      OUTLINED_FUNCTION_19_0(v98);
      v82 = &v145;
      goto LABEL_7;
    case 2u:
      v61 = v117;
      OUTLINED_FUNCTION_30();
      v62 = v115;
      v74 = OUTLINED_FUNCTION_33();
      v60 = v118;
      v75(v74);
      v142 = 2;
      v76 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DateCodingKeys and conformance AnswerSynthesisResolutionResult.DateCodingKeys();
      v66 = v116;
      OUTLINED_FUNCTION_7_1(&unk_286F8F7D0, &v142, v77, v78, v76);
      OUTLINED_FUNCTION_15_1();
      lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v79, v80, MEMORY[0x277CC9580]);
      v81 = OUTLINED_FUNCTION_39();
      v72 = v120;
      OUTLINED_FUNCTION_19_0(v81);
      v82 = &v146;
LABEL_7:
      v73 = *(v82 - 32);
      goto LABEL_8;
    case 3u:
      v61 = v123;
      v60 = v124;
      OUTLINED_FUNCTION_30();
      v62 = v121;
      v83 = OUTLINED_FUNCTION_33();
      v84(v83);
      v143 = 3;
      v85 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionResult.DateComponentsCodingKeys();
      v66 = v122;
      OUTLINED_FUNCTION_7_1(&unk_286F8F860, &v143, v86, v87, v85);
      OUTLINED_FUNCTION_14_1();
      lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v88, v89, MEMORY[0x277CC8998]);
      v90 = OUTLINED_FUNCTION_39();
      v72 = v126;
      OUTLINED_FUNCTION_19_0(v90);
      v73 = v125;
      goto LABEL_8;
    case 4u:
      v61 = v130;
      v60 = v131;
      OUTLINED_FUNCTION_30();
      v62 = v127;
      v63 = OUTLINED_FUNCTION_33();
      v64(v63);
      v144[0] = 4;
      v65 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.PersonCodingKeys and conformance AnswerSynthesisResolutionResult.PersonCodingKeys();
      v66 = v129;
      OUTLINED_FUNCTION_7_1(&unk_286F8F8F0, v144, v67, v68, v65);
      OUTLINED_FUNCTION_17_1();
      lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v69, v70, MEMORY[0x277CB9DC0]);
      v71 = OUTLINED_FUNCTION_39();
      v72 = v135;
      OUTLINED_FUNCTION_19_0(v71);
      v73 = v133;
LABEL_8:
      (*(v73 + 8))(v66, v72);
      (*(v61 + 8))(v62, v60);
      goto LABEL_9;
    case 5u:
      v144[1] = 5;
      lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DoubleCodingKeys and conformance AnswerSynthesisResolutionResult.DoubleCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      v103 = OUTLINED_FUNCTION_21_0();
      v104(v103);
      v100 = OUTLINED_FUNCTION_22_0();
      return v99(v100, v101);
    default:
      v53 = v106;
      (*(v106 + 32))(v44, v49, v39);
      v140 = 0;
      v54 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.NavigationCodingKeys and conformance AnswerSynthesisResolutionResult.NavigationCodingKeys();
      OUTLINED_FUNCTION_7_1(&unk_286F8F6B0, &v140, v55, v56, v54);
      OUTLINED_FUNCTION_11_1();
      lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v57, v58, MEMORY[0x277CCB128]);
      v59 = v108;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v107 + 8))(v38, v59);
      (*(v53 + 8))(v44, v39);
LABEL_9:
      v99 = *(v137 + 8);
      v100 = v49;
      v101 = v45;
      return v99(v100, v101);
  }
}

void AnswerSynthesisResolutionResult.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO16DoubleCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO16DoubleCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v143 = v3;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_1();
  v142 = v5;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO16PersonCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO16PersonCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v137 = v6;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_1();
  v141 = v8;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v136 = v9;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_1();
  v140 = v11;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO14DateCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO14DateCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v135 = v12;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_1();
  v148 = v14;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO13UrlCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO13UrlCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v134 = v15;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_1();
  v147 = v17;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO20NavigationCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO20NavigationCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v133 = v18;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_1();
  v139 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v145 = v22;
  v146 = v21;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  v25 = &v117 - v24;
  v144 = type metadata accessor for AnswerSynthesisResolutionResult(0);
  OUTLINED_FUNCTION_9_1();
  v27 = MEMORY[0x28223BE20](v26);
  v125 = (&v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v126 = &v117 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v117 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v117 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v117 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v117 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v117 - v43;
  v45 = a1[3];
  v149 = a1;
  OUTLINED_FUNCTION_41(a1, v45);
  lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.CodingKeys and conformance AnswerSynthesisResolutionResult.CodingKeys();
  v46 = v150;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v46)
  {
    goto LABEL_10;
  }

  v120 = v39;
  v121 = v36;
  v122 = v33;
  v123 = v42;
  v47 = v148;
  v150 = v44;
  v48 = v146;
  v49 = v25;
  v50 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC15OmniSearchTypes34AnswerSynthesisExtractionCandidateO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLO_Tt1g5(v50, 0);
  if (v53 == v52 >> 1)
  {
    v54 = v145;
LABEL_9:
    v70 = v144;
    v71 = type metadata accessor for DecodingError();
    swift_allocError();
    v73 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v73 = v70;
    v74 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_27(v74);
    (*(*(v71 - 8) + 104))(v73, *MEMORY[0x277D84160], v71);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v54 + 8))(v49, v48);
LABEL_10:
    v75 = v149;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v75);
    return;
  }

  OUTLINED_FUNCTION_29();
  v124 = v25;
  v119 = 0;
  if (v59 < (v55 >> 1))
  {
    v118 = *(v58 + v56);
    specialized ArraySlice.subscript.getter(v56 + 1, v55 >> 1, started, v58, v56, v57);
    v61 = v60;
    v63 = v62;
    swift_unknownObjectRelease();
    v64 = v61 == v63 >> 1;
    v65 = v150;
    v66 = v143;
    if (v64)
    {
      switch(v118)
      {
        case 1:
          v152 = 1;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.UrlCodingKeys and conformance AnswerSynthesisResolutionResult.UrlCodingKeys();
          OUTLINED_FUNCTION_4_1(&unk_286F8F740, &v152);
          type metadata accessor for URL();
          OUTLINED_FUNCTION_13_1();
          lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v85, v86, MEMORY[0x277CC9280]);
          v87 = OUTLINED_FUNCTION_23_0();
          OUTLINED_FUNCTION_18_1(v87);
          OUTLINED_FUNCTION_31();
          swift_unknownObjectRelease();
          v108 = OUTLINED_FUNCTION_6_1();
          v109(v108);
          v110 = OUTLINED_FUNCTION_1_1();
          v111(v110);
          OUTLINED_FUNCTION_44();
          goto LABEL_17;
        case 2:
          v153 = 2;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DateCodingKeys and conformance AnswerSynthesisResolutionResult.DateCodingKeys();
          OUTLINED_FUNCTION_4_1(&unk_286F8F7D0, &v153);
          type metadata accessor for Date();
          OUTLINED_FUNCTION_15_1();
          lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v79, v80, MEMORY[0x277CC95A0]);
          v81 = OUTLINED_FUNCTION_23_0();
          OUTLINED_FUNCTION_18_1(v81);
          OUTLINED_FUNCTION_31();
          swift_unknownObjectRelease();
          v94 = OUTLINED_FUNCTION_6_1();
          v95(v94);
          v96 = OUTLINED_FUNCTION_1_1();
          v97(v96);
          OUTLINED_FUNCTION_44();
          goto LABEL_17;
        case 3:
          v154 = 3;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionResult.DateComponentsCodingKeys();
          OUTLINED_FUNCTION_4_1(&unk_286F8F860, &v154);
          type metadata accessor for DateComponents();
          OUTLINED_FUNCTION_14_1();
          lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v82, v83, MEMORY[0x277CC89B0]);
          v84 = v122;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_31();
          swift_unknownObjectRelease();
          v98 = OUTLINED_FUNCTION_37();
          v99(v98);
          v100 = OUTLINED_FUNCTION_1_1();
          v101(v100);
          swift_storeEnumTagMultiPayload();
          v107 = v84;
          goto LABEL_18;
        case 4:
          v155 = 4;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.PersonCodingKeys and conformance AnswerSynthesisResolutionResult.PersonCodingKeys();
          OUTLINED_FUNCTION_4_1(&unk_286F8F8F0, &v155);
          type metadata accessor for IntentPerson();
          OUTLINED_FUNCTION_17_1();
          lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v76, v77, MEMORY[0x277CB9DD0]);
          v78 = OUTLINED_FUNCTION_23_0();
          OUTLINED_FUNCTION_18_1(v78);
          OUTLINED_FUNCTION_31();
          swift_unknownObjectRelease();
          v90 = OUTLINED_FUNCTION_6_1();
          v91(v90);
          v92 = OUTLINED_FUNCTION_1_1();
          v93(v92);
          OUTLINED_FUNCTION_44();
LABEL_17:
          swift_storeEnumTagMultiPayload();
          v107 = v47;
          goto LABEL_18;
        case 5:
          v156 = 5;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DoubleCodingKeys and conformance AnswerSynthesisResolutionResult.DoubleCodingKeys();
          v88 = v142;
          OUTLINED_FUNCTION_4_1(&unk_286F8F980, &v156);
          v89 = v132;
          KeyedDecodingContainer.decode(_:forKey:)();
          v113 = v112;
          swift_unknownObjectRelease();
          (*(v66 + 8))(v88, v89);
          v114 = OUTLINED_FUNCTION_1_1();
          v115(v114);
          v116 = v125;
          *v125 = v113;
          swift_storeEnumTagMultiPayload();
          v107 = v116;
LABEL_18:
          v106 = v149;
          break;
        default:
          v151 = 0;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.NavigationCodingKeys and conformance AnswerSynthesisResolutionResult.NavigationCodingKeys();
          OUTLINED_FUNCTION_4_1(&unk_286F8F6B0, &v151);
          type metadata accessor for PlaceDescriptor();
          OUTLINED_FUNCTION_11_1();
          lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v67, v68, MEMORY[0x277CCB130]);
          v69 = OUTLINED_FUNCTION_23_0();
          OUTLINED_FUNCTION_18_1(v69);
          OUTLINED_FUNCTION_31();
          swift_unknownObjectRelease();
          v102 = OUTLINED_FUNCTION_6_1();
          v103(v102);
          v104 = OUTLINED_FUNCTION_1_1();
          v105(v104);
          OUTLINED_FUNCTION_44();
          swift_storeEnumTagMultiPayload();
          v106 = v149;
          v107 = v47;
          break;
      }

      outlined init with take of AnswerSynthesisExtractionCandidate(v107, v65, type metadata accessor for AnswerSynthesisResolutionResult);
      outlined init with take of AnswerSynthesisExtractionCandidate(v65, v138, type metadata accessor for AnswerSynthesisResolutionResult);
      v75 = v106;
      goto LABEL_11;
    }

    v54 = v145;
    v49 = v124;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t AnswerSynthesisResult.__allocating_init(answer:dialog:sources:resolutionResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  AnswerSynthesisResult.init(answer:dialog:sources:resolutionResult:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void *AnswerSynthesisResult.init(answer:dialog:sources:resolutionResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  outlined init with take of AnswerSynthesisResolutionResult?(a6, v6 + OBJC_IVAR____TtC15OmniSearchTypes21AnswerSynthesisResult_resolutionResult);
  return v6;
}

uint64_t AnswerSynthesisResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726577736E61 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676F6C616964 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73656372756F73 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x800000025DCEABF0 == a2)
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

unint64_t AnswerSynthesisResult.CodingKeys.stringValue.getter(char a1)
{
  result = 0x726577736E61;
  switch(a1)
  {
    case 1:
      result = 0x676F6C616964;
      break;
    case 2:
      result = 0x73656372756F73;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisResult.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnswerSynthesisResult.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AnswerSynthesisResult.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AnswerSynthesisResult.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *AnswerSynthesisResult.deinit()
{

  outlined destroy of AnswerSynthesisResolutionResult?(v0 + OBJC_IVAR____TtC15OmniSearchTypes21AnswerSynthesisResult_resolutionResult);
  return v0;
}

uint64_t AnswerSynthesisResult.__deallocating_deinit()
{
  AnswerSynthesisResult.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t AnswerSynthesisResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes21AnswerSynthesisResultC10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes21AnswerSynthesisResultC10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  OUTLINED_FUNCTION_41(a1, a1[3]);
  lazy protocol witness table accessor for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 48);
    v14[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMd, &_sSay15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMR);
    lazy protocol witness table accessor for type [AnswerSynthesisExtractionCandidate] and conformance <A> [A](&lazy protocol witness table cache variable for type [AnswerSynthesisExtractionCandidate] and conformance <A> [A], &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate and conformance AnswerSynthesisExtractionCandidate, &protocol conformance descriptor for AnswerSynthesisExtractionCandidate, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_43();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14[14] = 3;
    type metadata accessor for AnswerSynthesisResolutionResult(0);
    OUTLINED_FUNCTION_12_1();
    lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v11, v12, &protocol conformance descriptor for AnswerSynthesisResolutionResult);
    OUTLINED_FUNCTION_43();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void AnswerSynthesisResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_36();
  v26 = v23;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes31AnswerSynthesisResolutionResultOSgMd, &_s15OmniSearchTypes31AnswerSynthesisResolutionResultOSgMR);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes21AnswerSynthesisResultC10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes21AnswerSynthesisResultC10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_41(v28, v28[3]);
  lazy protocol witness table accessor for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys();
  OUTLINED_FUNCTION_40();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    type metadata accessor for AnswerSynthesisResult(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v26[3] = v31;
    v26[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26[5] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMd, &_sSay15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMR);
    lazy protocol witness table accessor for type [AnswerSynthesisExtractionCandidate] and conformance <A> [A](&lazy protocol witness table cache variable for type [AnswerSynthesisExtractionCandidate] and conformance <A> [A], &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate and conformance AnswerSynthesisExtractionCandidate, &protocol conformance descriptor for AnswerSynthesisExtractionCandidate, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_42();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26[6] = v37;
    type metadata accessor for AnswerSynthesisResolutionResult(0);
    OUTLINED_FUNCTION_12_1();
    lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v33, v34, &protocol conformance descriptor for AnswerSynthesisResolutionResult);
    OUTLINED_FUNCTION_42();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = OUTLINED_FUNCTION_20_0();
    v36(v35);
    outlined init with take of AnswerSynthesisResolutionResult?(v25, v26 + OBJC_IVAR____TtC15OmniSearchTypes21AnswerSynthesisResult_resolutionResult);
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_35();
}

uint64_t protocol witness for Decodable.init(from:) in conformance AnswerSynthesisResult@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC15OmniSearchTypes34AnswerSynthesisExtractionCandidateO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLO_Tt1g5(uint64_t result, uint64_t a2)
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

uint64_t lazy protocol witness table accessor for type TypedValue and conformance TypedValue(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys);
  }

  return result;
}