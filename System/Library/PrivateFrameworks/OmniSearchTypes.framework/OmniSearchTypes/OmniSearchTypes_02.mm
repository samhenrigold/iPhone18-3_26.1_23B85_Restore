uint64_t PreExtractedCard.cardRestrictions.getter()
{
  type metadata accessor for PreExtractedCard(0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

void static PreExtractedCard.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v3 = OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_1();
  v154 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v153 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = OUTLINED_FUNCTION_62(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_131();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v148[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v148[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_42_1();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v148[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v148[-v24];
  OUTLINED_FUNCTION_130();
  v28 = v28 && v26 == v27;
  if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_80;
  }

  v29 = v0[3];
  if (v1[3])
  {
    if (!v29)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_129();
    v32 = v28 && v30 == v31;
    if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v29)
  {
    goto LABEL_80;
  }

  v33 = v0[5];
  if (v1[5])
  {
    if (!v33)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_128();
    v36 = v28 && v34 == v35;
    if (!v36 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v33)
  {
    goto LABEL_80;
  }

  v37 = v0[7];
  if (v1[7])
  {
    if (!v37)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_126();
    v40 = v28 && v38 == v39;
    if (!v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v37)
  {
    goto LABEL_80;
  }

  v41 = v1[9];
  v42 = v0[9];
  if (v41)
  {
    if (!v42)
    {
      goto LABEL_80;
    }

    v43 = v1[8] == v0[8] && v41 == v42;
    if (!v43 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v42)
  {
    goto LABEL_80;
  }

  v44 = v1[11];
  v45 = v0[11];
  if (v44)
  {
    if (!v45)
    {
      goto LABEL_80;
    }

    v46 = v1[10] == v0[10] && v44 == v45;
    if (!v46 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v45)
  {
    goto LABEL_80;
  }

  v47 = v1[13];
  v48 = v0[13];
  if (v47)
  {
    if (!v48)
    {
      goto LABEL_80;
    }

    v49 = v1[12] == v0[12] && v47 == v48;
    if (!v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v48)
  {
    goto LABEL_80;
  }

  v50 = type metadata accessor for PreExtractedCard(0);
  v51 = *(v50 + 44);
  v150 = v50;
  v151 = v51;
  v152 = *(v15 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v51, v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v151, &v152[v25], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v25);
  if (v28)
  {
    OUTLINED_FUNCTION_16_3(&v152[v25]);
    if (v28)
    {
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_70;
    }

LABEL_68:
    v55 = v25;
LABEL_79:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v55, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_80;
  }

  outlined init with copy of RentalCarReservation?(v25, v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(&v152[v25]);
  if (v52)
  {
    v53 = OUTLINED_FUNCTION_120();
    v54(v53);
    goto LABEL_68;
  }

  (*(v154 + 32))(v153, &v152[v25], v3);
  OUTLINED_FUNCTION_0_6();
  lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v56, v57, MEMORY[0x277CC9598]);
  v149 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v154 + 8);
  v151 = v154 + 8;
  v152 = v58;
  (v58)(v153, v3);
  v59 = OUTLINED_FUNCTION_120();
  (v152)(v59);
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v149 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_70:
  v60 = *(v150 + 48);
  v61 = *(v15 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v60, v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v62 = v0 + v60;
  v63 = v61;
  outlined init with copy of RentalCarReservation?(v62, &v23[v61], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v23);
  if (v28)
  {
    OUTLINED_FUNCTION_16_3(&v23[v61]);
    if (v28)
    {
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_82;
    }

    goto LABEL_78;
  }

  outlined init with copy of RentalCarReservation?(v23, v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(&v23[v61]);
  if (v64)
  {
    (*(v154 + 8))(v12, v3);
LABEL_78:
    v55 = v23;
    goto LABEL_79;
  }

  v65 = v154;
  (*(v154 + 32))(v153, &v23[v63], v3);
  OUTLINED_FUNCTION_0_6();
  lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v66, v67, MEMORY[0x277CC9598]);
  LODWORD(v152) = dispatch thunk of static Equatable.== infix(_:_:)();
  v68 = *(v65 + 8);
  v68(v153, v3);
  v68(v12, v3);
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v152 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_82:
  OUTLINED_FUNCTION_10_3();
  if (v71)
  {
    if (!v69)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v70);
    v74 = v28 && v72 == v73;
    if (!v74 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v69)
  {
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_10_3();
  if (v77)
  {
    if (!v75)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v76);
    v80 = v28 && v78 == v79;
    if (!v80 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v75)
  {
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_10_3();
  if (v83)
  {
    if (!v81)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v82);
    v86 = v28 && v84 == v85;
    if (!v86 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v81)
  {
    goto LABEL_80;
  }

  v87 = *(v150 + 64);
  v88 = *(v15 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v87, v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v87, v19 + v88, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v19);
  if (!v28)
  {
    outlined init with copy of RentalCarReservation?(v19, v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_16_3(v19 + v88);
    if (!v89)
    {
      v92 = v154;
      v93 = v19 + v88;
      v94 = v153;
      (*(v154 + 32))(v153, v93, v3);
      OUTLINED_FUNCTION_0_6();
      lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v95, v96, MEMORY[0x277CC9598]);
      v97 = dispatch thunk of static Equatable.== infix(_:_:)();
      v98 = *(v92 + 8);
      v98(v94, v3);
      v99 = OUTLINED_FUNCTION_96();
      (v98)(v99);
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((v97 & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_119;
    }

    v90 = OUTLINED_FUNCTION_96();
    v91(v90);
    goto LABEL_117;
  }

  OUTLINED_FUNCTION_16_3(v19 + v88);
  if (!v28)
  {
LABEL_117:
    v55 = v19;
    goto LABEL_79;
  }

  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_119:
  OUTLINED_FUNCTION_10_3();
  if (v102)
  {
    if (!v100)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v101);
    v105 = v28 && v103 == v104;
    if (!v105 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v100)
  {
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_10_3();
  if (v108)
  {
    if (!v106)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v107);
    v111 = v28 && v109 == v110;
    if (!v111 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v106)
  {
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_10_3();
  if (v114)
  {
    if (!v112)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v113);
    v117 = v28 && v115 == v116;
    if (!v117 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v112)
  {
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_10_3();
  if (v120)
  {
    if (!v118)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v119);
    v123 = v28 && v121 == v122;
    if (!v123 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v118)
  {
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_10_3();
  if (v126)
  {
    if (!v124)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v125);
    v129 = v28 && v127 == v128;
    if (!v129 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v124)
  {
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_10_3();
  if (v132)
  {
    if (!v130)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v131);
    v135 = v28 && v133 == v134;
    if (!v135 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v130)
  {
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_10_3();
  if (v138)
  {
    if (!v136)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_25_2(v137);
    v141 = v28 && v139 == v140;
    if (!v141 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v136)
  {
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_10_3();
  if (v144 && v142)
  {
    OUTLINED_FUNCTION_25_2(v143);
    if (!v28 || v145 != v146)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_80:
  OUTLINED_FUNCTION_42_0();
}

uint64_t PreExtractedCard.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795464726163 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5462755364726163 && a2 == 0xEB00000000657079;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x766F725064726163 && a2 == 0xEC00000072656469;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65646E5564726163 && a2 == 0xED0000656D614E72;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x626D754E64726163 && a2 == 0xEA00000000007265;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x756F724764726163 && a2 == 0xEF7265626D754E70;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7573734964726163 && a2 == 0xED00006574614465;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x800000025DCEAEB0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7573734964726163 && a2 == 0xEC00000079426465;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6967655264726163 && a2 == 0xEA00000000006E6FLL;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E756F4364726163 && a2 == 0xEB00000000797274;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x7961646874726962 && a2 == 0xE800000000000000;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x800000025DCEAED0 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x7264644164726163 && a2 == 0xEB00000000737365;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x78655364726163 && a2 == 0xE700000000000000;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6769654864726163 && a2 == 0xEA00000000007468;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x4365794564726163 && a2 == 0xEC000000726F6C6FLL;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6769655764726163 && a2 == 0xEA00000000007468;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x6574614364726163 && a2 == 0xEC00000079726F67;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else if (a1 == 0xD000000000000010 && 0x800000025DCEAEF0 == a2)
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

uint64_t PreExtractedCard.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6570795464726163;
      break;
    case 2:
      result = 0x5462755364726163;
      break;
    case 3:
      result = 0x766F725064726163;
      break;
    case 4:
      result = 0x65646E5564726163;
      break;
    case 5:
      result = 0x626D754E64726163;
      break;
    case 6:
      result = 0x756F724764726163;
      break;
    case 7:
    case 9:
      result = 0x7573734964726163;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x6967655264726163;
      break;
    case 11:
      result = 0x6E756F4364726163;
      break;
    case 12:
      result = 0x7961646874726962;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x7264644164726163;
      break;
    case 15:
      result = 0x78655364726163;
      break;
    case 16:
      v3 = 0x654864726163;
      goto LABEL_19;
    case 17:
      result = 0x4365794564726163;
      break;
    case 18:
      v3 = 0x655764726163;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6769000000000000;
      break;
    case 19:
      result = 0x6574614364726163;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PreExtractedCard.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PreExtractedCard.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PreExtractedCard.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PreExtractedCard.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PreExtractedCard.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PreExtractedCard.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PreExtractedCard.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_124();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes16PreExtractedCardV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes16PreExtractedCardV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_87();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_7_4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_1_5(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_1_5(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_1_5(3);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_1_5(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_1_5(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_1_5(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v3 = type metadata accessor for PreExtractedCard(0);
    v4 = v3[11];
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_6();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v5, v6, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_43_1(v1 + v4);
    OUTLINED_FUNCTION_43_1(v1 + v3[12]);
    OUTLINED_FUNCTION_70(v3[13]);
    OUTLINED_FUNCTION_1_5(9);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v3[14]);
    OUTLINED_FUNCTION_1_5(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v3[15]);
    OUTLINED_FUNCTION_1_5(11);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_1(v1 + v3[16]);
    OUTLINED_FUNCTION_70(v3[17]);
    OUTLINED_FUNCTION_1_5(13);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v3[18]);
    OUTLINED_FUNCTION_1_5(14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v3[19]);
    OUTLINED_FUNCTION_1_5(15);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v3[20]);
    OUTLINED_FUNCTION_1_5(16);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v3[21]);
    OUTLINED_FUNCTION_1_5(17);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v3[22]);
    OUTLINED_FUNCTION_1_5(18);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v3[23]);
    OUTLINED_FUNCTION_1_5(19);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v3[24]);
    OUTLINED_FUNCTION_1_5(20);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v7 = OUTLINED_FUNCTION_123();
  v8(v7);
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

void PreExtractedCard.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_36();
  v25 = v23;
  v27 = v26;
  v108 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v30 = OUTLINED_FUNCTION_62(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_42_1();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_131();
  MEMORY[0x28223BE20](v35);
  v37 = &v103[-v36];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes16PreExtractedCardV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes16PreExtractedCardV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1();
  v39 = v38;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  v42 = &v103[-v41];
  v113 = type metadata accessor for PreExtractedCard(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_12_2();
  v114 = v44;
  v45 = v27[3];
  v111 = v27;
  v46 = __swift_project_boxed_opaque_existential_1(v27, v45);
  lazy protocol witness table accessor for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys();
  v109 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    v112 = v23;
    LOBYTE(v39) = 0;
    LODWORD(v50) = 0;
    v51 = 0;
    OUTLINED_FUNCTION_111();
    LODWORD(v33) = 0;
    v52 = 0;
    v53 = 0;
    v104 = 0;
    *v106 = 0;
    LODWORD(v107) = 0;
    OUTLINED_FUNCTION_69();
    LODWORD(v110) = 0;
  }

  else
  {
    v47 = v37;
    v48 = v24;
    v46 = v109;
    v25 = v110;
    v49 = KeyedDecodingContainer.decode(_:forKey:)();
    v56 = v114;
    *v114 = v49;
    v56[1] = v57;
    OUTLINED_FUNCTION_55(1);
    v53 = v39;
    v56[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56[3] = v58;
    OUTLINED_FUNCTION_55(2);
    v56[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56[5] = v59;
    OUTLINED_FUNCTION_55(3);
    v56[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56[7] = v60;
    OUTLINED_FUNCTION_55(4);
    v56[8] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56[9] = v61;
    OUTLINED_FUNCTION_55(5);
    v56[10] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56[11] = v62;
    OUTLINED_FUNCTION_55(6);
    v56[12] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56[13] = v63;
    v107 = type metadata accessor for Date();
    OUTLINED_FUNCTION_0_6();
    v66 = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v64, v65, MEMORY[0x277CC95A0]);
    v67 = v47;
    v51 = v107;
    *&v106[4] = v66;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of Date?(v67, v114 + v113[11], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v50 = v48;
    v52 = *&v106[4];
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v112 = 0;
    outlined init with take of Date?(v50, v114 + v113[12], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_55(9);
    v68 = v112;
    v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v112 = v68;
    if (v68)
    {
      v71 = OUTLINED_FUNCTION_79();
      v72(v71);
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_2_5();
      v104 = v73;
    }

    else
    {
      OUTLINED_FUNCTION_78(v69, v70, v113[13]);
      v74 = OUTLINED_FUNCTION_46(10);
      v112 = 0;
      OUTLINED_FUNCTION_78(v74, v75, v113[14]);
      v76 = OUTLINED_FUNCTION_46(11);
      v112 = 0;
      OUTLINED_FUNCTION_78(v76, v77, v113[15]);
      v46 = v109;
      v78 = v112;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v112 = v78;
      if (!v78)
      {
        outlined init with take of Date?(v33, v114 + v113[16], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v82 = OUTLINED_FUNCTION_46(13);
        v112 = 0;
        OUTLINED_FUNCTION_78(v82, v83, v113[17]);
        v84 = OUTLINED_FUNCTION_46(14);
        v112 = 0;
        OUTLINED_FUNCTION_78(v84, v85, v113[18]);
        v86 = OUTLINED_FUNCTION_46(15);
        v112 = 0;
        OUTLINED_FUNCTION_78(v86, v87, v113[19]);
        v88 = OUTLINED_FUNCTION_46(16);
        v112 = 0;
        OUTLINED_FUNCTION_78(v88, v89, v113[20]);
        v90 = OUTLINED_FUNCTION_46(17);
        v112 = 0;
        OUTLINED_FUNCTION_78(v90, v91, v113[21]);
        v92 = OUTLINED_FUNCTION_46(18);
        v112 = 0;
        OUTLINED_FUNCTION_78(v92, v93, v113[22]);
        v94 = OUTLINED_FUNCTION_46(19);
        v112 = 0;
        OUTLINED_FUNCTION_78(v94, v95, v113[23]);
        v96 = OUTLINED_FUNCTION_46(20);
        v112 = 0;
        v97 = v96;
        v99 = v98;
        v100 = OUTLINED_FUNCTION_79();
        v101(v100);
        v102 = (v114 + v113[24]);
        *v102 = v97;
        v102[1] = v99;
        OUTLINED_FUNCTION_140();
        __swift_destroy_boxed_opaque_existential_1(v111);
        outlined destroy of ShippingOrder();
        goto LABEL_41;
      }

      v79 = OUTLINED_FUNCTION_79();
      v80(v79);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_2_5();
      LODWORD(v104) = v81;
      HIDWORD(v104) = v81;
      *v106 = v81;
      *&v106[4] = v81;
    }
  }

  v54 = v114;
  __swift_destroy_boxed_opaque_existential_1(v111);
  if (v39)
  {
    v105 = 0;

    if (v50)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v105 = 0;
    if (v50)
    {
LABEL_6:

      if ((v51 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  if (!v51)
  {
LABEL_7:
    if (v46)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:

  if (v46)
  {
LABEL_8:

    if ((v25 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v25)
  {
LABEL_9:
    v55 = v113;
    if (v33)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:

  v55 = v113;
  if (v33)
  {
LABEL_10:

    if ((v52 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (!v52)
  {
LABEL_11:
    if (v53)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:

  if (v53)
  {
LABEL_12:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v54 + v55[11], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((v104 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!v104)
  {
LABEL_13:
    if (HIDWORD(v104))
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v54 + v55[12], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v104 & 0x100000000) != 0)
  {
LABEL_14:
    OUTLINED_FUNCTION_112();
    if ((v106[0] & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  if (!*v106)
  {
LABEL_15:
    if (*&v106[4])
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  OUTLINED_FUNCTION_112();
  if (v106[4])
  {
LABEL_16:
    OUTLINED_FUNCTION_112();
    if ((v107 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (!v107)
  {
LABEL_17:
    if (v108)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v54 + v55[16], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v108)
  {
LABEL_18:
    OUTLINED_FUNCTION_112();
    if ((v109 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  if (!v109)
  {
LABEL_19:
    if (!v110)
    {
      goto LABEL_38;
    }

    goto LABEL_20;
  }

LABEL_37:
  OUTLINED_FUNCTION_112();
  if (v110)
  {
LABEL_20:
    OUTLINED_FUNCTION_112();
  }

LABEL_38:
  if (!v105)
  {
    if (!HIDWORD(v105))
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  OUTLINED_FUNCTION_112();
  if ((v105 & 0x100000000) != 0)
  {
LABEL_40:
    OUTLINED_FUNCTION_112();
  }

LABEL_41:
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

uint64_t PreExtractedContact.init(id:contactType:contactName:contactNickname:emailAddresses:phoneNumbers:contactSharedBy:contactSharedDateTime:contactSharedAppName:links:birthday:homeAddresses:workAddresses:relationship:addresses:businessHours:)@<X0>(uint64_t a1@<X8>, uint64_t x0_0@<X0>, uint64_t x1_0@<X1>, uint64_t x2_0@<X2>, uint64_t x3_0@<X3>, uint64_t x4_0@<X4>, uint64_t x5_0@<X5>, uint64_t x6_0@<X6>, uint64_t x7_0@<X7>, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_144(x0_0, x1_0, x2_0, x3_0, x4_0, x5_0, x6_0, x7_0);
  *(a1 + 64) = v24;
  *(a1 + 80) = v26;
  *(a1 + 88) = v25;
  v27 = type metadata accessor for PreExtractedContact(0);
  OUTLINED_FUNCTION_152(a5, a1 + v27[11]);
  v28 = (a1 + v27[12]);
  *v28 = a6;
  v28[1] = a7;
  *(a1 + v27[13]) = a8;
  result = OUTLINED_FUNCTION_152(a9, a1 + v27[14]);
  *(a1 + v27[15]) = a10;
  *(a1 + v27[16]) = a11;
  v30 = (a1 + v27[17]);
  *v30 = a12;
  v30[1] = a13;
  *(a1 + v27[18]) = a14;
  *(a1 + v27[19]) = a15;
  return result;
}

uint64_t PreExtractedContact.contactSharedAppName.getter()
{
  type metadata accessor for PreExtractedContact(0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedContact.links.getter()
{
  type metadata accessor for PreExtractedContact(0);
}

uint64_t PreExtractedContact.homeAddresses.getter()
{
  type metadata accessor for PreExtractedContact(0);
}

uint64_t PreExtractedContact.workAddresses.getter()
{
  type metadata accessor for PreExtractedContact(0);
}

uint64_t PreExtractedContact.addresses.getter()
{
  type metadata accessor for PreExtractedContact(0);
}

uint64_t PreExtractedContact.businessHours.getter()
{
  type metadata accessor for PreExtractedContact(0);
}

void static PreExtractedContact.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v3 = OUTLINED_FUNCTION_139();
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
  v14 = &v88[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_131();
  MEMORY[0x28223BE20](v17);
  v19 = &v88[-v18];
  OUTLINED_FUNCTION_130();
  v22 = v22 && v20 == v21;
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_62;
  }

  v23 = v0[3];
  if (v1[3])
  {
    if (!v23)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_129();
    v26 = v22 && v24 == v25;
    if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v23)
  {
    goto LABEL_62;
  }

  v27 = v0[5];
  if (v1[5])
  {
    if (!v27)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_128();
    v30 = v22 && v28 == v29;
    if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v27)
  {
    goto LABEL_62;
  }

  v31 = v0[7];
  if (v1[7])
  {
    if (!v31)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_126();
    v34 = v22 && v32 == v33;
    if (!v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v31)
  {
    goto LABEL_62;
  }

  v35 = v1[8];
  v36 = v0[8];
  if (v35)
  {
    if (!v36 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v35, v36) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v36)
  {
    goto LABEL_62;
  }

  v37 = v1[9];
  v38 = v0[9];
  if (v37)
  {
    if (!v38 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v37, v38) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v38)
  {
    goto LABEL_62;
  }

  v39 = v1[11];
  v40 = v0[11];
  if (v39)
  {
    if (!v40)
    {
      goto LABEL_62;
    }

    v41 = v1[10] == v0[10] && v39 == v40;
    if (!v41 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v40)
  {
    goto LABEL_62;
  }

  v42 = type metadata accessor for PreExtractedContact(0);
  v43 = *(v42 + 44);
  v90 = v42;
  v91 = v43;
  v92 = *(v15 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v43, v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v91, &v92[v19], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v19);
  if (v22)
  {
    OUTLINED_FUNCTION_16_3(&v92[v19]);
    if (v22)
    {
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_64;
    }

LABEL_60:
    v45 = v19;
LABEL_61:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v45, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_62;
  }

  outlined init with copy of RentalCarReservation?(v19, v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(&v92[v19]);
  if (v44)
  {
    (*(v5 + 8))(v14, v3);
    goto LABEL_60;
  }

  (*(v5 + 32))(v9, &v92[v19], v3);
  OUTLINED_FUNCTION_0_6();
  lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v46, v47, MEMORY[0x277CC9598]);
  v89 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = *(v5 + 8);
  v91 = v5 + 8;
  v92 = v48;
  (v48)(v9, v3);
  (v92)(v14, v3);
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v89 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_64:
  v49 = v90;
  OUTLINED_FUNCTION_10_3();
  if (v52)
  {
    if (!v50)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_25_2(v51);
    v55 = v22 && v53 == v54;
    if (!v55 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v50)
  {
    goto LABEL_62;
  }

  v56 = OUTLINED_FUNCTION_132(v49[13]);
  if (v56)
  {
    if (!v57 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v56, v57) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v57)
  {
    goto LABEL_62;
  }

  v58 = v49[14];
  v59 = *(v15 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v58, v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v58, v2 + v59, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v2);
  if (!v22)
  {
    v60 = OUTLINED_FUNCTION_148();
    outlined init with copy of RentalCarReservation?(v60, v61, v62, v63);
    OUTLINED_FUNCTION_16_3(v2 + v59);
    if (!v64)
    {
      v67 = OUTLINED_FUNCTION_146();
      v68(v67);
      OUTLINED_FUNCTION_0_6();
      lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v69, v70, MEMORY[0x277CC9598]);
      v71 = OUTLINED_FUNCTION_151();
      v72 = *(v5 + 8);
      v72(v9, v3);
      v73 = OUTLINED_FUNCTION_120();
      (v72)(v73);
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((v71 & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_88;
    }

    v65 = OUTLINED_FUNCTION_120();
    v66(v65);
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_16_3(v2 + v59);
  if (!v22)
  {
LABEL_86:
    v45 = v2;
    goto LABEL_61;
  }

  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_88:
  v74 = OUTLINED_FUNCTION_132(v90[15]);
  if (v74)
  {
    if (!v75 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v74, v75) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v75)
  {
    goto LABEL_62;
  }

  v76 = OUTLINED_FUNCTION_132(v90[16]);
  if (v76)
  {
    if (!v77 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v76, v77) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v77)
  {
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_10_3();
  if (v80)
  {
    if (!v78)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_25_2(v79);
    v83 = v22 && v81 == v82;
    if (!v83 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v78)
  {
    goto LABEL_62;
  }

  v84 = OUTLINED_FUNCTION_132(v90[18]);
  if (v84)
  {
    if (!v85 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v84, v85) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v85)
  {
    goto LABEL_62;
  }

  v86 = OUTLINED_FUNCTION_132(v90[19]);
  if (v86 && v87)
  {
    _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v86, v87);
  }

LABEL_62:
  OUTLINED_FUNCTION_42_0();
}

uint64_t PreExtractedContact.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x54746361746E6F63 && a2 == 0xEB00000000657079;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4E746361746E6F63 && a2 == 0xEF656D616E6B6369;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6464416C69616D65 && a2 == 0xEE00736573736572;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x53746361746E6F63 && a2 == 0xEF79426465726168;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x800000025DCEAF10 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x800000025DCEAF30 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x736B6E696CLL && a2 == 0xE500000000000000;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7961646874726962 && a2 == 0xE800000000000000;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x72646441656D6F68 && a2 == 0xED00007365737365;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x726464416B726F77 && a2 == 0xED00007365737365;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6573736572646461 && a2 == 0xE900000000000073;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x7373656E69737562 && a2 == 0xED00007372756F48)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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

uint64_t PreExtractedContact.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x54746361746E6F63;
      break;
    case 2:
      result = 0x4E746361746E6F63;
      break;
    case 3:
      result = 0x4E746361746E6F63;
      break;
    case 4:
      result = 0x6464416C69616D65;
      break;
    case 5:
      result = 0x6D754E656E6F6870;
      break;
    case 6:
      result = 0x53746361746E6F63;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x736B6E696CLL;
      break;
    case 10:
      result = 0x7961646874726962;
      break;
    case 11:
      v3 = 1701670760;
      goto LABEL_7;
    case 12:
      v3 = 1802661751;
LABEL_7:
      result = v3 | 0x7264644100000000;
      break;
    case 13:
      result = 0x6E6F6974616C6572;
      break;
    case 14:
      result = 0x6573736572646461;
      break;
    case 15:
      result = 0x7373656E69737562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PreExtractedContact.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PreExtractedContact.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PreExtractedContact.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PreExtractedContact.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PreExtractedContact.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PreExtractedContact.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PreExtractedContact.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_124();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes19PreExtractedContactV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes19PreExtractedContactV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_87();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_21_2();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v20)
  {
    OUTLINED_FUNCTION_21_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_21_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_21_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_98(&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8]);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_57();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_23_2(5);
    OUTLINED_FUNCTION_21_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = type metadata accessor for PreExtractedContact(0);
    OUTLINED_FUNCTION_142();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_6();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v22, v23, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_57();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v26[12]);
    OUTLINED_FUNCTION_21_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_135(v26[13]);
    OUTLINED_FUNCTION_23_2(9);
    OUTLINED_FUNCTION_57();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_135(v26[15]);
    OUTLINED_FUNCTION_23_2(11);
    OUTLINED_FUNCTION_135(v26[16]);
    OUTLINED_FUNCTION_23_2(12);
    OUTLINED_FUNCTION_70(v26[17]);
    OUTLINED_FUNCTION_21_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_135(v26[18]);
    OUTLINED_FUNCTION_23_2(14);
    OUTLINED_FUNCTION_135(v26[19]);
    OUTLINED_FUNCTION_23_2(15);
  }

  v24 = OUTLINED_FUNCTION_123();
  v25(v24);
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

void PreExtractedContact.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_36();
  v22 = v21;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v26 = OUTLINED_FUNCTION_62(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_42_1();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v78[-v31];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes19PreExtractedContactV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes19PreExtractedContactV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1();
  v34 = v33;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  v37 = &v78[-v36];
  v88 = type metadata accessor for PreExtractedContact(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_12_2();
  v86 = v39;
  v40 = v22[3];
  v41 = v22[4];
  v80 = v22;
  v42 = __swift_project_boxed_opaque_existential_1(v22, v40);
  lazy protocol witness table accessor for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    v87 = v20;
    OUTLINED_FUNCTION_111();
    v45 = 0;
    LODWORD(v29) = 0;
    LODWORD(v37) = 0;
    OUTLINED_FUNCTION_19_2();
  }

  else
  {
    v40 = v32;
    v83 = v24;
    v43 = v34;
    LOBYTE(a10) = 0;
    v34 = v85;
    v44 = KeyedDecodingContainer.decode(_:forKey:)();
    v48 = v86;
    *v86 = v44;
    v48[1] = v49;
    OUTLINED_FUNCTION_44_1(1);
    LODWORD(v41) = v43;
    v48[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48[3] = v50;
    OUTLINED_FUNCTION_44_1(2);
    v48[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48[5] = v51;
    OUTLINED_FUNCTION_44_1(3);
    v48[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48[7] = v52;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    HIBYTE(v89) = 4;
    v54 = OUTLINED_FUNCTION_103(&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808]);
    v81 = v53;
    v82 = v54;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v48[8] = a10;
    OUTLINED_FUNCTION_38_1(5);
    OUTLINED_FUNCTION_119();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v48[9] = a10;
    OUTLINED_FUNCTION_44_1(6);
    v48[10] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48[11] = v55;
    v56 = type metadata accessor for Date();
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_0_6();
    v59 = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v57, v58, MEMORY[0x277CC95A0]);
    v84 = v56;
    *&v79[4] = v59;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of Date?(v40, v48 + v88[11], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_44_1(8);
    v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v87 = 0;
    OUTLINED_FUNCTION_143(v60, v61, v88[12]);
    OUTLINED_FUNCTION_38_1(9);
    OUTLINED_FUNCTION_119();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v87 = 0;
    OUTLINED_FUNCTION_147();
    *(v86 + *(v62 + 52)) = v63;
    v42 = v37;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v87 = 0;
    outlined init with take of Date?(v29, v86 + v88[14], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_38_1(11);
    OUTLINED_FUNCTION_119();
    v64 = v87;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v87 = v64;
    if (!v64)
    {
      OUTLINED_FUNCTION_147();
      *(v86 + *(v68 + 60)) = v69;
      OUTLINED_FUNCTION_38_1(12);
      OUTLINED_FUNCTION_119();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      LODWORD(v84) = 1;
      v87 = 0;
      OUTLINED_FUNCTION_147();
      *(v86 + *(v70 + 64)) = v71;
      LOBYTE(a10) = 13;
      v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v87 = 0;
      OUTLINED_FUNCTION_78(v72, v73, v88[17]);
      OUTLINED_FUNCTION_38_1(14);
      OUTLINED_FUNCTION_119();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v87 = 0;
      OUTLINED_FUNCTION_147();
      *(v86 + *(v74 + 72)) = v75;
      OUTLINED_FUNCTION_38_1(15);
      OUTLINED_FUNCTION_119();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v87 = 0;
      v76 = OUTLINED_FUNCTION_56();
      v77(v76);
      *(v86 + v88[19]) = a10;
      OUTLINED_FUNCTION_140();
      __swift_destroy_boxed_opaque_existential_1(v80);
      outlined destroy of ShippingOrder();
      goto LABEL_34;
    }

    v65 = OUTLINED_FUNCTION_56();
    v66(v65);
    OUTLINED_FUNCTION_59();
    v45 = 1;
    OUTLINED_FUNCTION_14_2();
    OUTLINED_FUNCTION_75();
    LODWORD(v83) = v67;
    LODWORD(v85) = v67;
  }

  v46 = v86;
  __swift_destroy_boxed_opaque_existential_1(v80);
  if (v42)
  {
    LODWORD(v84) = 0;
    *v79 = 0;

    v47 = v88;
    if (v34)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *v79 = 0;
    LODWORD(v84) = 0;
    v47 = v88;
    if (v34)
    {
LABEL_6:

      if ((v45 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  if (!v45)
  {
LABEL_7:
    if (v29)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:

  if (v29)
  {
LABEL_8:

    if ((v37 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if (!v37)
  {
LABEL_9:
    if (v41)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:

  if (v41)
  {
LABEL_10:

    if ((v40 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if (!v40)
  {
LABEL_11:
    if (v81)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:

  if (v81)
  {
LABEL_12:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v46 + v47[11], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((v82 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v82)
  {
LABEL_13:
    if (v83)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  OUTLINED_FUNCTION_112();
  if (v83)
  {
LABEL_14:

    if ((v85 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_29:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v46 + v47[14], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_30;
  }

LABEL_28:
  if (v85)
  {
    goto LABEL_29;
  }

LABEL_30:
  if (!v84)
  {
    if (!*v79)
    {
      goto LABEL_32;
    }

LABEL_17:
    OUTLINED_FUNCTION_112();
    if ((v79[4] & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v79[0])
  {
    goto LABEL_17;
  }

LABEL_32:
  if (*&v79[4])
  {
LABEL_33:
  }

LABEL_34:
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

__n128 PreExtractedBreadcrumb.init(id:extractedDatesValues:extractedLocationsValues:extractedPhoneNumbersLabels:extractedPhoneNumbersCountryCodes:extractedAddressesLabels:extractedFlightsLabels:extractedLinksLabels:extractedTrackingNumbersLabels:extractedCurrenciesValues:extractedEmailsLabels:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, __n128 a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5] = a11;
  return result;
}

uint64_t static PreExtractedBreadcrumb.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v26 = a1[8];
  v24 = a1[9];
  v20 = a1[11];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v27 = a2[7];
  v28 = a1[7];
  v25 = a2[8];
  v22 = a1[10];
  v23 = a2[9];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v21 = a2[10];
  v19 = a2[11];
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v8)
    {
      return 0;
    }

    v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DateV_Tt1g5(v2, v8);

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v4, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    v14 = OUTLINED_FUNCTION_148();
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v14, v15) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v9 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v6, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v5)
  {
    if (!v11)
    {
      return 0;
    }

    v16 = OUTLINED_FUNCTION_38();
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v16, v17) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v28)
  {
    if (!v27 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v28, v27) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  if (v26)
  {
    if (!v25 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v26, v25) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (v24)
  {
    if (!v23 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v24, v23) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v22)
  {
    if (!v21 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v22, v21) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v20)
  {
    if (v19 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v20, v19) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v19)
  {
    return 1;
  }

  return 0;
}

uint64_t PreExtractedBreadcrumb.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000025DCEAF50 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x800000025DCEAF70 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x800000025DCEAF90 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000021 && 0x800000025DCEAFB0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x800000025DCEAFE0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x800000025DCEB000 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x800000025DCEB020 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001ELL && 0x800000025DCEB040 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000019 && 0x800000025DCEB060 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000015 && 0x800000025DCEB080 == a2)
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

unint64_t PreExtractedBreadcrumb.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
    case 5:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PreExtractedBreadcrumb.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PreExtractedBreadcrumb.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PreExtractedBreadcrumb.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PreExtractedBreadcrumb.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PreExtractedBreadcrumb.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes22PreExtractedBreadcrumbV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes22PreExtractedBreadcrumbV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  lazy protocol witness table accessor for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys();
  OUTLINED_FUNCTION_117();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
    lazy protocol witness table accessor for type [Date] and conformance <A> [A](&lazy protocol witness table cache variable for type [Date] and conformance <A> [A], &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9580], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_40_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_98(&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8]);
    OUTLINED_FUNCTION_40_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_40_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_20_2(4);
    OUTLINED_FUNCTION_20_2(5);
    OUTLINED_FUNCTION_20_2(6);
    OUTLINED_FUNCTION_20_2(7);
    OUTLINED_FUNCTION_20_2(8);
    OUTLINED_FUNCTION_20_2(9);
    OUTLINED_FUNCTION_20_2(10);
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_35();
}

void PreExtractedBreadcrumb.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_36();
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes22PreExtractedBreadcrumbV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes22PreExtractedBreadcrumbV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47();
  v28 = v23[3];
  v29 = __swift_project_boxed_opaque_existential_1(v23, v28);
  lazy protocol witness table accessor for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys();
  OUTLINED_FUNCTION_117();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    LOBYTE(v48[0]) = 0;
    OUTLINED_FUNCTION_86();
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v45 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
    lazy protocol witness table accessor for type [Date] and conformance <A> [A](&lazy protocol witness table cache variable for type [Date] and conformance <A> [A], &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC95A0], MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_86();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v44 = v48[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_103(&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808]);
    OUTLINED_FUNCTION_24_1();
    *(v33 - 256) = v32;
    OUTLINED_FUNCTION_86();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v43 = v48[0];
    OUTLINED_FUNCTION_9_3(3);
    v42 = v48[0];
    OUTLINED_FUNCTION_9_3(4);
    v41 = v48[0];
    OUTLINED_FUNCTION_9_3(5);
    v40 = v48[0];
    OUTLINED_FUNCTION_9_3(6);
    v39 = v48[0];
    OUTLINED_FUNCTION_9_3(7);
    v38 = v48[0];
    OUTLINED_FUNCTION_9_3(8);
    v37 = v48[0];
    OUTLINED_FUNCTION_9_3(9);
    v36 = v48[0];
    v49 = 10;
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_86();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v34 = OUTLINED_FUNCTION_36_1();
    v35(v34);
    v47[0] = v30;
    v47[1] = v45;
    v47[2] = v44;
    v47[3] = v48[0];
    v47[4] = v48[0];
    v47[5] = v48[0];
    v47[6] = v48[0];
    v47[7] = v48[0];
    v47[8] = v48[0];
    v47[9] = v48[0];
    v47[10] = v48[0];
    v47[11] = a10;
    memcpy(v25, v47, 0x60uLL);
    outlined init with copy of PreExtractedBreadcrumb(v47, v48);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v48[0] = v30;
    v48[1] = v45;
    v48[2] = v44;
    v48[3] = v43;
    v48[4] = v42;
    v48[5] = v41;
    v48[6] = v40;
    v48[7] = v39;
    v48[8] = v38;
    v48[9] = v37;
    v48[10] = v36;
    v48[11] = a10;
    outlined destroy of PreExtractedBreadcrumb(v48);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_104();
  __swift_destroy_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_133();
  if (v29)
  {

    if (v26)
    {
      goto LABEL_13;
    }

LABEL_5:
    if (!v25)
    {
      goto LABEL_14;
    }

LABEL_6:

    if (v28)
    {
      goto LABEL_15;
    }

LABEL_7:
    if (!v21)
    {
      goto LABEL_9;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (!v26)
  {
    goto LABEL_5;
  }

LABEL_13:

  if (v25)
  {
    goto LABEL_6;
  }

LABEL_14:
  if (!v28)
  {
    goto LABEL_7;
  }

LABEL_15:

  if (v21)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v46)
  {
  }

LABEL_18:
  OUTLINED_FUNCTION_35();
}

uint64_t PreExtractedSharedLink.init(id:type:subType:name:url:urlDescription:artist:album:publishedDate:releaseDate:lengthInSeconds:musicalGenre:curator:episode:podcastName:summary:)@<X0>(uint64_t a1@<X8>, uint64_t x0_0@<X0>, uint64_t x1_0@<X1>, uint64_t x2_0@<X2>, uint64_t x3_0@<X3>, uint64_t x4_0@<X4>, uint64_t x5_0@<X5>, uint64_t x6_0@<X6>, uint64_t x7_0@<X7>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_144(x0_0, x1_0, x2_0, x3_0, x4_0, x5_0, x6_0, x7_0);
  v32 = type metadata accessor for PreExtractedSharedLink(0);
  outlined init with take of Date?(a3, a1 + v32[8], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v33 = (a1 + v32[9]);
  *v33 = a4;
  v33[1] = a5;
  v34 = (a1 + v32[10]);
  *v34 = a6;
  v34[1] = a7;
  v35 = (a1 + v32[11]);
  *v35 = a8;
  v35[1] = a9;
  OUTLINED_FUNCTION_152(a10, a1 + v32[12]);
  result = OUTLINED_FUNCTION_152(a11, a1 + v32[13]);
  v37 = a1 + v32[14];
  *v37 = a12;
  *(v37 + 8) = a13 & 1;
  v38 = (a1 + v32[15]);
  *v38 = a14;
  v38[1] = a15;
  v39 = (a1 + v32[16]);
  *v39 = a16;
  v39[1] = a17;
  v40 = (a1 + v32[17]);
  *v40 = a18;
  v40[1] = a19;
  v41 = (a1 + v32[18]);
  *v41 = a20;
  v41[1] = a21;
  v42 = (a1 + v32[19]);
  *v42 = a22;
  v42[1] = a23;
  return result;
}

uint64_t PartialExtractedAttributes.appointment.getter()
{
  v0 = OUTLINED_FUNCTION_35_1();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_76(*(v2 + 32));
}

uint64_t PreExtractedSharedLink.urlDescription.getter(double a1)
{
  type metadata accessor for PreExtractedSharedLink(0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedSharedLink.artist.getter(double a1)
{
  type metadata accessor for PreExtractedSharedLink(0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t PreExtractedSharedLink.album.getter(double a1)
{
  type metadata accessor for PreExtractedSharedLink(0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t PartialExtractedAttributes.restaurantReservation.getter()
{
  v0 = OUTLINED_FUNCTION_35_1();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_76(*(v2 + 52));
}

uint64_t PreExtractedSharedLink.curator.getter(double a1)
{
  type metadata accessor for PreExtractedSharedLink(0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

void static PreExtractedSharedLink.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v3 = OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_1();
  v147 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v144 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = OUTLINED_FUNCTION_62(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_42_1();
  v143 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v146 = &v141 - v12;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_42_1();
  v145 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v141 - v17;
  v19 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_1();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v26);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_130();
  v32 = v32 && v30 == v31;
  if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_43;
  }

  v33 = v0[3];
  if (v1[3])
  {
    if (!v33)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_129();
    v36 = v32 && v34 == v35;
    if (!v36 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v33)
  {
    goto LABEL_43;
  }

  v37 = v0[5];
  if (v1[5])
  {
    if (!v37)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_128();
    v40 = v32 && v38 == v39;
    if (!v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v37)
  {
    goto LABEL_43;
  }

  v41 = v0[7];
  if (v1[7])
  {
    if (!v41)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_126();
    v44 = v32 && v42 == v43;
    if (!v44 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v41)
  {
    goto LABEL_43;
  }

  v141 = v3;
  v142 = type metadata accessor for PreExtractedSharedLink(0);
  v45 = *(v142 + 32);
  v46 = *(v28 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v45, v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v45, v2 + v46, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_16_3(v2);
  if (v32)
  {
    OUTLINED_FUNCTION_16_3(v2 + v46);
    if (v32)
    {
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_45;
    }

LABEL_41:
    v54 = &_s10Foundation3URLVSg_ADtMd;
    v55 = &_s10Foundation3URLVSg_ADtMR;
    v56 = v2;
LABEL_42:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v56, v54, v55);
    goto LABEL_43;
  }

  v47 = OUTLINED_FUNCTION_148();
  outlined init with copy of RentalCarReservation?(v47, v48, v49, v50);
  OUTLINED_FUNCTION_16_3(v2 + v46);
  if (v51)
  {
    v52 = OUTLINED_FUNCTION_120();
    v53(v52);
    goto LABEL_41;
  }

  v57 = OUTLINED_FUNCTION_146();
  v58(v57);
  OUTLINED_FUNCTION_37_1();
  lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v59, v60, MEMORY[0x277CC9278]);
  v61 = OUTLINED_FUNCTION_151();
  v62 = *(v21 + 8);
  v62(v25, v19);
  v63 = OUTLINED_FUNCTION_120();
  (v62)(v63);
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((v61 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_45:
  v64 = v142;
  OUTLINED_FUNCTION_10_3();
  if (v67)
  {
    v68 = v141;
    if (!v65)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25_2(v66);
    v71 = v32 && v69 == v70;
    if (!v71 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v68 = v141;
    if (v65)
    {
      goto LABEL_43;
    }
  }

  OUTLINED_FUNCTION_10_3();
  if (v74)
  {
    if (!v72)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25_2(v73);
    v77 = v32 && v75 == v76;
    if (!v77 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v72)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_10_3();
  if (v80)
  {
    if (!v78)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25_2(v79);
    v83 = v32 && v81 == v82;
    if (!v83 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v78)
  {
    goto LABEL_43;
  }

  v84 = v64[12];
  v85 = *(v148 + 48);
  OUTLINED_FUNCTION_153(v1 + v84, v18);
  OUTLINED_FUNCTION_153(v0 + v84, &v18[v85]);
  OUTLINED_FUNCTION_66(v18, 1, v68);
  if (v32)
  {
    OUTLINED_FUNCTION_66(&v18[v85], 1, v68);
    if (v32)
    {
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  v86 = v146;
  outlined init with copy of RentalCarReservation?(v18, v146, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_66(&v18[v85], 1, v68);
  if (v87)
  {
    (*(v147 + 8))(v86, v68);
LABEL_80:
    v54 = &_s10Foundation4DateVSg_ADtMd;
    v55 = &_s10Foundation4DateVSg_ADtMR;
    v56 = v18;
    goto LABEL_42;
  }

  v88 = v147;
  v89 = v144;
  (*(v147 + 32))(v144, &v18[v85], v68);
  OUTLINED_FUNCTION_0_6();
  lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v90, v91, MEMORY[0x277CC9598]);
  v92 = dispatch thunk of static Equatable.== infix(_:_:)();
  v93 = *(v88 + 8);
  v93(v89, v68);
  v93(v86, v68);
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v92 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_82:
  v94 = v64[13];
  v95 = *(v148 + 48);
  v96 = v145;
  OUTLINED_FUNCTION_153(v1 + v94, v145);
  OUTLINED_FUNCTION_153(v0 + v94, v96 + v95);
  OUTLINED_FUNCTION_66(v96, 1, v68);
  if (v32)
  {
    OUTLINED_FUNCTION_66(v96 + v95, 1, v68);
    if (v32)
    {
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v96, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  v97 = v143;
  outlined init with copy of RentalCarReservation?(v96, v143, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_66(v96 + v95, 1, v68);
  if (v98)
  {
    (*(v147 + 8))(v97, v68);
LABEL_90:
    v54 = &_s10Foundation4DateVSg_ADtMd;
    v55 = &_s10Foundation4DateVSg_ADtMR;
    v56 = v96;
    goto LABEL_42;
  }

  v99 = v147;
  v100 = v96 + v95;
  v101 = v144;
  (*(v147 + 32))(v144, v100, v68);
  OUTLINED_FUNCTION_0_6();
  lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v102, v103, MEMORY[0x277CC9598]);
  v104 = dispatch thunk of static Equatable.== infix(_:_:)();
  v105 = *(v99 + 8);
  v105(v101, v68);
  v105(v97, v68);
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v96, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v64 = v142;
  if ((v104 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_92:
  v106 = v64[14];
  v107 = (v1 + v106);
  v108 = *(v1 + v106 + 8);
  v109 = (v0 + v106);
  v110 = *(v0 + v106 + 8);
  if (v108)
  {
    if (!v110)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (*v107 != *v109)
    {
      LOBYTE(v110) = 1;
    }

    if (v110)
    {
      goto LABEL_43;
    }
  }

  OUTLINED_FUNCTION_10_3();
  if (v113)
  {
    if (!v111)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25_2(v112);
    v116 = v32 && v114 == v115;
    if (!v116 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v111)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_10_3();
  if (v119)
  {
    if (!v117)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25_2(v118);
    v122 = v32 && v120 == v121;
    if (!v122 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v117)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_10_3();
  if (v125)
  {
    if (!v123)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25_2(v124);
    v128 = v32 && v126 == v127;
    if (!v128 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v123)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_10_3();
  if (v131)
  {
    if (!v129)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25_2(v130);
    v134 = v32 && v132 == v133;
    if (!v134 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v129)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_10_3();
  if (v137 && v135)
  {
    OUTLINED_FUNCTION_25_2(v136);
    if (!v32 || v138 != v139)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_43:
  OUTLINED_FUNCTION_42_0();
}

uint64_t PreExtractedSharedLink.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65707954627573 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701667182 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 7107189 && a2 == 0xE300000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x72637365446C7275 && a2 == 0xEE006E6F69747069;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x747369747261 && a2 == 0xE600000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6D75626C61 && a2 == 0xE500000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x656873696C627570 && a2 == 0xED00006574614464;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E496874676E656CLL && a2 == 0xEF73646E6F636553;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x476C61636973756DLL && a2 == 0xEC00000065726E65;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x726F7461727563 && a2 == 0xE700000000000000;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x65646F73697065 && a2 == 0xE700000000000000;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x4E74736163646F70 && a2 == 0xEB00000000656D61;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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

uint64_t PreExtractedSharedLink.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      v3 = 0x707954627573;
      goto LABEL_14;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 7107189;
      break;
    case 5:
      result = 0x72637365446C7275;
      break;
    case 6:
      result = 0x747369747261;
      break;
    case 7:
      result = 0x6D75626C61;
      break;
    case 8:
      result = 0x656873696C627570;
      break;
    case 9:
      result = 0x44657361656C6572;
      break;
    case 10:
      result = 0x6E496874676E656CLL;
      break;
    case 11:
      result = 0x476C61636973756DLL;
      break;
    case 12:
      result = 0x726F7461727563;
      break;
    case 13:
      v3 = 0x646F73697065;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 14:
      result = 0x4E74736163646F70;
      break;
    case 15:
      result = 0x7972616D6D7573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PreExtractedSharedLink.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PreExtractedSharedLink.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PreExtractedSharedLink.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PreExtractedSharedLink.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PreExtractedSharedLink.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_124();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes22PreExtractedSharedLinkV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes22PreExtractedSharedLinkV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_87();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_7_4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v23)
  {
    OUTLINED_FUNCTION_1_5(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_1_5(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_1_5(3);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = type metadata accessor for PreExtractedSharedLink(0);
    type metadata accessor for URL();
    OUTLINED_FUNCTION_37_1();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v27, v28, MEMORY[0x277CC9268]);
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_57();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v26[9]);
    OUTLINED_FUNCTION_1_5(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v26[10]);
    OUTLINED_FUNCTION_1_5(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v26[11]);
    OUTLINED_FUNCTION_1_5(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = v26[12];
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_6();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v30, v31, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_43_1(v24 + v29);
    OUTLINED_FUNCTION_43_1(v24 + v26[13]);
    OUTLINED_FUNCTION_1_5(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v26[15]);
    OUTLINED_FUNCTION_1_5(11);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v26[16]);
    OUTLINED_FUNCTION_1_5(12);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v26[17]);
    OUTLINED_FUNCTION_1_5(13);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v26[18]);
    OUTLINED_FUNCTION_1_5(14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v26[19]);
    OUTLINED_FUNCTION_1_5(15);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v32 = OUTLINED_FUNCTION_123();
  v33(v32);
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

void PreExtractedSharedLink.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_36();
  v23 = v22;
  v93 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v26 = OUTLINED_FUNCTION_62(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_42_1();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = (&v90 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v33);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  v36 = &v90 - v35;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes22PreExtractedSharedLinkV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes22PreExtractedSharedLinkV10CodingKeys33_28E518859B488CEEC519FDBE08F16DBALLOGMR);
  OUTLINED_FUNCTION_1();
  v38 = v37;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47();
  v99 = type metadata accessor for PreExtractedSharedLink(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_12_2();
  v97 = v41;
  v43 = v23[3];
  v42 = v23[4];
  v95 = v23;
  v44 = __swift_project_boxed_opaque_existential_1(v23, v43);
  lazy protocol witness table accessor for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys();
  v94 = v21;
  OUTLINED_FUNCTION_117();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    v98 = v20;
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_27_1();
  }

  else
  {
    v92 = v32;
    LODWORD(v42) = v38;
    v44 = v94;
    v45 = KeyedDecodingContainer.decode(_:forKey:)();
    v48 = v97;
    *v97 = v45;
    v48[1] = v49;
    OUTLINED_FUNCTION_61(1);
    LODWORD(v43) = v38;
    v48[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48[3] = v50;
    OUTLINED_FUNCTION_61(2);
    v48[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48[5] = v51;
    OUTLINED_FUNCTION_61(3);
    v48[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48[7] = v52;
    type metadata accessor for URL();
    OUTLINED_FUNCTION_37_1();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v53, v54, MEMORY[0x277CC9280]);
    OUTLINED_FUNCTION_127();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32 = v99;
    outlined init with take of Date?(v36, v48 + v99[8], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_61(5);
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_143(v55, v56, v32[9]);
    OUTLINED_FUNCTION_61(6);
    v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_143(v57, v58, v32[10]);
    OUTLINED_FUNCTION_61(7);
    LODWORD(v21) = 0;
    v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_143(v59, v60, v32[11]);
    LOBYTE(v32) = type metadata accessor for Date();
    OUTLINED_FUNCTION_0_6();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(v61, v62, MEMORY[0x277CC95A0]);
    v36 = v92;
    OUTLINED_FUNCTION_127();
    v91 = v63;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v98 = 0;
    outlined init with take of Date?(v36, v48 + v99[12], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_127();
    v64 = v98;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v98 = v64;
    if (v64)
    {
      v65 = OUTLINED_FUNCTION_64();
      v66(v65);
      LODWORD(v96) = 0;
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_48();
      LODWORD(v94) = v67;
    }

    else
    {
      outlined init with take of Date?(v29, v97 + v99[13], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      OUTLINED_FUNCTION_39_1(10);
      v68 = v98;
      v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v98 = v68;
      if (!v68)
      {
        v71 = v97 + v99[14];
        *v71 = v69;
        v71[8] = v70 & 1;
        OUTLINED_FUNCTION_39_1(11);
        v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v98 = 0;
        OUTLINED_FUNCTION_78(v72, v76, v99[15]);
        OUTLINED_FUNCTION_39_1(12);
        v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v98 = 0;
        OUTLINED_FUNCTION_78(v77, v78, v99[16]);
        OUTLINED_FUNCTION_39_1(13);
        v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v98 = 0;
        OUTLINED_FUNCTION_78(v79, v80, v99[17]);
        OUTLINED_FUNCTION_39_1(14);
        v81 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v98 = 0;
        OUTLINED_FUNCTION_78(v81, v82, v99[18]);
        OUTLINED_FUNCTION_39_1(15);
        v83 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v98 = 0;
        v84 = v83;
        v86 = v85;
        v87 = OUTLINED_FUNCTION_64();
        v88(v87);
        v89 = (v97 + v99[19]);
        *v89 = v84;
        v89[1] = v86;
        OUTLINED_FUNCTION_140();
        __swift_destroy_boxed_opaque_existential_1(v95);
        outlined destroy of ShippingOrder();
        goto LABEL_29;
      }

      v73 = OUTLINED_FUNCTION_64();
      v74(v73);
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_48();
      LODWORD(v94) = v75;
      LODWORD(v96) = v75;
    }
  }

  v46 = v97;
  __swift_destroy_boxed_opaque_existential_1(v95);
  if (v32)
  {
    OUTLINED_FUNCTION_97();

    if (v36)
    {
      goto LABEL_6;
    }
  }

  else
  {
    LODWORD(v92) = 0;
    LODWORD(v91) = 0;
    if (v36)
    {
LABEL_6:

      if ((v42 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  if (!v42)
  {
LABEL_7:
    if (v29)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:

  if (v29)
  {
LABEL_8:

    if ((v44 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  if (!v44)
  {
LABEL_9:
    v47 = v99;
    if (v21)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v47 = v99;
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v46 + v99[8], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v21)
  {
LABEL_10:
    OUTLINED_FUNCTION_112();
    if ((v43 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  if (!v43)
  {
LABEL_11:
    if (v93)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  OUTLINED_FUNCTION_112();
  if (v93)
  {
LABEL_12:
    OUTLINED_FUNCTION_112();
    if ((v94 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  if (!v94)
  {
LABEL_13:
    if (!v96)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

LABEL_25:
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v46 + v47[12], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v96)
  {
LABEL_14:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v46 + v47[13], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_26:
  if (!v91)
  {
    if (!v92)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_112();
  if (v92)
  {
LABEL_28:
    OUTLINED_FUNCTION_112();
  }

LABEL_29:
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

uint64_t outlined destroy of ShippingOrder()
{
  v1 = OUTLINED_FUNCTION_71();
  v2(v1);
  OUTLINED_FUNCTION_9_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t outlined init with take of ShippingOrder(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9_1();
  v4 = OUTLINED_FUNCTION_38();
  v5(v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialExtractedAttributes.CodingKeys and conformance PartialExtractedAttributes.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedCard.CodingKeys and conformance PreExtractedCard.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of PartialExtractedAttributes(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9_1();
  v4 = OUTLINED_FUNCTION_38();
  v5(v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedContact.CodingKeys and conformance PreExtractedContact.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedBreadcrumb.CodingKeys and conformance PreExtractedBreadcrumb.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Date] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
    OUTLINED_FUNCTION_0_6();
    lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(a2, v8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_114(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9_1();
  v5 = OUTLINED_FUNCTION_38();
  v6(v5);
  return v4;
}

uint64_t outlined init with copy of RentalCarReservation?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_114(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9_1();
  v5 = OUTLINED_FUNCTION_38();
  v6(v5);
  return v4;
}

uint64_t outlined destroy of (RentalCarReservation?, RentalCarReservation?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9_1();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedSharedLink.CodingKeys and conformance PreExtractedSharedLink.CodingKeys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PartialExtractedAttributes(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PartialExtractedAttributes and conformance PartialExtractedAttributes, type metadata accessor for PartialExtractedAttributes, "mKU$̩");
  a1[2] = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PartialExtractedAttributes and conformance PartialExtractedAttributes, type metadata accessor for PartialExtractedAttributes, &protocol conformance descriptor for PartialExtractedAttributes);
  result = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PartialExtractedAttributes and conformance PartialExtractedAttributes, type metadata accessor for PartialExtractedAttributes, &protocol conformance descriptor for PartialExtractedAttributes);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedCard(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedCard and conformance PreExtractedCard, type metadata accessor for PreExtractedCard, &protocol conformance descriptor for PreExtractedCard);
  a1[2] = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedCard and conformance PreExtractedCard, type metadata accessor for PreExtractedCard, &protocol conformance descriptor for PreExtractedCard);
  result = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedCard and conformance PreExtractedCard, type metadata accessor for PreExtractedCard, &protocol conformance descriptor for PreExtractedCard);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedContact(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedContact and conformance PreExtractedContact, type metadata accessor for PreExtractedContact, &protocol conformance descriptor for PreExtractedContact);
  a1[2] = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedContact and conformance PreExtractedContact, type metadata accessor for PreExtractedContact, &protocol conformance descriptor for PreExtractedContact);
  result = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedContact and conformance PreExtractedContact, type metadata accessor for PreExtractedContact, &protocol conformance descriptor for PreExtractedContact);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PreExtractedBreadcrumb(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb();
  a1[2] = lazy protocol witness table accessor for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb();
  result = lazy protocol witness table accessor for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb()
{
  result = lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb;
  if (!lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb;
  if (!lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb;
  if (!lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExtractedBreadcrumb and conformance PreExtractedBreadcrumb);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PreExtractedSharedLink(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedSharedLink and conformance PreExtractedSharedLink, type metadata accessor for PreExtractedSharedLink, &protocol conformance descriptor for PreExtractedSharedLink);
  a1[2] = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedSharedLink and conformance PreExtractedSharedLink, type metadata accessor for PreExtractedSharedLink, &protocol conformance descriptor for PreExtractedSharedLink);
  result = lazy protocol witness table accessor for type RentalCarReservation and conformance RentalCarReservation(&lazy protocol witness table cache variable for type PreExtractedSharedLink and conformance PreExtractedSharedLink, type metadata accessor for PreExtractedSharedLink, &protocol conformance descriptor for PreExtractedSharedLink);
  a1[3] = result;
  return result;
}

void type metadata completion function for PartialExtractedAttributes(uint64_t a1)
{
  type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for RentalCarReservation?, type metadata accessor for RentalCarReservation);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for TicketedTransportation?, type metadata accessor for TicketedTransportation);
    if (v2 <= 0x3F)
    {
      type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for TicketedShow?, type metadata accessor for TicketedShow);
      if (v3 <= 0x3F)
      {
        type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for Appointment?, type metadata accessor for Appointment);
        if (v4 <= 0x3F)
        {
          type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for Party?, type metadata accessor for Party);
          if (v5 <= 0x3F)
          {
            type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for Trip?, type metadata accessor for Trip);
            if (v6 <= 0x3F)
            {
              type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for FlightReservation?, type metadata accessor for FlightReservation);
              if (v7 <= 0x3F)
              {
                type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for HotelReservation?, type metadata accessor for HotelReservation);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for RestaurantReservation?, type metadata accessor for RestaurantReservation);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for ShippingOrder?, type metadata accessor for ShippingOrder);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t type metadata completion function for PreExtractedCard(uint64_t a1)
{
  type metadata accessor for Data?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v5 > 0x3F)
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

uint64_t __swift_get_extra_inhabitant_index_8Tm()
{
  OUTLINED_FUNCTION_125();
  if (v1)
  {
    return OUTLINED_FUNCTION_77();
  }

  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = OUTLINED_FUNCTION_118(*(v3 + 44));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_9Tm()
{
  OUTLINED_FUNCTION_99();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v5 = OUTLINED_FUNCTION_118(*(v4 + 44));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t type metadata completion function for PreExtractedContact(uint64_t a1)
{
  type metadata accessor for Data?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for [String]?(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void type metadata accessor for [String]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [String]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [String]?);
    }
  }
}

uint64_t getEnumTagSinglePayload for PreExtractedBreadcrumb(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for PreExtractedBreadcrumb(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for PreExtractedSharedLink(uint64_t a1)
{
  type metadata accessor for Data?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for RentalCarReservation?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for Data?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
    if (v7 > 0x3F)
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

void type metadata accessor for RentalCarReservation?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PreExtractedSharedLink.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PreExtractedSharedLink.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreExtractedCard.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PreExtractedCard.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreExtractedBreadcrumb.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PreExtractedBreadcrumb.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4_3()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_5_4()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_6_3()
{
  *(v0 - 156) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_8_4()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

uint64_t OUTLINED_FUNCTION_9_3@<X0>(char a1@<W8>)
{
  *(v1 - 288) = a1;

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_18_2()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_19_2()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 120) = 0;
}

uint64_t OUTLINED_FUNCTION_20_2@<X0>(char a1@<W8>)
{
  *(v1 - 81) = a1;

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_23_2@<X0>(char a1@<W8>)
{
  *(v1 - 81) = a1;

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_26_1()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 112) = 0;
}

void OUTLINED_FUNCTION_27_1()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_32_0()
{
  v7 = *(v5 - 96) + v3;

  return outlined init with copy of RentalCarReservation?(v7, v4 + v2, v0, v1);
}

void OUTLINED_FUNCTION_33_0()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_41_1()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1)
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_46@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1)
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_67(int a1@<W8>)
{
  *(v1 - 172) = a1;
  *(v1 - 168) = a1;
  *(v1 - 156) = a1;
  *(v1 - 152) = a1;
  *(v1 - 144) = a1;
  *(v1 - 136) = a1;
}

uint64_t OUTLINED_FUNCTION_68()
{
}

uint64_t OUTLINED_FUNCTION_76@<X0>(uint64_t a1@<X8>)
{

  return outlined init with copy of RentalCarReservation?(v2 + a1, v4, v3, v1);
}

uint64_t OUTLINED_FUNCTION_77()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_78@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_98(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83948];

  return lazy protocol witness table accessor for type [String] and conformance <A> [A](a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_103(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83978];

  return lazy protocol witness table accessor for type [String] and conformance <A> [A](a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_112()
{
}

uint64_t OUTLINED_FUNCTION_114(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_122@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined assign with take of RentalCarReservation?(v3, v4 + a3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_138@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined init with copy of RentalCarReservation?(v4 + a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_139()
{

  return type metadata accessor for Date();
}

uint64_t OUTLINED_FUNCTION_140()
{
  v4 = *(v2 - 136);

  return outlined init with copy of PartialExtractedAttributes(v1, v4, v0);
}

uint64_t OUTLINED_FUNCTION_141@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return outlined init with take of ShippingOrder(a1, v4, a2);
}

uint64_t OUTLINED_FUNCTION_143@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_144(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = result;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a7;
  v8[7] = a8;
  return result;
}

uint64_t OUTLINED_FUNCTION_151()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_152(uint64_t a1, uint64_t a2)
{

  return outlined init with take of Date?(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_153(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of RentalCarReservation?(a1, a2, v2, v3);
}

uint64_t RentalCarReservation.startDate.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for RentalCarReservation(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v1 + 140));
}

uint64_t RentalCarReservation.endDate.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for RentalCarReservation(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v1 + 144));
}

uint64_t RentalCarReservation.startDateTimeZone.getter()
{
  return RentalCarReservation.startDateTimeZone.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t RentalCarReservation.status.getter()
{
  return RentalCarReservation.status.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t RentalCarReservation.updateStatus.getter()
{
  type metadata accessor for RentalCarReservation(0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

void static RentalCarReservation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_129_0();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_398();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = OUTLINED_FUNCTION_62(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_314();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_267();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_131();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_130();
  v15 = v15 && v13 == v14;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_365();
  if (v17)
  {
    if (!v16)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_129();
    v20 = v15 && v18 == v19;
    if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v16)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_364();
  if (v22)
  {
    if (!v21)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_128();
    v25 = v15 && v23 == v24;
    if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v21)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_310();
  if (v27)
  {
    if (!v26)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_126();
    v30 = v15 && v28 == v29;
    if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v26)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_309();
  if (v32)
  {
    if (!v31)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_183();
    v35 = v15 && v33 == v34;
    if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v31)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_308();
  if (v37)
  {
    if (!v36)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_182();
    v40 = v15 && v38 == v39;
    if (!v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v36)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_307();
  if (v42)
  {
    if (!v41)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_181();
    v45 = v15 && v43 == v44;
    if (!v45 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v41)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_363();
  if (v47)
  {
    if (!v46)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_234();
    v50 = v15 && v48 == v49;
    if (!v50 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v46)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_233();
  if (v15)
  {
    if (v51 != 2)
    {
      goto LABEL_76;
    }
  }

  else
  {
    OUTLINED_FUNCTION_275();
    if (v52 || ((v53 ^ v54) & 1) != 0)
    {
      goto LABEL_76;
    }
  }

  OUTLINED_FUNCTION_232();
  if (!v15)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_230();
  if (v15)
  {
    if (v55 != 2)
    {
      goto LABEL_76;
    }
  }

  else
  {
    OUTLINED_FUNCTION_275();
    if (v56 || ((v57 ^ v58) & 1) != 0)
    {
      goto LABEL_76;
    }
  }

  v59 = OUTLINED_FUNCTION_362();
  if (v59)
  {
    if (!v60 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v59, v60) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v60)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_361();
  if (v62)
  {
    if (!v61)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_229();
    v65 = v15 && v63 == v64;
    if (!v65 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v61)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_360();
  if (v67)
  {
    if (!v66)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_228();
    v70 = v15 && v68 == v69;
    if (!v70 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v66)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_359();
  if (v72)
  {
    if (!v71)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_227();
    v75 = v15 && v73 == v74;
    if (!v75 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v71)
  {
    goto LABEL_76;
  }

  v76 = OUTLINED_FUNCTION_358();
  if (v76)
  {
    if (!v77 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v76, v77) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v77)
  {
    goto LABEL_76;
  }

  v78 = OUTLINED_FUNCTION_357();
  if (v78)
  {
    if (!v79 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v78, v79) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v79)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_356();
  if (v81)
  {
    if (!v80)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_226();
    v84 = v15 && v82 == v83;
    if (!v84 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v80)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_397();
  if (v86)
  {
    if (!v85)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_265();
    v89 = v15 && v87 == v88;
    if (!v89 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v85)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_424();
  if (v91)
  {
    if (!v90)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_304();
    v94 = v15 && v92 == v93;
    if (!v94 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v90)
  {
    goto LABEL_76;
  }

  v95 = *(v0 + 264);
  if (*(v1 + 264))
  {
    if (!v95)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_380();
    v98 = v15 && v96 == v97;
    if (!v98 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v95)
  {
    goto LABEL_76;
  }

  v99 = *(v1 + 272);
  v100 = *(v0 + 272);
  if (v99)
  {
    if (!v100 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v99, v100) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v100)
  {
    goto LABEL_76;
  }

  v101 = *(v0 + 288);
  if (*(v1 + 288))
  {
    if (!v101)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_379();
    v104 = v15 && v102 == v103;
    if (!v104 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v101)
  {
    goto LABEL_76;
  }

  v105 = *(v1 + 304);
  v106 = *(v0 + 304);
  if (v105)
  {
    if (!v106)
    {
      goto LABEL_76;
    }

    v107 = *(v1 + 296) == *(v0 + 296) && v105 == v106;
    if (!v107 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v106)
  {
    goto LABEL_76;
  }

  v108 = *(v1 + 320);
  v109 = *(v0 + 320);
  if (v108)
  {
    if (!v109)
    {
      goto LABEL_76;
    }

    v110 = *(v1 + 312) == *(v0 + 312) && v108 == v109;
    if (!v110 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v109)
  {
    goto LABEL_76;
  }

  v111 = *(v1 + 336);
  v112 = *(v0 + 336);
  if (v111)
  {
    if (!v112)
    {
      goto LABEL_76;
    }

    v113 = *(v1 + 328) == *(v0 + 328) && v111 == v112;
    if (!v113 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v112)
  {
    goto LABEL_76;
  }

  v114 = *(v1 + 352);
  v115 = *(v0 + 352);
  if (v114)
  {
    if (!v115)
    {
      goto LABEL_76;
    }

    v116 = *(v1 + 344) == *(v0 + 344) && v114 == v115;
    if (!v116 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v115)
  {
    goto LABEL_76;
  }

  v117 = *(v1 + 368);
  v118 = *(v0 + 368);
  if (v117)
  {
    if (!v118)
    {
      goto LABEL_76;
    }

    v119 = *(v1 + 360) == *(v0 + 360) && v117 == v118;
    if (!v119 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v118)
  {
    goto LABEL_76;
  }

  v120 = *(v1 + 384);
  v121 = *(v0 + 384);
  if (v120)
  {
    if (!v121)
    {
      goto LABEL_76;
    }

    v122 = *(v1 + 376) == *(v0 + 376) && v120 == v121;
    if (!v122 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v121)
  {
    goto LABEL_76;
  }

  if (*(v1 + 400))
  {
    if (!*(v0 + 400))
    {
      goto LABEL_76;
    }
  }

  else
  {
    OUTLINED_FUNCTION_332();
    if (v123)
    {
      goto LABEL_76;
    }
  }

  v124 = *(v1 + 416);
  v125 = *(v0 + 416);
  if (v124)
  {
    if (!v125)
    {
      goto LABEL_76;
    }

    v126 = *(v1 + 408) == *(v0 + 408) && v124 == v125;
    if (!v126 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v125)
  {
    goto LABEL_76;
  }

  v127 = type metadata accessor for RentalCarReservation(0);
  OUTLINED_FUNCTION_377(v127, *(v127 + 140));
  outlined init with copy of RentalCarReservation?(v1 + v128, v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v129 = OUTLINED_FUNCTION_376();
  outlined init with copy of RentalCarReservation?(v129, v130, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v3);
  if (v15)
  {
    OUTLINED_FUNCTION_16_3(v183 + v3);
    if (v15)
    {
      v131 = outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_252;
    }

LABEL_250:
    v137 = v3;
LABEL_261:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v137, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_76;
  }

  outlined init with copy of RentalCarReservation?(v3, v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v183 + v3);
  if (v134)
  {
    v135 = OUTLINED_FUNCTION_288();
    v136(v135);
    goto LABEL_250;
  }

  OUTLINED_FUNCTION_224();
  v138 = OUTLINED_FUNCTION_374();
  v139(v138);
  OUTLINED_FUNCTION_6_4();
  lazy protocol witness table accessor for type Date and conformance Date(v140, v141, MEMORY[0x277CC9598]);
  v142 = OUTLINED_FUNCTION_350();
  v143 = OUTLINED_FUNCTION_195(v142);
  v144(v143);
  v145 = OUTLINED_FUNCTION_288();
  v183(v145);
  v131 = outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v182 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_252:
  OUTLINED_FUNCTION_404(v131, v132, v133, &_s10Foundation4DateVSgMR);
  v146 = OUTLINED_FUNCTION_301();
  outlined init with copy of RentalCarReservation?(v146, v147, v148, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v2);
  if (!v15)
  {
    v149 = OUTLINED_FUNCTION_148();
    outlined init with copy of RentalCarReservation?(v149, v150, v151, v152);
    OUTLINED_FUNCTION_16_3(v183 + v2);
    if (!v153)
    {
      OUTLINED_FUNCTION_224();
      v156 = OUTLINED_FUNCTION_299();
      v157(v156);
      OUTLINED_FUNCTION_6_4();
      lazy protocol witness table accessor for type Date and conformance Date(v158, v159, MEMORY[0x277CC9598]);
      v160 = OUTLINED_FUNCTION_151();
      v161 = *(v6 + 8);
      v162 = OUTLINED_FUNCTION_283();
      v161(v162);
      v163 = OUTLINED_FUNCTION_120();
      v161(v163);
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((v160 & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_263;
    }

    v154 = OUTLINED_FUNCTION_120();
    v155(v154);
    goto LABEL_260;
  }

  OUTLINED_FUNCTION_16_3(v183 + v2);
  if (!v15)
  {
LABEL_260:
    v137 = v2;
    goto LABEL_261;
  }

  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_263:
  OUTLINED_FUNCTION_10_3();
  if (v166)
  {
    if (!v164)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_25_2(v165);
    v169 = v15 && v167 == v168;
    if (!v169 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v164)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_10_3();
  if (v172)
  {
    if (!v170)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_25_2(v171);
    v175 = v15 && v173 == v174;
    if (!v175 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v170)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_10_3();
  if (v178 && v176)
  {
    OUTLINED_FUNCTION_25_2(v177);
    if (!v15 || v179 != v180)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_76:
  OUTLINED_FUNCTION_42_0();
}

uint64_t RentalCarReservation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000025DCEB0A0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000025DCEB0C0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001CLL && 0x800000025DCEB0E0 == a2;
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
            v10 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x627553746E657665 && a2 == 0xEC00000065707954;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001BLL && 0x800000025DCEB120 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x417349746E657665 && a2 == 0xED00007961446C6CLL;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E557349656D6974 && a2 == 0xED00006E776F6E6BLL;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000016 && 0x800000025DCEB140 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x73726F68747561 && a2 == 0xE700000000000000;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x7373654D6C69616DLL && a2 == 0xED00006449656761;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000011 && 0x800000025DCEB160 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000011 && 0x800000025DCEB180 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000012 && 0x800000025DCEB1A0 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000023 && 0x800000025DCEB1C0 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x7461767265736572 && a2 == 0xED000064496E6F69;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x72656D6F74737563 && a2 == 0xED000073656D614ELL;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000012 && 0x800000025DCEB1F0 == a2;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000011 && 0x800000025DCEB210 == a2;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000014 && 0x800000025DCEB230 == a2;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000016 && 0x800000025DCEB250 == a2;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x7461636F4C646E65 && a2 == 0xEF656D614E6E6F69;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000012 && 0x800000025DCEB270 == a2;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000014 && 0x800000025DCEB290 == a2;
                                                          if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000011 && 0x800000025DCEB2B0 == a2;
                                                            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x736F436C61746F74 && a2 == 0xE900000000000074;
                                                              if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
                                                                if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
                                                                  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000011 && 0x800000025DCEB2D0 == a2;
                                                                    if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
                                                                      if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else if (a1 == 0x7453657461647075 && a2 == 0xEC00000073757461)
                                                                      {

                                                                        return 35;
                                                                      }

                                                                      else
                                                                      {
                                                                        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                        if (v41)
                                                                        {
                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          return 36;
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

uint64_t RentalCarReservation.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
    case 10:
    case 25:
      return 0xD000000000000016;
    case 2:
    case 24:
    case 28:
      return 0xD000000000000014;
    case 3:
      return 0xD00000000000001CLL;
    case 4:
      return 0xD000000000000017;
    case 5:
      return 0x707954746E657665;
    case 6:
      return 0x627553746E657665;
    case 7:
      return 0xD00000000000001BLL;
    case 8:
      return 0x417349746E657665;
    case 9:
      return 0x6E557349656D6974;
    case 11:
      return 0x73726F68747561;
    case 12:
      return 0x7373654D6C69616DLL;
    case 13:
      return 0xD000000000000011;
    case 14:
      return 0xD000000000000011;
    case 15:
      return 0x65786F626C69616DLL;
    case 16:
    case 22:
    case 27:
      return 0xD000000000000012;
    case 17:
      return 0xD000000000000023;
    case 18:
      return 0x4E79616C70736964;
    case 19:
      v4 = 0x767265736572;
      goto LABEL_34;
    case 20:
      v3 = 0x6469766F7270;
      goto LABEL_19;
    case 21:
      v3 = 0x6D6F74737563;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 26:
      v4 = 0x636F4C646E65;
LABEL_34:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 29:
      result = 0xD000000000000011;
      break;
    case 30:
      result = 0x736F436C61746F74;
      break;
    case 31:
      result = 0x7461447472617473;
      break;
    case 32:
      result = 0x65746144646E65;
      break;
    case 33:
      result = 0xD000000000000011;
      break;
    case 34:
      result = 0x737574617473;
      break;
    case 35:
      result = 0x7453657461647075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RentalCarReservation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = RentalCarReservation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance RentalCarReservation.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = RentalCarReservation.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RentalCarReservation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RentalCarReservation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void RentalCarReservation.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_193();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes20RentalCarReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes20RentalCarReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  v3 = lazy protocol witness table accessor for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys();
  OUTLINED_FUNCTION_192(&unk_286F91260, v4, v3);
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
    OUTLINED_FUNCTION_43_2(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_74(8);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_74(9);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_74(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_173();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_98(&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_43_2(12);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(13);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_341();
    OUTLINED_FUNCTION_281();
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_43_2(17);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(18);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(19);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(20);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_43_2(22);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(23);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(24);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(25);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(26);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(27);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(28);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(29);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(30);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v5 = type metadata accessor for RentalCarReservation(0);
    v6 = v5[35];
    OUTLINED_FUNCTION_274(31);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_6_4();
    lazy protocol witness table accessor for type Date and conformance Date(v7, v8, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_139_0(v1 + v6);
    OUTLINED_FUNCTION_130_0(v5[36]);
    OUTLINED_FUNCTION_169();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v5[37]);
    OUTLINED_FUNCTION_43_2(33);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v5[38]);
    OUTLINED_FUNCTION_43_2(34);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v5[39]);
    OUTLINED_FUNCTION_43_2(35);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v9 = OUTLINED_FUNCTION_270();
  v10(v9);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys;
  if (!lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void RentalCarReservation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_435();
  v91 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v27 = OUTLINED_FUNCTION_62(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_325();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_209();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes20RentalCarReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes20RentalCarReservationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_237();
  v92 = type metadata accessor for RentalCarReservation(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_2();
  v93 = v31;
  OUTLINED_FUNCTION_367();
  OUTLINED_FUNCTION_258();
  v32 = lazy protocol witness table accessor for type RentalCarReservation.CodingKeys and conformance RentalCarReservation.CodingKeys();
  OUTLINED_FUNCTION_407(&unk_286F91260, v33, v32);
  if (v21)
  {
    OUTLINED_FUNCTION_116_0();
    OUTLINED_FUNCTION_19_3();
    __swift_destroy_boxed_opaque_existential_1(v20);
    if (v20)
    {

      if ((v22 & 1) == 0)
      {
LABEL_26:
        if (v24)
        {
LABEL_27:

          if ((v23 & 1) == 0)
          {
LABEL_28:
            if (v76)
            {

              if ((v77 & 1) == 0)
              {
LABEL_30:
                if (v78)
                {
LABEL_31:

                  if ((v79 & 1) == 0)
                  {
LABEL_32:

                    if (v80)
                    {
LABEL_33:

                      if ((v81 & 1) == 0)
                      {
LABEL_34:
                        if (v82)
                        {
LABEL_35:

                          if ((v83 & 1) == 0)
                          {
LABEL_36:
                            if (v84)
                            {
LABEL_37:

                              if ((v85 & 1) == 0)
                              {
LABEL_38:
                                if (v86)
                                {
LABEL_39:

                                  if ((v87 & 1) == 0)
                                  {
LABEL_40:
                                    if (v88)
                                    {
LABEL_41:

                                      if ((v89 & 1) == 0)
                                      {
LABEL_42:
                                        if (v90)
                                        {
LABEL_43:

                                          if ((v91 & 1) == 0)
                                          {
                                            goto LABEL_44;
                                          }

                                          goto LABEL_23;
                                        }

LABEL_22:
                                        if (!v91)
                                        {
                                          goto LABEL_44;
                                        }

LABEL_23:

                                        goto LABEL_44;
                                      }

LABEL_21:

                                      if (v90)
                                      {
                                        goto LABEL_43;
                                      }

                                      goto LABEL_22;
                                    }

LABEL_20:
                                    if (!v89)
                                    {
                                      goto LABEL_42;
                                    }

                                    goto LABEL_21;
                                  }

LABEL_19:

                                  if (v88)
                                  {
                                    goto LABEL_41;
                                  }

                                  goto LABEL_20;
                                }

LABEL_18:
                                if (!v87)
                                {
                                  goto LABEL_40;
                                }

                                goto LABEL_19;
                              }

LABEL_17:

                              if (v86)
                              {
                                goto LABEL_39;
                              }

                              goto LABEL_18;
                            }

LABEL_16:
                            if (!v85)
                            {
                              goto LABEL_38;
                            }

                            goto LABEL_17;
                          }

LABEL_15:

                          if (v84)
                          {
                            goto LABEL_37;
                          }

                          goto LABEL_16;
                        }

LABEL_14:
                        if (!v83)
                        {
                          goto LABEL_36;
                        }

                        goto LABEL_15;
                      }

LABEL_13:

                      if (v82)
                      {
                        goto LABEL_35;
                      }

                      goto LABEL_14;
                    }

LABEL_12:
                    if (!v81)
                    {
                      goto LABEL_34;
                    }

                    goto LABEL_13;
                  }

LABEL_11:

                  if (v80)
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_12;
                }

LABEL_10:
                if (!v79)
                {
                  goto LABEL_32;
                }

                goto LABEL_11;
              }
            }

            else if (!v77)
            {
              goto LABEL_30;
            }

            if (v78)
            {
              goto LABEL_31;
            }

            goto LABEL_10;
          }

LABEL_7:

          goto LABEL_28;
        }

LABEL_6:
        if (!v23)
        {
          goto LABEL_28;
        }

        goto LABEL_7;
      }
    }

    else if (!v22)
    {
      goto LABEL_26;
    }

    if (v24)
    {
      goto LABEL_27;
    }

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_136_0();
  *v93 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v93 + 8) = v34;
  OUTLINED_FUNCTION_92_0(1);
  *(v93 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 24) = v35;
  OUTLINED_FUNCTION_92_0(2);
  *(v93 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 40) = v36;
  OUTLINED_FUNCTION_92_0(3);
  *(v93 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 56) = v37;
  OUTLINED_FUNCTION_92_0(4);
  *(v93 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 72) = v38;
  OUTLINED_FUNCTION_92_0(5);
  *(v93 + 80) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 88) = v39;
  OUTLINED_FUNCTION_92_0(6);
  *(v93 + 96) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 104) = v40;
  OUTLINED_FUNCTION_92_0(7);
  *(v93 + 112) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 120) = v41;
  OUTLINED_FUNCTION_92_0(8);
  *(v93 + 128) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_381();
  *(v93 + 129) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  OUTLINED_FUNCTION_118_0(10);
  *(v93 + 130) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  OUTLINED_FUNCTION_103(&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808]);
  OUTLINED_FUNCTION_168();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_426();
  *(v43 + 136) = v42;
  OUTLINED_FUNCTION_118_0(12);
  *(v93 + 144) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 152) = v44;
  OUTLINED_FUNCTION_118_0(13);
  *(v93 + 160) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 168) = v45;
  OUTLINED_FUNCTION_118_0(14);
  *(v93 + 176) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 184) = v46;
  OUTLINED_FUNCTION_128_0(15);
  OUTLINED_FUNCTION_231();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_426();
  *(v48 + 192) = v47;
  OUTLINED_FUNCTION_128_0(16);
  OUTLINED_FUNCTION_231();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_426();
  *(v50 + 200) = v49;
  OUTLINED_FUNCTION_118_0(17);
  *(v93 + 208) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 216) = v51;
  OUTLINED_FUNCTION_118_0(18);
  *(v93 + 224) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 232) = v52;
  OUTLINED_FUNCTION_118_0(19);
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_425(v53, v54, v93);
  OUTLINED_FUNCTION_118_0(v55);
  *(v93 + 256) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 264) = v56;
  OUTLINED_FUNCTION_128_0(21);
  OUTLINED_FUNCTION_231();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_426();
  *(v58 + 272) = v57;
  OUTLINED_FUNCTION_118_0(22);
  *(v93 + 280) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 288) = v59;
  OUTLINED_FUNCTION_118_0(23);
  *(v93 + 296) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 304) = v60;
  OUTLINED_FUNCTION_118_0(24);
  *(v93 + 312) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 320) = v61;
  OUTLINED_FUNCTION_118_0(25);
  *(v93 + 328) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 336) = v62;
  OUTLINED_FUNCTION_118_0(26);
  *(v93 + 344) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 352) = v63;
  OUTLINED_FUNCTION_118_0(27);
  *(v93 + 360) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 368) = v64;
  OUTLINED_FUNCTION_118_0(28);
  *(v93 + 376) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 384) = v65;
  OUTLINED_FUNCTION_118_0(29);
  *(v93 + 392) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 400) = v66 & 1;
  OUTLINED_FUNCTION_118_0(30);
  *(v93 + 408) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v93 + 416) = v67;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_6_4();
  lazy protocol witness table accessor for type Date and conformance Date(v68, v69, MEMORY[0x277CC95A0]);
  OUTLINED_FUNCTION_342();
  OUTLINED_FUNCTION_168();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of Date?(v22, v93 + v92[35], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_219(32);
  OUTLINED_FUNCTION_262();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of Date?(v23, v93 + v92[36], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_118_0(33);
  v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v70, v71, v92[37]);
  OUTLINED_FUNCTION_118_0(34);
  v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v72, v73, v92[38]);
  OUTLINED_FUNCTION_118_0(35);
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_400();
  v74 = OUTLINED_FUNCTION_122_0();
  v75(v74);
  OUTLINED_FUNCTION_402(v92[39]);
  outlined init with copy of RentalCarReservation(v93, v91, type metadata accessor for RentalCarReservation);
  __swift_destroy_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_38();
  outlined destroy of RentalCarReservation();
LABEL_44:
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

uint64_t TicketedTransportation.startDate.getter()
{
  return TicketedTransportation.startDate.getter();
}

{
  v0 = OUTLINED_FUNCTION_121();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v2 + 116));
}

uint64_t TicketedTransportation.endDate.getter()
{
  return TicketedTransportation.endDate.getter();
}

{
  v0 = OUTLINED_FUNCTION_35_1();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_76(*(v2 + 120));
}

uint64_t TicketedTransportation.startDateTimeZone.getter()
{
  return TicketedTransportation.startDateTimeZone.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t TicketedTransportation.status.getter()
{
  return TicketedTransportation.status.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t TicketedTransportation.updateStatus.getter()
{
  return TicketedTransportation.updateStatus.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

void static TicketedTransportation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_129_0();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_398();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = OUTLINED_FUNCTION_62(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_314();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_267();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_131();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_130();
  v15 = v15 && v13 == v14;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_365();
  if (v17)
  {
    if (!v16)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_129();
    v20 = v15 && v18 == v19;
    if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v16)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_364();
  if (v22)
  {
    if (!v21)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_128();
    v25 = v15 && v23 == v24;
    if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v21)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_310();
  if (v27)
  {
    if (!v26)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_126();
    v30 = v15 && v28 == v29;
    if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v26)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_309();
  if (v32)
  {
    if (!v31)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_183();
    v35 = v15 && v33 == v34;
    if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v31)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_308();
  if (v37)
  {
    if (!v36)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_182();
    v40 = v15 && v38 == v39;
    if (!v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v36)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_307();
  if (v42)
  {
    if (!v41)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_181();
    v45 = v15 && v43 == v44;
    if (!v45 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v41)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_363();
  if (v47)
  {
    if (!v46)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_234();
    v50 = v15 && v48 == v49;
    if (!v50 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v46)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_233();
  if (v15)
  {
    if (v51 != 2)
    {
      goto LABEL_76;
    }
  }

  else
  {
    OUTLINED_FUNCTION_275();
    if (v52 || ((v53 ^ v54) & 1) != 0)
    {
      goto LABEL_76;
    }
  }

  OUTLINED_FUNCTION_232();
  if (!v15)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_230();
  if (v15)
  {
    if (v55 != 2)
    {
      goto LABEL_76;
    }
  }

  else
  {
    OUTLINED_FUNCTION_275();
    if (v56 || ((v57 ^ v58) & 1) != 0)
    {
      goto LABEL_76;
    }
  }

  v59 = OUTLINED_FUNCTION_362();
  if (v59)
  {
    if (!v60 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v59, v60) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v60)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_361();
  if (v62)
  {
    if (!v61)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_229();
    v65 = v15 && v63 == v64;
    if (!v65 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v61)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_360();
  if (v67)
  {
    if (!v66)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_228();
    v70 = v15 && v68 == v69;
    if (!v70 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v66)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_359();
  if (v72)
  {
    if (!v71)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_227();
    v75 = v15 && v73 == v74;
    if (!v75 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v71)
  {
    goto LABEL_76;
  }

  v76 = OUTLINED_FUNCTION_358();
  if (v76)
  {
    if (!v77 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v76, v77) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v77)
  {
    goto LABEL_76;
  }

  v78 = OUTLINED_FUNCTION_357();
  if (v78)
  {
    if (!v79 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v78, v79) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v79)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_356();
  if (v81)
  {
    if (!v80)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_226();
    v84 = v15 && v82 == v83;
    if (!v84 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v80)
  {
    goto LABEL_76;
  }

  v85 = *(v1 + 224);
  v86 = *(v0 + 224);
  if (v85)
  {
    if (!v86 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v85, v86) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v86)
  {
    goto LABEL_76;
  }

  v87 = *(v1 + 240);
  v88 = *(v0 + 240);
  if (v87)
  {
    if (!v88)
    {
      goto LABEL_76;
    }

    v89 = *(v1 + 232) == *(v0 + 232) && v87 == v88;
    if (!v89 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v88)
  {
    goto LABEL_76;
  }

  v90 = *(v1 + 256);
  v91 = *(v0 + 256);
  if (v90)
  {
    if (!v91)
    {
      goto LABEL_76;
    }

    v92 = *(v1 + 248) == *(v0 + 248) && v90 == v91;
    if (!v92 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v91)
  {
    goto LABEL_76;
  }

  v93 = *(v1 + 272);
  v94 = *(v0 + 272);
  if (v93)
  {
    if (!v94)
    {
      goto LABEL_76;
    }

    v95 = *(v1 + 264) == *(v0 + 264) && v93 == v94;
    if (!v95 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v94)
  {
    goto LABEL_76;
  }

  v96 = *(v0 + 288);
  if (*(v1 + 288))
  {
    if (!v96)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_379();
    v99 = v15 && v97 == v98;
    if (!v99 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v96)
  {
    goto LABEL_76;
  }

  v100 = *(v1 + 296);
  v101 = *(v0 + 296);
  if (v100)
  {
    if (!v101 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v100, v101) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v101)
  {
    goto LABEL_76;
  }

  if (*(v1 + 312))
  {
    if (!*(v0 + 312))
    {
      goto LABEL_76;
    }
  }

  else
  {
    OUTLINED_FUNCTION_332();
    if (v102)
    {
      goto LABEL_76;
    }
  }

  v103 = type metadata accessor for TicketedTransportation(0);
  OUTLINED_FUNCTION_377(v103, *(v103 + 116));
  outlined init with copy of RentalCarReservation?(v1 + v104, v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v105 = OUTLINED_FUNCTION_376();
  outlined init with copy of RentalCarReservation?(v105, v106, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v3);
  if (v15)
  {
    OUTLINED_FUNCTION_16_3(v159 + v3);
    if (v15)
    {
      v107 = outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_194;
    }

LABEL_192:
    v113 = v3;
LABEL_203:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v113, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_76;
  }

  outlined init with copy of RentalCarReservation?(v3, v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v159 + v3);
  if (v110)
  {
    v111 = OUTLINED_FUNCTION_288();
    v112(v111);
    goto LABEL_192;
  }

  OUTLINED_FUNCTION_224();
  v114 = OUTLINED_FUNCTION_374();
  v115(v114);
  OUTLINED_FUNCTION_6_4();
  lazy protocol witness table accessor for type Date and conformance Date(v116, v117, MEMORY[0x277CC9598]);
  v118 = OUTLINED_FUNCTION_350();
  v119 = OUTLINED_FUNCTION_195(v118);
  v120(v119);
  v121 = OUTLINED_FUNCTION_288();
  v159(v121);
  v107 = outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v158 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_194:
  OUTLINED_FUNCTION_404(v107, v108, v109, &_s10Foundation4DateVSgMR);
  v122 = OUTLINED_FUNCTION_301();
  outlined init with copy of RentalCarReservation?(v122, v123, v124, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_16_3(v2);
  if (!v15)
  {
    v125 = OUTLINED_FUNCTION_148();
    outlined init with copy of RentalCarReservation?(v125, v126, v127, v128);
    OUTLINED_FUNCTION_16_3(v159 + v2);
    if (!v129)
    {
      OUTLINED_FUNCTION_224();
      v132 = OUTLINED_FUNCTION_299();
      v133(v132);
      OUTLINED_FUNCTION_6_4();
      lazy protocol witness table accessor for type Date and conformance Date(v134, v135, MEMORY[0x277CC9598]);
      v136 = OUTLINED_FUNCTION_151();
      v137 = *(v6 + 8);
      v138 = OUTLINED_FUNCTION_283();
      v137(v138);
      v139 = OUTLINED_FUNCTION_120();
      v137(v139);
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((v136 & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_205;
    }

    v130 = OUTLINED_FUNCTION_120();
    v131(v130);
    goto LABEL_202;
  }

  OUTLINED_FUNCTION_16_3(v159 + v2);
  if (!v15)
  {
LABEL_202:
    v113 = v2;
    goto LABEL_203;
  }

  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_205:
  OUTLINED_FUNCTION_10_3();
  if (v142)
  {
    if (!v140)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_25_2(v141);
    v145 = v15 && v143 == v144;
    if (!v145 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v140)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_10_3();
  if (v148)
  {
    if (!v146)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_25_2(v147);
    v151 = v15 && v149 == v150;
    if (!v151 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v146)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_10_3();
  if (v154 && v152)
  {
    OUTLINED_FUNCTION_25_2(v153);
    if (!v15 || v155 != v156)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_76:
  OUTLINED_FUNCTION_42_0();
}

uint64_t TicketedTransportation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000025DCEB0A0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000025DCEB0C0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001CLL && 0x800000025DCEB0E0 == a2;
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
            v10 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x627553746E657665 && a2 == 0xEC00000065707954;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001BLL && 0x800000025DCEB120 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x417349746E657665 && a2 == 0xED00007961446C6CLL;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E557349656D6974 && a2 == 0xED00006E776F6E6BLL;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000016 && 0x800000025DCEB140 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x73726F68747561 && a2 == 0xE700000000000000;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x7373654D6C69616DLL && a2 == 0xED00006449656761;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000011 && 0x800000025DCEB160 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000011 && 0x800000025DCEB180 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000012 && 0x800000025DCEB1A0 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000023 && 0x800000025DCEB1C0 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x72656D6F74737563 && a2 == 0xED000073656D614ELL;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000011 && 0x800000025DCEB210 == a2;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000014 && 0x800000025DCEB230 == a2;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x7461636F4C646E65 && a2 == 0xEF656D614E6E6F69;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000012 && 0x800000025DCEB270 == a2;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x626D754E74616573 && a2 == 0xEB00000000737265;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000011 && 0x800000025DCEB2B0 == a2;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000011 && 0x800000025DCEB2D0 == a2;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
                                                          if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else if (a1 == 0x7453657461647075 && a2 == 0xEC00000073757461)
                                                          {

                                                            return 29;
                                                          }

                                                          else
                                                          {
                                                            v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                            if (v35)
                                                            {
                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              return 30;
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

unint64_t TicketedTransportation.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
    case 10:
      result = 0xD000000000000016;
      break;
    case 2:
    case 20:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x707954746E657665;
      break;
    case 6:
      result = 0x627553746E657665;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0x417349746E657665;
      break;
    case 9:
      result = 0x6E557349656D6974;
      break;
    case 11:
      result = 0x73726F68747561;
      break;
    case 12:
      result = 0x7373654D6C69616DLL;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x65786F626C69616DLL;
      break;
    case 16:
    case 22:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000023;
      break;
    case 18:
      result = 0x72656D6F74737563;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0x7461636F4C646E65;
      break;
    case 23:
      result = 0x626D754E74616573;
      break;
    case 24:
      result = 0xD000000000000011;
      break;
    case 25:
      result = 0x7461447472617473;
      break;
    case 26:
      result = 0x65746144646E65;
      break;
    case 27:
      result = 0xD000000000000011;
      break;
    case 28:
      result = 0x737574617473;
      break;
    case 29:
      result = 0x7453657461647075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TicketedTransportation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = TicketedTransportation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance TicketedTransportation.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = TicketedTransportation.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TicketedTransportation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TicketedTransportation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void TicketedTransportation.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_193();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes22TicketedTransportationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes22TicketedTransportationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94();
  v3 = lazy protocol witness table accessor for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys();
  OUTLINED_FUNCTION_192(&unk_286F911D0, v4, v3);
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
    OUTLINED_FUNCTION_43_2(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_74(8);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_74(9);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_74(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_173();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_98(&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8]);
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_43_2(12);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(13);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_341();
    OUTLINED_FUNCTION_281();
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_43_2(17);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_43_2(19);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(20);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(21);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_43_2(22);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_436();
    OUTLINED_FUNCTION_24_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_43_2(24);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v5 = type metadata accessor for TicketedTransportation(0);
    v6 = v5[29];
    OUTLINED_FUNCTION_274(25);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_6_4();
    lazy protocol witness table accessor for type Date and conformance Date(v7, v8, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_139_0(v1 + v6);
    OUTLINED_FUNCTION_130_0(v5[30]);
    OUTLINED_FUNCTION_169();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v5[31]);
    OUTLINED_FUNCTION_43_2(27);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v5[32]);
    OUTLINED_FUNCTION_43_2(28);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v5[33]);
    OUTLINED_FUNCTION_43_2(29);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v9 = OUTLINED_FUNCTION_270();
  v10(v9);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys;
  if (!lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys;
  if (!lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys;
  if (!lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys;
  if (!lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys);
  }

  return result;
}

void TicketedTransportation.init(from:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_435();
  v59 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = OUTLINED_FUNCTION_62(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_325();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_209();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes22TicketedTransportationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes22TicketedTransportationV10CodingKeys33_F2B779A9D0F58A11DD79E349ECA82053LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_237();
  v60 = type metadata accessor for TicketedTransportation(0);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_98_0(v10, v50);
  v12 = v0[3];
  v11 = v0[4];
  OUTLINED_FUNCTION_258();
  v13 = lazy protocol witness table accessor for type TicketedTransportation.CodingKeys and conformance TicketedTransportation.CodingKeys();
  OUTLINED_FUNCTION_407(&unk_286F911D0, v14, v13);
  if (v1)
  {
    OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_22_2();
    __swift_destroy_boxed_opaque_existential_1(v0);
    if (v11)
    {

      if ((v0 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v0)
    {
LABEL_5:
      if (v2)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

    if (v2)
    {
LABEL_6:

      if ((v12 & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_20:

LABEL_7:
      if (v51)
      {

        if ((v52 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else if (!v52)
      {
LABEL_9:
        if (v53)
        {
          goto LABEL_10;
        }

        goto LABEL_23;
      }

      if (v53)
      {
LABEL_10:

        if ((v54 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_24;
      }

LABEL_23:

      if (!v54)
      {
LABEL_11:
        if (v55)
        {
          goto LABEL_12;
        }

        goto LABEL_25;
      }

LABEL_24:

      if (v55)
      {
LABEL_12:

        if ((v56 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_26;
      }

LABEL_25:
      if (!v56)
      {
LABEL_13:
        if (v57)
        {
          goto LABEL_14;
        }

        goto LABEL_27;
      }

LABEL_26:

      if (v57)
      {
LABEL_14:

        if ((v58 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_28;
      }

LABEL_27:
      if (!v58)
      {
LABEL_15:
        if (!v59)
        {
          goto LABEL_29;
        }

LABEL_16:

        goto LABEL_29;
      }

LABEL_28:

      if ((v59 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

LABEL_19:
    if (!v12)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_136_0();
  *v61 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v61 + 8) = v15;
  OUTLINED_FUNCTION_92_0(1);
  *(v61 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v61 + 24) = v16;
  OUTLINED_FUNCTION_92_0(2);
  *(v61 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v61 + 40) = v17;
  OUTLINED_FUNCTION_92_0(3);
  *(v61 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v61 + 56) = v18;
  OUTLINED_FUNCTION_92_0(4);
  *(v61 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v61 + 72) = v19;
  OUTLINED_FUNCTION_92_0(5);
  *(v61 + 80) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v61 + 88) = v20;
  OUTLINED_FUNCTION_92_0(6);
  *(v61 + 96) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v61 + 104) = v21;
  OUTLINED_FUNCTION_92_0(7);
  *(v61 + 112) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v61 + 120) = v22;
  OUTLINED_FUNCTION_92_0(8);
  *(v61 + 128) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_381();
  *(v61 + 129) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  OUTLINED_FUNCTION_118_0(10);
  *(v61 + 130) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_103(&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808]);
  OUTLINED_FUNCTION_146_0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_306();
  *(v24 + 136) = v23;
  OUTLINED_FUNCTION_118_0(12);
  *(v61 + 144) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v61 + 152) = v25;
  OUTLINED_FUNCTION_118_0(13);
  *(v61 + 160) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v61 + 168) = v26;
  OUTLINED_FUNCTION_118_0(14);
  *(v61 + 176) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v61 + 184) = v27;
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_146_0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_306();
  *(v29 + 192) = v28;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_146_0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_306();
  *(v31 + 200) = v30;
  OUTLINED_FUNCTION_118_0(17);
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_411(v32);
  OUTLINED_FUNCTION_146_0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_306();
  *(v34 + 224) = v33;
  OUTLINED_FUNCTION_118_0(19);
  *(v61 + 232) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v61 + 240) = v35;
  OUTLINED_FUNCTION_118_0(20);
  *(v61 + 248) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v61 + 256) = v36;
  OUTLINED_FUNCTION_118_0(21);
  *(v61 + 264) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v61 + 272) = v37;
  OUTLINED_FUNCTION_118_0(22);
  *(v61 + 280) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v61 + 288) = v38;
  OUTLINED_FUNCTION_436();
  OUTLINED_FUNCTION_146_0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_306();
  *(v40 + 296) = v39;
  OUTLINED_FUNCTION_118_0(24);
  *(v61 + 304) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v61 + 312) = v41 & 1;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_6_4();
  lazy protocol witness table accessor for type Date and conformance Date(v42, v43, MEMORY[0x277CC95A0]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of Date?(v2, v61 + v60[29], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_219(26);
  OUTLINED_FUNCTION_168();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of Date?(v3, v61 + v60[30], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_118_0(27);
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v44, v45, v60[31]);
  OUTLINED_FUNCTION_118_0(28);
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_78(v46, v47, v60[32]);
  OUTLINED_FUNCTION_118_0(29);
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_400();
  v48 = OUTLINED_FUNCTION_122_0();
  v49(v48);
  OUTLINED_FUNCTION_402(v60[33]);
  outlined init with copy of RentalCarReservation(v61, v59, type metadata accessor for TicketedTransportation);
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_38();
  outlined destroy of RentalCarReservation();
LABEL_29:
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

uint64_t outlined init with copy of RentalCarReservation(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9_1();
  v4 = OUTLINED_FUNCTION_38();
  v5(v4);
  return a2;
}

uint64_t outlined destroy of RentalCarReservation()
{
  v1 = OUTLINED_FUNCTION_71();
  v2(v1);
  OUTLINED_FUNCTION_9_1();
  (*(v3 + 8))(v0);
  return v0;
}

void TicketedShow.init(id:eventMessageIdentifier:eventGroupIdentifier:eventFallbackGroupIdentifier:eventMegadomeIdentifier:eventType:eventSubType:eventSourceBundleIdentifier:eventIsAllDay:eventSourceIsForwarded:authors:mailMessageId:mailMessageHeader:accountIdentifier:mailboxes:detectedEventTypes:status:updateStatus:reservationId:provider:customerNames:startLocationName:startLocationAddress:seatNumbers:durationInSeconds:ticketType:ticketUrl:totalCost:timeIsUnknown:startDate:endDate:eventSourceLLMConsumableDescription:startDateTimeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a45, __n128 a46, __n128 a47, __n128 a48, __n128 a49, __n128 a60, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, __int128 a26, __int128 a27, uint64_t a28, uint64_t a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a61, uint64_t a62, uint64_t a63)
{
  OUTLINED_FUNCTION_353();
  v71 = v70;
  OUTLINED_FUNCTION_418();
  *v71 = v72;
  *(v71 + 8) = v73;
  *(v71 + 16) = v74;
  *(v71 + 24) = v75;
  *(v71 + 32) = v76;
  *(v71 + 40) = v77;
  *(v71 + 48) = v78;
  *(v71 + 56) = v79;
  *(v71 + 64) = a25;
  *(v71 + 80) = a26;
  *(v71 + 96) = a27;
  *(v71 + 112) = a28;
  *(v71 + 120) = a29;
  *(v71 + 128) = a30;
  *(v71 + 129) = a67;
  *(v71 + 130) = a31;
  OUTLINED_FUNCTION_415(v80, v81, v82, v83, v84, v85, v86, v87);
  *(v71 + 200) = v88;
  *(v71 + 208) = v90;
  *(v71 + 224) = v89;
  *(v71 + 240) = v92;
  *(v71 + 256) = v91;
  *(v71 + 272) = v94;
  *(v71 + 288) = v93;
  *(v71 + 304) = v95;
  *(v71 + 312) = v96 & 1;
  *(v71 + 320) = v98;
  *(v71 + 328) = v97;
  v99 = type metadata accessor for TicketedShow(0);
  v100 = OUTLINED_FUNCTION_434();
  outlined init with take of Date?(v100, v101, v102, v103);
  v104 = (v71 + v99[31]);
  *v104 = a65;
  v104[1] = a66;
  outlined init with take of Date?(a68, v71 + v99[32], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v105 = OUTLINED_FUNCTION_347();
  outlined init with take of Date?(v105, v106, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_432(v99[35]);
  v107 = (v71 + v99[36]);
  *v107 = a43;
  v107[1] = a44;
  v108 = (v71 + v99[34]);
  *v108 = a69;
  v108[1] = a70;
  OUTLINED_FUNCTION_352();
}

uint64_t TicketedShow.startDate.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for TicketedShow(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v1 + 128));
}

uint64_t TicketedShow.endDate.getter()
{
  v0 = OUTLINED_FUNCTION_121();
  v1 = type metadata accessor for TicketedShow(v0);
  return OUTLINED_FUNCTION_138(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, *(v1 + 132));
}

uint64_t TicketedShow.startDateTimeZone.getter()
{
  return TicketedShow.startDateTimeZone.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t TicketedShow.status.getter()
{
  return TicketedShow.status.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

uint64_t TicketedShow.updateStatus.getter()
{
  return TicketedShow.updateStatus.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v1(v0);
  OUTLINED_FUNCTION_68();
  return OUTLINED_FUNCTION_38();
}

void static TicketedShow.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_129_0();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v191 = v6;
  v192 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_98_0(v7, v184);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = OUTLINED_FUNCTION_62(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_382();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42_1();
  v189 = v13 - v14;
  OUTLINED_FUNCTION_280();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_267();
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v188 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_398();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v18);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_130();
  v24 = v24 && v22 == v23;
  if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_365();
  if (v26)
  {
    if (!v25)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_129();
    v29 = v24 && v27 == v28;
    if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v25)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_364();
  if (v31)
  {
    if (!v30)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_128();
    v34 = v24 && v32 == v33;
    if (!v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v30)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_310();
  if (v36)
  {
    if (!v35)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_126();
    v39 = v24 && v37 == v38;
    if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v35)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_309();
  if (v41)
  {
    if (!v40)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_183();
    v44 = v24 && v42 == v43;
    if (!v44 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v40)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_308();
  if (v46)
  {
    if (!v45)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_182();
    v49 = v24 && v47 == v48;
    if (!v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v45)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_307();
  if (v51)
  {
    if (!v50)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_181();
    v54 = v24 && v52 == v53;
    if (!v54 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v50)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_363();
  if (v56)
  {
    if (!v55)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_234();
    v59 = v24 && v57 == v58;
    if (!v59 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v55)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_233();
  if (v24)
  {
    if (v60 != 2)
    {
      goto LABEL_76;
    }
  }

  else
  {
    OUTLINED_FUNCTION_275();
    if (v61 || ((v62 ^ v63) & 1) != 0)
    {
      goto LABEL_76;
    }
  }

  OUTLINED_FUNCTION_232();
  if (!v24)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_230();
  if (v24)
  {
    if (v64 != 2)
    {
      goto LABEL_76;
    }
  }

  else
  {
    OUTLINED_FUNCTION_275();
    if (v65 || ((v66 ^ v67) & 1) != 0)
    {
      goto LABEL_76;
    }
  }

  v68 = OUTLINED_FUNCTION_362();
  if (v68)
  {
    if (!v69 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v68, v69) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v69)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_361();
  if (v71)
  {
    if (!v70)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_229();
    v74 = v24 && v72 == v73;
    if (!v74 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v70)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_360();
  if (v76)
  {
    if (!v75)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_228();
    v79 = v24 && v77 == v78;
    if (!v79 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v75)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_359();
  if (v81)
  {
    if (!v80)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_227();
    v84 = v24 && v82 == v83;
    if (!v84 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v80)
  {
    goto LABEL_76;
  }

  v85 = OUTLINED_FUNCTION_358();
  if (v85)
  {
    if (!v86 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v85, v86) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v86)
  {
    goto LABEL_76;
  }

  v87 = OUTLINED_FUNCTION_357();
  if (v87)
  {
    if (!v88 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v87, v88) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v88)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_356();
  if (v90)
  {
    if (!v89)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_226();
    v93 = v24 && v91 == v92;
    if (!v93 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v89)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_397();
  if (v95)
  {
    if (!v94)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_265();
    v98 = v24 && v96 == v97;
    if (!v98 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v94)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_424();
  if (v100)
  {
    if (!v99)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_304();
    v103 = v24 && v101 == v102;
    if (!v103 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v99)
  {
    goto LABEL_76;
  }

  v104 = *(v1 + 256);
  v105 = *(v0 + 256);
  if (v104)
  {
    if (!v105 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v104, v105) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v105)
  {
    goto LABEL_76;
  }

  v106 = *(v1 + 272);
  v107 = *(v0 + 272);
  if (v106)
  {
    if (!v107)
    {
      goto LABEL_76;
    }

    v108 = *(v1 + 264) == *(v0 + 264) && v106 == v107;
    if (!v108 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v107)
  {
    goto LABEL_76;
  }

  v109 = *(v0 + 288);
  if (*(v1 + 288))
  {
    if (!v109)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_379();
    v112 = v24 && v110 == v111;
    if (!v112 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v109)
  {
    goto LABEL_76;
  }

  v113 = *(v1 + 296);
  v114 = *(v0 + 296);
  if (v113)
  {
    if (!v114 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v113, v114) & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v114)
  {
    goto LABEL_76;
  }

  if (*(v1 + 312))
  {
    if (!*(v0 + 312))
    {
      goto LABEL_76;
    }
  }

  else
  {
    OUTLINED_FUNCTION_332();
    if (v115)
    {
      goto LABEL_76;
    }
  }

  v116 = *(v1 + 328);
  v117 = *(v0 + 328);
  if (v116)
  {
    if (!v117)
    {
      goto LABEL_76;
    }

    v118 = *(v1 + 320) == *(v0 + 320) && v116 == v117;
    if (!v118 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v117)
  {
    goto LABEL_76;
  }

  v185 = type metadata accessor for TicketedShow(0);
  v186 = *(v185 + 120);
  v119 = *(v20 + 48);
  outlined init with copy of RentalCarReservation?(v1 + v186, v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v186, v2 + v119, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_16_3(v2);
  if (v24)
  {
    OUTLINED_FUNCTION_16_3(v2 + v119);
    if (v24)
    {
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_204;
    }

LABEL_201:
    v127 = &_s10Foundation3URLVSg_ADtMd;
    v128 = &_s10Foundation3URLVSg_ADtMR;
    v129 = v2;
LABEL_202:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v129, v127, v128);
    goto LABEL_76;
  }

  v120 = OUTLINED_FUNCTION_148();
  outlined init with copy of RentalCarReservation?(v120, v121, v122, v123);
  OUTLINED_FUNCTION_16_3(v2 + v119);
  if (v124)
  {
    OUTLINED_FUNCTION_403();
    v125 = OUTLINED_FUNCTION_120();
    v126(v125);
    goto LABEL_201;
  }

  OUTLINED_FUNCTION_30();
  v130 = OUTLINED_FUNCTION_299();
  v131(v130);
  OUTLINED_FUNCTION_12_3();
  lazy protocol witness table accessor for type Date and conformance Date(v132, v133, MEMORY[0x277CC9278]);
  v187 = OUTLINED_FUNCTION_151();
  v119 = v188 + 8;
  v134 = OUTLINED_FUNCTION_283();
  v136 = v135;
  v135(v134);
  v137 = OUTLINED_FUNCTION_120();
  v136(v137);
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((v187 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_204:
  OUTLINED_FUNCTION_10_3();
  if (v140)
  {
    if (!v138)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_25_2(v139);
    v143 = v24 && v141 == v142;
    if (!v143 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v138)
  {
    goto LABEL_76;
  }

  v144 = *(v185 + 128);
  v145 = *(v11 + 48);
  OUTLINED_FUNCTION_396();
  outlined init with copy of RentalCarReservation?(v146, v147, v148, &_s10Foundation4DateVSgMR);
  outlined init with copy of RentalCarReservation?(v0 + v144, v3 + v145, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_138_0(v3);
  if (v24)
  {
    OUTLINED_FUNCTION_138_0(v3 + v145);
    if (v24)
    {
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_223;
    }

    goto LABEL_221;
  }

  outlined init with copy of RentalCarReservation?(v3, v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_138_0(v3 + v145);
  if (v149)
  {
    (*(v191 + 8))(v4, v192);
LABEL_221:
    v127 = &_s10Foundation4DateVSg_ADtMd;
    v128 = &_s10Foundation4DateVSg_ADtMR;
    v129 = v3;
    goto LABEL_202;
  }

  v119 = v190;
  (*(v191 + 32))(v190, v3 + v145, v192);
  OUTLINED_FUNCTION_6_4();
  lazy protocol witness table accessor for type Date and conformance Date(v150, v151, MEMORY[0x277CC9598]);
  v152 = dispatch thunk of static Equatable.== infix(_:_:)();
  v153 = *(v191 + 8);
  v153(v190, v192);
  v153(v4, v192);
  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v152 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_223:
  v154 = *(v11 + 48);
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_293();
  v155 = OUTLINED_FUNCTION_138_0(v119);
  if (!v24)
  {
    OUTLINED_FUNCTION_440(v155, v156, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_138_0(&_s10Foundation4DateVSgMd + v154);
    if (!v157)
    {
      v160 = OUTLINED_FUNCTION_152_0();
      v161(v160);
      OUTLINED_FUNCTION_6_4();
      lazy protocol witness table accessor for type Date and conformance Date(v162, v163, MEMORY[0x277CC9598]);
      OUTLINED_FUNCTION_211();
      v164 = OUTLINED_FUNCTION_246();
      (_s10Foundation4DateVSgMR)(v164);
      v165 = OUTLINED_FUNCTION_33();
      (_s10Foundation4DateVSgMR)(v165);
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((&_s10Foundation4DateVSgMd & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_233;
    }

    v158 = OUTLINED_FUNCTION_321();
    v159(v158);
    goto LABEL_231;
  }

  OUTLINED_FUNCTION_138_0(v189 + v154);
  if (!v24)
  {
LABEL_231:
    v127 = &_s10Foundation4DateVSg_ADtMd;
    v128 = &_s10Foundation4DateVSg_ADtMR;
    v129 = v189;
    goto LABEL_202;
  }

  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v189, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_233:
  OUTLINED_FUNCTION_10_3();
  if (v168)
  {
    if (!v166)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_25_2(v167);
    v171 = v24 && v169 == v170;
    if (!v171 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v166)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_10_3();
  if (v174)
  {
    if (!v172)
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_25_2(v173);
    v177 = v24 && v175 == v176;
    if (!v177 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v172)
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_10_3();
  if (v180 && v178)
  {
    OUTLINED_FUNCTION_25_2(v179);
    if (!v24 || v181 != v182)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_76:
  OUTLINED_FUNCTION_42_0();
}