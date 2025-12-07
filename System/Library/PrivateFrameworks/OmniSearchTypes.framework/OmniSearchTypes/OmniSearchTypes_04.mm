Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FlightReservation(uint64_t a1)
{
  Hasher.init(_seed:)();
  FlightReservation.hash(into:)();
  return Hasher._finalize()();
}

uint64_t HotelReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:hotelReservationId:hotelUnderName:hotelCheckinDateComponents:hotelCheckoutDateComponents:hotelReservationForName:hotelModifyReservationUrl:hotelReservationForTelephone:hotelReservationForAddress:hotelBookingProvider:hotelCustomerNames:hotelRoomNumbers:hotelNumberOfRooms:hotelDuration:hotelCost:hotelStatus:hotelUpdateStatus:hotelCheckinDateString:hotelCheckoutDateString:durationInDays:startDateTimeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, char a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49)
{
  v50 = type metadata accessor for HotelReservation(0);
  v51 = a9 + v50[31];
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
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  *(a9 + 112) = a14;
  *(a9 + 120) = a15;
  *(a9 + 136) = a16;
  *(a9 + 144) = a17;
  v52 = OUTLINED_FUNCTION_434();
  OUTLINED_FUNCTION_152(v52, v53);
  result = OUTLINED_FUNCTION_295(v50[16]);
  v55 = (a9 + v50[17]);
  *v55 = a20;
  v55[1] = a21;
  v56 = (a9 + v50[18]);
  *v56 = a22;
  v56[1] = a23;
  v57 = (a9 + v50[19]);
  *v57 = a24;
  v57[1] = a25;
  v58 = (a9 + v50[20]);
  *v58 = a26;
  v58[1] = a27;
  v59 = (a9 + v50[21]);
  *v59 = a28;
  v59[1] = a29;
  *(a9 + v50[22]) = a30;
  *(a9 + v50[23]) = a31;
  v60 = a9 + v50[24];
  *v60 = a32;
  *(v60 + 8) = a33 & 1;
  v61 = a9 + v50[25];
  *v61 = a34;
  *(v61 + 8) = a35 & 1;
  v62 = (a9 + v50[26]);
  *v62 = a36;
  v62[1] = a37;
  v63 = (a9 + v50[27]);
  *v63 = a38;
  v63[1] = a39;
  v64 = (a9 + v50[28]);
  *v64 = a40;
  v64[1] = a41;
  v65 = (a9 + v50[29]);
  *v65 = a42;
  v65[1] = a43;
  v66 = (a9 + v50[30]);
  *v66 = a44;
  v66[1] = a45;
  *v51 = a46;
  *(v51 + 8) = a47 & 1;
  v67 = (a9 + v50[32]);
  *v67 = a48;
  v67[1] = a49;
  return result;
}

uint64_t HotelReservation.eventSourceBundleIdentifier.setter()
{
  OUTLINED_FUNCTION_217();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t HotelReservation.eventSourceLLMConsumableDescription.setter()
{
  OUTLINED_FUNCTION_217();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t HotelReservation.hotelCheckoutDateComponents.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for HotelReservation(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR, *(v1 + 64));
}

uint64_t HotelReservation.hotelReservationForTelephone.getter()
{
  return HotelReservation.hotelReservationForTelephone.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t HotelReservation.hotelReservationForAddress.getter()
{
  return HotelReservation.hotelReservationForAddress.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t HotelReservation.hotelCustomerNames.getter()
{
  type metadata accessor for HotelReservation(0);
}

uint64_t HotelReservation.hotelRoomNumbers.getter()
{
  type metadata accessor for HotelReservation(0);
}

uint64_t HotelReservation.durationInDays.modify()
{
  v0 = OUTLINED_FUNCTION_71();
  type metadata accessor for HotelReservation(v0);
  return OUTLINED_FUNCTION_95();
}

void static HotelReservation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_129_0();
  v5 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v13 = OUTLINED_FUNCTION_62(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_42_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_382();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSg_ADtMd, &_s10Foundation14DateComponentsVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_314();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_130();
  v20 = v20 && v18 == v19;
  if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_50;
  }

  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v1[2], v0[2]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v1[3], v0[3]) & 1) == 0)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_370();
  v23 = v20 && v21 == v22;
  if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_310();
  if (v25)
  {
    if (!v24)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_126();
    v28 = v20 && v26 == v27;
    if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v24)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_309();
  if (v30)
  {
    if (!v29)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_183();
    v33 = v20 && v31 == v32;
    if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v29)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_308();
  if (v35)
  {
    if (!v34)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_182();
    v38 = v20 && v36 == v37;
    if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v34)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_307();
  if (v40)
  {
    if (!v39)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_181();
    v43 = v20 && v41 == v42;
    if (!v43 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v39)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_369();
  if (!v20)
  {
    goto LABEL_50;
  }

  v44 = v0[16];
  if (v1[16])
  {
    if (!v44)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_368();
    v47 = v20 && v45 == v46;
    if (!v47 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v44)
  {
    goto LABEL_50;
  }

  v48 = v1[18];
  v49 = v0[18];
  if (v48)
  {
    if (!v49)
    {
      goto LABEL_50;
    }

    v50 = v1[17] == v0[17] && v48 == v49;
    if (!v50 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v49)
  {
    goto LABEL_50;
  }

  v151 = type metadata accessor for HotelReservation(0);
  v152 = v151[15];
  v153 = *(v15 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v152, v3, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v152, v3 + v153, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_16_3(v3);
  if (v20)
  {
    OUTLINED_FUNCTION_16_3(v3 + v153);
    if (v20)
    {
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      goto LABEL_79;
    }

LABEL_77:
    v54 = v3;
LABEL_88:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v54, &_s10Foundation14DateComponentsVSg_ADtMd, &_s10Foundation14DateComponentsVSg_ADtMR);
    goto LABEL_50;
  }

  outlined init with copy of RentalCarReservation?(v3, v4, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_16_3(v3 + v153);
  if (v51)
  {
    v52 = OUTLINED_FUNCTION_430();
    v53(v52);
    goto LABEL_77;
  }

  (*(v7 + 32))(v11, v3 + v153, v5);
  OUTLINED_FUNCTION_38_2();
  lazy protocol witness table accessor for type Date and conformance Date(v55, v56, MEMORY[0x277CC89A8]);
  v150 = dispatch thunk of static Equatable.== infix(_:_:)();
  v154 = *(v7 + 8);
  v57 = OUTLINED_FUNCTION_96();
  v58(v57);
  v59 = OUTLINED_FUNCTION_430();
  v154(v59);
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  if ((v150 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_79:
  v60 = v151[16];
  v61 = *(v15 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v60, v2, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v60, v2 + v61, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v62 = OUTLINED_FUNCTION_16_3(v2);
  if (!v20)
  {
    OUTLINED_FUNCTION_438(v62, v63, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_16_3(v2 + v61);
    if (!v64)
    {
      v67 = OUTLINED_FUNCTION_419();
      v68(v67);
      OUTLINED_FUNCTION_38_2();
      lazy protocol witness table accessor for type Date and conformance Date(v69, v70, MEMORY[0x277CC89A8]);
      OUTLINED_FUNCTION_417();
      v71 = dispatch thunk of static Equatable.== infix(_:_:)();
      v72 = *(v7 + 8);
      v73 = OUTLINED_FUNCTION_96();
      v72(v73);
      v74 = OUTLINED_FUNCTION_322();
      v72(v74);
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      if ((v71 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_90;
    }

    v65 = OUTLINED_FUNCTION_322();
    v66(v65);
    goto LABEL_87;
  }

  OUTLINED_FUNCTION_16_3(v2 + v61);
  if (!v20)
  {
LABEL_87:
    v54 = v2;
    goto LABEL_88;
  }

  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
LABEL_90:
  OUTLINED_FUNCTION_10_3();
  if (v77)
  {
    if (!v75)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v76);
    v80 = v20 && v78 == v79;
    if (!v80 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v75)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v83)
  {
    if (!v81)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v82);
    v86 = v20 && v84 == v85;
    if (!v86 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v81)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v89)
  {
    if (!v87)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v88);
    v92 = v20 && v90 == v91;
    if (!v92 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v87)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v95)
  {
    if (!v93)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v94);
    v98 = v20 && v96 == v97;
    if (!v98 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v93)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v101)
  {
    if (!v99)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v100);
    v104 = v20 && v102 == v103;
    if (!v104 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v99)
  {
    goto LABEL_50;
  }

  if ((OUTLINED_FUNCTION_409(v151[22]) & 1) == 0 || (OUTLINED_FUNCTION_409(v151[23]) & 1) == 0)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_200();
  if (v106)
  {
    if (!v105)
    {
      goto LABEL_50;
    }
  }

  else
  {
    OUTLINED_FUNCTION_429();
    if (v107)
    {
      goto LABEL_50;
    }
  }

  OUTLINED_FUNCTION_200();
  if (v109)
  {
    if (!v108)
    {
      goto LABEL_50;
    }
  }

  else
  {
    OUTLINED_FUNCTION_247();
    if (v110)
    {
      goto LABEL_50;
    }
  }

  OUTLINED_FUNCTION_10_3();
  if (v113)
  {
    if (!v111)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v112);
    v116 = v20 && v114 == v115;
    if (!v116 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v111)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v119)
  {
    if (!v117)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v118);
    v122 = v20 && v120 == v121;
    if (!v122 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v117)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v125)
  {
    if (!v123)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v124);
    v128 = v20 && v126 == v127;
    if (!v128 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v123)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v131)
  {
    if (!v129)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v130);
    v134 = v20 && v132 == v133;
    if (!v134 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v129)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v137)
  {
    if (!v135)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v136);
    v140 = v20 && v138 == v139;
    if (!v140 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v135)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_200();
  if (v142)
  {
    if (!v141)
    {
      goto LABEL_50;
    }
  }

  else
  {
    OUTLINED_FUNCTION_429();
    if (v143)
    {
      goto LABEL_50;
    }
  }

  OUTLINED_FUNCTION_10_3();
  if (v146 && v144)
  {
    OUTLINED_FUNCTION_25_2(v145);
    if (!v20 || v147 != v148)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_50:
  OUTLINED_FUNCTION_42_0();
}

uint64_t HotelReservation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73726577736E61 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000025DCEB2F0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7373654D6C69616DLL && a2 == 0xED00006449656761;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x800000025DCEB0A0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001BLL && 0x800000025DCEB120 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000023 && 0x800000025DCEB1C0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E557349656D6974 && a2 == 0xED00006E776F6E6BLL;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x800000025DCEB730 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x646E556C65746F68 && a2 == 0xEE00656D614E7265;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001ALL && 0x800000025DCEB750 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001BLL && 0x800000025DCEB770 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000017 && 0x800000025DCEB790 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000019 && 0x800000025DCEB7B0 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD00000000000001CLL && 0x800000025DCEB7D0 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD00000000000001ALL && 0x800000025DCEB7F0 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000014 && 0x800000025DCEB810 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000012 && 0x800000025DCEB830 == a2;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000010 && 0x800000025DCEB850 == a2;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000012 && 0x800000025DCEB870 == a2;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x7275446C65746F68 && a2 == 0xED00006E6F697461;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x736F436C65746F68 && a2 == 0xE900000000000074;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x6174536C65746F68 && a2 == 0xEB00000000737574;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000011 && 0x800000025DCEB890 == a2;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000016 && 0x800000025DCEB8B0 == a2;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000017 && 0x800000025DCEB8D0 == a2;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x6E6F697461727564 && a2 == 0xEE00737961446E49;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else if (a1 == 0xD000000000000011 && 0x800000025DCEB2D0 == a2)
                                                        {

                                                          return 28;
                                                        }

                                                        else
                                                        {
                                                          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                          if (v34)
                                                          {
                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            return 29;
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
            }
          }
        }
      }
    }
  }
}

unint64_t HotelReservation.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x73726577736E61;
      break;
    case 2:
    case 19:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6449656C646E7562;
      break;
    case 4:
      result = 0x7373654D6C69616DLL;
      break;
    case 5:
    case 25:
      result = 0xD000000000000016;
      break;
    case 6:
    case 12:
      v3 = 9;
      goto LABEL_25;
    case 7:
      result = 0xD000000000000023;
      break;
    case 8:
      result = 0x6E557349656D6974;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x646E556C65746F68;
      break;
    case 11:
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 13:
    case 26:
      v3 = 5;
LABEL_25:
      result = v3 | 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    case 21:
      result = 0x7275446C65746F68;
      break;
    case 22:
      result = 0x736F436C65746F68;
      break;
    case 23:
      result = 0x6174536C65746F68;
      break;
    case 24:
    case 28:
      result = 0xD000000000000011;
      break;
    case 27:
      result = 0x6E6F697461727564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HotelReservation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = HotelReservation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HotelReservation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HotelReservation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void HotelReservation.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_193();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes16HotelReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes16HotelReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  v22 = lazy protocol witness table accessor for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys();
  OUTLINED_FUNCTION_192(&unk_286F90E70, v23, v22);
  OUTLINED_FUNCTION_67_0();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v20)
  {
    OUTLINED_FUNCTION_413();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    OUTLINED_FUNCTION_198(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x277D837D8]);
    OUTLINED_FUNCTION_157();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_412();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_98(&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_43_2(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_43_2(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_74(8);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_43_2(9);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = type metadata accessor for HotelReservation(0);
    OUTLINED_FUNCTION_274(11);
    type metadata accessor for DateComponents();
    OUTLINED_FUNCTION_38_2();
    lazy protocol witness table accessor for type Date and conformance Date(v24, v25, MEMORY[0x277CC8998]);
    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_130_0(v28[16]);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[17]);
    OUTLINED_FUNCTION_43_2(13);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[18]);
    OUTLINED_FUNCTION_43_2(14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[19]);
    OUTLINED_FUNCTION_43_2(15);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[20]);
    OUTLINED_FUNCTION_43_2(16);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[21]);
    OUTLINED_FUNCTION_43_2(17);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_135(v28[22]);
    OUTLINED_FUNCTION_63(18);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_135(v28[23]);
    OUTLINED_FUNCTION_63(19);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_239(v28[24]);
    OUTLINED_FUNCTION_43_2(20);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_239(v28[25]);
    OUTLINED_FUNCTION_43_2(21);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[26]);
    OUTLINED_FUNCTION_43_2(22);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[27]);
    OUTLINED_FUNCTION_43_2(23);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[28]);
    OUTLINED_FUNCTION_43_2(24);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[29]);
    OUTLINED_FUNCTION_43_2(25);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[30]);
    OUTLINED_FUNCTION_43_2(26);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_239(v28[31]);
    OUTLINED_FUNCTION_43_2(27);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v28[32]);
    OUTLINED_FUNCTION_43_2(28);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v26 = OUTLINED_FUNCTION_375();
  v27(v26);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_35();
}

void HotelReservation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_435();
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v26 = OUTLINED_FUNCTION_62(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_42_1();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_209();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes16HotelReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes16HotelReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1();
  v32 = v31;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  v34 = OUTLINED_FUNCTION_316();
  v99 = type metadata accessor for HotelReservation(v34);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_98_0(v36, v85);
  v37 = v20[3];
  v98 = v20;
  OUTLINED_FUNCTION_150();
  v38 = lazy protocol witness table accessor for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys();
  OUTLINED_FUNCTION_405(&unk_286F90E70, v39, v38);
  if (v21)
  {
    OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_345();
    __swift_destroy_boxed_opaque_existential_1(v20);
    if (v32)
    {

      if ((v29 & 1) == 0)
      {
LABEL_22:
        if (v37)
        {
          goto LABEL_23;
        }

        goto LABEL_24;
      }
    }

    else if (!v29)
    {
      goto LABEL_22;
    }

    if (v37)
    {
LABEL_23:
    }

LABEL_24:

    if (v20)
    {

      if ((v86 & 1) == 0)
      {
LABEL_26:
        v40 = v99;
        if (v87)
        {
LABEL_27:
          outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v100 + v40[15], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
          if ((v88 & 1) == 0)
          {
LABEL_28:
            if (v89)
            {
LABEL_29:
              OUTLINED_FUNCTION_112();
              if ((v90 & 1) == 0)
              {
LABEL_30:
                if (v91)
                {
LABEL_31:
                  OUTLINED_FUNCTION_112();
                  if ((v92 & 1) == 0)
                  {
LABEL_32:
                    if (v93)
                    {
LABEL_33:
                      OUTLINED_FUNCTION_112();
                      if ((v94 & 1) == 0)
                      {
LABEL_34:
                        if (v95)
                        {
LABEL_35:

                          if ((v96 & 1) == 0)
                          {
LABEL_36:
                            if (!v97)
                            {
                              goto LABEL_38;
                            }

LABEL_37:
                            OUTLINED_FUNCTION_112();
                            goto LABEL_38;
                          }

LABEL_18:
                          OUTLINED_FUNCTION_112();
                          if ((v97 & 1) == 0)
                          {
                            goto LABEL_38;
                          }

                          goto LABEL_37;
                        }

LABEL_17:
                        if (!v96)
                        {
                          goto LABEL_36;
                        }

                        goto LABEL_18;
                      }

LABEL_16:

                      if (v95)
                      {
                        goto LABEL_35;
                      }

                      goto LABEL_17;
                    }

LABEL_15:
                    if (!v94)
                    {
                      goto LABEL_34;
                    }

                    goto LABEL_16;
                  }

LABEL_14:
                  OUTLINED_FUNCTION_112();
                  if (v93)
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_15;
                }

LABEL_13:
                if (!v92)
                {
                  goto LABEL_32;
                }

                goto LABEL_14;
              }

LABEL_12:
              OUTLINED_FUNCTION_112();
              if (v91)
              {
                goto LABEL_31;
              }

              goto LABEL_13;
            }

LABEL_11:
            if (!v90)
            {
              goto LABEL_30;
            }

            goto LABEL_12;
          }

LABEL_10:
          outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v100 + v40[16], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
          if (v89)
          {
            goto LABEL_29;
          }

          goto LABEL_11;
        }

LABEL_9:
        if (!v88)
        {
          goto LABEL_28;
        }

        goto LABEL_10;
      }
    }

    else if (!v86)
    {
      goto LABEL_26;
    }

    v40 = v99;
    if (v87)
    {
      goto LABEL_27;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_298();
  *v100 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v100 + 8) = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  OUTLINED_FUNCTION_413();
  OUTLINED_FUNCTION_194(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x277D83808]);
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_439(v42);
  *(v100 + 16) = a10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  OUTLINED_FUNCTION_412();
  OUTLINED_FUNCTION_103(&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808]);
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_439(v43);
  *(v100 + 24) = a10;
  OUTLINED_FUNCTION_159(3);
  *(v100 + 32) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v100 + 40) = v44;
  OUTLINED_FUNCTION_159(4);
  *(v100 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v100 + 56) = v45;
  OUTLINED_FUNCTION_159(5);
  *(v100 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v100 + 72) = v46;
  OUTLINED_FUNCTION_159(6);
  *(v100 + 80) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v100 + 88) = v47;
  OUTLINED_FUNCTION_159(7);
  *(v100 + 96) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v100 + 104) = v48;
  OUTLINED_FUNCTION_159(8);
  *(v100 + 112) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  OUTLINED_FUNCTION_159(9);
  *(v100 + 120) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v100 + 128) = v49;
  OUTLINED_FUNCTION_202(10);
  *(v100 + 136) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v100 + 144) = v50;
  type metadata accessor for DateComponents();
  LOBYTE(a10) = 11;
  OUTLINED_FUNCTION_38_2();
  lazy protocol witness table accessor for type Date and conformance Date(v51, v52, MEMORY[0x277CC89B0]);
  OUTLINED_FUNCTION_248();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of Date?(v22, v100 + v99[15], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_219(12);
  OUTLINED_FUNCTION_248();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of Date?(v29, v100 + v99[16], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_82_0(13);
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v53, v54, v99[17]);
  OUTLINED_FUNCTION_82_0(14);
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v55, v56, v99[18]);
  OUTLINED_FUNCTION_82_0(15);
  v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v57, v58, v99[19]);
  OUTLINED_FUNCTION_82_0(16);
  v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v59, v60, v99[20]);
  OUTLINED_FUNCTION_82_0(17);
  v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v61, v62, v99[21]);
  OUTLINED_FUNCTION_153_0(18);
  OUTLINED_FUNCTION_248();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v100 + v99[22]) = a10;
  OUTLINED_FUNCTION_153_0(19);
  OUTLINED_FUNCTION_248();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v100 + v99[23]) = a10;
  OUTLINED_FUNCTION_82_0(20);
  v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_175(v63, v64, v99[24]);
  OUTLINED_FUNCTION_82_0(21);
  v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_175(v65, v66, v99[25]);
  OUTLINED_FUNCTION_82_0(22);
  v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v67, v68, v99[26]);
  OUTLINED_FUNCTION_82_0(23);
  v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v69, v70, v99[27]);
  OUTLINED_FUNCTION_82_0(24);
  v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v71, v72, v99[28]);
  OUTLINED_FUNCTION_82_0(25);
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_423();
  OUTLINED_FUNCTION_78(v73, v74, v99[29]);
  OUTLINED_FUNCTION_82_0(26);
  v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v75, v76, v99[30]);
  OUTLINED_FUNCTION_82_0(27);
  v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_175(v77, v78, v99[31]);
  OUTLINED_FUNCTION_82_0(28);
  v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v81 = v80;
  v82 = OUTLINED_FUNCTION_156();
  v83(v82);
  v84 = (v100 + v99[32]);
  *v84 = v79;
  v84[1] = v81;
  outlined init with copy of RentalCarReservation(v100, v24, type metadata accessor for HotelReservation);
  __swift_destroy_boxed_opaque_existential_1(v98);
  OUTLINED_FUNCTION_38();
  outlined destroy of RentalCarReservation();
LABEL_38:
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

void RestaurantReservation.init(id:answers:answerAttributes:bundleId:mailMessageId:eventMessageIdentifier:eventSourceBundleIdentifier:eventSourceLLMConsumableDescription:timeIsUnknown:restaurantReservationId:restaurantUnderName:restaurantStartDateComponents:restaurantPartySize:restaurantReservationForName:restaurantReservationForTelephone:restaurantReservationForAddress:restaurantBookingProvider:restaurantCustomerNames:restaurantMealType:restaurantStatus:restaurantUpdateStatus:restaurantStartDateString:startDateTimeZone:)(uint64_t a1@<X8>, __int128 a2, __int128 a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_391();
  *a1 = v32;
  *(a1 + 8) = v33;
  *(a1 + 16) = v34;
  *(a1 + 24) = v35;
  *(a1 + 32) = v36;
  *(a1 + 40) = v37;
  OUTLINED_FUNCTION_355(v32, v33, v34, v35, v36, v37, v38, v39);
  *(a1 + 136) = a8;
  *(a1 + 144) = a9;
  *(a1 + 64) = a2;
  *(a1 + 80) = a3;
  *(a1 + 120) = a7;
  v40 = type metadata accessor for RestaurantReservation(0);
  v41 = OUTLINED_FUNCTION_347();
  outlined init with take of Date?(v41, v42, v43, v44);
  OUTLINED_FUNCTION_433(v40[16]);
  OUTLINED_FUNCTION_432(v40[17]);
  v45 = (a1 + v40[18]);
  *v45 = a15;
  v45[1] = a16;
  v46 = (a1 + v40[19]);
  *v46 = a17;
  v46[1] = v53;
  v47 = (a1 + v40[20]);
  *v47 = v54;
  v47[1] = v55;
  *(a1 + v40[21]) = a21;
  v48 = (a1 + v40[22]);
  *v48 = a22;
  v48[1] = a23;
  v49 = (a1 + v40[23]);
  *v49 = a24;
  v49[1] = a25;
  v50 = (a1 + v40[24]);
  *v50 = a26;
  v50[1] = a27;
  v51 = (a1 + v40[25]);
  *v51 = a28;
  v51[1] = a29;
  v52 = (a1 + v40[26]);
  *v52 = a30;
  v52[1] = a31;
}

uint64_t RestaurantReservation.restaurantCustomerNames.getter()
{
  type metadata accessor for RestaurantReservation(0);
}

void static RestaurantReservation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_129_0();
  type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_62(v5);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_237();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSg_ADtMd, &_s10Foundation14DateComponentsVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  v10 = &v119 - v9;
  OUTLINED_FUNCTION_130();
  v13 = v13 && v11 == v12;
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_50;
  }

  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v1[2], v0[2]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v1[3], v0[3]) & 1) == 0)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_370();
  v16 = v13 && v14 == v15;
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_310();
  if (v18)
  {
    if (!v17)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_126();
    v21 = v13 && v19 == v20;
    if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v17)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_309();
  if (v23)
  {
    if (!v22)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_183();
    v26 = v13 && v24 == v25;
    if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v22)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_308();
  if (v28)
  {
    if (!v27)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_182();
    v31 = v13 && v29 == v30;
    if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v27)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_307();
  if (v33)
  {
    if (!v32)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_181();
    v36 = v13 && v34 == v35;
    if (!v36 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v32)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_369();
  if (!v13)
  {
    goto LABEL_50;
  }

  v37 = v0[16];
  if (v1[16])
  {
    if (!v37)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_368();
    v40 = v13 && v38 == v39;
    if (!v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v37)
  {
    goto LABEL_50;
  }

  v41 = v1[18];
  v42 = v0[18];
  if (v41)
  {
    if (!v42)
    {
      goto LABEL_50;
    }

    v43 = v1[17] == v0[17] && v41 == v42;
    if (!v43 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v42)
  {
    goto LABEL_50;
  }

  v120 = type metadata accessor for RestaurantReservation(0);
  v44 = *(v120 + 60);
  v45 = *(v7 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v44, v10, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v44, &v10[v45], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v46 = OUTLINED_FUNCTION_16_3(v10);
  if (!v13)
  {
    OUTLINED_FUNCTION_438(v46, v47, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    OUTLINED_FUNCTION_16_3(&v10[v45]);
    if (!v48)
    {
      v51 = OUTLINED_FUNCTION_419();
      v52(v51);
      OUTLINED_FUNCTION_38_2();
      lazy protocol witness table accessor for type Date and conformance Date(v53, v54, MEMORY[0x277CC89A8]);
      OUTLINED_FUNCTION_417();
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      v56 = *(v3 + 8);
      v57 = OUTLINED_FUNCTION_96();
      v56(v57);
      v58 = OUTLINED_FUNCTION_322();
      v56(v58);
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v10, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      if ((v55 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_79;
    }

    v49 = OUTLINED_FUNCTION_322();
    v50(v49);
LABEL_77:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v10, &_s10Foundation14DateComponentsVSg_ADtMd, &_s10Foundation14DateComponentsVSg_ADtMR);
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_16_3(&v10[v45]);
  if (!v13)
  {
    goto LABEL_77;
  }

  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v10, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
LABEL_79:
  OUTLINED_FUNCTION_10_3();
  if (v61)
  {
    if (!v59)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v60);
    v64 = v13 && v62 == v63;
    if (!v64 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v59)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v67)
  {
    if (!v65)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v66);
    v70 = v13 && v68 == v69;
    if (!v70 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v65)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v73)
  {
    if (!v71)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v72);
    v76 = v13 && v74 == v75;
    if (!v76 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v71)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v79)
  {
    if (!v77)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v78);
    v82 = v13 && v80 == v81;
    if (!v82 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v77)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v85)
  {
    if (!v83)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v84);
    v88 = v13 && v86 == v87;
    if (!v88 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v83)
  {
    goto LABEL_50;
  }

  if ((OUTLINED_FUNCTION_409(*(v120 + 84)) & 1) == 0)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v91)
  {
    if (!v89)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v90);
    v94 = v13 && v92 == v93;
    if (!v94 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v89)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v97)
  {
    if (!v95)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v96);
    v100 = v13 && v98 == v99;
    if (!v100 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v95)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v103)
  {
    if (!v101)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v102);
    v106 = v13 && v104 == v105;
    if (!v106 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v101)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v109)
  {
    if (!v107)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_25_2(v108);
    v112 = v13 && v110 == v111;
    if (!v112 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (v107)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_10_3();
  if (v115 && v113)
  {
    OUTLINED_FUNCTION_25_2(v114);
    if (!v13 || v116 != v117)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_50:
  OUTLINED_FUNCTION_42_0();
}

uint64_t RestaurantReservation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73726577736E61 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000025DCEB2F0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7373654D6C69616DLL && a2 == 0xED00006449656761;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x800000025DCEB0A0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001BLL && 0x800000025DCEB120 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000023 && 0x800000025DCEB1C0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E557349656D6974 && a2 == 0xED00006E776F6E6BLL;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000017 && 0x800000025DCEB8F0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000013 && 0x800000025DCEB910 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001DLL && 0x800000025DCEB930 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000013 && 0x800000025DCEB950 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001CLL && 0x800000025DCEB970 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000021 && 0x800000025DCEB990 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD00000000000001FLL && 0x800000025DCEB9C0 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000019 && 0x800000025DCEB9E0 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000017 && 0x800000025DCEBA00 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000012 && 0x800000025DCEBA20 == a2;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000010 && 0x800000025DCEBA40 == a2;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000016 && 0x800000025DCEBA60 == a2;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000019 && 0x800000025DCEBA80 == a2;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else if (a1 == 0xD000000000000011 && 0x800000025DCEB2D0 == a2)
                                            {

                                              return 22;
                                            }

                                            else
                                            {
                                              v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                              if (v28)
                                              {
                                                return 22;
                                              }

                                              else
                                              {
                                                return 23;
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
}

unint64_t RestaurantReservation.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      return 0x73726577736E61;
    case 2:
      return 0xD000000000000010;
    case 3:
      return 0x6449656C646E7562;
    case 4:
      return 0x7373654D6C69616DLL;
    case 5:
    case 20:
      return 0xD000000000000016;
    case 6:
      v3 = 11;
      goto LABEL_15;
    case 7:
      return 0xD000000000000023;
    case 8:
      return 0x6E557349656D6974;
    case 9:
    case 17:
      return 0xD000000000000017;
    case 10:
    case 12:
      return 0xD000000000000013;
    case 11:
      v3 = 13;
      goto LABEL_15;
    case 13:
      return 0xD00000000000001CLL;
    case 14:
      return 0xD000000000000021;
    case 15:
      return 0xD00000000000001FLL;
    case 16:
    case 21:
      v3 = 9;
LABEL_15:
      result = v3 | 0xD000000000000010;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RestaurantReservation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = RestaurantReservation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance RestaurantReservation.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = RestaurantReservation.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RestaurantReservation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RestaurantReservation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void RestaurantReservation.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes21RestaurantReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes21RestaurantReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  v6 = lazy protocol witness table accessor for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys();
  OUTLINED_FUNCTION_192(&unk_286F90DE0, v7, v6);
  OUTLINED_FUNCTION_83_0();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_413();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    OUTLINED_FUNCTION_198(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x277D837D8]);
    OUTLINED_FUNCTION_65();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_412();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_98(&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8]);
    OUTLINED_FUNCTION_123_0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_60(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_60(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_60(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_60(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_60(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_191(8);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_60(9);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_60(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = type metadata accessor for RestaurantReservation(0);
    OUTLINED_FUNCTION_274(11);
    type metadata accessor for DateComponents();
    OUTLINED_FUNCTION_38_2();
    lazy protocol witness table accessor for type Date and conformance Date(v8, v9, MEMORY[0x277CC8998]);
    OUTLINED_FUNCTION_65();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[16]);
    OUTLINED_FUNCTION_60(12);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[17]);
    OUTLINED_FUNCTION_60(13);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[18]);
    OUTLINED_FUNCTION_60(14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[19]);
    OUTLINED_FUNCTION_60(15);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[20]);
    OUTLINED_FUNCTION_60(16);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_135(v10[21]);
    OUTLINED_FUNCTION_123_0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[22]);
    OUTLINED_FUNCTION_60(18);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[23]);
    OUTLINED_FUNCTION_60(19);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[24]);
    OUTLINED_FUNCTION_60(20);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[25]);
    OUTLINED_FUNCTION_60(21);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[26]);
    OUTLINED_FUNCTION_60(22);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

void RestaurantReservation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_435();
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_62(v25);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  v28 = &v90 - v27;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes21RestaurantReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes21RestaurantReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  v32 = OUTLINED_FUNCTION_316();
  v102 = type metadata accessor for RestaurantReservation(v32);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5_1();
  v36 = v35 - v34;
  v38 = *(v20 + 24);
  v37 = *(v20 + 32);
  v91 = v20;
  OUTLINED_FUNCTION_150();
  v39 = lazy protocol witness table accessor for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys();
  OUTLINED_FUNCTION_405(&unk_286F90DE0, v40, v39);
  if (v21)
  {
    v103 = v21;
    v41 = 0;
    OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_88_0();
    v100 = 0;
    v101 = 0;
  }

  else
  {
    v98 = v24;
    v41 = v30;
    OUTLINED_FUNCTION_298();
    *v36 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v36 + 8) = v43;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    OUTLINED_FUNCTION_413();
    OUTLINED_FUNCTION_194(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x277D83808]);
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_439(v20);
    *(v36 + 16) = a10;
    LODWORD(v38) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_412();
    v24 = OUTLINED_FUNCTION_103(&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808]);
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_439(v44);
    *&v97[4] = v24;
    *(v36 + 24) = a10;
    OUTLINED_FUNCTION_160(3);
    LODWORD(v37) = v30;
    *(v36 + 32) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v36 + 40) = v45;
    OUTLINED_FUNCTION_160(4);
    *(v36 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v36 + 56) = v46;
    OUTLINED_FUNCTION_160(5);
    *(v36 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v36 + 72) = v47;
    OUTLINED_FUNCTION_160(6);
    *(v36 + 80) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v36 + 88) = v48;
    v101 = v48;
    OUTLINED_FUNCTION_160(7);
    *(v36 + 96) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v36 + 104) = v49;
    v100 = v49;
    OUTLINED_FUNCTION_160(8);
    v50 = KeyedDecodingContainer.decode(_:forKey:)();
    v103 = 0;
    *(v36 + 112) = v50 & 1;
    OUTLINED_FUNCTION_160(9);
    v51 = v103;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v103 = v51;
    if (v51)
    {
      v54 = OUTLINED_FUNCTION_165();
      v55(v54);
      OUTLINED_FUNCTION_88_0();
      OUTLINED_FUNCTION_80_0();
    }

    else
    {
      *(v36 + 120) = v52;
      *(v36 + 128) = v53;
      OUTLINED_FUNCTION_119_0(10);
      v56 = v103;
      v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v103 = v56;
      if (v56)
      {
        v59 = OUTLINED_FUNCTION_165();
        v60(v59);
        v93 = 0;
        OUTLINED_FUNCTION_120_0();
        OUTLINED_FUNCTION_80_0();
        v22 = 1;
      }

      else
      {
        *(v36 + 136) = v57;
        *(v36 + 144) = v58;
        LODWORD(v20) = type metadata accessor for DateComponents();
        OUTLINED_FUNCTION_38_2();
        lazy protocol witness table accessor for type Date and conformance Date(v61, v62, MEMORY[0x277CC89B0]);
        OUTLINED_FUNCTION_248();
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v103 = 0;
        outlined init with take of Date?(v28, v36 + v102[15], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
        OUTLINED_FUNCTION_119_0(12);
        v63 = v103;
        v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v103 = v63;
        if (!v63)
        {
          OUTLINED_FUNCTION_143(v64, v65, v102[16]);
          OUTLINED_FUNCTION_119_0(13);
          v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v103 = 0;
          OUTLINED_FUNCTION_143(v69, v70, v102[17]);
          OUTLINED_FUNCTION_119_0(14);
          v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v103 = 0;
          OUTLINED_FUNCTION_143(v71, v72, v102[18]);
          OUTLINED_FUNCTION_119_0(15);
          v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v103 = 0;
          OUTLINED_FUNCTION_143(v73, v74, v102[19]);
          OUTLINED_FUNCTION_119_0(16);
          v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v103 = 0;
          OUTLINED_FUNCTION_143(v75, v76, v102[20]);
          OUTLINED_FUNCTION_153_0(17);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v103 = 0;
          OUTLINED_FUNCTION_306();
          *(v36 + *(v77 + 84)) = v78;
          OUTLINED_FUNCTION_119_0(18);
          v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v103 = 0;
          OUTLINED_FUNCTION_143(v79, v80, v102[22]);
          OUTLINED_FUNCTION_119_0(19);
          KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          OUTLINED_FUNCTION_423();
          v94 = v81;
          v103 = 0;
          OUTLINED_FUNCTION_143(v82, v83, v102[23]);
          OUTLINED_FUNCTION_119_0(20);
          v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v103 = 0;
          OUTLINED_FUNCTION_143(v84, v85, v102[24]);
          OUTLINED_FUNCTION_119_0(21);
          v86 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v103 = 0;
          OUTLINED_FUNCTION_143(v86, v87, v102[25]);
          OUTLINED_FUNCTION_119_0(22);
          KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v103 = 0;
          OUTLINED_FUNCTION_400();
          v88 = OUTLINED_FUNCTION_165();
          v89(v88);
          OUTLINED_FUNCTION_402(v102[26]);
          outlined init with copy of RentalCarReservation(v36, v98, type metadata accessor for RestaurantReservation);
          __swift_destroy_boxed_opaque_existential_1(v91);
          OUTLINED_FUNCTION_38();
          outlined destroy of RentalCarReservation();
          goto LABEL_42;
        }

        v66 = OUTLINED_FUNCTION_165();
        v67(v66);
        v96 = 0;
        *v97 = 0;
        OUTLINED_FUNCTION_69();
        v41 = 1;
        OUTLINED_FUNCTION_64_0();
        v95 = v68;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v91);
  if (v41)
  {
    v94 = 0;
    v92 = 0;

    v42 = v102;
    if (v24)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v92 = 0;
    v94 = 0;
    v42 = v102;
    if (v24)
    {
LABEL_6:

      if ((v28 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  if (!v28)
  {
LABEL_7:
    if (v38)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:

  if (v38)
  {
LABEL_8:

    if ((v37 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v37)
  {
LABEL_9:
    if (v20)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:

  if (v20)
  {
LABEL_10:

    if ((v22 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:

  if (!v22)
  {
LABEL_11:
    if (v93)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:

  if (v93)
  {
LABEL_12:

    if ((v95 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!v95)
  {
LABEL_13:
    if (v96)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v36 + v42[15], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  if (v96)
  {
LABEL_14:
    OUTLINED_FUNCTION_112();
    if ((v96 & 0x100000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  if (!HIDWORD(v96))
  {
LABEL_15:
    if (*v97)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  OUTLINED_FUNCTION_112();
  if (v97[0])
  {
LABEL_16:
    OUTLINED_FUNCTION_112();
    if ((v97[4] & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (!*&v97[4])
  {
LABEL_17:
    if (v98)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  OUTLINED_FUNCTION_112();
  if (v98)
  {
LABEL_18:
    OUTLINED_FUNCTION_112();
    if ((v99 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_37:

    goto LABEL_38;
  }

LABEL_36:
  if (v99)
  {
    goto LABEL_37;
  }

LABEL_38:
  if (!v94)
  {
    if (!v92)
    {
      goto LABEL_40;
    }

LABEL_21:
    OUTLINED_FUNCTION_112();
    if ((v92 & 0x100000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_112();
  if (v92)
  {
    goto LABEL_21;
  }

LABEL_40:
  if (HIDWORD(v92))
  {
LABEL_41:
    OUTLINED_FUNCTION_112();
  }

LABEL_42:
  OUTLINED_FUNCTION_35();
}

uint64_t ShippingOrder.init(id:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMessageIdentifier:eventMegadomeIdentifier:eventName:eventSourceBundleIdentifier:eventSourceIsForwarded:eventType:detectedEventTypes:eventSubType:eventSourceLLMConsumableDescription:accountIdentifier:authors:mailMessageHeader:mailMessageId:mailboxes:status:shippingStatus:timeIsUnknown:orderDate:orderNumber:orderTrackingURL:orderCost:merchantName:shippingPersonNames:shippingLocationName:shippingAddress:shippingPhoneNumber:recipientNames:recipientLocationName:recipientAddress:recipientPhoneNumber:customerNames:customerAddresses:customerPhoneNumbers:carrierName:trackingNumber:shippingDate:deliveryDate:estimatedDeliveryStartDate:estimatedDeliveryEndDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t x6_0@<X6>, uint64_t x7_0@<X7>, __int128 a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __n128 a22, __n128 a23, __n128 a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  OUTLINED_FUNCTION_355(a1, a2, a3, a4, a5, a6, x6_0, x7_0);
  *(a7 + 248) = a25;
  *(a7 + 256) = a28;
  *(a7 + 264) = a26;
  OUTLINED_FUNCTION_416();
  *(a7 + 64) = a8;
  *(a7 + 80) = a9;
  *(a7 + 120) = a13;
  OUTLINED_FUNCTION_414(v64, v65, v66, v67, v68, v69, v70);
  *(a7 + 200) = v71;
  *(a7 + 216) = v72;
  *(a7 + 232) = v73;
  *(a7 + 272) = v74;
  v75 = type metadata accessor for ShippingOrder(0);
  OUTLINED_FUNCTION_292();
  outlined init with take of Date?(v76, v77, v78, v79);
  v80 = (a7 + v75[25]);
  *v80 = a30;
  v80[1] = a31;
  outlined init with take of Date?(a32, a7 + v75[26], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v81 = a7 + v75[27];
  *v81 = a33;
  *(v81 + 8) = a34 & 1;
  v82 = (a7 + v75[28]);
  *v82 = a35;
  v82[1] = a36;
  *(a7 + v75[29]) = a37;
  v83 = (a7 + v75[30]);
  *v83 = a38;
  v83[1] = a39;
  v84 = (a7 + v75[31]);
  *v84 = a40;
  v84[1] = a41;
  v85 = (a7 + v75[32]);
  *v85 = a42;
  v85[1] = a43;
  *(a7 + v75[33]) = a44;
  v86 = (a7 + v75[34]);
  *v86 = a45;
  v86[1] = a46;
  v87 = (a7 + v75[35]);
  *v87 = a47;
  v87[1] = a48;
  v88 = (a7 + v75[36]);
  *v88 = a49;
  v88[1] = a50;
  *(a7 + v75[37]) = a51;
  *(a7 + v75[38]) = a52;
  *(a7 + v75[39]) = a53;
  v89 = (a7 + v75[41]);
  *v89 = a54;
  v89[1] = a55;
  v90 = (a7 + v75[40]);
  *v90 = a56;
  v90[1] = a57;
  OUTLINED_FUNCTION_292();
  outlined init with take of Date?(v91, v92, v93, v94);
  OUTLINED_FUNCTION_292();
  outlined init with take of Date?(v95, v96, v97, v98);
  OUTLINED_FUNCTION_292();
  outlined init with take of Date?(v99, v100, v101, v102);
  OUTLINED_FUNCTION_292();
  return outlined init with take of Date?(v103, v104, v105, v106);
}

uint64_t ShippingOrder.eventSourceLLMConsumableDescription.setter()
{
  OUTLINED_FUNCTION_217();

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t ShippingOrder.shippingPersonNames.getter()
{
  type metadata accessor for ShippingOrder(0);
}

uint64_t ShippingOrder.recipientNames.getter()
{
  type metadata accessor for ShippingOrder(0);
}

uint64_t ShippingOrder.customerNames.getter()
{
  type metadata accessor for ShippingOrder(0);
}

uint64_t ShippingOrder.customerAddresses.getter()
{
  type metadata accessor for ShippingOrder(0);
}

uint64_t ShippingOrder.customerPhoneNumbers.getter()
{
  type metadata accessor for ShippingOrder(0);
}

uint64_t ShippingOrder.shippingDate.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for ShippingOrder(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v1 + 168));
}

uint64_t ShippingOrder.deliveryDate.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for ShippingOrder(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v1 + 172));
}

uint64_t ShippingOrder.estimatedDeliveryStartDate.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for ShippingOrder(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v1 + 176));
}

uint64_t ShippingOrder.estimatedDeliveryEndDate.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for ShippingOrder(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v1 + 180));
}

void static ShippingOrder.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v271 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_333();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v11);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  v14 = &v267 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_316();
  v17 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v282 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12_2();
  v281 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v22 = OUTLINED_FUNCTION_62(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_42_1();
  v280 = v23 - v24;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_366();
  v277 = v26;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_366();
  v275 = v28;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_366();
  v273 = v30;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_209();
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_42_1();
  v279 = v33 - v34;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_366();
  v276 = v36;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_366();
  v274 = v38;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_366();
  v272 = v40;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_313();
  v42 = *v7 == *v5 && *(v7 + 8) == *(v5 + 8);
  if (!v42 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_163;
  }

  v43 = *(v7 + 24);
  v44 = *(v5 + 24);
  if (!v43)
  {
    if (v44)
    {
      goto LABEL_163;
    }

LABEL_15:
    v46 = *(v7 + 40);
    v47 = *(v5 + 40);
    if (v46)
    {
      if (!v47)
      {
        goto LABEL_163;
      }

      v48 = *(v7 + 32) == *(v5 + 32) && v46 == v47;
      if (!v48 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v47)
    {
      goto LABEL_163;
    }

    v49 = *(v7 + 56);
    v50 = *(v5 + 56);
    if (v49)
    {
      if (!v50)
      {
        goto LABEL_163;
      }

      v51 = *(v7 + 48) == *(v5 + 48) && v49 == v50;
      if (!v51 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v50)
    {
      goto LABEL_163;
    }

    v52 = *(v7 + 72);
    v53 = *(v5 + 72);
    if (v52)
    {
      if (!v53)
      {
        goto LABEL_163;
      }

      v54 = *(v7 + 64) == *(v5 + 64) && v52 == v53;
      if (!v54 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v53)
    {
      goto LABEL_163;
    }

    v55 = *(v7 + 88);
    v56 = *(v5 + 88);
    if (v55)
    {
      if (!v56)
      {
        goto LABEL_163;
      }

      v57 = *(v7 + 80) == *(v5 + 80) && v55 == v56;
      if (!v57 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v56)
    {
      goto LABEL_163;
    }

    v58 = *(v7 + 104);
    v59 = *(v5 + 104);
    if (v58)
    {
      if (!v59)
      {
        goto LABEL_163;
      }

      v60 = *(v7 + 96) == *(v5 + 96) && v58 == v59;
      if (!v60 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v59)
    {
      goto LABEL_163;
    }

    v61 = *(v5 + 112);
    if (*(v7 + 112) == 2)
    {
      v270 = v17;
      if (v61 != 2)
      {
        goto LABEL_163;
      }
    }

    else
    {
      OUTLINED_FUNCTION_275();
      if (v42)
      {
        goto LABEL_163;
      }

      v270 = v17;
      if ((v62 ^ v63))
      {
        goto LABEL_163;
      }
    }

    v64 = *(v7 + 128);
    v65 = *(v5 + 128);
    if (v64)
    {
      if (!v65)
      {
        goto LABEL_163;
      }

      v66 = *(v7 + 120) == *(v5 + 120) && v64 == v65;
      if (!v66 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v65)
    {
      goto LABEL_163;
    }

    v67 = *(v7 + 136);
    v68 = *(v5 + 136);
    if (v67)
    {
      if (!v68 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v67, v68) & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v68)
    {
      goto LABEL_163;
    }

    v69 = *(v7 + 152);
    v70 = *(v5 + 152);
    if (v69)
    {
      if (!v70)
      {
        goto LABEL_163;
      }

      v71 = *(v7 + 144) == *(v5 + 144) && v69 == v70;
      if (!v71 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v70)
    {
      goto LABEL_163;
    }

    v72 = *(v7 + 168);
    v73 = *(v5 + 168);
    if (v72)
    {
      if (!v73)
      {
        goto LABEL_163;
      }

      v74 = *(v7 + 160) == *(v5 + 160) && v72 == v73;
      if (!v74 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v73)
    {
      goto LABEL_163;
    }

    v75 = *(v7 + 184);
    v76 = *(v5 + 184);
    if (v75)
    {
      if (!v76)
      {
        goto LABEL_163;
      }

      v77 = *(v7 + 176) == *(v5 + 176) && v75 == v76;
      if (!v77 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v76)
    {
      goto LABEL_163;
    }

    v78 = *(v7 + 192);
    v79 = *(v5 + 192);
    if (v78)
    {
      if (!v79 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v78, v79) & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v79)
    {
      goto LABEL_163;
    }

    v80 = *(v7 + 208);
    v81 = *(v5 + 208);
    if (v80)
    {
      if (!v81)
      {
        goto LABEL_163;
      }

      v82 = *(v7 + 200) == *(v5 + 200) && v80 == v81;
      if (!v82 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v81)
    {
      goto LABEL_163;
    }

    v83 = *(v7 + 224);
    v84 = *(v5 + 224);
    if (v83)
    {
      if (!v84)
      {
        goto LABEL_163;
      }

      v85 = *(v7 + 216) == *(v5 + 216) && v83 == v84;
      if (!v85 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v84)
    {
      goto LABEL_163;
    }

    v86 = *(v7 + 232);
    v87 = *(v5 + 232);
    if (v86)
    {
      if (!v87 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v86, v87) & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v87)
    {
      goto LABEL_163;
    }

    v88 = *(v7 + 248);
    v89 = *(v5 + 248);
    if (v88)
    {
      if (!v89)
      {
        goto LABEL_163;
      }

      v90 = *(v7 + 240) == *(v5 + 240) && v88 == v89;
      if (!v90 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v89)
    {
      goto LABEL_163;
    }

    if (*(v7 + 256) != *(v5 + 256))
    {
      goto LABEL_163;
    }

    v91 = *(v7 + 272);
    v92 = *(v5 + 272);
    if (v91)
    {
      if (!v92)
      {
        goto LABEL_163;
      }

      v93 = *(v7 + 264) == *(v5 + 264) && v91 == v92;
      if (!v93 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else if (v92)
    {
      goto LABEL_163;
    }

    v94 = type metadata accessor for ShippingOrder(0);
    v95 = *(v94 + 96);
    v268 = v94;
    v269 = v95;
    v96 = *(v278 + 48);
    outlined init with copy of RentalCarReservation?(&v95[v7], v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v97 = &v269[v5];
    v269 = v96;
    outlined init with copy of RentalCarReservation?(v97, &v96[v1], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_149(v1);
    if (v42)
    {
      OUTLINED_FUNCTION_66(&v269[v1], 1, v270);
      if (v42)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        goto LABEL_165;
      }
    }

    else
    {
      outlined init with copy of RentalCarReservation?(v1, v0, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      OUTLINED_FUNCTION_66(&v269[v1], 1, v270);
      if (!v98)
      {
        v103 = v270;
        (*(v282 + 32))(v281, &v269[v1], v270);
        OUTLINED_FUNCTION_6_4();
        lazy protocol witness table accessor for type Date and conformance Date(v104, v105, MEMORY[0x277CC9598]);
        v270 = v103;
        HIDWORD(v267) = dispatch thunk of static Equatable.== infix(_:_:)();
        v269 = *(v282 + 8);
        (v269)(v281, v270);
        (v269)(v0, v270);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if ((v267 & 0x100000000) == 0)
        {
          goto LABEL_163;
        }

LABEL_165:
        OUTLINED_FUNCTION_126_0();
        if (v108)
        {
          if (!v106)
          {
            goto LABEL_163;
          }

          OUTLINED_FUNCTION_25_2(v107);
          v111 = v42 && v109 == v110;
          if (!v111 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_163;
          }
        }

        else if (v106)
        {
          goto LABEL_163;
        }

        v112 = v268[26];
        v113 = *(v15 + 48);
        v114 = &_s10Foundation3URLVSgMR;
        outlined init with copy of RentalCarReservation?(v7 + v112, v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        outlined init with copy of RentalCarReservation?(v5 + v112, v3 + v113, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        OUTLINED_FUNCTION_66(v3, 1, v8);
        if (v42)
        {
          OUTLINED_FUNCTION_66(v3 + v113, 1, v8);
          if (v42)
          {
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_184;
          }
        }

        else
        {
          outlined init with copy of RentalCarReservation?(v3, v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          OUTLINED_FUNCTION_66(v3 + v113, 1, v8);
          if (!v115)
          {
            v116 = v271;
            OUTLINED_FUNCTION_30();
            v117(v2, v3 + v113, v8);
            OUTLINED_FUNCTION_12_3();
            lazy protocol witness table accessor for type Date and conformance Date(v118, v119, MEMORY[0x277CC9278]);
            v120 = dispatch thunk of static Equatable.== infix(_:_:)();
            v114 = *(v116 + 8);
            v114(v2, v8);
            v114(v14, v8);
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            if ((v120 & 1) == 0)
            {
              goto LABEL_163;
            }

LABEL_184:
            v121 = v268[27];
            v122 = *(v7 + v121 + 8);
            v123 = *(v5 + v121 + 8);
            if (v122)
            {
              if (!v123)
              {
                goto LABEL_163;
              }
            }

            else
            {
              OUTLINED_FUNCTION_247();
              if (v124)
              {
                goto LABEL_163;
              }
            }

            OUTLINED_FUNCTION_126_0();
            if (v127)
            {
              if (!v125)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v126);
              v130 = v42 && v128 == v129;
              if (!v130 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v125)
            {
              goto LABEL_163;
            }

            v131 = OUTLINED_FUNCTION_388(v268[29]);
            if (v131)
            {
              if (!v132 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v131, v132) & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v132)
            {
              goto LABEL_163;
            }

            OUTLINED_FUNCTION_126_0();
            if (v135)
            {
              if (!v133)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v134);
              v138 = v42 && v136 == v137;
              if (!v138 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v133)
            {
              goto LABEL_163;
            }

            OUTLINED_FUNCTION_126_0();
            if (v141)
            {
              if (!v139)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v140);
              v144 = v42 && v142 == v143;
              if (!v144 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v139)
            {
              goto LABEL_163;
            }

            OUTLINED_FUNCTION_126_0();
            if (v147)
            {
              if (!v145)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v146);
              v150 = v42 && v148 == v149;
              if (!v150 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v145)
            {
              goto LABEL_163;
            }

            v151 = OUTLINED_FUNCTION_388(v268[33]);
            if (v151)
            {
              if (!v152 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v151, v152) & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v152)
            {
              goto LABEL_163;
            }

            OUTLINED_FUNCTION_126_0();
            if (v155)
            {
              if (!v153)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v154);
              v158 = v42 && v156 == v157;
              if (!v158 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v153)
            {
              goto LABEL_163;
            }

            OUTLINED_FUNCTION_126_0();
            if (v161)
            {
              if (!v159)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v160);
              v164 = v42 && v162 == v163;
              if (!v164 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v159)
            {
              goto LABEL_163;
            }

            OUTLINED_FUNCTION_126_0();
            if (v167)
            {
              if (!v165)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v166);
              v170 = v42 && v168 == v169;
              if (!v170 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v165)
            {
              goto LABEL_163;
            }

            v171 = OUTLINED_FUNCTION_388(v268[37]);
            if (v171)
            {
              if (!v172 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v171, v172) & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v172)
            {
              goto LABEL_163;
            }

            v173 = OUTLINED_FUNCTION_388(v268[38]);
            if (v173)
            {
              if (!v174 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v173, v174) & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v174)
            {
              goto LABEL_163;
            }

            v175 = OUTLINED_FUNCTION_388(v268[39]);
            if (v175)
            {
              if (!v176 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v175, v176) & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v176)
            {
              goto LABEL_163;
            }

            OUTLINED_FUNCTION_126_0();
            if (v179)
            {
              if (!v177)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v178);
              v182 = v42 && v180 == v181;
              if (!v182 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v177)
            {
              goto LABEL_163;
            }

            OUTLINED_FUNCTION_126_0();
            if (v185)
            {
              if (!v183)
              {
                goto LABEL_163;
              }

              OUTLINED_FUNCTION_25_2(v184);
              v188 = v42 && v186 == v187;
              if (!v188 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            else if (v183)
            {
              goto LABEL_163;
            }

            OUTLINED_FUNCTION_410();
            v189 = v272;
            OUTLINED_FUNCTION_65();
            outlined init with copy of RentalCarReservation?(v190, v191, v192, v193);
            OUTLINED_FUNCTION_65();
            outlined init with copy of RentalCarReservation?(v194, v195, v196, v197);
            OUTLINED_FUNCTION_149(v189);
            if (v42)
            {
              OUTLINED_FUNCTION_149(v114 + v272);
              if (v42)
              {
                outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v272, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                goto LABEL_304;
              }
            }

            else
            {
              v198 = v272;
              outlined init with copy of RentalCarReservation?(v272, v273, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
              OUTLINED_FUNCTION_149(v114 + v198);
              if (!v199)
              {
                OUTLINED_FUNCTION_30();
                v201 = v272;
                v202 = OUTLINED_FUNCTION_326();
                v203(v202);
                OUTLINED_FUNCTION_6_4();
                lazy protocol witness table accessor for type Date and conformance Date(v204, v205, MEMORY[0x277CC9598]);
                OUTLINED_FUNCTION_351();
                v206 = OUTLINED_FUNCTION_271();
                (v114)(v206);
                v207 = OUTLINED_FUNCTION_420();
                (v114)(v207);
                outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v201, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                if ((v198 & 1) == 0)
                {
                  goto LABEL_163;
                }

LABEL_304:
                OUTLINED_FUNCTION_410();
                v208 = v274;
                OUTLINED_FUNCTION_65();
                outlined init with copy of RentalCarReservation?(v209, v210, v211, v212);
                OUTLINED_FUNCTION_65();
                outlined init with copy of RentalCarReservation?(v213, v214, v215, v216);
                OUTLINED_FUNCTION_149(v208);
                if (v42)
                {
                  OUTLINED_FUNCTION_149(v114 + v274);
                  if (v42)
                  {
                    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v274, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_314:
                    OUTLINED_FUNCTION_410();
                    v227 = v276;
                    OUTLINED_FUNCTION_65();
                    outlined init with copy of RentalCarReservation?(v228, v229, v230, v231);
                    OUTLINED_FUNCTION_65();
                    outlined init with copy of RentalCarReservation?(v232, v233, v234, v235);
                    OUTLINED_FUNCTION_149(v227);
                    if (v42)
                    {
                      OUTLINED_FUNCTION_149(v114 + v276);
                      if (v42)
                      {
                        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v276, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_324:
                        OUTLINED_FUNCTION_410();
                        v246 = v279;
                        OUTLINED_FUNCTION_65();
                        outlined init with copy of RentalCarReservation?(v247, v248, v249, v250);
                        OUTLINED_FUNCTION_65();
                        outlined init with copy of RentalCarReservation?(v251, v252, v253, v254);
                        OUTLINED_FUNCTION_149(v246);
                        if (v42)
                        {
                          OUTLINED_FUNCTION_149(v114 + v279);
                          if (v42)
                          {
                            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v279, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                            goto LABEL_163;
                          }
                        }

                        else
                        {
                          v255 = v279;
                          outlined init with copy of RentalCarReservation?(v279, v280, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                          OUTLINED_FUNCTION_149(v114 + v255);
                          if (!v256)
                          {
                            v258 = v282;
                            v259 = v279;
                            v260 = v114 + v279;
                            v261 = v281;
                            v262 = v270;
                            (*(v282 + 32))(v281, v260, v270);
                            OUTLINED_FUNCTION_6_4();
                            lazy protocol witness table accessor for type Date and conformance Date(v263, v264, MEMORY[0x277CC9598]);
                            v265 = v280;
                            dispatch thunk of static Equatable.== infix(_:_:)();
                            v266 = *(v258 + 8);
                            v266(v261, v262);
                            v266(v265, v262);
                            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v259, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                            goto LABEL_163;
                          }

                          OUTLINED_FUNCTION_390();
                          v257(v280, v270);
                        }

                        v100 = &_s10Foundation4DateVSg_ADtMd;
                        v101 = &_s10Foundation4DateVSg_ADtMR;
                        v102 = v279;
                        goto LABEL_162;
                      }
                    }

                    else
                    {
                      v236 = v276;
                      outlined init with copy of RentalCarReservation?(v276, v277, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                      OUTLINED_FUNCTION_149(v114 + v236);
                      if (!v237)
                      {
                        OUTLINED_FUNCTION_30();
                        v239 = v276;
                        v240 = OUTLINED_FUNCTION_326();
                        v241(v240);
                        OUTLINED_FUNCTION_6_4();
                        lazy protocol witness table accessor for type Date and conformance Date(v242, v243, MEMORY[0x277CC9598]);
                        OUTLINED_FUNCTION_351();
                        v244 = OUTLINED_FUNCTION_271();
                        (v114)(v244);
                        v245 = OUTLINED_FUNCTION_420();
                        (v114)(v245);
                        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v239, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                        if ((v236 & 1) == 0)
                        {
                          goto LABEL_163;
                        }

                        goto LABEL_324;
                      }

                      OUTLINED_FUNCTION_390();
                      v238(v277, v270);
                    }

                    v100 = &_s10Foundation4DateVSg_ADtMd;
                    v101 = &_s10Foundation4DateVSg_ADtMR;
                    v102 = v276;
LABEL_162:
                    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v102, v100, v101);
                    goto LABEL_163;
                  }
                }

                else
                {
                  v217 = v274;
                  outlined init with copy of RentalCarReservation?(v274, v275, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                  OUTLINED_FUNCTION_149(v114 + v217);
                  if (!v218)
                  {
                    OUTLINED_FUNCTION_30();
                    v220 = v274;
                    v221 = OUTLINED_FUNCTION_326();
                    v222(v221);
                    OUTLINED_FUNCTION_6_4();
                    lazy protocol witness table accessor for type Date and conformance Date(v223, v224, MEMORY[0x277CC9598]);
                    OUTLINED_FUNCTION_351();
                    v225 = OUTLINED_FUNCTION_271();
                    (v114)(v225);
                    v226 = OUTLINED_FUNCTION_420();
                    (v114)(v226);
                    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v220, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                    if ((v217 & 1) == 0)
                    {
                      goto LABEL_163;
                    }

                    goto LABEL_314;
                  }

                  OUTLINED_FUNCTION_390();
                  v219(v275, v270);
                }

                v100 = &_s10Foundation4DateVSg_ADtMd;
                v101 = &_s10Foundation4DateVSg_ADtMR;
                v102 = v274;
                goto LABEL_162;
              }

              OUTLINED_FUNCTION_390();
              v200(v273, v270);
            }

            v100 = &_s10Foundation4DateVSg_ADtMd;
            v101 = &_s10Foundation4DateVSg_ADtMR;
            v102 = v272;
            goto LABEL_162;
          }

          (*(v271 + 8))(v14, v8);
        }

        v100 = &_s10Foundation3URLVSg_ADtMd;
        v101 = &_s10Foundation3URLVSg_ADtMR;
        v102 = v3;
        goto LABEL_162;
      }

      OUTLINED_FUNCTION_390();
      v99(v0, v270);
    }

    v100 = &_s10Foundation4DateVSg_ADtMd;
    v101 = &_s10Foundation4DateVSg_ADtMR;
    v102 = v1;
    goto LABEL_162;
  }

  if (v44)
  {
    v45 = *(v7 + 16) == *(v5 + 16) && v43 == v44;
    if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_163:
  OUTLINED_FUNCTION_42_0();
}

uint64_t ShippingOrder.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000025DCEB0C0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x800000025DCEB0E0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x800000025DCEB0A0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x800000025DCEB100 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001BLL && 0x800000025DCEB120 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000016 && 0x800000025DCEB140 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x800000025DCEB1A0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x627553746E657665 && a2 == 0xEC00000065707954;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000023 && 0x800000025DCEB1C0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000011 && 0x800000025DCEB180 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x73726F68747561 && a2 == 0xE700000000000000;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000011 && 0x800000025DCEB160 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x7373654D6C69616DLL && a2 == 0xED00006449656761;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6E557349656D6974 && a2 == 0xED00006E776F6E6BLL;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x676E697070696873 && a2 == 0xEE00737574617453;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x746144726564726FLL && a2 == 0xE900000000000065;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6D754E726564726FLL && a2 == 0xEB00000000726562;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000010 && 0x800000025DCEBAA0 == a2;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x736F43726564726FLL && a2 == 0xE900000000000074;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x746E61686372656DLL && a2 == 0xEC000000656D614ELL;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000013 && 0x800000025DCEBAC0 == a2;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000014 && 0x800000025DCEBAE0 == a2;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x676E697070696873 && a2 == 0xEF73736572646441;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000013 && 0x800000025DCEBB00 == a2;
                                                          if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0x6E65697069636572 && a2 == 0xEE0073656D614E74;
                                                            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000015 && 0x800000025DCEBB20 == a2;
                                                              if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000010 && 0x800000025DCEBB40 == a2;
                                                                if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000014 && 0x800000025DCEBB60 == a2;
                                                                  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0x72656D6F74737563 && a2 == 0xED000073656D614ELL;
                                                                    if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD000000000000011 && 0x800000025DCEBB80 == a2;
                                                                      if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD000000000000014 && 0x800000025DCEBBA0 == a2;
                                                                        if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0x676E696B63617274 && a2 == 0xEE007265626D754ELL;
                                                                          if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0x4E72656972726163 && a2 == 0xEB00000000656D61;
                                                                            if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0x676E697070696873 && a2 == 0xEC00000065746144;
                                                                              if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0x79726576696C6564 && a2 == 0xEC00000065746144;
                                                                                if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD00000000000001ALL && 0x800000025DCEBBC0 == a2;
                                                                                  if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else if (a1 == 0xD000000000000018 && 0x800000025DCEBBE0 == a2)
                                                                                  {

                                                                                    return 41;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                    if (v47)
                                                                                    {
                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      return 42;
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

uint64_t ShippingOrder.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
    case 7:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x6D614E746E657665;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0x707954746E657665;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x627553746E657665;
      break;
    case 11:
      result = 0xD000000000000023;
      break;
    case 12:
    case 14:
    case 34:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x73726F68747561;
      break;
    case 15:
      result = 0x7373654D6C69616DLL;
      break;
    case 16:
      result = 0x65786F626C69616DLL;
      break;
    case 17:
      result = 0x737574617473;
      break;
    case 18:
      result = 0x6E557349656D6974;
      break;
    case 19:
    case 27:
      v3 = 0x697070696873;
      goto LABEL_33;
    case 20:
      result = 0x746144726564726FLL;
      break;
    case 21:
      result = 0x6D754E726564726FLL;
      break;
    case 22:
    case 31:
      result = 0xD000000000000010;
      break;
    case 23:
      result = 0x736F43726564726FLL;
      break;
    case 24:
      result = 0x746E61686372656DLL;
      break;
    case 25:
    case 28:
      result = 0xD000000000000013;
      break;
    case 26:
      result = 0xD000000000000014;
      break;
    case 29:
      result = 0x6E65697069636572;
      break;
    case 30:
      result = 0xD000000000000015;
      break;
    case 32:
      result = 0xD000000000000014;
      break;
    case 33:
      result = 0x72656D6F74737563;
      break;
    case 35:
      result = 0xD000000000000014;
      break;
    case 36:
      v3 = 0x696B63617274;
LABEL_33:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    case 37:
      result = 0x4E72656972726163;
      break;
    case 38:
      result = 0x676E697070696873;
      break;
    case 39:
      result = 0x79726576696C6564;
      break;
    case 40:
      result = 0xD00000000000001ALL;
      break;
    case 41:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ShippingOrder.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ShippingOrder.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ShippingOrder.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ShippingOrder.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ShippingOrder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ShippingOrder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void ShippingOrder.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_193();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes13ShippingOrderV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes13ShippingOrderV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  v2 = lazy protocol witness table accessor for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys();
  OUTLINED_FUNCTION_192(&unk_286F90D50, v3, v2);
  OUTLINED_FUNCTION_67_0();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_43_2(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(3);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_74(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(8);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_98(&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_43_2(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(11);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(12);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_341();
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_43_2(14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(15);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_43_2(17);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_74(18);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_43_2(19);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = type metadata accessor for ShippingOrder(0);
    OUTLINED_FUNCTION_274(20);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_6_4();
    lazy protocol witness table accessor for type Date and conformance Date(v4, v5, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[25]);
    OUTLINED_FUNCTION_43_2(21);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_274(22);
    type metadata accessor for URL();
    OUTLINED_FUNCTION_12_3();
    lazy protocol witness table accessor for type Date and conformance Date(v6, v7, MEMORY[0x277CC9268]);
    OUTLINED_FUNCTION_157();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_239(v10[27]);
    OUTLINED_FUNCTION_43_2(23);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[28]);
    OUTLINED_FUNCTION_43_2(24);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_135(v10[29]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[30]);
    OUTLINED_FUNCTION_43_2(26);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[31]);
    OUTLINED_FUNCTION_43_2(27);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[32]);
    OUTLINED_FUNCTION_43_2(28);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_135(v10[33]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[34]);
    OUTLINED_FUNCTION_43_2(30);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[35]);
    OUTLINED_FUNCTION_43_2(31);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[36]);
    OUTLINED_FUNCTION_43_2(32);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_135(v10[37]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_135(v10[38]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_135(v10[39]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[40]);
    OUTLINED_FUNCTION_43_2(36);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[41]);
    OUTLINED_FUNCTION_43_2(37);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_130_0(v10[42]);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_130_0(v10[43]);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_130_0(v10[44]);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_130_0(v10[45]);
    OUTLINED_FUNCTION_86();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v8 = OUTLINED_FUNCTION_375();
  v9(v8);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_35();
}

void ShippingOrder.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_36();
  a19 = v25;
  a20 = v26;
  v180 = v21;
  v28 = v27;
  v175 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v30);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_1();
  v173 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v34 = OUTLINED_FUNCTION_62(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_42_1();
  v174 = v35 - v36;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_371();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v150 - v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_131();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_382();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes13ShippingOrderV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes13ShippingOrderV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1();
  v176 = v44;
  v177 = v43;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v45);
  v46 = OUTLINED_FUNCTION_245();
  v178 = type metadata accessor for ShippingOrder(v46);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_98_0(v48, v150);
  v49 = v28[4];
  v164 = v28;
  OUTLINED_FUNCTION_150();
  lazy protocol witness table accessor for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys();
  v50 = v23;
  v51 = v180;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v51)
  {
    v180 = v51;
    LOBYTE(v50) = 0;
    v53 = 0;
    OUTLINED_FUNCTION_346();
    OUTLINED_FUNCTION_166();
    v54 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    OUTLINED_FUNCTION_7_5();
    v179 = 0;
  }

  else
  {
    v170 = v22;
    v171 = v41;
    v172 = v20;
    LODWORD(v22) = v176;
    LODWORD(v23) = v177;
    OUTLINED_FUNCTION_298();
    v53 = v50;
    v52 = KeyedDecodingContainer.decode(_:forKey:)();
    v49 = v181;
    *v181 = v52;
    v49[1] = v57;
    OUTLINED_FUNCTION_190(1);
    v49[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49[3] = v58;
    OUTLINED_FUNCTION_190(2);
    v49[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49[5] = v59;
    OUTLINED_FUNCTION_190(3);
    v49[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49[7] = v60;
    OUTLINED_FUNCTION_190(4);
    v49[8] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49[9] = v61;
    OUTLINED_FUNCTION_190(5);
    v49[10] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49[11] = v62;
    OUTLINED_FUNCTION_190(6);
    v49[12] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49[13] = v63;
    OUTLINED_FUNCTION_190(7);
    *(v181 + 112) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_190(8);
    v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v180 = 0;
    v66 = v181;
    *(v181 + 120) = v64;
    *(v66 + 128) = v65;
    LODWORD(v41) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v182 = 9;
    OUTLINED_FUNCTION_103(&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808]);
    OUTLINED_FUNCTION_262();
    v169 = v50;
    v67 = v180;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v180 = v67;
    if (v67)
    {
      v68 = OUTLINED_FUNCTION_131_0();
      v69(v68);
      v151 = 0;
      v152 = 0;
      v153 = 0;
      OUTLINED_FUNCTION_7_5();
      v179 = 0;
      OUTLINED_FUNCTION_28_2();
      v54 = 1;
    }

    else
    {
      *(v181 + 136) = a10;
      OUTLINED_FUNCTION_100_0(10);
      v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v180 = 0;
      v71 = v181;
      *(v181 + 144) = v70;
      *(v71 + 152) = v72;
      OUTLINED_FUNCTION_100_0(11);
      v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v179 = v74;
      v180 = 0;
      v75 = v181;
      *(v181 + 160) = v73;
      *(v75 + 168) = v74;
      OUTLINED_FUNCTION_100_0(12);
      v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v180 = 0;
      v77 = v181;
      *(v181 + 176) = v76;
      *(v77 + 184) = v78;
      OUTLINED_FUNCTION_128_0(13);
      OUTLINED_FUNCTION_262();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v180 = 0;
      *(v181 + 192) = a10;
      OUTLINED_FUNCTION_100_0(14);
      v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v180 = 0;
      v80 = v181;
      *(v181 + 200) = v79;
      *(v80 + 208) = v81;
      OUTLINED_FUNCTION_100_0(15);
      v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v180 = 0;
      v83 = v181;
      *(v181 + 216) = v82;
      *(v83 + 224) = v84;
      OUTLINED_FUNCTION_128_0(16);
      OUTLINED_FUNCTION_262();
      v53 = v169;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v180 = 0;
      *(v181 + 232) = a10;
      OUTLINED_FUNCTION_100_0(17);
      v85 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v180 = 0;
      v86 = v181;
      *(v181 + 240) = v85;
      *(v86 + 248) = v87;
      OUTLINED_FUNCTION_100_0(18);
      v88 = KeyedDecodingContainer.decode(_:forKey:)();
      v180 = 0;
      *(v181 + 256) = v88 & 1;
      OUTLINED_FUNCTION_100_0(19);
      v89 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v180 = 0;
      v90 = v181;
      *(v181 + 264) = v89;
      *(v90 + 272) = v91;
      LODWORD(v49) = type metadata accessor for Date();
      OUTLINED_FUNCTION_6_4();
      v54 = lazy protocol witness table accessor for type Date and conformance Date(v92, v93, MEMORY[0x277CC95A0]);
      OUTLINED_FUNCTION_212();
      v180 = 0;
      OUTLINED_FUNCTION_389();
      outlined init with take of Date?(v24, v94, v95, v96);
      OUTLINED_FUNCTION_100_0(21);
      v97 = v180;
      v98 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v180 = v97;
      if (v97)
      {
        v100 = OUTLINED_FUNCTION_131_0();
        v101(v100);
        v163 = 0;
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_256(v102);
        v162 = v103;
      }

      else
      {
        OUTLINED_FUNCTION_78(v98, v99, v178[25]);
        type metadata accessor for URL();
        LOBYTE(a10) = 22;
        OUTLINED_FUNCTION_12_3();
        lazy protocol witness table accessor for type Date and conformance Date(v104, v105, MEMORY[0x277CC9280]);
        OUTLINED_FUNCTION_385();
        v53 = v169;
        v106 = v180;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v180 = v106;
        if (v106)
        {
          v107 = OUTLINED_FUNCTION_131_0();
          v108(v107);
          HIDWORD(v163) = 0;
          OUTLINED_FUNCTION_11_4();
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_256(v109);
          v162 = v110;
          LODWORD(v163) = v110;
        }

        else
        {
          OUTLINED_FUNCTION_389();
          outlined init with take of Date?(v173, v111, v112, v113);
          OUTLINED_FUNCTION_100_0(23);
          v114 = v180;
          v115 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v180 = v114;
          if (!v114)
          {
            OUTLINED_FUNCTION_175(v115, v116, v178[27]);
            OUTLINED_FUNCTION_100_0(24);
            v117 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v180 = 0;
            OUTLINED_FUNCTION_188(v117, v121, v178[28]);
            OUTLINED_FUNCTION_128_0(25);
            OUTLINED_FUNCTION_262();
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v180 = 0;
            OUTLINED_FUNCTION_401(a10);
            OUTLINED_FUNCTION_202(26);
            v122 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v180 = 0;
            OUTLINED_FUNCTION_188(v122, v123, v178[30]);
            OUTLINED_FUNCTION_100_0(27);
            v124 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v180 = 0;
            OUTLINED_FUNCTION_188(v124, v125, v178[31]);
            OUTLINED_FUNCTION_100_0(28);
            v126 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v180 = 0;
            OUTLINED_FUNCTION_188(v126, v127, v178[32]);
            OUTLINED_FUNCTION_128_0(29);
            OUTLINED_FUNCTION_262();
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v180 = 0;
            OUTLINED_FUNCTION_401(a10);
            OUTLINED_FUNCTION_202(30);
            v128 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v180 = 0;
            OUTLINED_FUNCTION_188(v128, v129, v178[34]);
            OUTLINED_FUNCTION_100_0(31);
            v130 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v180 = 0;
            OUTLINED_FUNCTION_188(v130, v131, v178[35]);
            OUTLINED_FUNCTION_100_0(32);
            v132 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v180 = 0;
            OUTLINED_FUNCTION_188(v132, v133, v178[36]);
            OUTLINED_FUNCTION_128_0(33);
            OUTLINED_FUNCTION_262();
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v180 = 0;
            OUTLINED_FUNCTION_401(a10);
            OUTLINED_FUNCTION_128_0(34);
            OUTLINED_FUNCTION_262();
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v180 = 0;
            OUTLINED_FUNCTION_401(a10);
            OUTLINED_FUNCTION_128_0(35);
            OUTLINED_FUNCTION_262();
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v180 = 0;
            OUTLINED_FUNCTION_401(a10);
            OUTLINED_FUNCTION_202(36);
            v134 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v180 = 0;
            OUTLINED_FUNCTION_188(v134, v135, v178[40]);
            OUTLINED_FUNCTION_100_0(37);
            v136 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v180 = 0;
            OUTLINED_FUNCTION_188(v136, v137, v178[41]);
            OUTLINED_FUNCTION_219(38);
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v180 = 0;
            OUTLINED_FUNCTION_389();
            outlined init with take of Date?(v170, v138, v139, v140);
            OUTLINED_FUNCTION_219(39);
            OUTLINED_FUNCTION_212();
            v180 = 0;
            OUTLINED_FUNCTION_389();
            outlined init with take of Date?(v171, v141, v142, v143);
            OUTLINED_FUNCTION_219(40);
            OUTLINED_FUNCTION_212();
            v180 = 0;
            OUTLINED_FUNCTION_389();
            outlined init with take of Date?(v172, v144, v145, v146);
            OUTLINED_FUNCTION_219(41);
            OUTLINED_FUNCTION_212();
            v180 = 0;
            v147 = OUTLINED_FUNCTION_131_0();
            v148(v147);
            v149 = v181;
            outlined init with take of Date?(v174, v181 + v178[45], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            outlined init with copy of RentalCarReservation(v149, v175, type metadata accessor for ShippingOrder);
            __swift_destroy_boxed_opaque_existential_1(v164);
            OUTLINED_FUNCTION_38();
            outlined destroy of RentalCarReservation();
            goto LABEL_78;
          }

          v118 = OUTLINED_FUNCTION_131_0();
          v119(v118);
          OUTLINED_FUNCTION_11_4();
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_110_0(v120);
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v164);
  if (v50)
  {
    LODWORD(v164) = 0;
    v156 = 0;
    v157 = 0;
    v55 = v181;

    if (v53)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v157 = 0;
    v156 = 0;
    LODWORD(v164) = 0;
    v55 = v181;
    if (v53)
    {
LABEL_6:

      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_44;
    }
  }

  if (!v22)
  {
LABEL_7:
    v56 = v178;
    if (v49)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:

  v56 = v178;
  if (v49)
  {
LABEL_8:

    if ((v24 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  if (!v24)
  {
LABEL_9:
    if (v23)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:

  if (v23)
  {
LABEL_10:

    if ((v41 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  if (!v41)
  {
LABEL_11:
    if (v54)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:

  if (v54)
  {
LABEL_12:

    if ((v151 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  if (!v151)
  {
LABEL_13:
    if (v152)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:

  if (v152)
  {
LABEL_14:

    if ((v153 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:

  if (!v153)
  {
LABEL_15:
    if (v154)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:

  if (v154)
  {
LABEL_16:

    if ((v155 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  if (!v155)
  {
LABEL_17:
    if (v158)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:

  if (v158)
  {
LABEL_18:

    if ((v159 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  if (!v159)
  {
LABEL_19:
    if (v160)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:

  if (v160)
  {
LABEL_20:

    if ((v161 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  if (!v161)
  {
LABEL_21:
    if (v162)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:

  if (v162)
  {
LABEL_22:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v55 + v56[24], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((v163 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  if (!v163)
  {
LABEL_23:
    if (HIDWORD(v163))
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  OUTLINED_FUNCTION_112();
  if ((v163 & 0x100000000) != 0)
  {
LABEL_24:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v55 + v56[26], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((v165 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  if (!v165)
  {
LABEL_25:
    if (v166)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  OUTLINED_FUNCTION_112();
  if (v166)
  {
LABEL_26:

    if ((v167 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_63:
  if (!v167)
  {
LABEL_27:
    if (v168)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  OUTLINED_FUNCTION_112();
  if (v168)
  {
LABEL_28:
    OUTLINED_FUNCTION_112();
    if ((v169 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  if (!v169)
  {
LABEL_29:
    if (v170)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  OUTLINED_FUNCTION_112();
  if (v170)
  {
LABEL_30:

    if ((v171 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  if (!v171)
  {
LABEL_31:
    if (v172)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  OUTLINED_FUNCTION_112();
  if (v172)
  {
LABEL_32:
    OUTLINED_FUNCTION_112();
    if ((v173 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  if (!v173)
  {
LABEL_33:
    if (v174)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  OUTLINED_FUNCTION_112();
  if (v174)
  {
LABEL_34:

    if ((v175 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_72;
  }

LABEL_71:
  if (!v175)
  {
LABEL_35:
    if (v176)
    {
      goto LABEL_36;
    }

    goto LABEL_73;
  }

LABEL_72:

  if (v176)
  {
LABEL_36:

    if ((v177 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_74:
    OUTLINED_FUNCTION_112();
    if (v164)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

LABEL_73:
  if (v177)
  {
    goto LABEL_74;
  }

LABEL_37:
  if (v164)
  {
LABEL_38:
    OUTLINED_FUNCTION_112();
  }

LABEL_39:
  if (v156)
  {
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v55 + v56[43], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((v157 & 1) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (v157)
  {
LABEL_77:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v55 + v56[44], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_78:
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x25F8A2420](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      String.hash(into:)();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

Swift::Int specialized Dictionary<>.hash(into:)(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x25F8A2420](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        memcpy(__dst, a1, sizeof(__dst));

        String.hash(into:)();

        String.hash(into:)();

        result = Hasher._finalize()();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelReservation.CodingKeys and conformance HotelReservation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RestaurantReservation.CodingKeys and conformance RestaurantReservation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys;
  if (!lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys;
  if (!lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys;
  if (!lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys;
  if (!lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShippingOrder.CodingKeys and conformance ShippingOrder.CodingKeys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for RentalCarReservation(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, type metadata accessor for RentalCarReservation, &protocol conformance descriptor for RentalCarReservation);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, type metadata accessor for RentalCarReservation, &protocol conformance descriptor for RentalCarReservation);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, type metadata accessor for RentalCarReservation, &protocol conformance descriptor for RentalCarReservation);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TicketedTransportation(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, type metadata accessor for TicketedTransportation, &protocol conformance descriptor for TicketedTransportation);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, type metadata accessor for TicketedTransportation, &protocol conformance descriptor for TicketedTransportation);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, type metadata accessor for TicketedTransportation, &protocol conformance descriptor for TicketedTransportation);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TicketedShow(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, type metadata accessor for TicketedShow, &protocol conformance descriptor for TicketedShow);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, type metadata accessor for TicketedShow, &protocol conformance descriptor for TicketedShow);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, type metadata accessor for TicketedShow, &protocol conformance descriptor for TicketedShow);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Appointment(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Appointment and conformance Appointment, type metadata accessor for Appointment, &protocol conformance descriptor for Appointment);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Appointment and conformance Appointment, type metadata accessor for Appointment, &protocol conformance descriptor for Appointment);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Appointment and conformance Appointment, type metadata accessor for Appointment, "A<U$ȝ");
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Party(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Party and conformance Party, type metadata accessor for Party, &protocol conformance descriptor for Party);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Party and conformance Party, type metadata accessor for Party, &protocol conformance descriptor for Party);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Party and conformance Party, type metadata accessor for Party, &protocol conformance descriptor for Party);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Trip(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Trip and conformance Trip, type metadata accessor for Trip, &protocol conformance descriptor for Trip);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Trip and conformance Trip, type metadata accessor for Trip, &protocol conformance descriptor for Trip);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Trip and conformance Trip, type metadata accessor for Trip, &protocol conformance descriptor for Trip);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for FlightReservation(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type FlightReservation and conformance FlightReservation, type metadata accessor for FlightReservation, &protocol conformance descriptor for FlightReservation);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type FlightReservation and conformance FlightReservation, type metadata accessor for FlightReservation, &protocol conformance descriptor for FlightReservation);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type FlightReservation and conformance FlightReservation, type metadata accessor for FlightReservation, &protocol conformance descriptor for FlightReservation);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for HotelReservation(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HotelReservation and conformance HotelReservation, type metadata accessor for HotelReservation, &protocol conformance descriptor for HotelReservation);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HotelReservation and conformance HotelReservation, type metadata accessor for HotelReservation, &protocol conformance descriptor for HotelReservation);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HotelReservation and conformance HotelReservation, type metadata accessor for HotelReservation, &protocol conformance descriptor for HotelReservation);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for RestaurantReservation(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type RestaurantReservation and conformance RestaurantReservation, type metadata accessor for RestaurantReservation, &protocol conformance descriptor for RestaurantReservation);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type RestaurantReservation and conformance RestaurantReservation, type metadata accessor for RestaurantReservation, &protocol conformance descriptor for RestaurantReservation);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type RestaurantReservation and conformance RestaurantReservation, type metadata accessor for RestaurantReservation, &protocol conformance descriptor for RestaurantReservation);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ShippingOrder(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, type metadata accessor for ShippingOrder, &protocol conformance descriptor for ShippingOrder);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, type metadata accessor for ShippingOrder, &protocol conformance descriptor for ShippingOrder);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, type metadata accessor for ShippingOrder, &protocol conformance descriptor for ShippingOrder);
  a1[3] = result;
  return result;
}

uint64_t type metadata completion function for RentalCarReservation(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for [String]?(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t type metadata completion function for TicketedTransportation(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for [String]?(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t type metadata completion function for TicketedShow(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for [String]?(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v9 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t type metadata completion function for Appointment(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for [String]?(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t type metadata completion function for Party(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for [String]?(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t type metadata completion function for Trip(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for [String]?(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
    if (v9 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t type metadata completion function for FlightReservation(uint64_t a1)
{
  type metadata accessor for [String : String]();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = MEMORY[0x277D837D0];
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v2 = v5;
    if (v6 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, v4, MEMORY[0x277D83D88]);
      if (v8 > 0x3F)
      {
        return v7;
      }

      else
      {
        type metadata accessor for Date?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
        if (v10 > 0x3F)
        {
          return v9;
        }

        v9 = type metadata accessor for DateComponents();
        if (v11 > 0x3F)
        {
          return v9;
        }

        else
        {
          type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
          v2 = v12;
          if (v13 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
            v2 = v14;
            if (v15 <= 0x3F)
            {
              type metadata accessor for Date?(319, &lazy cache variable for type metadata for NSDecimal?, type metadata accessor for NSDecimal);
              v2 = v16;
              if (v17 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t type metadata completion function for HotelReservation(uint64_t a1)
{
  type metadata accessor for [String : String]();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = MEMORY[0x277D837D0];
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v2 = v5;
    if (v6 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, v4, MEMORY[0x277D83D88]);
      if (v8 > 0x3F)
      {
        return v7;
      }

      type metadata accessor for Date?(319, &lazy cache variable for type metadata for DateComponents?, MEMORY[0x277CC8990]);
      if (v10 > 0x3F)
      {
        return v9;
      }

      type metadata accessor for String?(319, &lazy cache variable for type metadata for Int?, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      v2 = v11;
      if (v12 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v13 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }

        return v9;
      }
    }
  }

  return v2;
}

void type metadata accessor for Date?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_89Tm()
{
  OUTLINED_FUNCTION_125();
  if (v1)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v3 = OUTLINED_FUNCTION_118(*(v0 + 60));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_90Tm()
{
  OUTLINED_FUNCTION_99();
  if (v1)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v3 = OUTLINED_FUNCTION_187(*(v2 + 60));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t type metadata completion function for RestaurantReservation(uint64_t a1)
{
  type metadata accessor for [String : String]();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = MEMORY[0x277D837D0];
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v2 = v5;
    if (v6 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, v4, MEMORY[0x277D83D88]);
      if (v8 > 0x3F)
      {
        return v7;
      }

      else
      {
        type metadata accessor for Date?(319, &lazy cache variable for type metadata for DateComponents?, MEMORY[0x277CC8990]);
        if (v10 > 0x3F)
        {
          return v9;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t type metadata completion function for ShippingOrder(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for [String]?(319);
    if (v7 > 0x3F)
    {
      return v6;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v9 > 0x3F)
    {
      return v8;
    }

    type metadata accessor for Date?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
    if (v10 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v11 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for ShippingOrder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD7)
  {
    if (a2 + 41 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 41) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 42;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2A;
  v5 = v6 - 42;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ShippingOrder.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 41 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 41) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD6)
  {
    v6 = ((a2 - 215) >> 8) + 1;
    *result = a2 + 41;
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
          *result = a2 + 41;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RestaurantReservation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RestaurantReservation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlightReservation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD1)
  {
    if (a2 + 47 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 47) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 48;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x30;
  v5 = v6 - 48;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FlightReservation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 47 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 47) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD0)
  {
    v6 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
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
          *result = a2 + 47;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Trip.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE7)
  {
    if (a2 + 25 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 25) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 26;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v5 = v6 - 26;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Trip.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE6)
  {
    v6 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
          *result = a2 + 25;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Party.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Party.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HotelReservation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE4)
  {
    if (a2 + 28 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 28) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 29;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v5 = v6 - 29;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HotelReservation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE3)
  {
    v6 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
          *result = a2 + 28;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TicketedShow.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE0)
  {
    if (a2 + 32 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 32) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 33;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v5 = v6 - 33;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TicketedShow.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDF)
  {
    v6 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
          *result = a2 + 32;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TicketedTransportation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE3)
  {
    if (a2 + 29 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 29) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 30;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v5 = v6 - 30;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TicketedTransportation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RentalCarReservation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDD)
  {
    if (a2 + 35 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 35) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 36;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v5 = v6 - 36;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RentalCarReservation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDC)
  {
    v6 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
          *result = a2 + 35;
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0_7()
{
  *(v0 - 352) = 0;
  *(v0 - 360) = 0;
  *(v0 - 368) = 0;
  *(v0 - 312) = 0;
  *(v0 - 320) = 0;
  *(v0 - 304) = 0;
  *(v0 - 288) = 0;
  *(v0 - 296) = 0;
  *(v0 - 280) = 0;
  *(v0 - 272) = 0;
  *(v0 - 264) = 0;
}

void OUTLINED_FUNCTION_1_6()
{
  *(v0 - 368) = 0;
  *(v0 - 312) = 0;
  *(v0 - 320) = 0;
  *(v0 - 304) = 0;
  *(v0 - 288) = 0;
  *(v0 - 296) = 0;
  *(v0 - 280) = 0;
  *(v0 - 272) = 0;
  *(v0 - 264) = 0;
}

void OUTLINED_FUNCTION_2_6()
{
  *(v0 - 280) = 1;
  *(v0 - 276) = 1;
  *(v0 - 272) = 1;
  *(v0 - 268) = 1;
  *(v0 - 264) = 1;
}

void OUTLINED_FUNCTION_3_6()
{
  *(v0 - 280) = 1;
  *(v0 - 276) = 1;
  *(v0 - 272) = 1;
  *(v0 - 268) = 1;
}

void OUTLINED_FUNCTION_4_4()
{
  *(v0 - 312) = 0;
  *(v0 - 320) = 0;
  *(v0 - 304) = 0;
  *(v0 - 288) = 0;
  *(v0 - 296) = 0;
  *(v0 - 280) = 0;
}

void OUTLINED_FUNCTION_5_5()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 280) = 1;
  *(v0 - 276) = 1;
}

void OUTLINED_FUNCTION_7_5()
{
  *(v0 - 268) = 0;
  *(v0 - 264) = 0;
  *(v0 - 252) = 0;
  *(v0 - 244) = 0;
  *(v0 - 236) = 0;
  *(v0 - 228) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_8_5()
{
  *(v0 - 312) = 0;
  *(v0 - 320) = 0;
  *(v0 - 304) = 0;
  *(v0 - 288) = 0;
}

void OUTLINED_FUNCTION_10_4()
{
  *(v0 - 244) = 0;
  *(v0 - 236) = 0;
  *(v0 - 228) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_11_4()
{
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_13_3()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_14_3()
{
  *(v0 - 244) = 1;
  *(v0 - 240) = 1;
  *(v0 - 228) = 1;
  *(v0 - 224) = 1;
}

void OUTLINED_FUNCTION_16_4()
{
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_17_4()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_18_3()
{
  *(v0 - 220) = 0;
  *(v0 - 212) = 0;
  *(v0 - 204) = 0;
  *(v0 - 196) = 0;
  *(v0 - 180) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

void OUTLINED_FUNCTION_19_3()
{
  *(v0 - 228) = 0;
  *(v0 - 220) = 0;
  *(v0 - 212) = 0;
  *(v0 - 204) = 0;
  *(v0 - 196) = 0;
  *(v0 - 180) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

void OUTLINED_FUNCTION_21_3()
{
  *(v0 - 228) = 1;
  *(v0 - 224) = 1;
  *(v0 - 216) = 1;
  *(v0 - 208) = 1;
}

void OUTLINED_FUNCTION_22_2()
{
  *(v0 - 188) = 0;
  *(v0 - 180) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_23_3()
{
  *(v0 - 212) = 0;
  *(v0 - 204) = 0;
  *(v0 - 196) = 0;
  *(v0 - 180) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

void OUTLINED_FUNCTION_25_3()
{
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_27_2()
{
  *(v0 - 400) = 1;
  *(v0 - 396) = 1;
  *(v0 - 392) = 1;
}

void OUTLINED_FUNCTION_30_1()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_32_1()
{
  *(v0 - 180) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_36_2()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_37_2()
{
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_44_2()
{
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
}

void OUTLINED_FUNCTION_46_0()
{
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_49_0()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
}

void OUTLINED_FUNCTION_50_0()
{
  *(v0 - 188) = 0;
  *(v0 - 180) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
}

void OUTLINED_FUNCTION_51_0()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
}

void OUTLINED_FUNCTION_52_0()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_54_0()
{
  *(v0 - 204) = 0;
  *(v0 - 196) = 0;
  *(v0 - 188) = 0;
  *(v0 - 180) = 0;
  *(v0 - 172) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
}

void OUTLINED_FUNCTION_59_0()
{
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;
  *(v0 - 240) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
}

void OUTLINED_FUNCTION_68_0()
{
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
}

void OUTLINED_FUNCTION_69_0()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_70_0()
{
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;
  *(v0 - 240) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
}

void OUTLINED_FUNCTION_72_0(int a1@<W8>)
{
  *(v1 - 252) = a1;
  *(v1 - 248) = a1;
  *(v1 - 244) = a1;
  *(v1 - 240) = a1;
  *(v1 - 236) = a1;
  *(v1 - 232) = a1;
  *(v1 - 228) = a1;
  *(v1 - 216) = a1;
  *(v1 - 212) = a1;
  *(v1 - 208) = a1;
  *(v1 - 204) = a1;
  *(v1 - 200) = a1;
  *(v1 - 192) = a1;
}

void OUTLINED_FUNCTION_81_0(int a1@<W8>)
{
  *(v1 - 252) = a1;
  *(v1 - 248) = a1;
  *(v1 - 244) = a1;
  *(v1 - 240) = a1;
  *(v1 - 236) = a1;
  *(v1 - 232) = a1;
  *(v1 - 228) = a1;
  *(v1 - 216) = a1;
  *(v1 - 212) = a1;
  *(v1 - 208) = a1;
  *(v1 - 204) = a1;
}

void OUTLINED_FUNCTION_87_0(int a1@<W8>)
{
  *(v1 - 184) = a1;
  *(v1 - 180) = a1;
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
  *(v1 - 152) = a1;
  *(v1 - 144) = a1;
}

void OUTLINED_FUNCTION_88_0()
{
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

void OUTLINED_FUNCTION_89_0(int a1@<W8>)
{
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
  *(v1 - 152) = a1;
  *(v1 - 144) = a1;
  *(v1 - 136) = a1;
}

void OUTLINED_FUNCTION_90_0(int a1@<W8>)
{
  *(v1 - 184) = a1;
  *(v1 - 180) = a1;
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
  *(v1 - 152) = a1;
}

void OUTLINED_FUNCTION_91_0(int a1@<W8>)
{
  *(v1 - 252) = a1;
  *(v1 - 248) = a1;
  *(v1 - 244) = a1;
  *(v1 - 240) = a1;
  *(v1 - 236) = a1;
  *(v1 - 232) = a1;
  *(v1 - 228) = a1;
  *(v1 - 216) = a1;
  *(v1 - 212) = a1;
}

void OUTLINED_FUNCTION_95_0()
{
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;
  *(v0 - 240) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
}

void OUTLINED_FUNCTION_96_0(int a1@<W8>)
{
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
  *(v1 - 152) = a1;
  *(v1 - 144) = a1;
}

void OUTLINED_FUNCTION_99_0(int a1@<W8>)
{
  *(v1 - 192) = a1;
  *(v1 - 188) = a1;
  *(v1 - 184) = a1;
  *(v1 - 180) = a1;
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
}

void OUTLINED_FUNCTION_101_0(int a1@<W8>)
{
  *(v1 - 256) = a1;
  *(v2 - 384) = a1;
  *(v2 - 380) = a1;
  *(v2 - 72) = a1;
}

void OUTLINED_FUNCTION_110_0(int a1@<W8>)
{
  *(v1 - 252) = a1;
  *(v1 - 248) = a1;
  *(v1 - 244) = a1;
  *(v1 - 240) = a1;
  *(v1 - 236) = a1;
  *(v1 - 232) = a1;
  *(v1 - 228) = a1;
}

void OUTLINED_FUNCTION_111_0()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void OUTLINED_FUNCTION_113(int a1@<W8>)
{
  *(v1 - 188) = a1;
  *(v1 - 184) = a1;
  *(v1 - 180) = a1;
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
  *(v1 - 152) = a1;
}

void OUTLINED_FUNCTION_115(int a1@<W8>)
{
  *(v1 - 192) = a1;
  *(v1 - 188) = a1;
  *(v1 - 184) = a1;
  *(v1 - 180) = a1;
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
}

void OUTLINED_FUNCTION_120_0()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
}

void OUTLINED_FUNCTION_127_0(int a1@<W8>)
{
  *(v1 - 188) = a1;
  *(v1 - 184) = a1;
  *(v1 - 180) = a1;
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
}

uint64_t OUTLINED_FUNCTION_139_0(uint64_t a1)
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_140_0()
{
  *(v0 - 196) = 0;
  *(v0 - 188) = 0;
  *(v0 - 180) = 0;
}

void OUTLINED_FUNCTION_145_0(int a1@<W8>)
{
  *(v1 - 220) = a1;
  *(v1 - 216) = a1;
  *(v1 - 212) = a1;
  *(v1 - 208) = a1;
  *(v1 - 204) = a1;
  *(v1 - 200) = a1;
  *(v1 - 196) = a1;
  *(v1 - 180) = a1;
  *(v1 - 176) = a1;
}

void OUTLINED_FUNCTION_147_0(int a1@<W8>)
{
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
}

void OUTLINED_FUNCTION_151_0(int a1@<W8>)
{
  *(v1 - 220) = a1;
  *(v1 - 216) = a1;
  *(v1 - 212) = a1;
  *(v1 - 208) = a1;
  *(v1 - 204) = a1;
  *(v1 - 200) = a1;
  *(v1 - 196) = a1;
}

void OUTLINED_FUNCTION_164(int a1@<W8>)
{
  *(v1 - 196) = a1;
  *(v1 - 192) = a1;
  *(v1 - 188) = a1;
  *(v1 - 184) = a1;
  *(v1 - 180) = a1;
  *(v1 - 176) = a1;
}

uint64_t OUTLINED_FUNCTION_175@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_188@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (*(v3 - 104) + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_192(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_194(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83528];

  return _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_195(int a1)
{
  *(v3 - 108) = a1;
  v4 = *(v2 + 8);
  *(v3 - 96) = v2 + 8;
  *(v3 - 88) = v4;
  return v1;
}

uint64_t OUTLINED_FUNCTION_198(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83508];

  return _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_207@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (*(v3 - 96) + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_211()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_212()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_222()
{

  Hasher._combine(_:)(1u);
}

void OUTLINED_FUNCTION_243()
{
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;
  *(v0 - 240) = 0;
  *(v0 - 232) = 0;
}

void OUTLINED_FUNCTION_250(int a1@<W8>)
{
  *(v1 - 188) = a1;
  *(v1 - 184) = a1;
  *(v1 - 180) = a1;
  *(v1 - 176) = a1;
}

void OUTLINED_FUNCTION_251(int a1@<W8>)
{
  *(v1 - 184) = a1;
  *(v1 - 180) = a1;
  *(v1 - 176) = a1;
}

void OUTLINED_FUNCTION_254(int a1@<W8>)
{
  *(v1 - 196) = a1;
  *(v1 - 192) = a1;
  *(v1 - 188) = a1;
  *(v1 - 184) = a1;
}

void OUTLINED_FUNCTION_256(int a1@<W8>)
{
  *(v1 - 252) = a1;
  *(v1 - 248) = a1;
  *(v1 - 244) = a1;
  *(v1 - 240) = a1;
}

uint64_t OUTLINED_FUNCTION_257()
{
  v6 = *(v4 - 112);

  return outlined init with copy of RentalCarReservation?(v1 + v3, v6, v0, v2);
}

void OUTLINED_FUNCTION_272()
{

  Hasher._combine(_:)(1u);
}

uint64_t OUTLINED_FUNCTION_273()
{

  return String.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_276(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

void OUTLINED_FUNCTION_278(int a1@<W8>)
{
  *(v1 - 220) = a1;
  *(v1 - 216) = a1;
  *(v1 - 212) = a1;
  *(v1 - 208) = a1;
}

void OUTLINED_FUNCTION_289(int a1@<W8>)
{
  *(v1 - 200) = a1;
  *(v1 - 196) = a1;
  *(v1 - 192) = a1;
  *(v1 - 188) = a1;
}

void OUTLINED_FUNCTION_290(int a1@<W8>)
{
  *(v1 - 200) = a1;
  *(v1 - 192) = a1;
  *(v1 - 188) = a1;
}

uint64_t OUTLINED_FUNCTION_293()
{

  return outlined init with copy of RentalCarReservation?(v0 + v4, v5 + v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_295@<X0>(uint64_t a1@<X8>)
{

  return outlined init with take of Date?(v2, v1 + a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_301()
{
  result = v0 + v1;
  *(v3 - 88) = v2;
  return result;
}

void OUTLINED_FUNCTION_302()
{
  *(v5 + 112) = v4;
  *(v5 + 120) = v3;
  *(v5 + 128) = v2;
  *(v5 + 129) = v1;
  *(v5 + 130) = v0;
}

void OUTLINED_FUNCTION_305(int a1@<W8>)
{
  *(v1 - 160) = a1;
  *(v1 - 156) = a1;
  *(v1 - 152) = a1;
  *(v1 - 148) = a1;
  *(v1 - 144) = a1;
}

uint64_t OUTLINED_FUNCTION_327@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 - 256);
  *a2 = result;
  a2[1] = v3;
  return result;
}

void OUTLINED_FUNCTION_336()
{

  Hasher._combine(_:)(1u);
}

void OUTLINED_FUNCTION_337()
{

  Hasher._combine(_:)(0);
}

uint64_t OUTLINED_FUNCTION_340()
{
}

uint64_t OUTLINED_FUNCTION_350()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_351()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

void OUTLINED_FUNCTION_355(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  v10 = *(v9 + 56);
  *(v8 + 96) = *(v9 + 48);
  v11 = *(v9 + 64);
  *(v8 + 104) = v10;
  *(v8 + 112) = v11;
}

uint64_t OUTLINED_FUNCTION_377@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 104) = result;
  *(v3 - 96) = a2;
  *(v3 - 88) = *(v2 + 48);
  return result;
}

void OUTLINED_FUNCTION_384(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + a1);
  *v5 = a3;
  v5[1] = a4;
}

void OUTLINED_FUNCTION_402(uint64_t a1@<X8>)
{
  v4 = (v1 + a1);
  *v4 = v2;
  v4[1] = v3;
}

uint64_t OUTLINED_FUNCTION_404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{

  return outlined init with copy of RentalCarReservation?(v4 + v7, v5, v6, a4);
}

uint64_t OUTLINED_FUNCTION_405(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_406()
{
}

uint64_t OUTLINED_FUNCTION_407(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_408(uint64_t a1)
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_409@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  v5 = *(v1 + a1);

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v4, v5);
}

uint64_t OUTLINED_FUNCTION_411(uint64_t result)
{
  v2 = *(v1 - 104);
  v3 = *(v1 - 120);
  *(v2 + 208) = result;
  *(v2 + 216) = v3;
  return result;
}

void OUTLINED_FUNCTION_414(double a1, double a2, double a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  *(v7 + 136) = a7;
  *(v7 + 152) = a6;
  *(v7 + 168) = a5;
  *(v7 + 184) = a4;
}

void OUTLINED_FUNCTION_415(double a1, double a2, double a3, double a4, double a5, double a6, __n128 a7, __n128 a8)
{
  *(v8 + 136) = v10;
  *(v8 + 152) = v9;
  *(v8 + 168) = a8;
  *(v8 + 184) = a7;
}

uint64_t OUTLINED_FUNCTION_425@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 240) = result;
  *(a3 + 248) = a2;
  return result;
}

void OUTLINED_FUNCTION_427(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_431()
{
  result = v0 + v1;
  *(v3 - 136) = v2;
  return result;
}

void OUTLINED_FUNCTION_432(uint64_t a1@<X8>)
{
  v4 = (v1 + a1);
  *v4 = v3;
  v4[1] = v2;
}

void OUTLINED_FUNCTION_433(uint64_t a1@<X8>)
{
  v4 = (v1 + a1);
  *v4 = v3;
  v4[1] = v2;
}

uint64_t OUTLINED_FUNCTION_438(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of RentalCarReservation?(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_439(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_440(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 - 120);
  v7 = *(v4 - 112);

  return outlined init with copy of RentalCarReservation?(v7, v6, a3, a4);
}

uint64_t SearchResultType.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_2_7(&one-time initialization token for typeDisplayRepresentation);
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static SearchResultType.typeDisplayRepresentation);
}

uint64_t static SearchResultType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_2_7(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchResultType.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SearchResultType.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_2_7(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchResultType.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchResultType.typeDisplayRepresentation.modify(uint64_t a1))()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_2_7(&one-time initialization token for typeDisplayRepresentation);
  }

  v1 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v1, static SearchResultType.typeDisplayRepresentation);
  swift_beginAccess();
  return MemoryCreationQUPerformanceMetrics.llmQUModelLatency.modify;
}

uint64_t key path getter for static SearchResultType.typeDisplayRepresentation : SearchResultType.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchResultType.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchResultType.typeDisplayRepresentation : SearchResultType.Type(uint64_t a1)
{
  v2 = SearchResultType.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t static SearchResultType.caseDisplayRepresentations.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v14 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15OmniSearchTypes0E10ResultTypeO_10AppIntents21DisplayRepresentationVtGMd, &_ss23_ContiguousArrayStorageCy15OmniSearchTypes0E10ResultTypeO_10AppIntents21DisplayRepresentationVtGMR);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes0B10ResultTypeO_10AppIntents21DisplayRepresentationVtMd, &_s15OmniSearchTypes0B10ResultTypeO_10AppIntents21DisplayRepresentationVtMR) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v14[1] = v10;
  *(v10 + 16) = xmmword_25DCE7AB0;
  v11 = v10 + v9;
  *(v10 + v9) = 0;
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v12 = type metadata accessor for DisplayRepresentation.Image();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v12);
  OUTLINED_FUNCTION_3_7();
  *(v11 + v8) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_7();
  *(v11 + 2 * v8) = 2;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_0_8();
  *(v11 + 3 * v8) = 3;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_0_8();
  *(v11 + 4 * v8) = 4;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_0_8();
  *(v11 + 5 * v8) = 5;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_0_8();
  *(v11 + 6 * v8) = 6;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_0_8();
  *(v11 + 7 * v8) = 7;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_0_8();
  *(v11 + 8 * v8) = 8;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_7();
  type metadata accessor for DisplayRepresentation();
  lazy protocol witness table accessor for type SearchResultType and conformance SearchResultType();
  return Dictionary.init(dictionaryLiteral:)();
}

unint64_t lazy protocol witness table accessor for type SearchResultType and conformance SearchResultType()
{
  result = lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType;
  if (!lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType;
  if (!lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType;
  if (!lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType;
  if (!lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType;
  if (!lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType;
  if (!lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType;
  if (!lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType;
  if (!lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType;
  if (!lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType;
  if (!lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType;
  if (!lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType;
  if (!lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchResultType and conformance SearchResultType);
  }

  return result;
}

OmniSearchTypes::SearchResultType_optional __swiftcall SearchResultType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchResultType.init(rawValue:), v3);

  v7 = 9;
  if (v5 < 9)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t SearchResultType.rawValue.getter()
{
  result = 0x7469746E45707061;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x726577736E61;
      break;
    case 3:
      result = 0x6C61626F6C67;
      break;
    case 4:
      result = 0x6867696C746F7073;
      break;
    case 5:
      result = 0x746E657665;
      break;
    case 6:
      result = 0x647261436469;
      break;
    case 7:
      result = 0x616964656DLL;
      break;
    case 8:
      result = 0x6E65657263536E6FLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchResultType@<X0>(unint64_t *a1@<X8>)
{
  result = SearchResultType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type [SearchResultType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SearchResultType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SearchResultType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15OmniSearchTypes0B10ResultTypeOGMd, &_sSay15OmniSearchTypes0B10ResultTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchResultType] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchResultType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultType and conformance SearchResultType();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchResultType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchResultType and conformance SearchResultType();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t getEnumTagSinglePayload for SearchResultType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchResultType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_0_8()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v3);

  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t OUTLINED_FUNCTION_1_7()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v3);
}

uint64_t OUTLINED_FUNCTION_2_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_7()
{

  return DisplayRepresentation.init(title:subtitle:image:)();
}

void __swiftcall SearchToolDialog.init(fullPrint:fullSpeak:supportingPrint:supportingSpeak:)(OmniSearchTypes::SearchToolDialog *__return_ptr retstr, Swift::String fullPrint, Swift::String_optional fullSpeak, Swift::String_optional supportingPrint, Swift::String_optional supportingSpeak)
{
  retstr->fullPrint = fullPrint;
  retstr->fullSpeak = fullSpeak;
  retstr->supportingPrint = supportingPrint;
  retstr->supportingSpeak = supportingSpeak;
}

double static SearchToolDialog.makeInstanceForReflection()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_25DCE4B10;
  *(a1 + 32) = xmmword_25DCE4B10;
  *(a1 + 48) = xmmword_25DCE4B10;
  return result;
}

uint64_t SearchToolDialog.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6972506C6C7566 && a2 == 0xE900000000000074;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616570536C6C7566 && a2 == 0xE90000000000006BLL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974726F70707573 && a2 == 0xEF746E697250676ELL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6974726F70707573 && a2 == 0xEF6B61657053676ELL)
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

uint64_t SearchToolDialog.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6E6972506C6C7566;
  switch(a1)
  {
    case 1:
      result = 0x616570536C6C7566;
      break;
    case 2:
    case 3:
      result = 0x6974726F70707573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchToolDialog.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchToolDialog.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchToolDialog.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchToolDialog.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchToolDialog.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes0E10ToolDialogV10CodingKeys014_C031DD16E6A23M17ED152C547ADFE9839LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes0E10ToolDialogV10CodingKeys014_C031DD16E6A23M17ED152C547ADFE9839LLOGMR);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = v1[2];
  v23 = v1[3];
  v24 = v9;
  v10 = v1[4];
  v21 = v1[5];
  v22 = v10;
  v11 = v1[6];
  v19 = v1[7];
  v20 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v28[1] = 0;
  v12 = v25;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    v14 = v21;
    v13 = v22;
    v16 = v19;
    v15 = v20;
    v28[0] = 1;
    OUTLINED_FUNCTION_2_8(v24, v23, v28);
    v27 = 2;
    OUTLINED_FUNCTION_2_8(v13, v14, &v27);
    v26 = 3;
    OUTLINED_FUNCTION_2_8(v15, v16, &v26);
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t lazy protocol witness table accessor for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys);
  }

  return result;
}

uint64_t SearchToolDialog.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes0E10ToolDialogV10CodingKeys014_C031DD16E6A23M17ED152C547ADFE9839LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes0E10ToolDialogV10CodingKeys014_C031DD16E6A23M17ED152C547ADFE9839LLOGMR);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchToolDialog.CodingKeys and conformance SearchToolDialog.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  OUTLINED_FUNCTION_1_8();
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  OUTLINED_FUNCTION_1_8();
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = v15;
  v35 = 3;
  OUTLINED_FUNCTION_1_8();
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v17;
  (*(v7 + 8))(v10, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  v23 = v33;
  a2[2] = v32;
  a2[3] = v23;
  outlined init with copy of SearchToolDialog(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  return outlined destroy of SearchToolDialog(v34);
}