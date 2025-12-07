uint64_t sub_266A9E5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v11[4] = sub_266A9E87C;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_266A9E714;
  v11[3] = &block_descriptor_1;
  v8 = _Block_copy(v11);

  [v3 handleWithResponse:a1 completion:v8];
  _Block_release(v8);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_266A9E8BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_266A6DBC4(&v12, v10 + 40 * a1 + 32);
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_266A9E988(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_266ABE1C4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6569766F6DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_266ABE1C4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72656D6974 && a2 == 0xE500000000000000;
      if (v7 || (sub_266ABE1C4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D72616C61 && a2 == 0xE500000000000000;
        if (v8 || (sub_266ABE1C4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1819042147 && a2 == 0xE400000000000000;
          if (v9 || (sub_266ABE1C4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 7368801 && a2 == 0xE300000000000000;
            if (v10 || (sub_266ABE1C4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C61436563616C70 && a2 == 0xE90000000000006CLL;
              if (v11 || (sub_266ABE1C4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6973754D79616C70 && a2 == 0xE900000000000063;
                if (v12 || (sub_266ABE1C4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x69766F4D79616C70 && a2 == 0xE900000000000065;
                  if (v13 || (sub_266ABE1C4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6D72616C41746573 && a2 == 0xE800000000000000;
                    if (v14 || (sub_266ABE1C4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x72656D6954746573 && a2 == 0xE800000000000000;
                      if (v15 || (sub_266ABE1C4() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x746F68506E65706FLL && a2 == 0xE90000000000006FLL;
                        if (v16 || (sub_266ABE1C4() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_266ABE1C4();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

uint64_t sub_266A9ED74(char a1)
{
  result = 0x636973756DLL;
  switch(a1)
  {
    case 1:
      result = 0x6569766F6DLL;
      break;
    case 2:
      result = 0x72656D6974;
      break;
    case 3:
      result = 0x6D72616C61;
      break;
    case 4:
      result = 1819042147;
      break;
    case 5:
      result = 7368801;
      break;
    case 6:
      result = 0x6C61436563616C70;
      break;
    case 7:
      result = 0x6973754D79616C70;
      break;
    case 8:
      result = 0x69766F4D79616C70;
      break;
    case 9:
      result = 0x6D72616C41746573;
      break;
    case 10:
      result = 0x72656D6954746573;
      break;
    case 11:
      result = 0x746F68506E65706FLL;
      break;
    case 12:
      result = 0x636972656E6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266A9EEC0(uint64_t a1)
{
  v2 = sub_266AA02A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9EEFC(uint64_t a1)
{
  v2 = sub_266AA02A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9EF38(uint64_t a1)
{
  v2 = sub_266AA01F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9EF74(uint64_t a1)
{
  v2 = sub_266AA01F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9EFB0(uint64_t a1)
{
  v2 = sub_266AA024C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9EFEC(uint64_t a1)
{
  v2 = sub_266AA024C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A9E988(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266A9F058@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266A9ED6C();
  *a1 = result;
  return result;
}

uint64_t sub_266A9F080(uint64_t a1)
{
  v2 = sub_266A9FF58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F0BC(uint64_t a1)
{
  v2 = sub_266A9FF58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F0F8(uint64_t a1)
{
  v2 = sub_266A9FFAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F134(uint64_t a1)
{
  v2 = sub_266A9FFAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F170(uint64_t a1)
{
  v2 = sub_266AA0348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F1AC(uint64_t a1)
{
  v2 = sub_266AA0348();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F1E8(uint64_t a1)
{
  v2 = sub_266AA039C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F224(uint64_t a1)
{
  v2 = sub_266AA039C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F260(uint64_t a1)
{
  v2 = sub_266AA0000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F29C(uint64_t a1)
{
  v2 = sub_266AA0000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F2D8(uint64_t a1)
{
  v2 = sub_266AA01A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F314(uint64_t a1)
{
  v2 = sub_266AA01A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F350(uint64_t a1)
{
  v2 = sub_266AA00FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F38C(uint64_t a1)
{
  v2 = sub_266AA00FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F3C8(uint64_t a1)
{
  v2 = sub_266AA0150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F404(uint64_t a1)
{
  v2 = sub_266AA0150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F440(uint64_t a1)
{
  v2 = sub_266AA00A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F47C(uint64_t a1)
{
  v2 = sub_266AA00A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F4B8(uint64_t a1)
{
  v2 = sub_266AA0054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F4F4(uint64_t a1)
{
  v2 = sub_266AA0054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F530(uint64_t a1)
{
  v2 = sub_266AA02F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F56C(uint64_t a1)
{
  v2 = sub_266AA02F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_31_1();
  a26 = v29;
  a27 = v30;
  v31 = v27;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2388, &qword_266AC3680);
  OUTLINED_FUNCTION_1_0();
  v119 = v35;
  v120 = v34;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_3();
  v118 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2390, &qword_266AC3688);
  OUTLINED_FUNCTION_1_0();
  v116 = v39;
  v117 = v38;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_8_3();
  v115 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2398, &qword_266AC3690);
  OUTLINED_FUNCTION_1_0();
  v113 = v43;
  v114 = v42;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8_3();
  v112 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23A0, &qword_266AC3698);
  OUTLINED_FUNCTION_1_0();
  v110 = v47;
  v111 = v46;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8_3();
  v109 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23A8, &qword_266AC36A0);
  OUTLINED_FUNCTION_1_0();
  v107 = v51;
  v108 = v50;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_8_3();
  v106 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23B0, &qword_266AC36A8);
  OUTLINED_FUNCTION_1_0();
  v104 = v55;
  v105 = v54;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23B8, &qword_266AC36B0);
  OUTLINED_FUNCTION_0_5(v58, &a24);
  v103[17] = v59;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23C0, &qword_266AC36B8);
  OUTLINED_FUNCTION_0_5(v62, &a21);
  v103[14] = v63;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23C8, &qword_266AC36C0);
  OUTLINED_FUNCTION_0_5(v66, &a18);
  v103[11] = v67;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23D0, &qword_266AC36C8);
  OUTLINED_FUNCTION_0_5(v70, &v125);
  v103[8] = v71;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23D8, &qword_266AC36D0);
  OUTLINED_FUNCTION_0_5(v74, v122);
  v103[5] = v75;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23E0, &qword_266AC36D8);
  OUTLINED_FUNCTION_0_5(v78, &v119);
  v103[2] = v79;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_20_5();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23E8, &qword_266AC36E0);
  OUTLINED_FUNCTION_1_0();
  v103[1] = v82;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v83);
  v85 = v103 - v84;
  v122[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23F0, &qword_266AC36E8);
  OUTLINED_FUNCTION_1_0();
  v87 = v86;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v88);
  v90 = v103 - v89;
  v91 = *v31;
  v92 = __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_266A9FF58();
  v121 = v90;
  sub_266ABE2C4();
  v93 = (v87 + 8);
  switch(v91)
  {
    case 1:
      OUTLINED_FUNCTION_26_3();
      sub_266AA0348();
      v100 = v121;
      v101 = v122[0];
      sub_266ABE0C4();
      OUTLINED_FUNCTION_12_6();
      v102(v28, v103[3]);
      (*v93)(v100, v101);
      goto LABEL_18;
    case 2:
      OUTLINED_FUNCTION_28_3();
      sub_266AA02F4();
      OUTLINED_FUNCTION_5_5(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.TimerCodingKeys, v124);
      v95 = OUTLINED_FUNCTION_8_7();
      v99 = v122;
      goto LABEL_13;
    case 3:
      OUTLINED_FUNCTION_27_4();
      sub_266AA02A0();
      OUTLINED_FUNCTION_5_5(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.AlarmCodingKeys, &v124[1]);
      v95 = OUTLINED_FUNCTION_8_7();
      v99 = &v125;
      goto LABEL_13;
    case 4:
      OUTLINED_FUNCTION_29_4();
      sub_266AA024C();
      OUTLINED_FUNCTION_5_5(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.CallCodingKeys, &v124[2]);
      v95 = OUTLINED_FUNCTION_8_7();
      v99 = &a18;
      goto LABEL_13;
    case 5:
      a10 = 5;
      sub_266AA01F8();
      OUTLINED_FUNCTION_5_5(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.AppCodingKeys, &a10);
      v95 = OUTLINED_FUNCTION_8_7();
      v99 = &a21;
      goto LABEL_13;
    case 6:
      a11 = 6;
      sub_266AA01A4();
      OUTLINED_FUNCTION_5_5(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.PlaceCallCodingKeys, &a11);
      v95 = OUTLINED_FUNCTION_8_7();
      v99 = &a24;
LABEL_13:
      v96 = *(v99 - 32);
      break;
    case 7:
      a12 = 7;
      sub_266AA0150();
      v97 = v103[19];
      OUTLINED_FUNCTION_5_5(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.PlayMusicCodingKeys, &a12);
      v98 = v104;
      v96 = v105;
      goto LABEL_16;
    case 8:
      a13 = 8;
      sub_266AA00FC();
      v97 = v106;
      OUTLINED_FUNCTION_5_5(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.PlayMovieCodingKeys, &a13);
      v98 = v107;
      v96 = v108;
      goto LABEL_16;
    case 9:
      a14 = 9;
      sub_266AA00A8();
      v97 = v109;
      OUTLINED_FUNCTION_5_5(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.SetAlarmCodingKeys, &a14);
      v98 = v110;
      v96 = v111;
      goto LABEL_16;
    case 10:
      a15 = 10;
      sub_266AA0054();
      v97 = v112;
      OUTLINED_FUNCTION_5_5(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.SetTimerCodingKeys, &a15);
      v98 = v113;
      v96 = v114;
      goto LABEL_16;
    case 11:
      a16 = 11;
      sub_266AA0000();
      v97 = v115;
      OUTLINED_FUNCTION_5_5(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.OpenPhotoCodingKeys, &a16);
      v98 = v116;
      v96 = v117;
      goto LABEL_16;
    case 12:
      a17 = 12;
      sub_266A9FFAC();
      v97 = v118;
      OUTLINED_FUNCTION_5_5(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.GenericCodingKeys, &a17);
      v98 = v119;
      v96 = v120;
LABEL_16:
      v94 = *(v98 + 8);
      v95 = v97;
      break;
    default:
      v123 = 0;
      sub_266AA039C();
      v92 = v121;
      v90 = v122[0];
      OUTLINED_FUNCTION_13_4();
      sub_266ABE0C4();
      OUTLINED_FUNCTION_12_6();
      v95 = v85;
      v96 = v81;
      break;
  }

  v94(v95, v96);
  (*v93)(v92, v90);
LABEL_18:
  OUTLINED_FUNCTION_30_1();
}

unint64_t sub_266A9FF58()
{
  result = qword_2800B23F8;
  if (!qword_2800B23F8)
  {
    result = swift_getWitnessTable(byte_266AC5014, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B23F8);
  }

  return result;
}

unint64_t sub_266A9FFAC()
{
  result = qword_2800B2400;
  if (!qword_2800B2400)
  {
    result = swift_getWitnessTable(aEfw, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.GenericCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2400);
  }

  return result;
}

unint64_t sub_266AA0000()
{
  result = qword_2800B2408;
  if (!qword_2800B2408)
  {
    result = swift_getWitnessTable(byte_266AC4F74, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.OpenPhotoCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2408);
  }

  return result;
}

unint64_t sub_266AA0054()
{
  result = qword_2800B2410;
  if (!qword_2800B2410)
  {
    result = swift_getWitnessTable(byte_266AC4F24, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.SetTimerCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2410);
  }

  return result;
}

unint64_t sub_266AA00A8()
{
  result = qword_2800B2418;
  if (!qword_2800B2418)
  {
    result = swift_getWitnessTable(aUgw, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.SetAlarmCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2418);
  }

  return result;
}

unint64_t sub_266AA00FC()
{
  result = qword_2800B2420;
  if (!qword_2800B2420)
  {
    result = swift_getWitnessTable(byte_266AC4E84, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.PlayMovieCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2420);
  }

  return result;
}

unint64_t sub_266AA0150()
{
  result = qword_2800B2428;
  if (!qword_2800B2428)
  {
    result = swift_getWitnessTable(byte_266AC4E34, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.PlayMusicCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2428);
  }

  return result;
}

unint64_t sub_266AA01A4()
{
  result = qword_2800B2430;
  if (!qword_2800B2430)
  {
    result = swift_getWitnessTable("Ehw\x1B$O", &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.PlaceCallCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2430);
  }

  return result;
}

unint64_t sub_266AA01F8()
{
  result = qword_2800B2438;
  if (!qword_2800B2438)
  {
    result = swift_getWitnessTable(byte_266AC4D94, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.AppCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2438);
  }

  return result;
}

unint64_t sub_266AA024C()
{
  result = qword_2800B2440;
  if (!qword_2800B2440)
  {
    result = swift_getWitnessTable(byte_266AC4D44, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.CallCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2440);
  }

  return result;
}

unint64_t sub_266AA02A0()
{
  result = qword_2800B2448;
  if (!qword_2800B2448)
  {
    result = swift_getWitnessTable(a5iw, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.AlarmCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2448);
  }

  return result;
}

unint64_t sub_266AA02F4()
{
  result = qword_2800B2450;
  if (!qword_2800B2450)
  {
    result = swift_getWitnessTable(byte_266AC4CA4, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.TimerCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2450);
  }

  return result;
}

unint64_t sub_266AA0348()
{
  result = qword_2800B2458;
  if (!qword_2800B2458)
  {
    result = swift_getWitnessTable(byte_266AC4C54, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.MovieCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2458);
  }

  return result;
}

unint64_t sub_266AA039C()
{
  result = qword_2800B2460;
  if (!qword_2800B2460)
  {
    result = swift_getWitnessTable("%jw\x1B,P", &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.MusicCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2460);
  }

  return result;
}

uint64_t UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_32_2();
  MEMORY[0x26D5E8B00](v1);
  return sub_266ABE2A4();
}

void UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_31_1();
  a26 = v29;
  a27 = v30;
  v160 = v27;
  v32 = v31;
  v155 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2468, &qword_266AC36F0);
  OUTLINED_FUNCTION_1_0();
  v145 = v35;
  v146 = v34;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_3();
  v154 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2470, &qword_266AC36F8);
  OUTLINED_FUNCTION_1_0();
  v143 = v39;
  v144 = v38;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_8_3();
  v153 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2478, &qword_266AC3700);
  OUTLINED_FUNCTION_1_0();
  v141 = v43;
  v142 = v42;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8_3();
  v152 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2480, &qword_266AC3708);
  OUTLINED_FUNCTION_0_5(v46, &a25);
  v140 = v47;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8_3();
  v151 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2488, &qword_266AC3710);
  OUTLINED_FUNCTION_0_5(v50, &a23);
  v139 = v51;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_8_3();
  v150 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2490, &qword_266AC3718);
  OUTLINED_FUNCTION_0_5(v54, &a20);
  v138 = v55;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_8_3();
  v158 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2498, &qword_266AC3720);
  OUTLINED_FUNCTION_0_5(v58, &a18);
  v137 = v59;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_8_3();
  v157 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24A0, &qword_266AC3728);
  OUTLINED_FUNCTION_0_5(v62, &a10);
  v136 = v63;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_8_3();
  v156 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24A8, &qword_266AC3730);
  OUTLINED_FUNCTION_0_5(v66, &v163);
  v135 = v67;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_8_3();
  v149 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24B0, &qword_266AC3738);
  OUTLINED_FUNCTION_0_5(v70, &v160);
  v134 = v71;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_8_3();
  v148 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24B8, &qword_266AC3740);
  OUTLINED_FUNCTION_0_5(v74, &v158);
  v133 = v75;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_8_3();
  v147 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24C0, &qword_266AC3748);
  OUTLINED_FUNCTION_0_5(v78, &v156);
  v132 = v79;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_20_5();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24C8, &qword_266AC3750);
  OUTLINED_FUNCTION_1_0();
  v131 = v82;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v83);
  v85 = &v126 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24D0, &unk_266AC3758);
  OUTLINED_FUNCTION_1_0();
  v88 = v87;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v89);
  v91 = &v126 - v90;
  v92 = v32[3];
  v159 = v32;
  __swift_project_boxed_opaque_existential_1(v32, v92);
  sub_266A9FF58();
  v93 = v160;
  sub_266ABE2B4();
  if (v93)
  {
    goto LABEL_9;
  }

  v129 = v85;
  v128 = v81;
  v130 = v28;
  v94 = v156;
  v95 = v157;
  v96 = v158;
  v160 = v88;
  v97 = v91;
  sub_266ABE0B4();
  sub_266A86BD4();
  if (v99 == v100 >> 1)
  {
LABEL_8:
    v111 = sub_266ABDEF4();
    swift_allocError();
    v113 = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F78, &qword_266AC1AA0);
    *v113 = &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext;
    sub_266ABDFF4();
    OUTLINED_FUNCTION_21_5();
    (*(*(v111 - 8) + 104))(v113, *MEMORY[0x277D84160], v111);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_14_5();
    v114(v97, v86);
LABEL_9:
    v115 = v159;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(v115);
    OUTLINED_FUNCTION_30_1();
    return;
  }

  v127 = v86;
  v126 = 0;
  if (v99 < (v100 >> 1))
  {
    v101 = *(v98 + v99);
    sub_266A86BCC();
    v103 = v102;
    v105 = v104;
    swift_unknownObjectRelease();
    if (v103 == v105 >> 1)
    {
      v106 = v155;
      v107 = v126;
      switch(v101)
      {
        case 1:
          OUTLINED_FUNCTION_26_3();
          sub_266AA0348();
          OUTLINED_FUNCTION_22_3(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.MovieCodingKeys, &v162);
          swift_unknownObjectRelease();
          v119 = OUTLINED_FUNCTION_8_7();
          v121 = &v156;
          goto LABEL_26;
        case 2:
          OUTLINED_FUNCTION_28_3();
          sub_266AA02F4();
          OUTLINED_FUNCTION_3_8(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.TimerCodingKeys, &v162 + 1);
          swift_unknownObjectRelease();
          v108 = OUTLINED_FUNCTION_7_8();
          v110 = &v158;
          goto LABEL_27;
        case 3:
          OUTLINED_FUNCTION_27_4();
          sub_266AA02A0();
          OUTLINED_FUNCTION_3_8(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.AlarmCodingKeys, &v162 + 2);
          swift_unknownObjectRelease();
          v108 = OUTLINED_FUNCTION_7_8();
          v110 = &v160;
          goto LABEL_27;
        case 4:
          OUTLINED_FUNCTION_29_4();
          sub_266AA024C();
          OUTLINED_FUNCTION_3_8(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.CallCodingKeys, &v162 + 3);
          swift_unknownObjectRelease();
          v108 = OUTLINED_FUNCTION_7_8();
          v110 = &v163;
          goto LABEL_27;
        case 5:
          a10 = 5;
          sub_266AA01F8();
          OUTLINED_FUNCTION_3_8(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.AppCodingKeys, &a10);
          swift_unknownObjectRelease();
          v108 = OUTLINED_FUNCTION_7_8();
          v110 = &a10;
          goto LABEL_27;
        case 6:
          a11 = 6;
          sub_266AA01A4();
          v96 = v127;
          sub_266ABDFE4();
          if (v107)
          {
            OUTLINED_FUNCTION_14_5();
            v122(v97, v96);
            swift_unknownObjectRelease();
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_12_6();
          v108 = v95;
          v110 = &a18;
LABEL_27:
          v109(v108, *(v110 - 32));
LABEL_28:
          OUTLINED_FUNCTION_14_5();
          v124 = v97;
          v125 = v96;
LABEL_29:
          v123(v124, v125);
          v115 = v159;
          *v106 = v101;
          break;
        case 7:
          a12 = 7;
          sub_266AA0150();
          OUTLINED_FUNCTION_22_3(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.PlayMusicCodingKeys, &a12);
          swift_unknownObjectRelease();
          v119 = OUTLINED_FUNCTION_8_7();
          v121 = &a20;
LABEL_26:
          v120(v119, *(v121 - 32));
          OUTLINED_FUNCTION_14_5();
          v124 = v97;
          v125 = v94;
          goto LABEL_29;
        case 8:
          a13 = 8;
          sub_266AA00FC();
          OUTLINED_FUNCTION_3_8(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.PlayMovieCodingKeys, &a13);
          swift_unknownObjectRelease();
          v108 = OUTLINED_FUNCTION_7_8();
          v110 = &a23;
          goto LABEL_27;
        case 9:
          a14 = 9;
          sub_266AA00A8();
          OUTLINED_FUNCTION_3_8(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.SetAlarmCodingKeys, &a14);
          swift_unknownObjectRelease();
          v108 = OUTLINED_FUNCTION_7_8();
          v110 = &a25;
          goto LABEL_27;
        case 10:
          a15 = 10;
          sub_266AA0054();
          v116 = v152;
          OUTLINED_FUNCTION_3_8(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.SetTimerCodingKeys, &a15);
          swift_unknownObjectRelease();
          v118 = v141;
          v117 = v142;
          goto LABEL_23;
        case 11:
          a16 = 11;
          sub_266AA0000();
          v116 = v153;
          OUTLINED_FUNCTION_3_8(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.OpenPhotoCodingKeys, &a16);
          swift_unknownObjectRelease();
          v118 = v143;
          v117 = v144;
          goto LABEL_23;
        case 12:
          a17 = 12;
          sub_266A9FFAC();
          v116 = v154;
          OUTLINED_FUNCTION_3_8(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.GenericCodingKeys, &a17);
          swift_unknownObjectRelease();
          v118 = v145;
          v117 = v146;
LABEL_23:
          (*(v118 + 8))(v116, v117);
          goto LABEL_28;
        default:
          v161 = 0;
          sub_266AA039C();
          OUTLINED_FUNCTION_3_8(&type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.MusicCodingKeys, &v161);
          swift_unknownObjectRelease();
          v108 = OUTLINED_FUNCTION_7_8();
          v110 = &v151;
          goto LABEL_27;
      }

      goto LABEL_10;
    }

    v86 = v127;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t static UserFeedbackDevicePreferenceResponse.~= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  switch(v2)
  {
    case 1:
      if (v5 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_38;
    case 2:
      if (v5 == 2)
      {
        goto LABEL_11;
      }

      goto LABEL_38;
    case 3:

      if (v5 != 3)
      {
        goto LABEL_38;
      }

      goto LABEL_11;
    case 4:
      switch(*a1)
      {
        case 1:
          v8 = v5 == 4 && v3 == 1;
          break;
        case 2:
          v8 = v5 == 4 && v3 == 2;
          break;
        case 3:
          v8 = v5 == 4 && v3 == 3;
          break;
        case 4:
          v8 = v5 == 4 && v3 == 4;
          break;
        case 5:
          v8 = v5 == 4 && v3 == 5;
          break;
        case 6:
          v8 = v5 == 4 && v3 == 6;
          break;
        default:
          if (v5 != 4 || (v4 | v3) != 0)
          {
            goto LABEL_38;
          }

          goto LABEL_11;
      }

      if (!v8 || v4 != 0)
      {
        goto LABEL_38;
      }

      goto LABEL_11;
    default:
      if (*(a2 + 16))
      {
LABEL_38:
        v7 = 0;
      }

      else
      {
LABEL_11:
        v7 = 1;
      }

      sub_266A8CE8C(v3, v4, v5);
      v10 = OUTLINED_FUNCTION_9_2();
      sub_266A8244C(v10, v11, v2);
      sub_266A8244C(v3, v4, v5);
      return v7;
  }
}

BOOL static UserFeedbackDevicePreferenceResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_25;
      }

      v16 = sub_266A93E94(*a1, *a2);
      v30 = OUTLINED_FUNCTION_9_2();
      sub_266A8244C(v30, v31, 1);
      v19 = OUTLINED_FUNCTION_17_4();
      v21 = 1;
      goto LABEL_23;
    case 2:
      if (v7 != 2)
      {
        goto LABEL_25;
      }

      v16 = sub_266A93E94(*a1, *a2);
      v17 = OUTLINED_FUNCTION_9_2();
      sub_266A8244C(v17, v18, 2);
      v19 = OUTLINED_FUNCTION_17_4();
      v21 = 2;
      goto LABEL_23;
    case 3:
      if (v7 != 3)
      {

LABEL_25:
        v33 = OUTLINED_FUNCTION_17_4();
        sub_266A8CE8C(v33, v34, v7);
        v35 = OUTLINED_FUNCTION_9_2();
        sub_266A8244C(v35, v36, v4);
        v37 = OUTLINED_FUNCTION_17_4();
        sub_266A8244C(v37, v38, v7);
        return 0;
      }

      v22 = *a1;
      if (v2 == v5 && v3 == v6)
      {
        sub_266A8CE8C(v22, v3, 3);
        v40 = OUTLINED_FUNCTION_9_2();
        sub_266A8CE8C(v40, v41, 3);
        v42 = OUTLINED_FUNCTION_9_2();
        sub_266A8244C(v42, v43, 3);
        v15 = OUTLINED_FUNCTION_9_2();
        v45 = 3;
LABEL_90:
        sub_266A8244C(v15, v44, v45);
        return 1;
      }

      v16 = sub_266ABE1C4();
      v24 = OUTLINED_FUNCTION_17_4();
      sub_266A8CE8C(v24, v25, 3);
      v26 = OUTLINED_FUNCTION_9_2();
      sub_266A8CE8C(v26, v27, 3);
      v28 = OUTLINED_FUNCTION_9_2();
      sub_266A8244C(v28, v29, 3);
      v19 = OUTLINED_FUNCTION_17_4();
      v21 = 3;
LABEL_23:
      sub_266A8244C(v19, v20, v21);
      return v16 & 1;
    case 4:
      switch(v2)
      {
        case 1:
          if (v7 != 4 || v5 != 1 || v6 != 0)
          {
            goto LABEL_25;
          }

          v61 = OUTLINED_FUNCTION_9_2();
          sub_266A8244C(v61, v62, 4);
          v39 = 1;
          sub_266A8244C(1, 0, 4);
          return v39;
        case 2:
          if (v7 != 4 || v5 != 2 || v6 != 0)
          {
            goto LABEL_25;
          }

          v53 = OUTLINED_FUNCTION_9_2();
          sub_266A8244C(v53, v54, 4);
          v15 = 2;
          goto LABEL_89;
        case 3:
          if (v7 != 4 || v5 != 3 || v6 != 0)
          {
            goto LABEL_25;
          }

          v57 = OUTLINED_FUNCTION_9_2();
          sub_266A8244C(v57, v58, 4);
          v15 = 3;
          goto LABEL_89;
        case 4:
          if (v7 != 4 || v5 != 4 || v6 != 0)
          {
            goto LABEL_25;
          }

          v49 = OUTLINED_FUNCTION_9_2();
          sub_266A8244C(v49, v50, 4);
          v15 = 4;
          goto LABEL_89;
        case 5:
          if (v7 != 4 || v5 != 5 || v6 != 0)
          {
            goto LABEL_25;
          }

          v65 = OUTLINED_FUNCTION_9_2();
          sub_266A8244C(v65, v66, 4);
          v15 = 5;
          goto LABEL_89;
        case 6:
          if (v7 != 4 || v5 != 6 || v6 != 0)
          {
            goto LABEL_25;
          }

          v69 = OUTLINED_FUNCTION_9_2();
          sub_266A8244C(v69, v70, 4);
          v15 = 6;
          goto LABEL_89;
        default:
          if (v7 != 4 || (v6 | v5) != 0)
          {
            goto LABEL_25;
          }

          v13 = OUTLINED_FUNCTION_9_2();
          sub_266A8244C(v13, v14, 4);
          v15 = 0;
LABEL_89:
          v44 = 0;
          v45 = 4;
          break;
      }

      goto LABEL_90;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_25;
      }

      v8 = OUTLINED_FUNCTION_9_2();
      sub_266A8244C(v8, v9, 0);
      v10 = OUTLINED_FUNCTION_17_4();
      sub_266A8244C(v10, v11, 0);
      if (v2 != 13)
      {
        return v5 != 13 && (v5 ^ v2) == 0;
      }

      return v5 == 13;
  }
}

uint64_t sub_266AA1568(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000266AC0560 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266ABE1C4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266AA1604(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x8000000266AC0500 == a2;
  if (v3 || (sub_266ABE1C4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6976654474736562 && a2 == 0xEA00000000006563;
    if (v6 || (sub_266ABE1C4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000266AC0520 == a2;
      if (v7 || (sub_266ABE1C4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x41676E696B6F6F6CLL && a2 == 0xEF65636976654474;
        if (v8 || (sub_266ABE1C4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x41676E696B6F6F6CLL && a2 == 0xEF6E656572635374;
          if (v9 || (sub_266ABE1C4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6572726566657270 && a2 == 0xEF65636976654464;
            if (v10 || (sub_266ABE1C4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6854646568737570 && a2 == 0xEF6E6F7474754265;
              if (v11 || (sub_266ABE1C4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x536F546573696172 && a2 == 0xEC0000006B616570;
                if (v12 || (sub_266ABE1C4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x8000000266AC0540 == a2;
                  if (v13 || (sub_266ABE1C4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x69725465736C6166 && a2 == 0xEC00000072656767;
                    if (v14 || (sub_266ABE1C4() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_266ABE1C4();

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

uint64_t sub_266AA1990(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_32_2();
  MEMORY[0x26D5E8B00](a1);
  return sub_266ABE2A4();
}

unint64_t sub_266AA19D0(char a1)
{
  result = 0x6976654474736562;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x41676E696B6F6F6CLL;
      break;
    case 4:
      result = 0x41676E696B6F6F6CLL;
      break;
    case 5:
      result = 0x6572726566657270;
      break;
    case 6:
      result = 0x6854646568737570;
      break;
    case 7:
      result = 0x536F546573696172;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x69725465736C6166;
      break;
    case 10:
      result = 0x726568746FLL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_266AA1B54(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266ABE1C4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266AA1BF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656369766564 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266ABE1C4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266AA1C64()
{
  OUTLINED_FUNCTION_32_2();
  MEMORY[0x26D5E8B00](0);
  return sub_266ABE2A4();
}

uint64_t sub_266AA1CA0(uint64_t a1)
{
  v2 = sub_266AA4100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA1CDC(uint64_t a1)
{
  v2 = sub_266AA4100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA1D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AA1568(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_266AA1D48(uint64_t a1)
{
  v2 = sub_266AA4058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA1D84(uint64_t a1)
{
  v2 = sub_266AA4058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA1DC0(uint64_t a1)
{
  v2 = sub_266AA4004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA1DFC(uint64_t a1)
{
  v2 = sub_266AA4004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA1E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AA1604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266AA1E68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266AA1988();
  *a1 = result;
  return result;
}

uint64_t sub_266AA1E90(uint64_t a1)
{
  v2 = sub_266AA3CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA1ECC(uint64_t a1)
{
  v2 = sub_266AA3CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA1F08(uint64_t a1)
{
  v2 = sub_266AA3D64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA1F44(uint64_t a1)
{
  v2 = sub_266AA3D64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA1F80(uint64_t a1)
{
  v2 = sub_266AA3FB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA1FBC(uint64_t a1)
{
  v2 = sub_266AA3FB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA1FF8(uint64_t a1)
{
  v2 = sub_266AA3F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA2034(uint64_t a1)
{
  v2 = sub_266AA3F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA2074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AA1B54(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_266AA20A0(uint64_t a1)
{
  v2 = sub_266AA3D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA20DC(uint64_t a1)
{
  v2 = sub_266AA3D10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA211C(uint64_t a1)
{
  v2 = sub_266AA3F08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA2158(uint64_t a1)
{
  v2 = sub_266AA3F08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA2194(uint64_t a1)
{
  v2 = sub_266AA3E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA21D0(uint64_t a1)
{
  v2 = sub_266AA3E60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA220C(uint64_t a1)
{
  v2 = sub_266AA3E0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA2248(uint64_t a1)
{
  v2 = sub_266AA3E0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA2284(uint64_t a1)
{
  v2 = sub_266AA3DB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA22C0(uint64_t a1)
{
  v2 = sub_266AA3DB8();

  return MEMORY[0x2821FE720](a1, v2);
}

void UserFeedbackDevicePreferenceResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_31_1();
  a26 = v30;
  a27 = v31;
  v122 = v28;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24D8, &qword_266AC3768);
  OUTLINED_FUNCTION_1_0();
  v116 = v35;
  v117 = v34;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_3();
  v115 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24E0, &qword_266AC3770);
  OUTLINED_FUNCTION_1_0();
  v105 = v39;
  v106 = v38;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_8_3();
  v104 = v41;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24E8, &qword_266AC3778);
  OUTLINED_FUNCTION_1_0();
  v102[15] = v42;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24F0, &qword_266AC3780);
  OUTLINED_FUNCTION_0_5(v45, &a23);
  v102[12] = v46;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24F8, &qword_266AC3788);
  OUTLINED_FUNCTION_1_0();
  v113 = v50;
  v114 = v49;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_8_3();
  v112 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2500, &qword_266AC3790);
  OUTLINED_FUNCTION_1_0();
  v110 = v54;
  v111 = v53;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_8_3();
  v109 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2508, &qword_266AC3798);
  OUTLINED_FUNCTION_0_5(v57, &a20);
  v102[9] = v58;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2510, &qword_266AC37A0);
  OUTLINED_FUNCTION_0_5(v61, &a10);
  v102[6] = v62;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2518, &qword_266AC37A8);
  OUTLINED_FUNCTION_0_5(v65, v123);
  v102[3] = v66;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2520, &qword_266AC37B0);
  OUTLINED_FUNCTION_1_0();
  v107 = v70;
  v108 = v69;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v71);
  v73 = v102 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2528, &qword_266AC37B8);
  OUTLINED_FUNCTION_1_0();
  v102[1] = v75;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_20_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2530, &qword_266AC37C0);
  OUTLINED_FUNCTION_1_0();
  v120 = v77;
  v121 = v78;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v79);
  v81 = v102 - v80;
  v82 = v27[1];
  v118 = *v27;
  v83 = *(v27 + 16);
  v84 = v33;
  v85 = v33[3];
  v86 = __swift_project_boxed_opaque_existential_1(v84, v85);
  sub_266AA3CBC();
  v119 = v81;
  sub_266ABE2C4();
  switch(v83)
  {
    case 1:
      a11 = 5;
      sub_266AA3F08();
      v95 = v109;
      OUTLINED_FUNCTION_25_2(&type metadata for UserFeedbackDevicePreferenceResponse.PreferredDeviceCodingKeys, &a11);
      a10 = v118;
      sub_266AA3EB4();
      v96 = v111;
      sub_266ABE154();
      v97 = v110;
      goto LABEL_8;
    case 2:
      a13 = 6;
      sub_266AA3E60();
      v95 = v112;
      OUTLINED_FUNCTION_25_2(&type metadata for UserFeedbackDevicePreferenceResponse.PushedTheButtonCodingKeys, &a13);
      a12 = v118;
      sub_266AA3EB4();
      v96 = v114;
      sub_266ABE154();
      v97 = v113;
LABEL_8:
      (*(v97 + 8))(v95, v96);
      v90 = *(v121 + 8);
      v89 = v82;
      goto LABEL_9;
    case 3:
      a17 = 10;
      sub_266AA3D10();
      v98 = v115;
      v73 = v120;
      sub_266ABE0C4();
      v99 = v117;
      sub_266ABE114();
      (*(v116 + 8))(v98, v99);
      v89 = OUTLINED_FUNCTION_23_3();
LABEL_9:
      v91 = v73;
      goto LABEL_10;
    case 4:
      switch(v118)
      {
        case 1:
          OUTLINED_FUNCTION_28_3();
          sub_266AA4004();
          OUTLINED_FUNCTION_10_6(&type metadata for UserFeedbackDevicePreferenceResponse.ClosestDeviceToMeCodingKeys, v124);
          v93 = OUTLINED_FUNCTION_6_7();
          v100 = v123;
          goto LABEL_15;
        case 2:
          OUTLINED_FUNCTION_27_4();
          sub_266AA3FB0();
          OUTLINED_FUNCTION_10_6(&type metadata for UserFeedbackDevicePreferenceResponse.LookingAtDeviceCodingKeys, &v124[1]);
          v93 = OUTLINED_FUNCTION_6_7();
          v100 = &a10;
          goto LABEL_15;
        case 3:
          OUTLINED_FUNCTION_29_4();
          sub_266AA3F5C();
          OUTLINED_FUNCTION_10_6(&type metadata for UserFeedbackDevicePreferenceResponse.LookingAtScreenCodingKeys, &v124[2]);
          v93 = OUTLINED_FUNCTION_6_7();
          v100 = &a20;
          goto LABEL_15;
        case 4:
          a14 = 7;
          sub_266AA3E0C();
          OUTLINED_FUNCTION_10_6(&type metadata for UserFeedbackDevicePreferenceResponse.RaiseToSpeakCodingKeys, &a14);
          v93 = OUTLINED_FUNCTION_6_7();
          v100 = &a23;
LABEL_15:
          v94 = *(v100 - 32);
          goto LABEL_16;
        case 5:
          a15 = 8;
          sub_266AA3DB8();
          OUTLINED_FUNCTION_10_6(&type metadata for UserFeedbackDevicePreferenceResponse.RecentlyInteractedCodingKeys, &a15);
          v93 = OUTLINED_FUNCTION_6_7();
          v94 = v103;
          goto LABEL_16;
        case 6:
          a16 = 9;
          sub_266AA3D64();
          v101 = v104;
          v86 = v119;
          v85 = v120;
          OUTLINED_FUNCTION_13_4();
          sub_266ABE0C4();
          (*(v105 + 8))(v101, v106);
          goto LABEL_17;
        default:
          v123[2] = 0;
          sub_266AA4100();
          v86 = v119;
          v85 = v120;
          OUTLINED_FUNCTION_13_4();
          sub_266ABE0C4();
          OUTLINED_FUNCTION_12_6();
          v93 = v29;
          v94 = v74;
LABEL_16:
          v92(v93, v94);
LABEL_17:
          (*(v121 + 8))(v86, v85);
          break;
      }

      goto LABEL_18;
    default:
      OUTLINED_FUNCTION_26_3();
      sub_266AA4058();
      v87 = v120;
      sub_266ABE0C4();
      v123[3] = v118;
      sub_266AA40AC();
      v88 = v108;
      sub_266ABE0F4();
      (*(v107 + 8))(v73, v88);
      v89 = OUTLINED_FUNCTION_23_3();
      v91 = v87;
LABEL_10:
      v90(v89, v91);
LABEL_18:
      OUTLINED_FUNCTION_30_1();
      return;
  }
}

uint64_t UserFeedbackDevicePreferenceResponse.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      v6 = 5;
      goto LABEL_11;
    case 2:
      v6 = 6;
LABEL_11:
      MEMORY[0x26D5E8B00](v6);

      return sub_266A79E4C(a1, v2);
    case 3:
      MEMORY[0x26D5E8B00](10);

      return sub_266ABDB04();
    case 4:
      switch(v2)
      {
        case 1:
          v5 = 2;
          break;
        case 2:
          v5 = 3;
          break;
        case 3:
          v5 = 4;
          break;
        case 4:
          v5 = 7;
          break;
        case 5:
          v5 = 8;
          break;
        case 6:
          v5 = 9;
          break;
        default:
          v5 = 0;
          break;
      }

      return MEMORY[0x26D5E8B00](v5);
    default:
      MEMORY[0x26D5E8B00](1);
      if (v2 == 13)
      {
        return sub_266ABE264();
      }

      sub_266ABE264();
      v5 = v2;
      return MEMORY[0x26D5E8B00](v5);
  }
}

uint64_t UserFeedbackDevicePreferenceResponse.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  OUTLINED_FUNCTION_32_2();
  UserFeedbackDevicePreferenceResponse.hash(into:)(v3);
  return sub_266ABE2A4();
}

void UserFeedbackDevicePreferenceResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, char a11, unsigned __int8 a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_31_1();
  a26 = v28;
  a27 = v29;
  v191 = v27;
  v31 = v30;
  v186 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25A8, &qword_266AC37C8);
  OUTLINED_FUNCTION_1_0();
  v177 = v34;
  v178 = v33;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8_3();
  v184 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25B0, &qword_266AC37D0);
  OUTLINED_FUNCTION_1_0();
  v175 = v38;
  v176 = v37;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_3();
  v183 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25B8, &qword_266AC37D8);
  OUTLINED_FUNCTION_1_0();
  v173 = v41;
  v174 = v42;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8_3();
  v189 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25C0, &qword_266AC37E0);
  OUTLINED_FUNCTION_0_5(v45, &a25);
  v170 = v46;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8_3();
  v182 = v48;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25C8, &qword_266AC37E8);
  OUTLINED_FUNCTION_1_0();
  v185 = v49;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_8_3();
  v188 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25D0, &qword_266AC37F0);
  OUTLINED_FUNCTION_0_5(v52, &a23);
  v168 = v53;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_8_3();
  v187 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25D8, &qword_266AC37F8);
  OUTLINED_FUNCTION_0_5(v56, &a21);
  v166 = v57;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_8_3();
  v181 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25E0, &qword_266AC3800);
  OUTLINED_FUNCTION_0_5(v60, &a19);
  v164 = v61;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_8_3();
  v180 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25E8, &qword_266AC3808);
  OUTLINED_FUNCTION_0_5(v64, &v194);
  v160 = v65;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_8_3();
  v179 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25F0, &qword_266AC3810);
  OUTLINED_FUNCTION_0_5(v68, &a10);
  v162 = v69;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v70);
  v72 = &v152 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25F8, &qword_266AC3818);
  OUTLINED_FUNCTION_1_0();
  v159 = v74;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v75);
  v77 = &v152 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2600, &qword_266AC3820);
  OUTLINED_FUNCTION_1_0();
  v80 = v79;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v81);
  v83 = &v152 - v82;
  v84 = v31[3];
  v190 = v31;
  __swift_project_boxed_opaque_existential_1(v31, v84);
  sub_266AA3CBC();
  v85 = v191;
  sub_266ABE2B4();
  if (v85)
  {
    goto LABEL_10;
  }

  v157 = v77;
  v156 = v73;
  v158 = v72;
  v87 = v187;
  v86 = v188;
  v191 = v80;
  v88 = v83;
  sub_266ABE0B4();
  sub_266A86BD4();
  v92 = v78;
  if (v90 == v91 >> 1)
  {
    v93 = v191;
    v94 = v83;
LABEL_9:
    v108 = sub_266ABDEF4();
    swift_allocError();
    v110 = v109;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F78, &qword_266AC1AA0);
    *v110 = &type metadata for UserFeedbackDevicePreferenceResponse;
    sub_266ABDFF4();
    OUTLINED_FUNCTION_21_5();
    (*(*(v108 - 8) + 104))(v110, *MEMORY[0x277D84160], v108);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v93 + 8))(v94, v92);
LABEL_10:
    v87 = v190;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v87);
    OUTLINED_FUNCTION_30_1();
    return;
  }

  v154 = 0;
  if (v90 < (v91 >> 1))
  {
    v95 = v78;
    v153 = *(v89 + v90);
    v96 = sub_266A86BCC();
    v98 = v97;
    v100 = v99;
    swift_unknownObjectRelease();
    v155 = v96;
    v94 = v88;
    if (v98 == v100 >> 1)
    {
      v101 = v185;
      v102 = v186;
      switch(v153)
      {
        case 1:
          OUTLINED_FUNCTION_26_3();
          sub_266AA4058();
          OUTLINED_FUNCTION_4_7(&type metadata for UserFeedbackDevicePreferenceResponse.BestDeviceCodingKeys, &v193);
          sub_266AA41A8();
          v127 = v163;
          OUTLINED_FUNCTION_13_4();
          sub_266ABE024();
          OUTLINED_FUNCTION_19_4();
          swift_unknownObjectRelease();
          v137 = OUTLINED_FUNCTION_6_7();
          v138(v137, v127);
          v139 = OUTLINED_FUNCTION_2_6();
          v140(v139);
          v86 = 0;
          v114 = 0;
          v107 = v192[1];
          goto LABEL_24;
        case 2:
          OUTLINED_FUNCTION_28_3();
          sub_266AA4004();
          v86 = v179;
          OUTLINED_FUNCTION_4_7(&type metadata for UserFeedbackDevicePreferenceResponse.ClosestDeviceToMeCodingKeys, &v193 + 1);
          OUTLINED_FUNCTION_18_5();
          OUTLINED_FUNCTION_12_6();
          v117(v86, v161);
          v118 = OUTLINED_FUNCTION_2_6();
          v119(v118);
          OUTLINED_FUNCTION_24_4();
          v107 = 1;
          goto LABEL_23;
        case 3:
          OUTLINED_FUNCTION_27_4();
          sub_266AA3FB0();
          v86 = v180;
          OUTLINED_FUNCTION_4_7(&type metadata for UserFeedbackDevicePreferenceResponse.LookingAtDeviceCodingKeys, &v193 + 2);
          OUTLINED_FUNCTION_18_5();
          OUTLINED_FUNCTION_12_6();
          v120(v86, v165);
          v121 = OUTLINED_FUNCTION_2_6();
          v122(v121);
          OUTLINED_FUNCTION_24_4();
          v107 = 2;
          goto LABEL_23;
        case 4:
          OUTLINED_FUNCTION_29_4();
          sub_266AA3F5C();
          v86 = v181;
          OUTLINED_FUNCTION_4_7(&type metadata for UserFeedbackDevicePreferenceResponse.LookingAtScreenCodingKeys, &v193 + 3);
          OUTLINED_FUNCTION_18_5();
          OUTLINED_FUNCTION_12_6();
          v111(v86, v167);
          v112 = OUTLINED_FUNCTION_2_6();
          v113(v112);
          OUTLINED_FUNCTION_24_4();
          v107 = 3;
          goto LABEL_23;
        case 5:
          a11 = 5;
          sub_266AA3F08();
          OUTLINED_FUNCTION_4_7(&type metadata for UserFeedbackDevicePreferenceResponse.PreferredDeviceCodingKeys, &a11);
          sub_266AA4154();
          v128 = v169;
          OUTLINED_FUNCTION_13_4();
          sub_266ABE084();
          OUTLINED_FUNCTION_19_4();
          swift_unknownObjectRelease();
          v141 = OUTLINED_FUNCTION_6_7();
          v142(v141, v128);
          v143 = OUTLINED_FUNCTION_2_6();
          v144(v143);
          v86 = 0;
          v107 = a10;
          v114 = 1;
          goto LABEL_24;
        case 6:
          a13 = 6;
          sub_266AA3E60();
          v129 = v86;
          OUTLINED_FUNCTION_4_7(&type metadata for UserFeedbackDevicePreferenceResponse.PushedTheButtonCodingKeys, &a13);
          sub_266AA4154();
          v130 = v172;
          OUTLINED_FUNCTION_13_4();
          sub_266ABE084();
          OUTLINED_FUNCTION_19_4();
          swift_unknownObjectRelease();
          (*(v101 + 8))(v129, v130);
          v145 = OUTLINED_FUNCTION_2_6();
          v146(v145);
          v86 = 0;
          v107 = a12;
          v114 = 2;
          goto LABEL_24;
        case 7:
          a14 = 7;
          sub_266AA3E0C();
          v123 = v182;
          OUTLINED_FUNCTION_4_7(&type metadata for UserFeedbackDevicePreferenceResponse.RaiseToSpeakCodingKeys, &a14);
          OUTLINED_FUNCTION_18_5();
          OUTLINED_FUNCTION_12_6();
          v124(v123, v171);
          v125 = OUTLINED_FUNCTION_2_6();
          v126(v125);
          v86 = 0;
          v107 = 4;
          goto LABEL_17;
        case 8:
          a15 = 8;
          sub_266AA3DB8();
          OUTLINED_FUNCTION_4_7(&type metadata for UserFeedbackDevicePreferenceResponse.RecentlyInteractedCodingKeys, &a15);
          OUTLINED_FUNCTION_18_5();
          v133 = OUTLINED_FUNCTION_23_3();
          v134(v133);
          v135 = OUTLINED_FUNCTION_2_6();
          v136(v135);
          OUTLINED_FUNCTION_24_4();
          v107 = 5;
          goto LABEL_23;
        case 9:
          a16 = 9;
          sub_266AA3D64();
          v86 = v183;
          OUTLINED_FUNCTION_4_7(&type metadata for UserFeedbackDevicePreferenceResponse.FalseTriggerCodingKeys, &a16);
          OUTLINED_FUNCTION_18_5();
          (*(v175 + 8))(v86, v176);
          v115 = OUTLINED_FUNCTION_2_6();
          v116(v115);
          OUTLINED_FUNCTION_24_4();
          v107 = 6;
          goto LABEL_23;
        case 10:
          a17 = 10;
          sub_266AA3D10();
          OUTLINED_FUNCTION_4_7(&type metadata for UserFeedbackDevicePreferenceResponse.OtherCodingKeys, &a17);
          v131 = v178;
          v132 = sub_266ABE044();
          v87 = v190;
          v107 = v132;
          v86 = v147;
          OUTLINED_FUNCTION_18_5();
          v148 = OUTLINED_FUNCTION_23_3();
          v149(v148, v131);
          v150 = OUTLINED_FUNCTION_2_6();
          v151(v150);
          v114 = 3;
          goto LABEL_24;
        default:
          v192[0] = 0;
          sub_266AA4100();
          v103 = v157;
          OUTLINED_FUNCTION_4_7(&type metadata for UserFeedbackDevicePreferenceResponse.AlreadySpeakingToSiriCodingKeys, v192);
          OUTLINED_FUNCTION_18_5();
          OUTLINED_FUNCTION_12_6();
          v104(v103, v156);
          v105 = OUTLINED_FUNCTION_2_6();
          v106(v105);
          v107 = 0;
          v86 = 0;
LABEL_17:
          v114 = 4;
LABEL_23:
          v87 = v190;
LABEL_24:
          *v102 = v107;
          *(v102 + 8) = v86;
          *(v102 + 16) = v114;
          break;
      }

      goto LABEL_11;
    }

    v93 = v191;
    v92 = v95;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_266AA3C3C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_266ABE244();
  UserFeedbackDevicePreferenceResponse.hash(into:)(v4);
  return sub_266ABE2A4();
}

unint64_t sub_266AA3CBC()
{
  result = qword_2800B2538;
  if (!qword_2800B2538)
  {
    result = swift_getWitnessTable(aUjw, &type metadata for UserFeedbackDevicePreferenceResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2538);
  }

  return result;
}

unint64_t sub_266AA3D10()
{
  result = qword_2800B2540;
  if (!qword_2800B2540)
  {
    result = swift_getWitnessTable(byte_266AC4B64, &type metadata for UserFeedbackDevicePreferenceResponse.OtherCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2540);
  }

  return result;
}

unint64_t sub_266AA3D64()
{
  result = qword_2800B2548;
  if (!qword_2800B2548)
  {
    result = swift_getWitnessTable(byte_266AC4B14, &type metadata for UserFeedbackDevicePreferenceResponse.FalseTriggerCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2548);
  }

  return result;
}

unint64_t sub_266AA3DB8()
{
  result = qword_2800B2550;
  if (!qword_2800B2550)
  {
    result = swift_getWitnessTable(aEkw, &type metadata for UserFeedbackDevicePreferenceResponse.RecentlyInteractedCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2550);
  }

  return result;
}

unint64_t sub_266AA3E0C()
{
  result = qword_2800B2558;
  if (!qword_2800B2558)
  {
    result = swift_getWitnessTable(byte_266AC4A74, &type metadata for UserFeedbackDevicePreferenceResponse.RaiseToSpeakCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2558);
  }

  return result;
}

unint64_t sub_266AA3E60()
{
  result = qword_2800B2560;
  if (!qword_2800B2560)
  {
    result = swift_getWitnessTable(byte_266AC4A24, &type metadata for UserFeedbackDevicePreferenceResponse.PushedTheButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2560);
  }

  return result;
}

unint64_t sub_266AA3EB4()
{
  result = qword_2800B2568;
  if (!qword_2800B2568)
  {
    atomic_store(result, &qword_2800B2568);
  }

  return result;
}

unint64_t sub_266AA3F08()
{
  result = qword_2800B2570;
  if (!qword_2800B2570)
  {
    atomic_store(result, &qword_2800B2570);
  }

  return result;
}

unint64_t sub_266AA3F5C()
{
  result = qword_2800B2578;
  if (!qword_2800B2578)
  {
    result = swift_getWitnessTable(byte_266AC4984, &type metadata for UserFeedbackDevicePreferenceResponse.LookingAtScreenCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2578);
  }

  return result;
}

unint64_t sub_266AA3FB0()
{
  result = qword_2800B2580;
  if (!qword_2800B2580)
  {
    result = swift_getWitnessTable(byte_266AC4934, &type metadata for UserFeedbackDevicePreferenceResponse.LookingAtDeviceCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2580);
  }

  return result;
}

unint64_t sub_266AA4004()
{
  result = qword_2800B2588;
  if (!qword_2800B2588)
  {
    result = swift_getWitnessTable(aEmw, &type metadata for UserFeedbackDevicePreferenceResponse.ClosestDeviceToMeCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2588);
  }

  return result;
}

unint64_t sub_266AA4058()
{
  result = qword_2800B2590;
  if (!qword_2800B2590)
  {
    result = swift_getWitnessTable(byte_266AC4894, &type metadata for UserFeedbackDevicePreferenceResponse.BestDeviceCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2590);
  }

  return result;
}

unint64_t sub_266AA40AC()
{
  result = qword_2800B2598;
  if (!qword_2800B2598)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext, v0, v1);
    atomic_store(result, &qword_2800B2598);
  }

  return result;
}

unint64_t sub_266AA4100()
{
  result = qword_2800B25A0;
  if (!qword_2800B25A0)
  {
    result = swift_getWitnessTable(byte_266AC4844, &type metadata for UserFeedbackDevicePreferenceResponse.AlreadySpeakingToSiriCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B25A0);
  }

  return result;
}

unint64_t sub_266AA4154()
{
  result = qword_2800B2608;
  if (!qword_2800B2608)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceClass, &type metadata for DeviceClass, v0, v1);
    atomic_store(result, &qword_2800B2608);
  }

  return result;
}

unint64_t sub_266AA41A8()
{
  result = qword_2800B2610;
  if (!qword_2800B2610)
  {
    result = swift_getWitnessTable("9iw\x1Bha", &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext, v0, v1);
    atomic_store(result, &qword_2800B2610);
  }

  return result;
}

unint64_t sub_266AA4200()
{
  result = qword_2800B2618;
  if (!qword_2800B2618)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext, v0, v1);
    atomic_store(result, &qword_2800B2618);
  }

  return result;
}

unint64_t sub_266AA4258()
{
  result = qword_2800B2620;
  if (!qword_2800B2620)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2628, &qword_266AC3890);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_2800B2620);
  }

  return result;
}

unint64_t sub_266AA42C0()
{
  result = qword_2800B2630;
  if (!qword_2800B2630)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserFeedbackDevicePreferenceResponse, &type metadata for UserFeedbackDevicePreferenceResponse, v0, v1);
    atomic_store(result, &qword_2800B2630);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_266AA4328(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_266AA4368(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_266AA43AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for UserFeedbackDevicePreferenceResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_266AA4560(_BYTE *result, int a2, int a3)
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

uint64_t sub_266AA460C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_266AA4694(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266AA4844()
{
  result = qword_2800B2638;
  if (!qword_2800B2638)
  {
    result = swift_getWitnessTable(aUW, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2638);
  }

  return result;
}

unint64_t sub_266AA489C()
{
  result = qword_2800B2640;
  if (!qword_2800B2640)
  {
    result = swift_getWitnessTable(byte_266AC430C, &type metadata for UserFeedbackDevicePreferenceResponse.OtherCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2640);
  }

  return result;
}

unint64_t sub_266AA48F4()
{
  result = qword_2800B2648;
  if (!qword_2800B2648)
  {
    result = swift_getWitnessTable(byte_266AC44B4, &type metadata for UserFeedbackDevicePreferenceResponse.PushedTheButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2648);
  }

  return result;
}

unint64_t sub_266AA494C()
{
  result = qword_2800B2650;
  if (!qword_2800B2650)
  {
    result = swift_getWitnessTable(aW, &type metadata for UserFeedbackDevicePreferenceResponse.PreferredDeviceCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2650);
  }

  return result;
}

unint64_t sub_266AA49A4()
{
  result = qword_2800B2658;
  if (!qword_2800B2658)
  {
    result = swift_getWitnessTable(byte_266AC4714, &type metadata for UserFeedbackDevicePreferenceResponse.BestDeviceCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2658);
  }

  return result;
}

unint64_t sub_266AA49FC()
{
  result = qword_2800B2660;
  if (!qword_2800B2660)
  {
    result = swift_getWitnessTable(byte_266AC481C, &type metadata for UserFeedbackDevicePreferenceResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2660);
  }

  return result;
}

unint64_t sub_266AA4A54()
{
  result = qword_2800B2668;
  if (!qword_2800B2668)
  {
    result = swift_getWitnessTable("ehw\x1BDS", &type metadata for UserFeedbackDevicePreferenceResponse.AlreadySpeakingToSiriCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2668);
  }

  return result;
}

unint64_t sub_266AA4AAC()
{
  result = qword_2800B2670;
  if (!qword_2800B2670)
  {
    result = swift_getWitnessTable(aUdw, &type metadata for UserFeedbackDevicePreferenceResponse.AlreadySpeakingToSiriCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2670);
  }

  return result;
}

unint64_t sub_266AA4B04()
{
  result = qword_2800B2678;
  if (!qword_2800B2678)
  {
    result = swift_getWitnessTable(byte_266AC4684, &type metadata for UserFeedbackDevicePreferenceResponse.BestDeviceCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2678);
  }

  return result;
}

unint64_t sub_266AA4B5C()
{
  result = qword_2800B2680;
  if (!qword_2800B2680)
  {
    result = swift_getWitnessTable(aEw, &type metadata for UserFeedbackDevicePreferenceResponse.BestDeviceCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2680);
  }

  return result;
}

unint64_t sub_266AA4BB4()
{
  result = qword_2800B2688;
  if (!qword_2800B2688)
  {
    result = swift_getWitnessTable(aMiw, &type metadata for UserFeedbackDevicePreferenceResponse.ClosestDeviceToMeCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2688);
  }

  return result;
}

unint64_t sub_266AA4C0C()
{
  result = qword_2800B2690;
  if (!qword_2800B2690)
  {
    result = swift_getWitnessTable("}ew\x1BlT", &type metadata for UserFeedbackDevicePreferenceResponse.ClosestDeviceToMeCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2690);
  }

  return result;
}

unint64_t sub_266AA4C64()
{
  result = qword_2800B2698;
  if (!qword_2800B2698)
  {
    result = swift_getWitnessTable(byte_266AC45E4, &type metadata for UserFeedbackDevicePreferenceResponse.LookingAtDeviceCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2698);
  }

  return result;
}

unint64_t sub_266AA4CBC()
{
  result = qword_2800B26A0;
  if (!qword_2800B26A0)
  {
    result = swift_getWitnessTable(byte_266AC460C, &type metadata for UserFeedbackDevicePreferenceResponse.LookingAtDeviceCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B26A0);
  }

  return result;
}

unint64_t sub_266AA4D14()
{
  result = qword_2800B26A8;
  if (!qword_2800B26A8)
  {
    result = swift_getWitnessTable("\rjw\x1B|U", &type metadata for UserFeedbackDevicePreferenceResponse.LookingAtScreenCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B26A8);
  }

  return result;
}

unint64_t sub_266AA4D6C()
{
  result = qword_2800B26B0;
  if (!qword_2800B26B0)
  {
    result = swift_getWitnessTable(byte_266AC45BC, &type metadata for UserFeedbackDevicePreferenceResponse.LookingAtScreenCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B26B0);
  }

  return result;
}

unint64_t sub_266AA4DC4()
{
  result = qword_2800B26B8;
  if (!qword_2800B26B8)
  {
    result = swift_getWitnessTable(byte_266AC44DC, &type metadata for UserFeedbackDevicePreferenceResponse.PreferredDeviceCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B26B8);
  }

  return result;
}

unint64_t sub_266AA4E1C()
{
  result = qword_2800B26C0;
  if (!qword_2800B26C0)
  {
    result = swift_getWitnessTable(byte_266AC4504, &type metadata for UserFeedbackDevicePreferenceResponse.PreferredDeviceCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B26C0);
  }

  return result;
}

unint64_t sub_266AA4E74()
{
  result = qword_2800B26C8;
  if (!qword_2800B26C8)
  {
    result = swift_getWitnessTable("}kw\x1B4W", &type metadata for UserFeedbackDevicePreferenceResponse.PushedTheButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B26C8);
  }

  return result;
}

unint64_t sub_266AA4ECC()
{
  result = qword_2800B26D0;
  if (!qword_2800B26D0)
  {
    result = swift_getWitnessTable(byte_266AC444C, &type metadata for UserFeedbackDevicePreferenceResponse.PushedTheButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B26D0);
  }

  return result;
}

unint64_t sub_266AA4F24()
{
  result = qword_2800B26D8;
  if (!qword_2800B26D8)
  {
    result = swift_getWitnessTable(byte_266AC43D4, &type metadata for UserFeedbackDevicePreferenceResponse.RaiseToSpeakCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B26D8);
  }

  return result;
}

unint64_t sub_266AA4F7C()
{
  result = qword_2800B26E0;
  if (!qword_2800B26E0)
  {
    result = swift_getWitnessTable(byte_266AC43FC, &type metadata for UserFeedbackDevicePreferenceResponse.RaiseToSpeakCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B26E0);
  }

  return result;
}

unint64_t sub_266AA4FD4()
{
  result = qword_2800B26E8;
  if (!qword_2800B26E8)
  {
    result = swift_getWitnessTable(byte_266AC4384, &type metadata for UserFeedbackDevicePreferenceResponse.RecentlyInteractedCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B26E8);
  }

  return result;
}

unint64_t sub_266AA502C()
{
  result = qword_2800B26F0;
  if (!qword_2800B26F0)
  {
    result = swift_getWitnessTable(aHw, &type metadata for UserFeedbackDevicePreferenceResponse.RecentlyInteractedCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B26F0);
  }

  return result;
}

unint64_t sub_266AA5084()
{
  result = qword_2800B26F8;
  if (!qword_2800B26F8)
  {
    result = swift_getWitnessTable(aMlw, &type metadata for UserFeedbackDevicePreferenceResponse.FalseTriggerCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B26F8);
  }

  return result;
}

unint64_t sub_266AA50DC()
{
  result = qword_2800B2700;
  if (!qword_2800B2700)
  {
    result = swift_getWitnessTable("}hw\x1BhX", &type metadata for UserFeedbackDevicePreferenceResponse.FalseTriggerCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2700);
  }

  return result;
}

unint64_t sub_266AA5134()
{
  result = qword_2800B2708;
  if (!qword_2800B2708)
  {
    result = swift_getWitnessTable("%mw\x1BlY", &type metadata for UserFeedbackDevicePreferenceResponse.OtherCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2708);
  }

  return result;
}

unint64_t sub_266AA518C()
{
  result = qword_2800B2710;
  if (!qword_2800B2710)
  {
    result = swift_getWitnessTable("5iw\x1BDY", &type metadata for UserFeedbackDevicePreferenceResponse.OtherCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2710);
  }

  return result;
}

unint64_t sub_266AA51E4()
{
  result = qword_2800B2718;
  if (!qword_2800B2718)
  {
    result = swift_getWitnessTable(byte_266AC478C, &type metadata for UserFeedbackDevicePreferenceResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2718);
  }

  return result;
}

unint64_t sub_266AA523C()
{
  result = qword_2800B2720;
  if (!qword_2800B2720)
  {
    result = swift_getWitnessTable(aDw, &type metadata for UserFeedbackDevicePreferenceResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2720);
  }

  return result;
}

unint64_t sub_266AA5294()
{
  result = qword_2800B2728;
  if (!qword_2800B2728)
  {
    result = swift_getWitnessTable(aNw, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.MusicCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2728);
  }

  return result;
}

unint64_t sub_266AA52EC()
{
  result = qword_2800B2730;
  if (!qword_2800B2730)
  {
    result = swift_getWitnessTable(aJw, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.MusicCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2730);
  }

  return result;
}

unint64_t sub_266AA5344()
{
  result = qword_2800B2738;
  if (!qword_2800B2738)
  {
    result = swift_getWitnessTable("}nw\x1B0[", &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.MovieCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2738);
  }

  return result;
}

unint64_t sub_266AA539C()
{
  result = qword_2800B2740;
  if (!qword_2800B2740)
  {
    result = swift_getWitnessTable(byte_266AC414C, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.MovieCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2740);
  }

  return result;
}

unint64_t sub_266AA53F4()
{
  result = qword_2800B2748;
  if (!qword_2800B2748)
  {
    result = swift_getWitnessTable(byte_266AC40D4, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.TimerCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2748);
  }

  return result;
}

unint64_t sub_266AA544C()
{
  result = qword_2800B2750;
  if (!qword_2800B2750)
  {
    result = swift_getWitnessTable(byte_266AC40FC, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.TimerCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2750);
  }

  return result;
}

unint64_t sub_266AA54A4()
{
  result = qword_2800B2758;
  if (!qword_2800B2758)
  {
    result = swift_getWitnessTable(byte_266AC4084, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.AlarmCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2758);
  }

  return result;
}

unint64_t sub_266AA54FC()
{
  result = qword_2800B2760;
  if (!qword_2800B2760)
  {
    result = swift_getWitnessTable(aKw, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.AlarmCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2760);
  }

  return result;
}

unint64_t sub_266AA5554()
{
  result = qword_2800B2768;
  if (!qword_2800B2768)
  {
    result = swift_getWitnessTable(aMow, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.CallCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2768);
  }

  return result;
}

unint64_t sub_266AA55AC()
{
  result = qword_2800B2770;
  if (!qword_2800B2770)
  {
    result = swift_getWitnessTable("}kw\x1Bd\"", &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.CallCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2770);
  }

  return result;
}

unint64_t sub_266AA5604()
{
  result = qword_2800B2778;
  if (!qword_2800B2778)
  {
    result = swift_getWitnessTable(byte_266AC3FE4, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.AppCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2778);
  }

  return result;
}

unint64_t sub_266AA565C()
{
  result = qword_2800B2780;
  if (!qword_2800B2780)
  {
    result = swift_getWitnessTable(byte_266AC400C, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.AppCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2780);
  }

  return result;
}

unint64_t sub_266AA56B4()
{
  result = qword_2800B2788;
  if (!qword_2800B2788)
  {
    result = swift_getWitnessTable("\rpw\x1Bt]", &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.PlaceCallCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2788);
  }

  return result;
}

unint64_t sub_266AA570C()
{
  result = qword_2800B2790;
  if (!qword_2800B2790)
  {
    result = swift_getWitnessTable(byte_266AC3FBC, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.PlaceCallCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2790);
  }

  return result;
}

unint64_t sub_266AA5764()
{
  result = qword_2800B2798;
  if (!qword_2800B2798)
  {
    result = swift_getWitnessTable(aPw, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.PlayMusicCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2798);
  }

  return result;
}

unint64_t sub_266AA57BC()
{
  result = qword_2800B27A0;
  if (!qword_2800B27A0)
  {
    result = swift_getWitnessTable(aMlw_0, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.PlayMusicCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B27A0);
  }

  return result;
}

unint64_t sub_266AA5814()
{
  result = qword_2800B27A8;
  if (!qword_2800B27A8)
  {
    result = swift_getWitnessTable(byte_266AC3EF4, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.PlayMovieCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B27A8);
  }

  return result;
}

unint64_t sub_266AA586C()
{
  result = qword_2800B27B0;
  if (!qword_2800B27B0)
  {
    result = swift_getWitnessTable(byte_266AC3F1C, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.PlayMovieCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B27B0);
  }

  return result;
}

unint64_t sub_266AA58C4()
{
  result = qword_2800B27B8;
  if (!qword_2800B27B8)
  {
    result = swift_getWitnessTable(byte_266AC3EA4, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.SetAlarmCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B27B8);
  }

  return result;
}

unint64_t sub_266AA591C()
{
  result = qword_2800B27C0;
  if (!qword_2800B27C0)
  {
    result = swift_getWitnessTable(aMw, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.SetAlarmCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B27C0);
  }

  return result;
}

unint64_t sub_266AA5974()
{
  result = qword_2800B27C8;
  if (!qword_2800B27C8)
  {
    result = swift_getWitnessTable("Mqw\x1BD_", &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.SetTimerCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B27C8);
  }

  return result;
}

unint64_t sub_266AA59CC()
{
  result = qword_2800B27D0;
  if (!qword_2800B27D0)
  {
    result = swift_getWitnessTable(aMw_0, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.SetTimerCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B27D0);
  }

  return result;
}

unint64_t sub_266AA5A24()
{
  result = qword_2800B27D8;
  if (!qword_2800B27D8)
  {
    result = swift_getWitnessTable(byte_266AC3E04, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.OpenPhotoCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B27D8);
  }

  return result;
}

unint64_t sub_266AA5A7C()
{
  result = qword_2800B27E0;
  if (!qword_2800B27E0)
  {
    result = swift_getWitnessTable(byte_266AC3E2C, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.OpenPhotoCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B27E0);
  }

  return result;
}

unint64_t sub_266AA5AD4()
{
  result = qword_2800B27E8;
  if (!qword_2800B27E8)
  {
    result = swift_getWitnessTable(byte_266AC3DB4, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.GenericCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B27E8);
  }

  return result;
}

unint64_t sub_266AA5B2C()
{
  result = qword_2800B27F0;
  if (!qword_2800B27F0)
  {
    result = swift_getWitnessTable(byte_266AC3DDC, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.GenericCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B27F0);
  }

  return result;
}

unint64_t sub_266AA5B84()
{
  result = qword_2800B27F8;
  if (!qword_2800B27F8)
  {
    result = swift_getWitnessTable(byte_266AC41C4, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B27F8);
  }

  return result;
}

unint64_t sub_266AA5BDC()
{
  result = qword_2800B2800;
  if (!qword_2800B2800)
  {
    result = swift_getWitnessTable(byte_266AC41EC, &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2800);
  }

  return result;
}

uint64_t static String.formatList<A>(items:keyPath:)(uint64_t a1, void *a2)
{
  v25[1] = a2;
  v3 = *(*a2 + *MEMORY[0x277D84DE8]);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v25 - v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = sub_266ABDDF4();
  v8 = *(v26 - 8);
  v9 = MEMORY[0x28223BE20](v26);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (v25 - v12);
  v28 = 0;
  v29 = 0xE000000000000000;
  v25[0] = a1;
  v27[3] = a1;
  v14 = sub_266ABDCC4();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83970], v14);
  MEMORY[0x26D5E8450](v27, v14, WitnessTable);
  v27[2] = v27[0];
  sub_266ABDF94();
  sub_266ABDF64();
  v25[2] = sub_266ABDF84();
  v16 = (v8 + 32);
  v17 = (v4 + 32);
  for (i = (v4 + 8); ; (*i)(v6, v3))
  {
    sub_266ABDF74();
    (*v16)(v13, v11, v26);
    if (__swift_getEnumTagSinglePayload(v13, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v19 = *v13;
    (*v17)(v6, v13 + *(TupleTypeMetadata2 + 48), v3);
    v20 = sub_266ABDC94();
    if (v20 >= 2)
    {
      if (v19 == v20 - 1)
      {
        v21 = v20 == 2;
        if (v20 == 2)
        {
          v22 = 0x20646E6120;
        }

        else
        {
          v22 = 0x20646E61202CLL;
        }

        if (v21)
        {
          v23 = 0xE500000000000000;
        }

        else
        {
          v23 = 0xE600000000000000;
        }

        MEMORY[0x26D5E83C0](v22, v23);
      }

      else if (v19 >= 1)
      {
        MEMORY[0x26D5E83C0](8236, 0xE200000000000000);
      }
    }

    swift_getAtKeyPath();
    MEMORY[0x26D5E83C0](v27[0], v27[1]);
  }

  return v28;
}

uint64_t sub_266AA6004(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3)
{
  v3 = (a1 << 16) | (a2 << 8) | a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF0, &unk_266AC0FF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_266AC0EB0;
  v5 = MEMORY[0x277D83C10];
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 64) = v5;
  *(v4 + 32) = v3;

  return sub_266ABDAA4();
}

SiriCrossDeviceArbitrationFeedback::TrumpReason_optional __swiftcall TrumpReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_266AA60B0()
{
  result = qword_2800B2808;
  if (!qword_2800B2808)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TrumpReason, &type metadata for TrumpReason, v0, v1);
    atomic_store(result, &qword_2800B2808);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrumpReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

SiriCrossDeviceArbitrationFeedback::DeviceClass __swiftcall DeviceClass.init(advertisementDeviceClass:advertisementProductType:)(SiriCrossDeviceArbitrationFeedback::DeviceClass advertisementDeviceClass, SiriCrossDeviceArbitrationFeedback::AdvertisementProductType advertisementProductType)
{
  v3 = 8;
  switch(*advertisementDeviceClass)
  {
    case 1:
      if (*advertisementProductType)
      {
        v3 = 7;
      }

      else
      {
        v3 = 6;
      }

      break;
    case 2:
      v3 = 0;
      break;
    case 3:
      v3 = 1;
      break;
    case 4:
    case 5:
      v3 = *advertisementDeviceClass;
      break;
    case 6:
    case 0xA:
      v3 = 3;
      break;
    case 7:
      v3 = 5;
      break;
    case 9:
      v3 = 6;
      break;
    default:
      break;
  }

  *v2 = v3;
  return advertisementDeviceClass;
}

void *DeviceClass.unknownProductType(productType:)(_BYTE *a1)
{
  result = &unk_28783E630;
  switch(*v1)
  {
    case 1:
      result = &unk_28783E6C0;
      break;
    case 2:
      result = &unk_28783E780;
      break;
    case 3:
      result = &unk_28783E750;
      break;
    case 4:
      return result;
    case 5:
      if (*a1 == 3)
      {
        result = &unk_28783E660;
      }

      else
      {
        result = &unk_28783E690;
      }

      break;
    case 6:
      result = &unk_28783E720;
      break;
    case 7:
      result = &unk_28783E7B0;
      break;
    case 8:
      result = &unk_28783E7E0;
      break;
    case 9:
      result = &unk_28783E810;
      break;
    default:
      result = &unk_28783E6F0;
      break;
  }

  return result;
}

uint64_t DeviceClass.rawValue.getter()
{
  result = 0x656E6F687069;
  switch(*v0)
  {
    case 1:
      result = 1684107369;
      break;
    case 2:
      result = 1685024873;
      break;
    case 3:
      result = 0x6863746177;
      break;
    case 4:
      result = 0x7674656C707061;
      break;
    case 5:
      result = 0x6363616F69647561;
      break;
    case 6:
      result = 6513005;
      break;
    case 7:
      result = 0x647974696C616572;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    case 9:
      result = 0x6874666F656E6F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

SiriCrossDeviceArbitrationFeedback::DeviceClass_optional __swiftcall DeviceClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266ABDFD4();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_266AA6518@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceClass.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_266AA6604()
{
  result = qword_2800B2818;
  if (!qword_2800B2818)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceClass, &type metadata for DeviceClass, v0, v1);
    atomic_store(result, &qword_2800B2818);
  }

  return result;
}

unint64_t sub_266AA665C()
{
  result = qword_2800B2820;
  if (!qword_2800B2820)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2828, &qword_266AC5250);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_2800B2820);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceClass(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266AA679C()
{
  result = qword_2800B2830;
  if (!qword_2800B2830)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceClass, &type metadata for DeviceClass, v0, v1);
    atomic_store(result, &qword_2800B2830);
  }

  return result;
}

SiriCrossDeviceArbitrationFeedback::DataCollectionGroup_optional __swiftcall DataCollectionGroup.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266ABDFD4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DataCollectionGroup.rawValue.getter()
{
  v1 = 0x6E4F6576696CLL;
  if (*v0 != 1)
  {
    v1 = 6447468;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7759204;
  }
}

uint64_t DataCollectionGroup.debugDescription.getter()
{
  v1 = 0x4F20676E6976694CLL;
  if (*v0 != 1)
  {
    v1 = 6447436;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7759172;
  }
}

uint64_t static DataCollectionGroup.groupTitle.getter()
{
  v0 = sub_266ABD814();
  v1 = OUTLINED_FUNCTION_21(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v2 = sub_266ABDA64();
  v3 = OUTLINED_FUNCTION_21(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  sub_266ABDA04();
  sub_266A85294();
  static NSBundle.feedback.getter();
  sub_266ABD804();
  return OUTLINED_FUNCTION_4();
}

uint64_t DataCollectionGroup.description.getter()
{
  v0 = sub_266ABD814();
  v1 = OUTLINED_FUNCTION_21(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v2 = sub_266ABDA64();
  v3 = OUTLINED_FUNCTION_21(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  sub_266ABDA04();
  sub_266A85294();
  static NSBundle.feedback.getter();
  sub_266ABD804();
  return OUTLINED_FUNCTION_4();
}

uint64_t sub_266AA6AFC@<X0>(uint64_t *a1@<X8>)
{
  result = DataCollectionGroup.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_266AA6C44()
{
  result = qword_2800B2838;
  if (!qword_2800B2838)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2840, &qword_266AC53B8);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_2800B2838);
  }

  return result;
}

unint64_t sub_266AA6CAC()
{
  result = qword_2800B2848;
  if (!qword_2800B2848)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DataCollectionGroup, &type metadata for DataCollectionGroup, v0, v1);
    atomic_store(result, &qword_2800B2848);
  }

  return result;
}

uint64_t sub_266AA6D00@<X0>(uint64_t *a1@<X8>)
{
  result = DataCollectionGroup.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DataCollectionGroup(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266AA6E04()
{
  result = qword_2800B2850;
  if (!qword_2800B2850)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DataCollectionGroup, &type metadata for DataCollectionGroup, v0, v1);
    atomic_store(result, &qword_2800B2850);
  }

  return result;
}

unint64_t sub_266AA6E5C()
{
  result = qword_2800B2858;
  if (!qword_2800B2858)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AdvertisementProductType, &type metadata for AdvertisementProductType, v0, v1);
    atomic_store(result, &qword_2800B2858);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AdvertisementProductType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266AA6FFC@<X0>(unint64_t *a1@<X8>)
{
  v3 = [v1 type];
  if (v3 == 1)
  {
    v4 = [v1 kind];
    if (v4 < 7)
    {
      v5 = (v4 + 1);
    }

    else
    {
      v5 = 0;
    }

    [v1 boostValue];
    *&v7 = v6;
    [v1 totalDecay];
    v9 = v8;
    [v1 currentDecay];
    v11 = v10;
    a1[3] = &type metadata for BoostModel;
    result = sub_266A9CEB0();
    a1[4] = result;
    *a1 = v5 | (v7 << 32);
    a1[1] = v9;
    a1[2] = v11;
  }

  else if (v3)
  {
    result = sub_266ABDF54();
    __break(1u);
  }

  else
  {
    v13 = [v1 kind];
    if (v13 < 7)
    {
      v14 = (v13 + 1);
    }

    else
    {
      v14 = 0;
    }

    [v1 boostValue];
    *&v15 = v15;
    v16 = v14 | (LODWORD(v15) << 32) | 0x80000000;
    a1[3] = &type metadata for BoostModel;
    result = sub_266A9CEB0();
    a1[4] = result;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = v16;
  }

  return result;
}

uint64_t static BoostType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*a1 & 0x80000000) != 0)
  {
    if ((v3 & 0x80000000) != 0 && v3 == v2)
    {
      return *(&v2 + 1) == *(&v3 + 1);
    }

    return 0;
  }

  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_8_8(a1, a2);
  v12 = v10 == v5 && v7 == v9;
  v13 = v12 & v4;
  if (v8 == v6)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266AA71E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E697961636564 && a2 == 0xE800000000000000;
  if (v4 || (sub_266ABE1C4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465786966 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266ABE1C4();

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

uint64_t sub_266AA72AC(char a1)
{
  if (a1)
  {
    return 0x6465786966;
  }

  else
  {
    return 0x676E697961636564;
  }
}

uint64_t sub_266AA72E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_266ABE1C4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_266ABE1C4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6365446C61746F74 && a2 == 0xEA00000000007961;
      if (v7 || (sub_266ABE1C4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x44746E6572727563 && a2 == 0xEC00000079616365)
      {

        return 3;
      }

      else
      {
        v9 = sub_266ABE1C4();

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

uint64_t sub_266AA7440(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x65756C6176;
      break;
    case 2:
      result = 0x6365446C61746F74;
      break;
    case 3:
      result = 0x44746E6572727563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266AA74C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_266ABE1C4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266ABE1C4();

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

uint64_t sub_266AA7588(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_266AA75BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AA71E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266AA75E4(uint64_t a1)
{
  v2 = sub_266AA83E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA7620(uint64_t a1)
{
  v2 = sub_266AA83E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA7664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AA72E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266AA768C(uint64_t a1)
{
  v2 = sub_266AA84E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA76C8(uint64_t a1)
{
  v2 = sub_266AA84E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA770C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AA74C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266AA7734(uint64_t a1)
{
  v2 = sub_266AA8438();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA7770(uint64_t a1)
{
  v2 = sub_266AA8438();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BoostType.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2868, &qword_266AC5640);
  OUTLINED_FUNCTION_1_0();
  v25 = v4;
  v26 = v3;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2870, &qword_266AC5648);
  OUTLINED_FUNCTION_1_0();
  v27 = v9;
  v28 = v8;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2878, &qword_266AC5650);
  OUTLINED_FUNCTION_1_0();
  v30 = v14;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266AA83E4();
  sub_266ABE2C4();
  if ((v18 & 0x80000000) != 0)
  {
    v40 = 1;
    sub_266AA8438();
    sub_266ABE0C4();
    v39 = v18;
    v38 = 0;
    sub_266AA848C();
    v21 = v26;
    v22 = v29;
    sub_266ABE154();
    if (!v22)
    {
      v37 = 1;
      sub_266ABE144();
    }

    (*(v25 + 8))(v7, v21);
  }

  else
  {
    v36 = 0;
    sub_266AA84E0();
    sub_266ABE0C4();
    v35 = v18;
    v34 = 0;
    sub_266AA848C();
    v19 = v28;
    v20 = v29;
    sub_266ABE154();
    if (!v20)
    {
      v33 = 1;
      OUTLINED_FUNCTION_5_6();
      sub_266ABE144();
      v32 = 2;
      OUTLINED_FUNCTION_5_6();
      sub_266ABE134();
      v31 = 3;
      OUTLINED_FUNCTION_5_6();
      sub_266ABE134();
    }

    (*(v27 + 8))(v12, v19);
  }

  return (*(v30 + 8))(v17, v13);
}

uint64_t BoostType.hash(into:)()
{
  v1 = *v0;
  if ((*v0 & 0x80000000) != 0)
  {
    MEMORY[0x26D5E8B00](1);
    MEMORY[0x26D5E8B00](v1);
    return sub_266ABE284();
  }

  else
  {
    v3 = v0[1];
    v2 = v0[2];
    MEMORY[0x26D5E8B00](0);
    MEMORY[0x26D5E8B00](v1);
    sub_266ABE284();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x26D5E8B40](v4);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    return MEMORY[0x26D5E8B40](v5);
  }
}

uint64_t BoostType.hashValue.getter()
{
  sub_266ABE244();
  BoostType.hash(into:)();
  return sub_266ABE2A4();
}

void BoostType.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  *&v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B28A0, &qword_266AC5658);
  OUTLINED_FUNCTION_1_0();
  *&v55 = v3;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v4);
  v6 = &v50[-v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B28A8, &qword_266AC5660);
  OUTLINED_FUNCTION_1_0();
  v56 = v7;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v8);
  v10 = &v50[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B28B0, &unk_266AC5668);
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v14);
  v15 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_266AA83E4();
  v16 = v59;
  sub_266ABE2B4();
  if (v16)
  {
    goto LABEL_9;
  }

  v53 = v10;
  v17 = v57;
  v59 = v13;
  v18 = sub_266ABE0B4();
  sub_266A86550(v18, 0);
  if (v20 == v21 >> 1)
  {
LABEL_8:
    v27 = sub_266ABDEF4();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F78, &qword_266AC1AA0);
    *v29 = &type metadata for BoostType;
    sub_266ABDFF4();
    sub_266ABDEE4();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    v30 = OUTLINED_FUNCTION_1_7();
    v31(v30, v11);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    return;
  }

  v52 = v11;
  if (v20 >= (v21 >> 1))
  {
    __break(1u);
    return;
  }

  v51 = *(v19 + v20);
  sub_266A86BCC();
  v23 = v22;
  v25 = v24;
  swift_unknownObjectRelease();
  if (v23 != v25 >> 1)
  {
    v11 = v52;
    goto LABEL_8;
  }

  if (v51)
  {
    v69 = 1;
    sub_266AA8438();
    v26 = v6;
    sub_266ABDFE4();
    v67 = 0;
    sub_266AA8D0C();
    v32 = v54;
    sub_266ABE084();
    v33 = v68;
    v66 = 1;
    sub_266ABE074();
    v34 = v55;
    v39 = v38;
    swift_unknownObjectRelease();
    (*(v34 + 8))(v26, v32);
    v40 = OUTLINED_FUNCTION_1_7();
    v41(v40, v52);
    v42 = v33 | (v39 << 32) | 0x80000000;
    v43 = 0uLL;
  }

  else
  {
    v65 = 0;
    sub_266AA84E0();
    sub_266ABDFE4();
    v63 = 0;
    sub_266AA8D0C();
    sub_266ABE084();
    v35 = v64;
    v62 = 1;
    sub_266ABE074();
    v37 = v36;
    v61 = 2;
    sub_266ABE064();
    v55 = v44;
    v60 = 3;
    sub_266ABE064();
    v54 = v45;
    swift_unknownObjectRelease();
    v46 = OUTLINED_FUNCTION_2_7();
    v47(v46);
    v48 = OUTLINED_FUNCTION_4_8();
    v49(v48);
    v42 = v35 | (v37 << 32);
    *&v43 = v55;
    *(&v43 + 1) = v54;
  }

  *v17 = v42;
  *(v17 + 8) = v43;
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
}

uint64_t sub_266AA8350(uint64_t a1)
{
  sub_266ABE244();
  BoostType.hash(into:)();
  return sub_266ABE2A4();
}

SiriCrossDeviceArbitrationFeedback::BoostKind_optional __swiftcall BoostKind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_266AA83BC@<X0>(uint64_t *a1@<X8>)
{
  result = BoostKind.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_266AA83E4()
{
  result = qword_2800B2880;
  if (!qword_2800B2880)
  {
    result = swift_getWitnessTable(aUxw, &type metadata for BoostType.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2880);
  }

  return result;
}

unint64_t sub_266AA8438()
{
  result = qword_2800B2888;
  if (!qword_2800B2888)
  {
    result = swift_getWitnessTable(byte_266AC5D64, &type metadata for BoostType.FixedCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2888);
  }

  return result;
}

unint64_t sub_266AA848C()
{
  result = qword_2800B2890;
  if (!qword_2800B2890)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BoostKind, &type metadata for BoostKind, v0, v1);
    atomic_store(result, &qword_2800B2890);
  }

  return result;
}

unint64_t sub_266AA84E0()
{
  result = qword_2800B2898;
  if (!qword_2800B2898)
  {
    result = swift_getWitnessTable(byte_266AC5D14, &type metadata for BoostType.DecayingCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2898);
  }

  return result;
}

__n128 BoostModel.type.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 BoostModel.type.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t BoostModel.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  if ((*v8 & 0x80000000) != 0)
  {
    OUTLINED_FUNCTION_9_4(a1, a2, &type metadata for BoostKind, a4, a5, a6, a7, a8, v18, *v19, *&v19[4], v19[6], v9, 0);
    MEMORY[0x26D5E83C0](61, 0xE100000000000000);
    OUTLINED_FUNCTION_7_9();
    sub_266ABDCF4();
  }

  else
  {
    v10 = sub_266ABDEA4();
    OUTLINED_FUNCTION_9_4(v10, v11, &type metadata for BoostKind, v12, v13, v14, v15, v16, v18, *v19, *&v19[4], v19[6], v9, 0);
    MEMORY[0x26D5E83C0](61, 0xE100000000000000);
    OUTLINED_FUNCTION_7_9();
    sub_266ABDCF4();
    MEMORY[0x26D5E83C0](2128928, 0xE300000000000000);
    OUTLINED_FUNCTION_7_9();
    sub_266ABDCE4();
    MEMORY[0x26D5E83C0](543584032, 0xE400000000000000);
    OUTLINED_FUNCTION_7_9();
    sub_266ABDCE4();
  }

  return v20;
}

uint64_t sub_266AA8778(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266ABE1C4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266AA8808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AA8778(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_266AA8834(uint64_t a1)
{
  v2 = sub_266AA8D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA8870(uint64_t a1)
{
  v2 = sub_266AA8D60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BoostModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B28C0, &qword_266AC5678);
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  *v11 = *v1;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266AA8D60();
  sub_266ABE2C4();
  *&v11[3] = *v11;
  v11[5] = v9;
  sub_266AA8DB4();
  sub_266ABE154();
  return (*(v5 + 8))(v8, v3);
}

uint64_t BoostModel.hashValue.getter()
{
  sub_266ABE244();
  BoostType.hash(into:)();
  return sub_266ABE2A4();
}

uint64_t BoostModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B28D8, &qword_266AC5680);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266AA8D60();
  sub_266ABE2B4();
  if (!v2)
  {
    sub_266AA8E08();
    sub_266ABE084();
    (*(v7 + 8))(v10, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_266AA8C08(uint64_t a1)
{
  sub_266ABE244();
  BoostType.hash(into:)();
  return sub_266ABE2A4();
}

uint64_t static BoostModel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*a1 & 0x80000000) != 0)
  {
    if ((v3 & 0x80000000) != 0 && v3 == v2)
    {
      return *(&v2 + 1) == *(&v3 + 1);
    }

    return 0;
  }

  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_8_8(a1, a2);
  v12 = v10 == v5 && v7 == v9;
  v13 = v12 & v4;
  if (v8 == v6)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_266AA8D0C()
{
  result = qword_2800B28B8;
  if (!qword_2800B28B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BoostKind, &type metadata for BoostKind, v0, v1);
    atomic_store(result, &qword_2800B28B8);
  }

  return result;
}

unint64_t sub_266AA8D60()
{
  result = qword_2800B28C8;
  if (!qword_2800B28C8)
  {
    atomic_store(result, &qword_2800B28C8);
  }

  return result;
}

unint64_t sub_266AA8DB4()
{
  result = qword_2800B28D0;
  if (!qword_2800B28D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BoostType, &type metadata for BoostType, v0, v1);
    atomic_store(result, &qword_2800B28D0);
  }

  return result;
}

unint64_t sub_266AA8E08()
{
  result = qword_2800B28E0;
  if (!qword_2800B28E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BoostType, &type metadata for BoostType, v0, v1);
    atomic_store(result, &qword_2800B28E0);
  }

  return result;
}

unint64_t sub_266AA8E60()
{
  result = qword_2800B28E8;
  if (!qword_2800B28E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BoostType, &type metadata for BoostType, v0, v1);
    atomic_store(result, &qword_2800B28E8);
  }

  return result;
}

unint64_t sub_266AA8EB8()
{
  result = qword_2800B28F0;
  if (!qword_2800B28F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BoostKind, &type metadata for BoostKind, v0, v1);
    atomic_store(result, &qword_2800B28F0);
  }

  return result;
}

unint64_t sub_266AA8F0C(void *a1)
{
  a1[1] = sub_266AA8F44();
  a1[2] = sub_266AA8F98();
  result = sub_266AA8FEC();
  a1[3] = result;
  return result;
}

unint64_t sub_266AA8F44()
{
  result = qword_2800B28F8;
  if (!qword_2800B28F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BoostModel, &type metadata for BoostModel, v0, v1);
    atomic_store(result, &qword_2800B28F8);
  }

  return result;
}

unint64_t sub_266AA8F98()
{
  result = qword_2800B2900;
  if (!qword_2800B2900)
  {
    result = swift_getWitnessTable("}Iw\x1BtF", &type metadata for BoostModel, v0, v1);
    atomic_store(result, &qword_2800B2900);
  }

  return result;
}

unint64_t sub_266AA8FEC()
{
  result = qword_2800B2908;
  if (!qword_2800B2908)
  {
    result = swift_getWitnessTable("%Ew\x1BLF", v0);
    atomic_store(result, &qword_2800B2908);
  }

  return result;
}

unint64_t sub_266AA9044()
{
  result = qword_2800B2910;
  if (!qword_2800B2910)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BoostModel, &type metadata for BoostModel, v0, v1);
    atomic_store(result, &qword_2800B2910);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BoostKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BoostKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_266AA9260(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 536870910;
    }

    else
    {
      v2 = ((*a1 >> 2) & 0x1FFFFFFE | (*a1 >> 31)) ^ 0x1FFFFFFF;
      if (v2 >= 0x1FFFFFFE)
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

uint64_t sub_266AA92B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x1FFFFFFF;
    if (a3 >= 0x1FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (8 * ((-a2 >> 1) & 0xFFFFFFF)) | (a2 << 31);
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BoostModel.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for BoostType.DecayingCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_266AA94C0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266AA95A0()
{
  result = qword_2800B2918;
  if (!qword_2800B2918)
  {
    result = swift_getWitnessTable(aUfw, &type metadata for BoostType.FixedCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2918);
  }

  return result;
}

unint64_t sub_266AA95F8()
{
  result = qword_2800B2920;
  if (!qword_2800B2920)
  {
    result = swift_getWitnessTable(byte_266AC5B2C, &type metadata for BoostType.DecayingCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2920);
  }

  return result;
}

unint64_t sub_266AA9650()
{
  result = qword_2800B2928;
  if (!qword_2800B2928)
  {
    result = swift_getWitnessTable(byte_266AC5BE4, &type metadata for BoostType.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2928);
  }

  return result;
}

unint64_t sub_266AA96A8()
{
  result = qword_2800B2930;
  if (!qword_2800B2930)
  {
    result = swift_getWitnessTable(aDw_0, &type metadata for BoostModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2930);
  }

  return result;
}

unint64_t sub_266AA9700()
{
  result = qword_2800B2938;
  if (!qword_2800B2938)
  {
    result = swift_getWitnessTable(byte_266AC5C0C, &type metadata for BoostModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2938);
  }

  return result;
}

unint64_t sub_266AA9758()
{
  result = qword_2800B2940;
  if (!qword_2800B2940)
  {
    result = swift_getWitnessTable(byte_266AC5C34, &type metadata for BoostModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2940);
  }

  return result;
}

unint64_t sub_266AA97B0()
{
  result = qword_2800B2948;
  if (!qword_2800B2948)
  {
    result = swift_getWitnessTable(byte_266AC5A9C, &type metadata for BoostType.DecayingCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2948);
  }

  return result;
}

unint64_t sub_266AA9808()
{
  result = qword_2800B2950;
  if (!qword_2800B2950)
  {
    result = swift_getWitnessTable(byte_266AC5AC4, &type metadata for BoostType.DecayingCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2950);
  }

  return result;
}

unint64_t sub_266AA9860()
{
  result = qword_2800B2958;
  if (!qword_2800B2958)
  {
    result = swift_getWitnessTable(byte_266AC59E4, &type metadata for BoostType.FixedCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2958);
  }

  return result;
}

unint64_t sub_266AA98B8()
{
  result = qword_2800B2960;
  if (!qword_2800B2960)
  {
    result = swift_getWitnessTable(byte_266AC5A0C, &type metadata for BoostType.FixedCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2960);
  }

  return result;
}

unint64_t sub_266AA9910()
{
  result = qword_2800B2968;
  if (!qword_2800B2968)
  {
    result = swift_getWitnessTable(aMtw, &type metadata for BoostType.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2968);
  }

  return result;
}

unint64_t sub_266AA9968()
{
  result = qword_2800B2970;
  if (!qword_2800B2970)
  {
    result = swift_getWitnessTable(aPw_0, &type metadata for BoostType.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2970);
  }

  return result;
}

unint64_t sub_266AA99BC()
{
  result = qword_2800B2978;
  if (!qword_2800B2978)
  {
    result = swift_getWitnessTable("aJw\x1BHG", &type metadata for BoostKind, v0, v1);
    atomic_store(result, &qword_2800B2978);
  }

  return result;
}

uint64_t sub_266AA9A30()
{
  sub_266AA9C54();
  result = sub_266ABDDE4();
  qword_280BB7040 = result;
  return result;
}

uint64_t sub_266AA9A98()
{
  sub_266AA9C54();
  result = sub_266ABDDE4();
  qword_2800BD100 = result;
  return result;
}

uint64_t sub_266AA9B64(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_266ABD8D4();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_266ABD8E4();
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

unint64_t sub_266AA9C54()
{
  result = qword_280BB6BE0;
  if (!qword_280BB6BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BB6BE0);
  }

  return result;
}

unint64_t FeedbackNotificationAction.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266AA9CBC()
{
  result = qword_2800B2980;
  if (!qword_2800B2980)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FeedbackNotificationAction, &type metadata for FeedbackNotificationAction, v0, v1);
    atomic_store(result, &qword_2800B2980);
  }

  return result;
}

unint64_t sub_266AA9D28@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = FeedbackNotificationAction.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_266AA9D78()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_266AAA504(0xD000000000000025, 0x8000000266AC06E0);
  if (result)
  {
    qword_2800B2988 = result;
  }

  else
  {
    result = sub_266ABDF54();
    __break(1u);
  }

  return result;
}

uint64_t *sub_266AA9E2C()
{
  if (qword_2800B1AF0 != -1)
  {
    OUTLINED_FUNCTION_1_8(&qword_2800B1AF0);
  }

  return &qword_2800B2988;
}

uint64_t (*static KeyValueStore.local.modify())(uint64_t a1)
{
  if (qword_2800B1AF0 != -1)
  {
    OUTLINED_FUNCTION_1_8(&qword_2800B1AF0);
  }

  OUTLINED_FUNCTION_3_9();
  return j_j__swift_endAccess;
}

id sub_266AA9EF8()
{
  sub_266AAA568();
  v0 = sub_266AA9F64(0xD000000000000025, 0x8000000266AC06E0, 0);
  result = [v0 synchronize];
  *&xmmword_2800B2990 = v0;
  *(&xmmword_2800B2990 + 1) = &protocol witness table for NSUbiquitousKeyValueStore;
  return result;
}

id sub_266AA9F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_266ABDA74();

  v6 = [v4 initWithStoreIdentifier:v5 type:a3];

  return v6;
}

__int128 *sub_266AA9FE0()
{
  if (qword_2800B1AF8 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_2800B1AF8);
  }

  return &xmmword_2800B2990;
}

uint64_t static KeyValueStore.cloud.setter(uint64_t a1, uint64_t a2)
{
  if (qword_2800B1AF8 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_2800B1AF8);
  }

  swift_beginAccess();
  *&xmmword_2800B2990 = a1;
  *(&xmmword_2800B2990 + 1) = a2;
  return swift_unknownObjectRelease();
}

uint64_t (*static KeyValueStore.cloud.modify())(uint64_t a1)
{
  if (qword_2800B1AF8 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_2800B1AF8);
  }

  OUTLINED_FUNCTION_3_9();
  return j__swift_endAccess;
}

uint64_t sub_266AAA104@<X0>(_OWORD *a1@<X8>)
{
  sub_266AA9FE0();
  swift_beginAccess();
  *a1 = xmmword_2800B2990;
  return swift_unknownObjectRetain();
}

uint64_t sub_266AAA15C(void *a1, uint64_t a2)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  sub_266AA9FE0();
  swift_beginAccess();
  xmmword_2800B2990 = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_266AAA1C0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_266AAA504(0x6C7070612E6D6F63, 0xEC00000061642E65);
  if (result)
  {
    qword_2800B29A0 = result;
  }

  else
  {
    result = sub_266ABDF54();
    __break(1u);
  }

  return result;
}

uint64_t *sub_266AAA26C()
{
  if (qword_2800B1B00 != -1)
  {
    OUTLINED_FUNCTION_2_8(&qword_2800B1B00);
  }

  return &qword_2800B29A0;
}

void sub_266AAA2F4(void *a1, void *a2, void **a3, uint64_t a4)
{
  v5 = a1;
  if (*a2 != -1)
  {
    a1 = swift_once();
  }

  OUTLINED_FUNCTION_5_7(a1);
  v6 = *a3;
  *a3 = v5;
}

uint64_t (*static KeyValueStore.daLocal.modify())(uint64_t a1)
{
  if (qword_2800B1B00 != -1)
  {
    OUTLINED_FUNCTION_2_8(&qword_2800B1B00);
  }

  OUTLINED_FUNCTION_3_9();
  return j_j__swift_endAccess;
}

id sub_266AAA3B4@<X0>(uint64_t (*a1)(void)@<X3>, void **a2@<X4>, void **a3@<X8>)
{
  v5 = a1();
  OUTLINED_FUNCTION_4_9(v5);
  v6 = *a2;
  *a3 = *a2;

  return v6;
}

void sub_266AAA404(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void **a6)
{
  v8 = *a1;
  v9 = a5();
  OUTLINED_FUNCTION_5_7(v9);
  v10 = *a6;
  *a6 = v8;
}

id sub_266AAA504(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_266ABDA74();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_266AAA568()
{
  result = qword_2800B29A8;
  if (!qword_2800B29A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800B29A8);
  }

  return result;
}

void sub_266AAA5AC()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for ParticipantModel(0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
  v40 = sub_266ABD9B4();
  v33 = v0;
  v3 = *v0;
  sub_266AAC5B0(*v0, &v40);
  v32 = *(v3 + 16);
  if (v32)
  {
    v4 = 0;
    while (v4 < *(v3 + 16))
    {
      OUTLINED_FUNCTION_21_4();
      v35 = v5;
      v7 = *(v6 + 72) * v4;
      sub_266A6E9E4(v3 + v5 + v7, v1);
      v8 = *(v1 + 104);

      sub_266A6A63C(v1);
      v9 = *(v8 + 16);

      v34 = v9;
      if (v9)
      {
        v10 = 0;
        v11 = 0;
        while (v4 < *(v3 + 16))
        {
          sub_266A6E9E4(v3 + v35 + v7, v1);
          v12 = *(v1 + 104);

          sub_266A6A63C(v1);
          if (v11 >= *(v12 + 16))
          {
            goto LABEL_23;
          }

          sub_266A6FFD8(v12 + v10 + 32, v37);

          v13 = v38;
          v14 = v39;
          __swift_project_boxed_opaque_existential_1(v37, v38);
          v15 = (*(v14 + 168))(v13, v14);
          if (v16)
          {
            v17 = v40;
            if (*(v40 + 16))
            {
              v18 = sub_266AB0B30(v15, v16);
              v20 = v19;

              if (v20)
              {
                sub_266A6FFD8(*(v17 + 56) + 40 * v18, v36);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_266AB1094();
                  v3 = v30;
                }

                if (v4 >= *(v3 + 16))
                {
                  goto LABEL_24;
                }

                v21 = v3 + v35 + v7;
                v22 = *(v21 + 104);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v21 + 104) = v22;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_266AB1064(v22, v24, v25, v26);
                  v22 = v31;
                  *(v21 + 104) = v31;
                }

                if (v11 >= *(v22 + 16))
                {
                  goto LABEL_25;
                }

                v27 = v22 + v10;
                v28 = *(v22 + v10 + 56);
                v29 = *(v27 + 64);
                __swift_mutable_project_boxed_opaque_existential_1(v27 + 32, v28);
                Device.saturate(device:)(v36, v28, v29);
                __swift_destroy_boxed_opaque_existential_1Tm(v36);
                *v33 = v3;
              }
            }

            else
            {
            }
          }

          ++v11;
          __swift_destroy_boxed_opaque_existential_1Tm(v37);
          v10 += 40;
          if (v34 == v11)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        break;
      }

LABEL_20:
      if (++v4 == v32)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    OUTLINED_FUNCTION_30();
  }
}

void sub_266AAA8D0()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_2();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v66 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_21(v11);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v12);
  v67 = &v66 - v13;
  v66 = sub_266A81434();
  v14 = sub_266ABD9B4();
  v87 = v14;
  v15 = *v0;
  v16 = *(*v0 + 16);
  v72 = v1;
  v82 = v3;
  v83 = v15;
  v71 = v16;
  if (!v16)
  {
    v53 = 0;
LABEL_24:
    for (i = 0; ; i = v55)
    {
      while (1)
      {
        if (v53 == i)
        {

          sub_266AAC7F0(MEMORY[0x277D84F90], v14, &v87);
          swift_bridgeObjectRelease_n();
          OUTLINED_FUNCTION_30();
          return;
        }

        if (i >= v53)
        {
          goto LABEL_39;
        }

        v55 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_40;
        }

        v56 = *(v82 + 72);
        OUTLINED_FUNCTION_21_4();
        sub_266A6F9C8(v57 + v58 + v56 * i, v86, &qword_2800B1CC8, &unk_266AC0FD0);
        if (v86[3])
        {
          break;
        }

        sub_266A798F4(v86, &qword_2800B1CC8, &unk_266AC0FD0);
LABEL_33:
        ++i;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_33;
      }

      v59 = sub_266AB0C10(v85);
      if (v60)
      {
        v61 = v87;
        v84 = v59;
        LODWORD(v81) = swift_isUniquelyReferenced_nonNull_native();
        v86[0] = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DF8, &unk_266AC1320);
        sub_266ABDF34();
        v14 = v86[0];
        v62 = *(v86[0] + 56) + v84 * v56;
        v63 = v67;
        sub_266A7977C(v62, v67);
        v64 = v72;
        sub_266ABDF44();
        v65 = 0;
        v87 = v14;
      }

      else
      {
        v65 = 1;
        v64 = v72;
        v63 = v67;
      }

      __swift_storeEnumTagSinglePayload(v63, v65, 1, v64);
      sub_266A798F4(v63, &qword_2800B1CB0, &qword_266AC0FB8);
    }
  }

  OUTLINED_FUNCTION_21_4();
  v70 = v17 + v18;
  v81 = *(v3 + 72);

  v19 = 0;
  v69 = v7;
  v68 = v10;
LABEL_3:
  v80 = v19 + 1;
  sub_266A6E9E4(v70 + v81 * v19, v10);
  v20 = 0;
  v21 = *&v10[*(v1 + 48)];
  v22 = *(v21 + 16);
  v23 = v21 + 32;
  v79 = v21 + 32;
LABEL_4:
  for (j = v23 + 40 * v20; ; j += 40)
  {
    if (v22 == v20)
    {
      v87 = v14;
      sub_266A6A63C(v10);
      v19 = v80;
      if (v80 == v71)
      {
        v52 = v83;

        v53 = *(v52 + 16);
        goto LABEL_24;
      }

      goto LABEL_3;
    }

    if (v20 >= v22)
    {
      break;
    }

    if (__OFADD__(v20, 1))
    {
      goto LABEL_38;
    }

    sub_266A6FFD8(j, v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    if (swift_dynamicCast())
    {
      v25 = v7;
      v84 = v85;
      v26 = BYTE1(v85);
      v27 = v14;
      v28 = BYTE2(v85);
      v29 = v10;
      v30 = BYTE3(v85);
      v31 = WORD2(v85);
      v32 = BYTE6(v85);
      v33 = HIBYTE(v85);
      sub_266A6E9E4(v29, v25);
      swift_isUniquelyReferenced_nonNull_native();
      v86[0] = v27;
      v77 = v28;
      v78 = v26;
      v75 = v31;
      v76 = v30;
      v73 = v33;
      v74 = v32;
      v34 = v84 | (v26 << 8) | (v28 << 16) | (v30 << 24) | (v31 << 32) | (v32 << 48) | (v33 << 56);
      sub_266AB0C10(v34);
      OUTLINED_FUNCTION_23_0();
      if (__OFADD__(v37, v38))
      {
        goto LABEL_41;
      }

      v39 = v35;
      v7 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DF8, &unk_266AC1320);
      if (sub_266ABDF34())
      {
        sub_266AB0C10(v34);
        OUTLINED_FUNCTION_46();
        if (!v41)
        {
          goto LABEL_43;
        }

        v39 = v40;
        v10 = v68;
        v23 = v79;
      }

      else
      {
        v10 = v68;
        v23 = v79;
      }

      v14 = v86[0];
      if (v7)
      {
        v42 = OUTLINED_FUNCTION_44();
        sub_266A81518(v42, v43);
        goto LABEL_20;
      }

      v44 = v73;
      *(v86[0] + 8 * (v39 >> 6) + 64) |= 1 << v39;
      v45 = *(v14 + 48) + 8 * v39;
      *v45 = v84;
      v46 = v77;
      *(v45 + 1) = v78;
      *(v45 + 2) = v46;
      *(v45 + 3) = v76;
      *(v45 + 4) = v75;
      *(v45 + 6) = v74;
      *(v45 + 7) = v44;
      v47 = OUTLINED_FUNCTION_44();
      sub_266A7977C(v47, v48);
      v49 = *(v14 + 16);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_42;
      }

      *(v14 + 16) = v51;
LABEL_20:
      ++v20;
      v1 = v72;
      goto LABEL_4;
    }

    ++v20;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_266ABE1F4();
  __break(1u);
}

uint64_t sub_266AAAECC()
{
  OUTLINED_FUNCTION_30_4();
  v86 = sub_266ABD7A4();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_2();
  v85 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v80 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DF0, &qword_266AC6360);
  v9 = swift_allocObject();
  v80 = xmmword_266AC0EB0;
  *(v9 + 16) = xmmword_266AC0EB0;
  v81 = v9;
  *(v9 + 32) = MEMORY[0x277D84F90];
  *&v95 = v0;

  sub_266AAC928(&v95);
  v10 = v95;
  v11 = *(v95 + 16);
  v83 = v95;
  if (v11)
  {
    OUTLINED_FUNCTION_19_1();
    sub_266A6FFD8(v12 + 32, &v95);
    OUTLINED_FUNCTION_19_1();
    v13 = 1;
  }

  else
  {
    v13 = 0;
    v97 = 0;
    v95 = 0u;
    v96 = 0u;
  }

  v82 = v10 + 32;
  v14 = &unk_266AC1310;
  v84 = (v2 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_40_2();
    sub_266A6F9C8(v15, v16, v17, v18);
    if (!*(&v93 + 1))
    {

      sub_266A798F4(&v92, &qword_2800B1C48, &unk_266AC1310);
      sub_266A798F4(&v95, &qword_2800B1C48, &unk_266AC1310);
      return v81;
    }

    sub_266A798F4(&v92, &qword_2800B1C48, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB8, &unk_266AC0FC0);
    v19 = swift_allocObject();
    *(v19 + 16) = v80;
    OUTLINED_FUNCTION_40_2();
    sub_266A6F9C8(v20, v21, v22, v23);
    if (!*(&v93 + 1))
    {
      break;
    }

    sub_266A6DBC4(&v92, v19 + 32);
    if (v13 == v11)
    {
      v94 = 0;
      v13 = v11;
      v92 = 0u;
      v93 = 0u;
      goto LABEL_12;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      break;
    }

    OUTLINED_FUNCTION_19_1();
    if (v13 >= *(v24 + 16))
    {
      goto LABEL_32;
    }

    v25 = OUTLINED_FUNCTION_67();
    sub_266A6FFD8(v25, &v92);
    ++v13;
LABEL_12:
    while (1)
    {
      OUTLINED_FUNCTION_40_2();
      sub_266A6F9C8(v26, v27, v28, v29);
      v30 = *(&v90 + 1);
      sub_266A798F4(&v89, &qword_2800B1C48, v14);
      if (!v30)
      {
        break;
      }

      v31 = *(&v96 + 1);
      if (!*(&v96 + 1))
      {
        goto LABEL_34;
      }

      v88 = v19;
      v32 = v97;
      __swift_project_boxed_opaque_existential_1(&v95, *(&v96 + 1));
      OUTLINED_FUNCTION_2_1();
      v34 = v33;
      MEMORY[0x28223BE20](v35);
      OUTLINED_FUNCTION_2();
      v38 = v37 - v36;
      (*(v34 + 16))(v37 - v36);
      (*(v32 + 88))(v31, v32);
      (*(v34 + 8))(v38, v31);
      v39 = *(&v93 + 1);
      if (!*(&v93 + 1))
      {
        goto LABEL_33;
      }

      v40 = v94;
      __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
      v87 = &v80;
      OUTLINED_FUNCTION_2_1();
      v42 = v41;
      MEMORY[0x28223BE20](v43);
      OUTLINED_FUNCTION_2();
      v46 = v45 - v44;
      (*(v42 + 16))(v45 - v44);
      v47 = v14;
      v48 = v13;
      v49 = v11;
      v50 = v8;
      v51 = v85;
      (*(v40 + 88))(v39, v40);
      (*(v42 + 8))(v46, v39);
      sub_266ABD704();
      v53 = v52;
      v54 = *v84;
      v55 = v51;
      v8 = v50;
      v11 = v49;
      v13 = v48;
      v14 = v47;
      v56 = v86;
      (*v84)(v55, v86);
      v54(v8, v56);
      v19 = v88;
      if (v53 > 2.0)
      {
        break;
      }

      OUTLINED_FUNCTION_40_2();
      sub_266A6F9C8(v57, v58, v59, v60);
      if (!*(&v90 + 1))
      {
        goto LABEL_35;
      }

      v62 = *(v19 + 16);
      v61 = *(v19 + 24);
      if (v62 >= v61 >> 1)
      {
        v69 = OUTLINED_FUNCTION_14(v61);
        sub_266A98074(v69, v62 + 1, 1, v19);
        v19 = v70;
      }

      *(v19 + 16) = v62 + 1;
      sub_266A6DBC4(&v89, v19 + 40 * v62 + 32);
      if (v13 == v11)
      {
        v91 = 0;
        v13 = v11;
        v89 = 0u;
        v90 = 0u;
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_19_1();
        if (v13 >= *(v63 + 16))
        {
          goto LABEL_30;
        }

        v64 = OUTLINED_FUNCTION_67();
        sub_266A6FFD8(v64, &v89);
        ++v13;
      }

      OUTLINED_FUNCTION_40_2();
      sub_266AB50A0(v65, v66, v67, v68);
    }

    v71 = v81;
    v73 = *(v81 + 16);
    v72 = *(v81 + 24);
    if (v73 >= v72 >> 1)
    {
      OUTLINED_FUNCTION_14(v72);
      sub_266A980BC();
      v71 = v78;
    }

    *(v71 + 16) = v73 + 1;
    v81 = v71;
    *(v71 + 8 * v73 + 32) = v19;
    OUTLINED_FUNCTION_40_2();
    sub_266AB50A0(v74, v75, v76, v77);
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_266AAB528()
{
  OUTLINED_FUNCTION_31();
  v1 = 0;
  *&v146 = *(v0 + 16);
  if (!v146)
  {
    v3 = MEMORY[0x277D84F90];
LABEL_110:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_111;
  }

  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  *(&v146 + 1) = v0 + 32;
  v158 = xmmword_266AC0EB0;
LABEL_3:
  v4 = *(*(&v146 + 1) + 8 * v2);
  v149 = v3;
  v150 = v2 + 1;
  v159 = *(v4 + 16);
  v3 = (v4 + 32);

  v8 = 0;
  v9 = v4 + 32;
  v10 = MEMORY[0x277D84F90];
  v156 = v4;
  while (v159 != v8)
  {
    if (v8 >= *(v4 + 16))
    {
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      sub_266AB107C(v3, v5, v6, v7);
      v3 = v144;
LABEL_111:
      v140 = v3[2];
      *&v163[0] = v3 + 4;
      *(&v163[0] + 1) = v140;
      OUTLINED_FUNCTION_8_9();
      sub_266AB1100(v163, v141, v142, v143, sub_266AB1470);
      OUTLINED_FUNCTION_30();
      return;
    }

    sub_266A6FFD8(v9, v163);
    OUTLINED_FUNCTION_56();
    v11 = OUTLINED_FUNCTION_34_2();
    v12(v11);
    if (v162[0] == 3 || (OUTLINED_FUNCTION_56(), v13 = OUTLINED_FUNCTION_34_2(), v14(v13), v162[0] == 2))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v163);
    }

    else
    {
      sub_266A6DBC4(v163, v162);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v161[0] = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_35();
        v10 = v161[0];
      }

      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_14(v16);
        sub_266A98BE8();
      }

      v18 = *&v162[24];
      v19 = *&v162[32];
      __swift_mutable_project_boxed_opaque_existential_1(v162, *&v162[24]);
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v20);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_78();
      (*(v21 + 16))(v10);
      sub_266A9E8BC(v17, v10, v161, v18, v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v162);
      v10 = v161[0];
      v4 = v156;
    }

    v9 += 40;
    ++v8;
  }

  v153 = v10;
  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  while (v159 != v22)
  {
    if (v22 >= *(v4 + 16))
    {
      goto LABEL_113;
    }

    sub_266A6FFD8(v3, v163);
    __swift_project_boxed_opaque_existential_1(v163, *(&v163[1] + 1));
    v24 = OUTLINED_FUNCTION_43_0();
    v25(v24);
    if (v162[0] == 3 || (__swift_project_boxed_opaque_existential_1(v163, *(&v163[1] + 1)), v26 = OUTLINED_FUNCTION_43_0(), v27(v26), v162[0] == 2))
    {
      sub_266A6DBC4(v163, v162);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v161[0] = v23;
      if ((v28 & 1) == 0)
      {
        OUTLINED_FUNCTION_35();
        v23 = v161[0];
      }

      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        OUTLINED_FUNCTION_14(v29);
        sub_266A98BE8();
      }

      v31 = *&v162[24];
      v32 = *&v162[32];
      __swift_mutable_project_boxed_opaque_existential_1(v162, *&v162[24]);
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v33);
      OUTLINED_FUNCTION_2();
      v36 = v35 - v34;
      (*(v37 + 16))(v35 - v34);
      sub_266A9E8BC(v30, v36, v161, v31, v32);
      __swift_destroy_boxed_opaque_existential_1Tm(v162);
      v23 = v161[0];
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v163);
    }

    v3 += 5;
    ++v22;
  }

  v38 = 0;
  v3 = MEMORY[0x277D84F98];
  v39 = *(v23 + 16);
  v40 = v23 + 32;
  v155 = v23 + 32;
  v157 = v23;
  v160 = v39;
  v161[0] = MEMORY[0x277D84F98];
  while (1)
  {
    if (v39 == v38)
    {
      v151 = v1;
      v164 = v3;
      v64 = *(v23 + 16);
      if (!v64)
      {
LABEL_72:

        v93 = sub_266AB3C0C(v3);
        OUTLINED_FUNCTION_14_6();
        v96 = v95 & v94;
        v98 = (v97 + 63) >> 6;

        v99 = 0;
        if (!v96)
        {
          goto LABEL_74;
        }

        do
        {
          v100 = v99;
LABEL_78:
          v101 = (v100 << 9) | (8 * __clz(__rbit64(v96)));
          v102 = *(v93[7] + v101);
          v96 &= v96 - 1;
          *&v163[0] = *(v93[6] + v101);
          *(&v163[0] + 1) = v102;

          sub_266A7F108();
        }

        while (v96);
LABEL_74:
        while (1)
        {
          v100 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            goto LABEL_114;
          }

          if (v100 >= v98)
          {

            v103 = v164;
            v104 = v164 + 64;
            OUTLINED_FUNCTION_14_6();
            v107 = v106 & v105;
            v109 = (v108 + 63) >> 6;
            swift_bridgeObjectRetain_n();
            v3 = 0;
            v110 = MEMORY[0x277D84F90];
            if (!v107)
            {
              goto LABEL_82;
            }

            do
            {
              v111 = v3;
LABEL_86:
              v112 = __clz(__rbit64(v107));
              v107 &= v107 - 1;
              v113 = *(*(v103 + 56) + ((v111 << 9) | (8 * v112)));
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DD0, &unk_266AC6340);
              inited = swift_initStackObject();
              *(inited + 16) = v158;
              *&v163[0] = v113;
              swift_bridgeObjectRetain_n();

              sub_266A7F950(v115);
              sub_266AB5D18(*&v163[0], inited + 32);
              *&v163[0] = v110;
              sub_266A7FA00(inited);

              v110 = *&v163[0];
            }

            while (v107);
LABEL_82:
            while (1)
            {
              v111 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_115;
              }

              if (v111 >= v109)
              {

                v116 = *(v110 + 16);
                if (v116)
                {
                  v117 = v110 + 32;
                  v118 = MEMORY[0x277D84F90];
                  v3 = v149;
                  v2 = v150;
                  do
                  {
                    memcpy(v161, v163, sizeof(v161));
                    if (v161[1])
                    {
                      memcpy(v162, v163, sizeof(v162));
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        OUTLINED_FUNCTION_21_0();
                        sub_266A982D4();
                        v118 = v121;
                      }

                      v120 = *(v118 + 16);
                      v119 = *(v118 + 24);
                      if (v120 >= v119 >> 1)
                      {
                        OUTLINED_FUNCTION_14(v119);
                        sub_266A982D4();
                        v118 = v122;
                      }

                      *(v118 + 16) = v120 + 1;
                      memcpy((v118 + 72 * v120 + 32), v162, 0x48uLL);
                    }

                    else
                    {
                    }

                    v117 += 72;
                    --v116;
                  }

                  while (v116);
                }

                else
                {

                  v118 = MEMORY[0x277D84F90];
                  v3 = v149;
                  v2 = v150;
                }

                v1 = v151;
                if (*(v118 + 16))
                {
                  sub_266A9444C(v118, v123, v124, v125, v126, v127, v128, v129, v145, v146, v147, v148, v149, v150, v151, v153, v154, v155, v157, v158, *(&v158 + 1), v160, v161[0], v161[1], v161[2], v161[3], v161[4], v161[5], v161[6], v161[7], v161[8], *v162, *&v162[8], *&v162[16], *&v162[24]);
                  v131 = v130;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v134 = OUTLINED_FUNCTION_21_0();
                    sub_266A982B0(v134, v135, v136, v3);
                    v3 = v137;
                  }

                  v133 = v3[2];
                  v132 = v3[3];
                  if (v133 >= v132 >> 1)
                  {
                    v138 = OUTLINED_FUNCTION_14(v132);
                    sub_266A982B0(v138, v133 + 1, 1, v3);
                    v3 = v139;
                  }

                  *&v163[2] = &protocol witness table for RequestModel;
                  *(&v163[1] + 1) = &type metadata for RequestModel;
                  *&v163[0] = v131;
                  v3[2] = v133 + 1;
                  sub_266A6DBC4(v163, &v3[5 * v133 + 4]);

                  v1 = v152;
                }

                else
                {
                }

                if (v2 != v146)
                {
                  goto LABEL_3;
                }

                goto LABEL_110;
              }

              v107 = *(v104 + 8 * v111);
              v3 = (v3 + 1);
              if (v107)
              {
                v3 = v111;
                goto LABEL_86;
              }
            }
          }

          v96 = v93[v100 + 8];
          ++v99;
          if (v96)
          {
            v99 = v100;
            goto LABEL_78;
          }
        }
      }

      v65 = v155;
      while (1)
      {
        sub_266A6FFD8(v65, v163);
        OUTLINED_FUNCTION_56();
        v66 = OUTLINED_FUNCTION_34_2();
        v67(v66);
        if (!*&v162[24])
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
        if (swift_dynamicCast())
        {
          v160 = LODWORD(v161[0]);
          v68 = WORD2(v161[0]);
          v155 = BYTE6(v161[0]);
          v154 = HIBYTE(v161[0]);
          v69 = *(&v163[1] + 1);
          v70 = *&v163[2];
          __swift_project_boxed_opaque_existential_1(v163, *(&v163[1] + 1));
          (*(v70 + 128))(v162, v69, v70);
          if (!*&v162[24])
          {
            break;
          }

          if (swift_dynamicCast())
          {
            if (v3[2])
            {
              v71 = LODWORD(v161[0]);
              v72 = WORD2(v161[0]);
              v148 = BYTE6(v161[0]);
              v147 = HIBYTE(v161[0]);
              v73 = v160 | (v68 << 32) | (v155 << 48) | (v154 << 56);
              v74 = sub_266AB0BA4(v73);
              if (v75)
              {
                v76 = *(v3[7] + 8 * v74);
                sub_266AB0BA4(v73);
                if (v77)
                {

                  v78 = v164;
                  swift_isUniquelyReferenced_nonNull_native();
                  *v162 = v78;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DA8, &qword_266AC6350);
                  sub_266ABDF34();
                  v3 = *v162;

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB0, &unk_266AC12D0);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DD8, &unk_266AC1300);
                  sub_266A813B0();
                  sub_266ABDF44();
                  v164 = v3;
                }

                else
                {
                }

                if (v3[2] && (sub_266AB0BA4(v71 | (v72 << 32) | (v148 << 48) | (v147 << 56)), (v80 & 1) != 0))
                {
                }

                else
                {
                  v81 = MEMORY[0x277D84F90];
                }

                *v162 = v76;
                sub_266A7F950(v81);
                v160 = *v162;
                v82 = v164;
                v3 = swift_isUniquelyReferenced_nonNull_native();
                *v162 = v82;
                v79 = v71 | (v72 << 32) | (v148 << 48) | (v147 << 56);
                sub_266AB0BA4(v79);
                OUTLINED_FUNCTION_23_0();
                if (__OFADD__(v84, v85))
                {
                  goto LABEL_119;
                }

                v86 = v83;
                v87 = v5;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DA8, &qword_266AC6350);
                if (sub_266ABDF34())
                {
                  sub_266AB0BA4(v79);
                  OUTLINED_FUNCTION_46();
                  if (!v89)
                  {
                    goto LABEL_123;
                  }

                  v86 = v88;
                }

                v3 = *v162;
                if (v87)
                {
                  *(*(*v162 + 56) + 8 * v86) = v160;
                }

                else
                {
                  OUTLINED_FUNCTION_30_0(*v162 + 8 * (v86 >> 6));
                  *(v90 + 8 * v86) = v79;
                  *(v3[7] + 8 * v86) = v160;
                  v91 = v3[2];
                  v56 = __OFADD__(v91, 1);
                  v92 = v91 + 1;
                  if (v56)
                  {
                    goto LABEL_120;
                  }

                  v3[2] = v92;
                }

                v164 = v3;
              }
            }
          }
        }

LABEL_55:
        __swift_destroy_boxed_opaque_existential_1Tm(v163);
        v65 += 40;
        if (!--v64)
        {
          goto LABEL_72;
        }
      }

      sub_266A798F4(v162, &qword_2800B1CC8, &unk_266AC0FD0);
      goto LABEL_55;
    }

    if (v38 >= *(v23 + 16))
    {
      goto LABEL_116;
    }

    sub_266A6FFD8(v40, v163);
    sub_266A7EDD4(v163, &v164);
    if (v1)
    {
      break;
    }

    v41 = sub_266AB0BA4(v164);
    v42 = v3[2];
    v43 = (v5 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_117;
    }

    v45 = v5;
    if (v3[3] < v44)
    {
      sub_266AB3808(v44, 1);
      v3 = v161[0];
      v46 = sub_266AB0BA4(v164);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_123;
      }

      v41 = v46;
    }

    if (v45)
    {
      v48 = v3[7];
      sub_266A6DBC4(v163, v162);
      v49 = *(v48 + 8 * v41);
      v50 = swift_isUniquelyReferenced_nonNull_native();
      *(v48 + 8 * v41) = v49;
      if ((v50 & 1) == 0)
      {
        v58 = OUTLINED_FUNCTION_21_0();
        sub_266A98074(v58, v59, v60, v49);
        v49 = v61;
        *(v48 + 8 * v41) = v61;
      }

      v52 = *(v49 + 16);
      v51 = *(v49 + 24);
      if (v52 >= v51 >> 1)
      {
        v62 = OUTLINED_FUNCTION_14(v51);
        sub_266A98074(v62, v52 + 1, 1, v49);
        v49 = v63;
        *(v48 + 8 * v41) = v63;
      }

      v1 = 0;
      *(v49 + 16) = v52 + 1;
      sub_266A6DBC4(v162, v49 + 40 * v52 + 32);
      v23 = v157;
      v39 = v160;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB8, &unk_266AC0FC0);
      v53 = swift_allocObject();
      *(v53 + 16) = v158;
      sub_266A6DBC4(v163, v53 + 32);
      OUTLINED_FUNCTION_30_0(&v3[v41 >> 6]);
      *(v54 + 8 * v41) = v164;
      *(v3[7] + 8 * v41) = v53;
      v55 = v3[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_118;
      }

      v3[2] = v57;
    }

    v40 += 40;
    ++v38;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v163);

  __break(1u);
LABEL_123:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB0, &unk_266AC12D0);
  sub_266ABE1F4();
  __break(1u);
}

uint64_t sub_266AAC2C8(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_21(v7);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_77(a1, 1, v11);
  if (v15)
  {
    sub_266A798F4(a1, &qword_2800B1CB0, &qword_266AC0FB8);
    v16 = sub_266AB0C10(a2);
    if (v17)
    {
      v18 = v16;
      swift_isUniquelyReferenced_nonNull_native();
      v24 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DF8, &unk_266AC1320);
      sub_266ABDF34();
      v19 = v24;
      sub_266A7977C(*(v24 + 56) + *(v13 + 72) * v18, v10);
      sub_266A81434();
      sub_266ABDF44();
      v20 = 0;
      *v4 = v19;
    }

    else
    {
      v20 = 1;
    }

    __swift_storeEnumTagSinglePayload(v10, v20, 1, v11);
    return sub_266A798F4(v10, &qword_2800B1CB0, &qword_266AC0FB8);
  }

  else
  {
    sub_266A7977C(a1, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    result = sub_266AB4240(v3, a2, isUniquelyReferenced_nonNull_native);
    *v4 = v24;
  }

  return result;
}

uint64_t sub_266AAC4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_266A6DBC4(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    sub_266AB4368(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v11;
  }

  else
  {
    sub_266A798F4(a1, &qword_2800B1E08, &qword_266AC1370);
    v8 = OUTLINED_FUNCTION_79();
    sub_266AB3B10(v8, v9, v10);

    return sub_266A798F4(v12, &qword_2800B1E08, &qword_266AC1370);
  }

  return result;
}

uint64_t sub_266AAC5B0(uint64_t result, void *a2)
{
  v24 = result;
  v3 = 0;
  v25 = *(result + 16);
  while (v25 != v3)
  {
    v4 = *(type metadata accessor for ParticipantModel(0) - 8);
    v5 = (v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3);
    v6 = v5[9];
    v7 = v5[10];
    __swift_project_boxed_opaque_existential_1(v5 + 6, v6);
    result = (*(v7 + 168))(v6, v7);
    if (v8)
    {
      v9 = result;
      v10 = v8;
      sub_266A6FFD8((v5 + 6), v26);
      swift_isUniquelyReferenced_nonNull_native();
      v27 = *a2;
      v11 = v27;
      v12 = sub_266AB0B30(v9, v10);
      if (__OFADD__(v11[2], (v13 & 1) == 0))
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        result = sub_266ABE1F4();
        __break(1u);
        return result;
      }

      v14 = v12;
      v15 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B50, &qword_266AC6368);
      if (sub_266ABDF34())
      {
        v16 = sub_266AB0B30(v9, v10);
        if ((v15 & 1) != (v17 & 1))
        {
          goto LABEL_17;
        }

        v14 = v16;
      }

      v18 = v27;
      if (v15)
      {
        v19 = (v27[7] + 40 * v14);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        sub_266A6DBC4(v26, v19);
      }

      else
      {
        v27[(v14 >> 6) + 8] |= 1 << v14;
        v20 = (v18[6] + 16 * v14);
        *v20 = v9;
        v20[1] = v10;
        result = sub_266A6DBC4(v26, v18[7] + 40 * v14);
        v21 = v18[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_16;
        }

        v18[2] = v23;
      }

      *a2 = v18;
    }

    ++v3;
  }

  return result;
}

uint64_t sub_266AAC7F0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = a1;
  v19 = a1;
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v10));
      v16 = *(*(a2 + 48) + ((v14 << 9) | (8 * v15)) + 4);
      v18[0] = *(*(a2 + 48) + ((v14 << 9) | (8 * v15)));
      v18[1] = v16;
      sub_266A7E130(&v19, v18, a3, &v17);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;

      v6 = v17;
      v19 = v17;
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

LABEL_12:

    return v6;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_12;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_266AAC928(uint64_t *a1)
{
  if ((OUTLINED_FUNCTION_81(a1) & 1) == 0)
  {
    sub_266AB505C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_266AB1100(v6, &qword_2800B1CC0, &qword_266AC1290, sub_266AB18F0, sub_266AB121C);
  *v1 = v2;
  return result;
}

uint64_t Participant.unknownParticipant.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v6);
  v4 = v6[3];
  sub_266A798F4(v6, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v4)
  {
    return ((*(a2 + 80))(a1, a2) >> 8) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266AACA54()
{
  v1 = *(v0 + 112);
  sub_266A985D0();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4 >= *(v2 + 24) >> 1)
  {
    sub_266A985D0();
    v3 = v24;
  }

  *(v3 + 16) = v4 + 1;
  v5 = v3 + 48 * v4;
  *(v5 + 32) = v1;
  *(v5 + 72) = 0;
  v6 = *(v0 + 40);
  v7 = *(v6 + 16);
  for (i = v6 + 32; v7; --v7)
  {
    sub_266A6FFD8(i, &v25);
    v26[24] = 2;
    v9 = *(v3 + 16);
    if (v9 >= *(v3 + 24) >> 1)
    {
      sub_266A985D0();
      v3 = v13;
    }

    *(v3 + 16) = v9 + 1;
    v10 = (v3 + 48 * v9);
    v11 = v25;
    v12 = *v26;
    *(v10 + 57) = *&v26[9];
    v10[2] = v11;
    v10[3] = v12;
    i += 40;
  }

  v14 = *(v0 + *(type metadata accessor for ParticipantModel(0) + 52));
  v15 = *(v14 + 16);
  for (j = (v14 + 32); v15; --v15)
  {
    v17 = *j;
    v18 = *(v3 + 16);
    if (v18 >= *(v3 + 24) >> 1)
    {
      sub_266A985D0();
      v3 = v22;
    }

    *(v3 + 16) = v18 + 1;
    v19 = v3 + 48 * v18;
    *(v19 + 32) = v17;
    v20 = v25;
    v21 = *v26;
    *(v19 + 64) = *&v26[15];
    *(v19 + 49) = v21;
    *(v19 + 33) = v20;
    *(v19 + 72) = 1;
    ++j;
  }

  return v3;
}

uint64_t Participant.attributes.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 72))(&v34);
  v4 = v34;
  sub_266A985D0();
  v6 = v5;
  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    OUTLINED_FUNCTION_14(v7);
    sub_266A985D0();
    v6 = v32;
  }

  *(v6 + 16) = v8 + 1;
  v9 = v6 + 48 * v8;
  *(v9 + 32) = v4;
  *(v9 + 72) = 0;
  v33 = a1;
  v10 = OUTLINED_FUNCTION_79();
  v12 = v11(v10);
  v13 = *(v12 + 16);
  for (i = v12 + 32; v13; --v13)
  {
    sub_266A6FFD8(i, &v34);
    v35[24] = 2;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      OUTLINED_FUNCTION_14(v15);
      sub_266A985D0();
      v6 = v20;
    }

    *(v6 + 16) = v16 + 1;
    v17 = (v6 + 48 * v16);
    v18 = v34;
    v19 = *v35;
    *(v17 + 57) = *&v35[9];
    v17[2] = v18;
    v17[3] = v19;
    i += 40;
  }

  v21 = (*(a2 + 104))(v33, a2);
  v22 = *(v21 + 16);
  for (j = (v21 + 32); v22; --v22)
  {
    v24 = *j;
    v26 = *(v6 + 16);
    v25 = *(v6 + 24);
    if (v26 >= v25 >> 1)
    {
      OUTLINED_FUNCTION_14(v25);
      sub_266A985D0();
      v6 = v30;
    }

    *(v6 + 16) = v26 + 1;
    v27 = v6 + 48 * v26;
    *(v27 + 32) = v24;
    v28 = v34;
    v29 = *v35;
    *(v27 + 64) = *&v35[15];
    *(v27 + 49) = v29;
    *(v27 + 33) = v28;
    *(v27 + 72) = 1;
    ++j;
  }

  return v6;
}

uint64_t ParticipantModel.boosts.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t ParticipantModel.device.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 48));

  return sub_266A6DBC4(a1, v1 + 48);
}

uint64_t ParticipantModel.intentSignature.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t ParticipantModel.nearbyDevices.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t ParticipantModel.rawGoodnessScore.setter(uint64_t result)
{
  *(v1 + 113) = result;
  *(v1 + 114) = BYTE1(result) & 1;
  return result;
}

uint64_t ParticipantModel.requestStartEvent.getter()
{
  v2 = *(OUTLINED_FUNCTION_59() + 44);
  sub_266ABD7A4();
  OUTLINED_FUNCTION_16();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t ParticipantModel.requestStartEvent.setter()
{
  v2 = *(OUTLINED_FUNCTION_37_2() + 44);
  sub_266ABD7A4();
  OUTLINED_FUNCTION_16();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t ParticipantModel.seenAdvertisements.getter()
{
  type metadata accessor for ParticipantModel(0);
}

uint64_t ParticipantModel.seenAdvertisements.setter()
{
  v2 = *(OUTLINED_FUNCTION_37_2() + 48);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ParticipantModel.trumpReason.getter()
{
  type metadata accessor for ParticipantModel(0);
}

uint64_t ParticipantModel.trumpReason.setter()
{
  v2 = *(OUTLINED_FUNCTION_37_2() + 52);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ParticipantModel.userRequestedText.getter()
{
  type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_36_0();
  return OUTLINED_FUNCTION_9_2();
}

uint64_t ParticipantModel.userRequestedText.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_30_4();
  type metadata accessor for ParticipantModel(v5);
  result = OUTLINED_FUNCTION_63();
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t ParticipantModel.requestId.getter()
{
  type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_36_0();
  return OUTLINED_FUNCTION_9_2();
}

uint64_t ParticipantModel.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_30_4();
  type metadata accessor for ParticipantModel(v5);
  result = OUTLINED_FUNCTION_63();
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t ParticipantModel.cdaId.getter()
{
  type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_36_0();
  return OUTLINED_FUNCTION_9_2();
}

uint64_t ParticipantModel.cdaId.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_30_4();
  type metadata accessor for ParticipantModel(v5);
  result = OUTLINED_FUNCTION_63();
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t ParticipantModel.timerState.setter()
{
  result = OUTLINED_FUNCTION_85();
  *(v1 + *(result + 76)) = v0;
  return result;
}

uint64_t ParticipantModel.alarmState.setter()
{
  result = OUTLINED_FUNCTION_85();
  *(v1 + *(result + 80)) = v0;
  return result;
}

uint64_t ParticipantModel.mediaState.setter()
{
  result = OUTLINED_FUNCTION_85();
  *(v1 + *(result + 84)) = v0;
  return result;
}

uint64_t ParticipantModel.triggerType.setter()
{
  result = OUTLINED_FUNCTION_85();
  *(v1 + *(result + 88)) = v0;
  return result;
}

uint64_t ParticipantModel.roomName.getter()
{
  type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_36_0();
  return OUTLINED_FUNCTION_9_2();
}

uint64_t ParticipantModel.roomName.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_30_4();
  type metadata accessor for ParticipantModel(v5);
  result = OUTLINED_FUNCTION_63();
  *v2 = v3;
  v2[1] = a2;
  return result;
}

void ParticipantModel.timeSinceLastWinInMilliseconds.setter()
{
  v0 = OUTLINED_FUNCTION_30_4();
  v1 = type metadata accessor for ParticipantModel(v0);
  OUTLINED_FUNCTION_76(*(v1 + 96));
}

void ParticipantModel.timeSinceTriggerInMilliseconds.setter()
{
  v0 = OUTLINED_FUNCTION_30_4();
  v1 = type metadata accessor for ParticipantModel(v0);
  OUTLINED_FUNCTION_76(*(v1 + 100));
}

uint64_t ParticipantModel.id.getter()
{
  type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_36_0();
  return OUTLINED_FUNCTION_9_2();
}

uint64_t ParticipantModel.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_30_4();
  type metadata accessor for ParticipantModel(v5);
  result = OUTLINED_FUNCTION_63();
  *v2 = v3;
  v2[1] = a2;
  return result;
}

void static ParticipantModel.createUnknownParticipant()()
{
  OUTLINED_FUNCTION_31();
  v51 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1D88, &qword_266AC20D0);
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_32_3();
  v4 = sub_266ABD864();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_2();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v48 = &countAndFlagsBits - v12;
  sub_266ABD8B4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_54();
  v14 = sub_266ABD814();
  v15 = OUTLINED_FUNCTION_21(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v16 = sub_266ABDA64();
  v17 = OUTLINED_FUNCTION_21(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2();
  sub_266ABDA04();
  sub_266A85294();
  static NSBundle.feedback.getter();
  sub_266ABD804();
  v18 = sub_266ABDAD4();
  v49 = v19;
  v50 = v18;
  v20._countAndFlagsBits = 0x6854664F656E6F4ELL;
  v20._object = 0xEB00000000657365;
  DeviceClass.init(model:)(v20);
  v52 = 0;
  v21 = DeviceClass.displayName(productType:)(&v52);
  countAndFlagsBits = v21._countAndFlagsBits;
  sub_266ABD884();
  sub_266ABD8A4();
  OUTLINED_FUNCTION_77(v0, 1, v4);
  if (v22)
  {
    v23 = 0x30303030303023;
    v24 = OUTLINED_FUNCTION_47();
    v25(v24);
    sub_266A798F4(v0, &qword_2800B1D88, &qword_266AC20D0);
LABEL_7:
    v28 = 0xE700000000000000;
    goto LABEL_8;
  }

  v26 = v48;
  (*(v6 + 32))(v48, v0, v4);
  (*(v6 + 16))(v10, v26, v4);
  if ((*(v6 + 88))(v10, v4) != *MEMORY[0x277D85508])
  {
    v23 = 0x30303030303023;
    v31 = *(v6 + 8);
    v31(v48, v4);
    v32 = OUTLINED_FUNCTION_47();
    v33(v32);
    v31(v10, v4);
    goto LABEL_7;
  }

  (*(v6 + 96))(v10, v4);
  v23 = sub_266AA6004(*v10, v10[1], v10[2]);
  v28 = v27;
  (*(v6 + 8))(v48, v4);
  v29 = OUTLINED_FUNCTION_47();
  v30(v29);
LABEL_8:
  v34 = type metadata accessor for ParticipantModel(0);
  v35 = v51;
  v51[3] = v34;
  OUTLINED_FUNCTION_28_4();
  v35[4] = sub_266A6F7D0(v36, v37, protocol conformance descriptor for ParticipantModel);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  *boxed_opaque_existential_1 = 0u;
  *(boxed_opaque_existential_1 + 1) = 0u;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[9] = &type metadata for DeviceModel;
  boxed_opaque_existential_1[10] = sub_266A6DA44();
  v39 = swift_allocObject();
  boxed_opaque_existential_1[6] = v39;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0u;
  *(v39 + 48) = v23;
  *(v39 + 56) = v28;
  *(v39 + 64) = 0;
  *(v39 + 72) = 0;
  v40 = v49;
  *(v39 + 80) = v50;
  *(v39 + 88) = v40;
  *(v39 + 96) = countAndFlagsBits;
  *(v39 + 104) = v21._object;
  *(v39 + 112) = &unk_28783EE00;
  *(v39 + 120) = 0u;
  *(v39 + 136) = 0u;
  *(v39 + 152) = 0u;
  *(v39 + 168) = 0u;
  sub_266ABD6F4();
  v41 = v34[15];
  v42 = sub_266ABD7A4();
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v41, 1, 1, v42);
  v43 = boxed_opaque_existential_1 + v34[16];
  *(v43 + 4) = 0;
  *v43 = 0u;
  *(v43 + 1) = 0u;
  v44 = MEMORY[0x277D84F90];
  boxed_opaque_existential_1[5] = MEMORY[0x277D84F90];
  boxed_opaque_existential_1[11] = 0;
  boxed_opaque_existential_1[12] = 0;
  boxed_opaque_existential_1[13] = v44;
  *(boxed_opaque_existential_1 + 56) = 0;
  *(boxed_opaque_existential_1 + 114) = 1;
  *(boxed_opaque_existential_1 + v34[12]) = v44;
  *(boxed_opaque_existential_1 + v34[13]) = v44;
  OUTLINED_FUNCTION_52(v34[14]);
  OUTLINED_FUNCTION_52(v34[17]);
  OUTLINED_FUNCTION_52(v34[18]);
  *(boxed_opaque_existential_1 + v34[19]) = 0;
  *(boxed_opaque_existential_1 + v34[20]) = 0;
  *(boxed_opaque_existential_1 + v34[21]) = 0;
  *(boxed_opaque_existential_1 + v34[22]) = 0;
  OUTLINED_FUNCTION_52(v34[23]);
  v45 = boxed_opaque_existential_1 + v34[24];
  *v45 = 0;
  v45[8] = 1;
  v46 = boxed_opaque_existential_1 + v34[25];
  *v46 = 0;
  v46[8] = 1;
  OUTLINED_FUNCTION_52(v34[26]);
  OUTLINED_FUNCTION_30();
}

unint64_t sub_266AAE0C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_266ABE1D4();

  if (v2 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_266AAE1F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266AAE0C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_266AAE220@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266A718B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266AAE24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AAE114(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266AAE280(uint64_t a1)
{
  v2 = sub_266A70EA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AAE2BC(uint64_t a1)
{
  v2 = sub_266A70EA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ParticipantModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v4);
  v104 = &v93 - v5;
  v6 = sub_266ABD7A4();
  OUTLINED_FUNCTION_1_0();
  v101 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v108 = v10 - v9;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B29B8, &qword_266AC5F50);
  OUTLINED_FUNCTION_1_0();
  v100 = v11;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v12);
  v14 = &v93 - v13;
  v15 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v19 = v18 - v17;
  *(v19 + 32) = 0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  v111 = *(v20 + 60);
  v103 = v6;
  __swift_storeEnumTagSinglePayload(v18 - v17 + v111, 1, 1, v6);
  v21 = v19 + v15[16];
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  v109 = v21;
  v22 = v15[19];
  *(v19 + v22) = 0;
  v23 = v15[20];
  *(v19 + v23) = 0;
  v24 = v15[21];
  *(&v24->Kind + v19) = 0;
  v102 = v15;
  v25 = v15[22];
  v113 = v19;
  v114 = a1;
  *(v19 + v25) = 0;
  v26 = a1[3];
  v27 = __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_266A70EA8();
  v28 = v112;
  sub_266ABE2B4();
  if (!v28)
  {
    v98 = v22;
    v97 = v23;
    v95 = v24;
    v96 = v25;
    v115 = 0;
    v30 = sub_266AB0470();
    sub_266ABE024();
    *(&v93 + 1) = v30;
    v94 = v14;
    OUTLINED_FUNCTION_74();
    v31 = v113;
    if (v32)
    {
      v33 = OUTLINED_FUNCTION_71();
    }

    else
    {
      v112 = 0;
      v33 = sub_266A6D9F0();
      LODWORD(v116) = 0;
      DWORD1(v116) = v112;
      v34 = &type metadata for AdvertisementModel;
    }

    v117 = v34;
    v118 = v33;
    sub_266AB50A0(&v116, v31, &qword_2800B1CC8, &unk_266AC0FD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B29D0, &qword_266AC5F58);
    v119[0] = 1;
    sub_266AB04C4();
    OUTLINED_FUNCTION_15_5();
    sub_266ABE084();
    sub_266A946BC(v116, v35, v36, v37, v38, v39, v40, v41, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
    v43 = v42;

    *(v31 + 40) = v43;
    v119[0] = 2;
    v117 = &type metadata for DeviceModel;
    v118 = sub_266A6DA44();
    *&v116 = swift_allocObject();
    sub_266A8233C();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_9_5();
    sub_266ABE084();
    sub_266A6DBC4(&v116, v31 + 48);
    OUTLINED_FUNCTION_69(4);
    *(v31 + 88) = sub_266ABE004();
    *(v31 + 96) = v44;
    v107 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B29E0, &qword_266AC5F60);
    v119[0] = 5;
    sub_266AB0548();
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_9_5();
    sub_266ABE084();
    v46 = sub_266A6DA98(v116);

    v106 = v46;
    *(v31 + 104) = v46;
    v119[0] = 6;
    sub_266AB05CC();
    sub_266ABE084();
    *(v31 + 112) = v116;
    OUTLINED_FUNCTION_69(7);
    v47 = sub_266ABE034();
    *(v31 + 113) = v47;
    *(v31 + 114) = HIBYTE(v47) & 1;
    LOBYTE(v116) = 8;
    OUTLINED_FUNCTION_0_7();
    v50 = sub_266A6F7D0(v48, v49, MEMORY[0x277CC95A0]);
    v51 = v108;
    sub_266ABE084();
    v110 = v50;
    (*(v101 + 32))(v31 + v102[11], v51, v103);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2A00, &qword_266AC5F68);
    v119[0] = 9;
    sub_266AB0620();
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_9_5();
    sub_266ABE084();
    v52 = v102[12];
    v53 = sub_266A6E3AC(v116);

    v105 = v53;
    *(v31 + v52) = v53;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2A10, &qword_266AC5F70);
    v119[0] = 10;
    sub_266AB06A4();
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_65();
    sub_266ABE084();
    *(v113 + v102[13]) = v116;
    OUTLINED_FUNCTION_2_9(11);
    v55 = sub_266ABE004();
    v112 = v56;
    v57 = (v113 + v102[14]);
    *v57 = v55;
    v57[1] = v56;
    LOBYTE(v116) = 12;
    OUTLINED_FUNCTION_9_5();
    sub_266ABE024();
    sub_266AB50A0(v104, v113 + v111, &qword_2800B1DB8, "h9");
    v115 = 13;
    OUTLINED_FUNCTION_9_5();
    sub_266ABE024();
    OUTLINED_FUNCTION_74();
    if (v32)
    {
      v58 = OUTLINED_FUNCTION_71();
    }

    else
    {
      v108 = v54 >> 24;
      v110 = HIDWORD(v54);
      v58 = sub_266A6D9F0();
      LOWORD(v116) = v54;
      BYTE2(v116) = BYTE2(v54);
      BYTE3(v116) = v108;
      WORD2(v116) = v110;
      BYTE6(v116) = BYTE6(v54);
      BYTE7(v116) = HIBYTE(v54);
      v59 = &type metadata for AdvertisementModel;
    }

    v117 = v59;
    v118 = v58;
    sub_266AB50A0(&v116, v109, &qword_2800B1CC8, &unk_266AC0FD0);
    OUTLINED_FUNCTION_2_9(14);
    sub_266ABE004();
    v110 = v60;
    OUTLINED_FUNCTION_39_1();
    v61 = v110;
    *v63 = v62;
    v63[1] = v61;
    OUTLINED_FUNCTION_2_9(15);
    sub_266ABE004();
    v108 = v64;
    OUTLINED_FUNCTION_39_1();
    v65 = v108;
    *v67 = v66;
    v67[1] = v65;
    v119[0] = 16;
    sub_266AB077C();
    OUTLINED_FUNCTION_16_7();
    OUTLINED_FUNCTION_9_5();
    sub_266ABE084();
    *(v113 + v98) = v116;
    v119[0] = 17;
    OUTLINED_FUNCTION_16_7();
    OUTLINED_FUNCTION_9_5();
    sub_266ABE084();
    *(v113 + v97) = v116;
    v119[0] = 18;
    sub_266AB07D0();
    OUTLINED_FUNCTION_16_7();
    OUTLINED_FUNCTION_9_5();
    sub_266ABE084();
    *(&v95->Kind + v113) = v116;
    v119[0] = 19;
    sub_266AB0824();
    OUTLINED_FUNCTION_16_7();
    OUTLINED_FUNCTION_9_5();
    sub_266ABE084();
    *(v113 + v96) = v116;
    OUTLINED_FUNCTION_2_9(20);
    sub_266ABE004();
    v104 = v68;
    OUTLINED_FUNCTION_39_1();
    v69 = v104;
    *v71 = v70;
    v71[1] = v69;
    OUTLINED_FUNCTION_2_9(22);
    sub_266ABE014();
    OUTLINED_FUNCTION_39_1();
    *v73 = v72;
    *(v73 + 8) = v74 & 1;
    OUTLINED_FUNCTION_2_9(21);
    sub_266ABE014();
    OUTLINED_FUNCTION_39_1();
    *v76 = v75;
    *(v76 + 8) = v77 & 1;
    OUTLINED_FUNCTION_2_9(23);
    sub_266ABE004();
    OUTLINED_FUNCTION_39_1();
    *v80 = v78;
    v80[1] = v79;
    if ((*(v81 + 112) & 0xFE) == 2)
    {
      sub_266A6F9C8(v109, &v116, &qword_2800B1CC8, &unk_266AC0FD0);
      if (!v117)
      {
        sub_266A798F4(&v116, &qword_2800B1CC8, &unk_266AC0FD0);
        if (qword_280BB6C30 != -1)
        {
          swift_once();
        }

        v87 = sub_266ABD8D4();
        __swift_project_value_buffer(v87, qword_280BB7028);
        v88 = sub_266ABD8C4();
        v89 = sub_266ABDD64();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&dword_266A65000, v88, v89, "#feedback While decoding a participant we found a winner without a winning advertisement. This likely points to data issues.", v90, 2u);
          MEMORY[0x26D5E9280](v90, -1, -1);
        }

        sub_266AB0878();
        swift_allocError();
        swift_willThrow();
        v91 = OUTLINED_FUNCTION_1_9();
        v92(v91);
        LODWORD(v26) = 1;
        v27 = 1;
        goto LABEL_3;
      }

      v82 = OUTLINED_FUNCTION_1_9();
      v83(v82);
      sub_266A798F4(&v116, &qword_2800B1CC8, &unk_266AC0FD0);
    }

    else
    {
      v84 = OUTLINED_FUNCTION_1_9();
      v85(v84);
    }

    v86 = v113;
    sub_266A6E9E4(v113, v99);
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    return sub_266A6A63C(v86);
  }

  OUTLINED_FUNCTION_7_10();
  v105 = MEMORY[0x277D84F90];
  v106 = MEMORY[0x277D84F90];
LABEL_3:
  v29 = v113;
  __swift_destroy_boxed_opaque_existential_1Tm(v114);
  sub_266A798F4(v29, &qword_2800B1CC8, &unk_266AC0FD0);

  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v29 + 48));
  }

  if (v27)
  {
    (*(v101 + 8))(v29 + v102[11], v103);
  }

  sub_266A798F4(v29 + v111, &qword_2800B1DB8, "h9");
  sub_266A798F4(v109, &qword_2800B1CC8, &unk_266AC0FD0);
}

void static ParticipantModel.== infix(_:_:)()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v6 = v5;
  v7 = sub_266ABD7A4();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_54();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  OUTLINED_FUNCTION_21(v11);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_78();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2AA8, &unk_266AC5F80);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_32_3();
  sub_266A6F9C8(v6, v94, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v94[3])
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    if (OUTLINED_FUNCTION_41_1(v15, v16, v15, &type metadata for AdvertisementModel))
    {
      v17 = v93[0];
      goto LABEL_6;
    }
  }

  else
  {
    sub_266A798F4(v94, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  v17 = 0x9000000000000;
LABEL_6:
  sub_266A6F9C8(v4, v94, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v94[3])
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    if (OUTLINED_FUNCTION_41_1(v18, v19, v18, &type metadata for AdvertisementModel))
    {
      v22 = v93[0];
      goto LABEL_11;
    }
  }

  else
  {
    sub_266A798F4(v94, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  v22 = 0x9000000000000;
LABEL_11:
  if ((v17 & 0xFF000000000000) == 0x9000000000000)
  {
    if ((v22 & 0xFF000000000000) != 0x9000000000000)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v94[0] = v17;
    if ((v22 & 0xFF000000000000) == 0x9000000000000 || !OUTLINED_FUNCTION_24_5(v22, v20, v21))
    {
      goto LABEL_62;
    }
  }

  v86 = v9;
  v23 = sub_266A70978(*(v6 + 40));
  v87 = v4;
  v24 = sub_266A70978(*(v4 + 40));
  if (v23)
  {
    if (!v24)
    {
      goto LABEL_61;
    }

    v25 = sub_266A836C8(v23, v24);

    if ((v25 & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v24)
  {
    goto LABEL_61;
  }

  sub_266A6FFD8(v6 + 48, &v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
  if (swift_dynamicCast())
  {
    memcpy(v94, v99, 0xA8uLL);
    nullsub_1();
    OUTLINED_FUNCTION_57(v101);
  }

  else
  {
    sub_266A83CC4(v101);
  }

  sub_266A6FFD8(v4 + 48, &v97);
  if (swift_dynamicCast())
  {
    memcpy(v94, v96, 0xA8uLL);
    nullsub_1();
    OUTLINED_FUNCTION_57(v98);
  }

  else
  {
    sub_266A83CC4(v98);
  }

  memcpy(v94, v101, 0xA8uLL);
  memcpy(&v94[21], v98, 0xA8uLL);
  memcpy(v95, v101, sizeof(v95));
  if (sub_266A82390(v95) == 1)
  {
    memcpy(v93, &v94[21], 0xA8uLL);
    if (sub_266A82390(v93) == 1)
    {
      OUTLINED_FUNCTION_57(v92);
      sub_266A798F4(v92, &qword_2800B1E98, &qword_266AC13B0);
      goto LABEL_36;
    }

LABEL_33:
    memcpy(v93, v94, sizeof(v93));
    v26 = &unk_2800B1E90;
    v27 = &unk_266AC13A8;
    v28 = v93;
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_57(v92);
  OUTLINED_FUNCTION_57(v91);
  memcpy(v93, &v94[21], 0xA8uLL);
  if (sub_266A82390(v93) == 1)
  {
    OUTLINED_FUNCTION_57(v90);
    sub_266A6F9C8(v92, v89, &qword_2800B1E98, &qword_266AC13B0);
    sub_266A72578(v90);
    goto LABEL_33;
  }

  memcpy(v90, &v94[21], sizeof(v90));
  sub_266A6F9C8(v92, v89, &qword_2800B1E98, &qword_266AC13B0);
  v29 = static DeviceModel.== infix(_:_:)(v91, v90);
  memcpy(v88, v90, sizeof(v88));
  sub_266A72578(v88);
  memcpy(v89, v91, sizeof(v89));
  sub_266A72578(v89);
  OUTLINED_FUNCTION_57(v90);
  sub_266A798F4(v90, &qword_2800B1E98, &qword_266AC13B0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_36:
  v30 = *(v6 + 96);
  v31 = *(v4 + 96);
  if (!v30)
  {
    if (v31)
    {
      goto LABEL_62;
    }

    goto LABEL_45;
  }

  if (v31)
  {
    v32 = *(v6 + 88) == *(v4 + 88) && v30 == v31;
    if (v32 || (sub_266ABE1C4() & 1) != 0)
    {
LABEL_45:
      sub_266A70C04();
      v34 = v33;
      sub_266A70C04();
      if (v34)
      {
        if (!v35)
        {
          goto LABEL_61;
        }

        v36 = sub_266A8377C(v34, v35);

        if ((v36 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      else if (v35)
      {
        goto LABEL_61;
      }

      if (*(v6 + 112) != *(v4 + 112))
      {
        goto LABEL_62;
      }

      if (*(v6 + 114))
      {
        if ((*(v4 + 114) & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      else if ((*(v4 + 114) & 1) != 0 || *(v6 + 113) != *(v4 + 113))
      {
        goto LABEL_62;
      }

      v37 = type metadata accessor for ParticipantModel(0);
      if ((sub_266ABD764() & 1) == 0)
      {
        goto LABEL_62;
      }

      v38 = sub_266A70D6C(*(v6 + v37[12]));
      v85 = v37;
      v39 = sub_266A70D6C(*(v87 + v37[12]));
      if (v38)
      {
        if (v39)
        {
          v42 = sub_266A8388C(v38, v39, v40, v41);

          if ((v42 & 1) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_64;
        }
      }

      else if (!v39)
      {
LABEL_64:
        if ((sub_266A8394C(*(v6 + v37[13]), *(v87 + v37[13])) & 1) == 0)
        {
          goto LABEL_62;
        }

        v43 = v37[14];
        v44 = *(v87 + v43 + 8);
        if (*(v6 + v43 + 8))
        {
          if (!v44)
          {
            goto LABEL_62;
          }

          OUTLINED_FUNCTION_31_3(v6 + v43);
          v47 = v32 && v45 == v46;
          if (!v47 && (sub_266ABE1C4() & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        else if (v44)
        {
          goto LABEL_62;
        }

        v48 = v37[15];
        v49 = *(v13 + 48);
        sub_266A6F9C8(v6 + v48, v1, &qword_2800B1DB8, "h9");
        sub_266A6F9C8(v87 + v48, v1 + v49, &qword_2800B1DB8, "h9");
        OUTLINED_FUNCTION_77(v1, 1, v7);
        if (v32)
        {
          OUTLINED_FUNCTION_77(v1 + v49, 1, v7);
          if (v32)
          {
            sub_266A798F4(v1, &qword_2800B1DB8, "h9");
            goto LABEL_84;
          }
        }

        else
        {
          sub_266A6F9C8(v1, v2, &qword_2800B1DB8, "h9");
          OUTLINED_FUNCTION_77(v1 + v49, 1, v7);
          if (!v50)
          {
            (*(v86 + 32))(v0, v1 + v49, v7);
            OUTLINED_FUNCTION_0_7();
            sub_266A6F7D0(v51, v52, MEMORY[0x277CC9598]);
            v53 = sub_266ABD9F4();
            v54 = *(v86 + 8);
            v54(v0, v7);
            v54(v2, v7);
            sub_266A798F4(v1, &qword_2800B1DB8, "h9");
            if ((v53 & 1) == 0)
            {
              goto LABEL_62;
            }

LABEL_84:
            OUTLINED_FUNCTION_22_4();
            if (v57)
            {
              if (!v55)
              {
                goto LABEL_62;
              }

              OUTLINED_FUNCTION_31_3(v56);
              v60 = v32 && v58 == v59;
              if (!v60 && (sub_266ABE1C4() & 1) == 0)
              {
                goto LABEL_62;
              }
            }

            else if (v55)
            {
              goto LABEL_62;
            }

            OUTLINED_FUNCTION_22_4();
            if (v63)
            {
              if (!v61)
              {
                goto LABEL_62;
              }

              OUTLINED_FUNCTION_31_3(v62);
              v66 = v32 && v64 == v65;
              if (!v66 && (sub_266ABE1C4() & 1) == 0)
              {
                goto LABEL_62;
              }
            }

            else if (v61)
            {
              goto LABEL_62;
            }

            sub_266A6F9C8(v6 + v85[16], v94, &qword_2800B1CC8, &unk_266AC0FD0);
            if (v94[3])
            {
              v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
              if (OUTLINED_FUNCTION_41_1(v67, v68, v67, &type metadata for AdvertisementModel))
              {
                v69 = v93[0];
                goto LABEL_107;
              }
            }

            else
            {
              sub_266A798F4(v94, &qword_2800B1CC8, &unk_266AC0FD0);
            }

            v69 = 0x9000000000000;
LABEL_107:
            sub_266A6F9C8(v87 + v85[16], v94, &qword_2800B1CC8, &unk_266AC0FD0);
            if (v94[3])
            {
              v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
              if (OUTLINED_FUNCTION_41_1(v70, v71, v70, &type metadata for AdvertisementModel))
              {
                v74 = v93[0];
                goto LABEL_112;
              }
            }

            else
            {
              sub_266A798F4(v94, &qword_2800B1CC8, &unk_266AC0FD0);
            }

            v74 = 0x9000000000000;
LABEL_112:
            if ((v69 & 0xFF000000000000) == 0x9000000000000)
            {
              if ((v74 & 0xFF000000000000) != 0x9000000000000)
              {
                goto LABEL_62;
              }
            }

            else
            {
              v94[0] = v69;
              if ((v74 & 0xFF000000000000) == 0x9000000000000 || !OUTLINED_FUNCTION_24_5(v74, v72, v73))
              {
                goto LABEL_62;
              }
            }

            OUTLINED_FUNCTION_17_5();
            if (!v32)
            {
              goto LABEL_62;
            }

            OUTLINED_FUNCTION_17_5();
            if (!v32)
            {
              goto LABEL_62;
            }

            OUTLINED_FUNCTION_17_5();
            if (!v32)
            {
              goto LABEL_62;
            }

            OUTLINED_FUNCTION_17_5();
            if (!v32)
            {
              goto LABEL_62;
            }

            OUTLINED_FUNCTION_22_4();
            if (v77)
            {
              if (!v75)
              {
                goto LABEL_62;
              }

              OUTLINED_FUNCTION_31_3(v76);
              v80 = v32 && v78 == v79;
              if (!v80 && (sub_266ABE1C4() & 1) == 0)
              {
                goto LABEL_62;
              }
            }

            else if (v75)
            {
              goto LABEL_62;
            }

            OUTLINED_FUNCTION_55();
            if (v84)
            {
              if ((v83 & 1) == 0)
              {
                goto LABEL_62;
              }
            }

            else if ((v83 & 1) != 0 || *v81 != *v82)
            {
              goto LABEL_62;
            }

            OUTLINED_FUNCTION_55();
            goto LABEL_62;
          }

          (*(v86 + 8))(v2, v7);
        }

        v26 = &qword_2800B2AA8;
        v27 = &unk_266AC5F80;
        v28 = v1;
LABEL_34:
        sub_266A798F4(v28, v26, v27);
        goto LABEL_62;
      }

LABEL_61:
    }
  }

LABEL_62:
  OUTLINED_FUNCTION_30();
}

void ParticipantModel.hash(into:)()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30_4();
  v2 = sub_266ABD7A4();
  OUTLINED_FUNCTION_1_0();
  v18 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v17 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  OUTLINED_FUNCTION_21(v7);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_78();
  if (sub_266A70978(*(v0 + 40)))
  {
    OUTLINED_FUNCTION_49();
    sub_266A9CDF0();
  }

  sub_266A6FFD8(v0 + 48, &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
  if (swift_dynamicCast())
  {
    memcpy(v20, v21, sizeof(v20));
    if (v20[14])
    {
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_61();
    }

    else
    {
      OUTLINED_FUNCTION_62();
    }

    if (v20[1])
    {
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_61();
    }

    else
    {
      OUTLINED_FUNCTION_62();
    }

    sub_266A72578(v20);
  }

  if (*(v0 + 96))
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_61();
  }

  else
  {
    OUTLINED_FUNCTION_62();
  }

  sub_266A70C04();
  if (v9)
  {
    OUTLINED_FUNCTION_49();
    sub_266A9CD14();
  }

  MEMORY[0x26D5E8B00](*(v0 + 112));
  if ((*(v0 + 114) & 1) == 0)
  {
    OUTLINED_FUNCTION_58();
  }

  sub_266ABE264();
  v10 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_0_7();
  sub_266A6F7D0(v11, v12, MEMORY[0x277CC9588]);
  sub_266ABD9D4();
  if (sub_266A70D6C(*(v0 + v10[12])))
  {
    OUTLINED_FUNCTION_49();
    sub_266A9CC84();
  }

  sub_266A9CC44();
  if (*(v0 + v10[14] + 8))
  {
    OUTLINED_FUNCTION_58();
    sub_266ABDB04();
  }

  else
  {
    OUTLINED_FUNCTION_62();
  }

  if (*(v0 + v10[17] + 8))
  {
    OUTLINED_FUNCTION_58();
    sub_266ABDB04();
  }

  else
  {
    OUTLINED_FUNCTION_62();
  }

  sub_266A6F9C8(v0 + v10[15], v1, &qword_2800B1DB8, "h9");
  OUTLINED_FUNCTION_77(v1, 1, v2);
  if (v13)
  {
    OUTLINED_FUNCTION_62();
  }

  else
  {
    (*(v18 + 32))(v17, v1, v2);
    OUTLINED_FUNCTION_58();
    sub_266ABD9D4();
    (*(v18 + 8))(v17, v2);
  }

  sub_266A6F9C8(v0 + v10[16], v21, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v21[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    if (swift_dynamicCast())
    {
      v14 = BYTE1(v20[0]);
      v19 = BYTE6(v20[0]);
      sub_266ABE264();
      MEMORY[0x26D5E8B00](v14);
      sub_266ABE264();
      sub_266ABE264();
      sub_266ABE274();
      MEMORY[0x26D5E8B00](v19);
      sub_266ABE264();
    }
  }

  else
  {
    sub_266A798F4(v21, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  MEMORY[0x26D5E8B00](*(v0 + v10[20]));
  MEMORY[0x26D5E8B00](*(v0 + v10[19]));
  MEMORY[0x26D5E8B00](*(v0 + v10[21]));
  MEMORY[0x26D5E8B00](*(v0 + v10[22]));
  if (*(v0 + v10[23] + 8))
  {
    sub_266ABDB04();
  }

  v15 = v0 + v10[24];
  if ((*(v15 + 8) & 1) == 0)
  {
    MEMORY[0x26D5E8B00](*v15);
  }

  v16 = v0 + v10[25];
  if ((*(v16 + 8) & 1) == 0)
  {
    MEMORY[0x26D5E8B00](*v16);
  }

  OUTLINED_FUNCTION_30();
}

uint64_t ParticipantModel.hashValue.getter()
{
  sub_266ABE244();
  ParticipantModel.hash(into:)();
  return sub_266ABE2A4();
}

uint64_t sub_266AB00CC(uint64_t a1)
{
  sub_266ABE244();
  ParticipantModel.hash(into:)();
  return sub_266ABE2A4();
}

void ParticipantModel.collatesToRequest(request:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v6);
  v8 = v34 - v7;
  v9 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_54();
  v13 = v4[3];
  v14 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v13);
  v15 = (*(v14 + 32))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB8, &unk_266AC0FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266AC0EB0;
  *(inited + 56) = v9;
  OUTLINED_FUNCTION_28_4();
  *(inited + 64) = sub_266A6F7D0(v17, v18, protocol conformance descriptor for ParticipantModel);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_266A6E9E4(v2, boxed_opaque_existential_1);
  *&v36[0] = v15;
  sub_266A7F950(inited);
  v20 = *(*&v36[0] + 16);
  if (v20)
  {
    v34[1] = *&v36[0];
    v21 = *&v36[0] + 32;
    v22 = MEMORY[0x277D84F90];
    do
    {
      sub_266A6FFD8(v21, v36);
      sub_266A6DBC4(v36, &v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
      v23 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v8, v23 ^ 1u, 1, v9);
      OUTLINED_FUNCTION_77(v8, 1, v9);
      if (v24)
      {
        sub_266A798F4(v8, &qword_2800B1CB0, &qword_266AC0FB8);
      }

      else
      {
        sub_266A7977C(v8, v1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_21_0();
          sub_266A98500();
          v22 = v29;
        }

        v27 = *(v22 + 16);
        v26 = *(v22 + 24);
        if (v27 >= v26 >> 1)
        {
          OUTLINED_FUNCTION_14(v26);
          sub_266A98500();
          v22 = v30;
        }

        *(v22 + 16) = v27 + 1;
        OUTLINED_FUNCTION_21_4();
        sub_266A7977C(v1, v22 + v28 + *(v11 + 72) * v27);
      }

      v21 += 40;
      --v20;
    }

    while (v20);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  *&v36[0] = v22;
  sub_266AAA5AC();
  sub_266AAA8D0();
  v32 = v31;
  sub_266A94558();
  v35 = v33;
  sub_266A7F950(v32);
  sub_266AAAECC();

  sub_266AAB528();

  OUTLINED_FUNCTION_30();
}

unint64_t sub_266AB0470()
{
  result = qword_2800B29C8;
  if (!qword_2800B29C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AdvertisementModel, &type metadata for AdvertisementModel, v0, v1);
    atomic_store(result, &qword_2800B29C8);
  }

  return result;
}

unint64_t sub_266AB04C4()
{
  result = qword_2800B29D8;
  if (!qword_2800B29D8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B29D0, &qword_266AC5F58);
    v4[0] = sub_266AA8F98();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_2800B29D8);
  }

  return result;
}

unint64_t sub_266AB0548()
{
  result = qword_2800B29E8;
  if (!qword_2800B29E8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B29E0, &qword_266AC5F60);
    v4[0] = sub_266A8233C();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_2800B29E8);
  }

  return result;
}

unint64_t sub_266AB05CC()
{
  result = qword_2800B29F0;
  if (!qword_2800B29F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Participation, &type metadata for Participation, v0, v1);
    atomic_store(result, &qword_2800B29F0);
  }

  return result;
}

unint64_t sub_266AB0620()
{
  result = qword_2800B2A08;
  if (!qword_2800B2A08)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2A00, &qword_266AC5F68);
    v4[0] = sub_266AB0470();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_2800B2A08);
  }

  return result;
}

unint64_t sub_266AB06A4()
{
  result = qword_2800B2A18;
  if (!qword_2800B2A18)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2A10, &qword_266AC5F70);
    v4[0] = sub_266AB0728();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_2800B2A18);
  }

  return result;
}