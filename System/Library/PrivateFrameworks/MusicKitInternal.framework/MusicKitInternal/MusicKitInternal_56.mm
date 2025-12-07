uint64_t sub_1D539975C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6169726F74696465 && a2 == 0xED0000647261436CLL;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x696C436569766F6DLL && a2 == 0xEA00000000007370;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 1701667182 && a2 == 0xE400000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x73726566666FLL && a2 == 0xE600000000000000;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000013 && 0x80000001D5680670 == a2;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x614E6F6964757473 && a2 == 0xEA0000000000656DLL;
                                  if (v21 || (sub_1D5616168() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000010 && 0x80000001D56811C0 == a2;
                                    if (v22 || (sub_1D5616168() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 7107189 && a2 == 0xE300000000000000)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1D5616168();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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

unint64_t sub_1D5399D34(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x6867697279706F63;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 7:
    case 8:
      result = 0x6169726F74696465;
      break;
    case 9:
      result = 0x6D614E65726E6567;
      break;
    case 10:
      result = 0x76697372656D6D69;
      break;
    case 11:
      result = 0x696C436569766F6DLL;
      break;
    case 12:
      result = 1701667182;
      break;
    case 13:
      result = 0x73726566666FLL;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x44657361656C6572;
      break;
    case 16:
      result = 0x614E6F6964757473;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5399F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D539975C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5399F80(uint64_t a1)
{
  v2 = sub_1D539F1DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5399FBC(uint64_t a1)
{
  v2 = sub_1D539F1DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudMusicMovie.Attributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v22;
  a20 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5438, &qword_1D565B680);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_102_1();
  sub_1D539F1DC();
  OUTLINED_FUNCTION_43_5();
  sub_1D56163D8();
  LOBYTE(a10) = 0;
  OUTLINED_FUNCTION_29_0();
  sub_1D5616028();
  if (!v21)
  {
    v25 = type metadata accessor for CloudMusicMovie.Attributes(0);
    v26 = v25[5];
    LOBYTE(a10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    v27 = sub_1D4F7CD24();
    OUTLINED_FUNCTION_21_0(v20 + v26, &a10, v28, v29, v27);
    OUTLINED_FUNCTION_42_2(v25[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v30 = sub_1D4F7CE0C();
    OUTLINED_FUNCTION_20_3(v30);
    OUTLINED_FUNCTION_35_5(v25[7]);
    LOBYTE(a10) = 3;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    v31 = v25[8];
    LOBYTE(a10) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    v32 = sub_1D4F7CF5C();
    OUTLINED_FUNCTION_21_0(v20 + v31, &a10, v33, v34, v32);
    OUTLINED_FUNCTION_42_2(v25[9]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v35 = sub_1D4FC7B20();
    OUTLINED_FUNCTION_20_3(v35);
    OUTLINED_FUNCTION_42_2(v25[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED080, &qword_1D5623EC8);
    v36 = sub_1D4FC7BAC();
    OUTLINED_FUNCTION_20_3(v36);
    LOBYTE(a10) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7D044();
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v25[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v37 = sub_1D4FC7D20();
    OUTLINED_FUNCTION_20_3(v37);
    OUTLINED_FUNCTION_42_2(v25[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    v38 = sub_1D4F88BF4(&qword_1EC7ECA00);
    OUTLINED_FUNCTION_20_3(v38);
    LOBYTE(a10) = 10;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_1_157();
    sub_1D539F0E8(v39);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v25[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3940, qword_1D564F0C0);
    v40 = sub_1D539F230();
    OUTLINED_FUNCTION_20_3(v40);
    OUTLINED_FUNCTION_35_5(v25[16]);
    LOBYTE(a10) = 12;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    OUTLINED_FUNCTION_42_2(v25[17]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA08, &unk_1D56222F0);
    v41 = sub_1D4F7D290();
    OUTLINED_FUNCTION_20_3(v41);
    LOBYTE(a10) = 14;
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_35_5(v25[19]);
    LOBYTE(a10) = 15;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    OUTLINED_FUNCTION_35_5(v25[20]);
    LOBYTE(a10) = 16;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    v42 = v25[21];
    LOBYTE(a10) = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    v43 = sub_1D4FF2700();
    OUTLINED_FUNCTION_21_0(v20 + v42, &a10, v44, v45, v43);
    LOBYTE(a10) = 18;
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
  }

  v46 = OUTLINED_FUNCTION_86_0();
  v47(v46);
  OUTLINED_FUNCTION_26();
}

void CloudMusicMovie.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  OUTLINED_FUNCTION_4();
  v69 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v68 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v77 = v9;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v81 = v11;
  v82 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_124_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v78 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_2();
  v72 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v75 = v19;
  v76 = v18;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v74 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v73 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_2();
  v71 = v26;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4();
  v67 = v27;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_171_6(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_16_0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v34 = v33;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_38_2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v36);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_19_0();
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v38 = type metadata accessor for CloudMusicMovie.Attributes(0);
  sub_1D4F39AB0(v0 + v38[5], v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  v39 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v39, v40, v32);
  if (v41)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_170_6();
    v42(v3, v2, v32);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v34 + 8))(v3, v32);
  }

  if (*(v0 + v38[6]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v38[7] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v38[8], v1, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_57(v1, 1, v70);
  if (v41)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v67 + 32))(v66, v1, v70);
    OUTLINED_FUNCTION_27();
    sub_1D4F88554();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v67 + 8))(v66, v70);
  }

  if (*(v0 + v38[9]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v38[10]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F38244();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v38[11], v71, &qword_1EC7EC960, &unk_1D56334C0);
  v43 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v43, v44, v76);
  if (v41)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v45 = OUTLINED_FUNCTION_92_15();
    v46(v45);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v75 + 8))(v74, v76);
  }

  if (*(v0 + v38[12]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v38[13]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F06928();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v38[14], v72, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v47 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v47, v48, v82);
  if (v41)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v49 = OUTLINED_FUNCTION_92_15();
    v50(v49);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_157();
    sub_1D539F0E8(v51);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v81 + 8))(v80, v82);
  }

  if (*(v0 + v38[15]))
  {
    OUTLINED_FUNCTION_27();
    v52 = OUTLINED_FUNCTION_128();
    sub_1D4F0A3C8(v52);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v38[16] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v38[17]))
  {
    OUTLINED_FUNCTION_27();
    v53 = OUTLINED_FUNCTION_128();
    sub_1D4F085F8(v53);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v38[18], v73, &qword_1EC7EC960, &unk_1D56334C0);
  v54 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v54, v55, v76);
  if (v41)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v56 = OUTLINED_FUNCTION_92_15();
    v57(v56);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v75 + 8))(v74, v76);
  }

  if (*(v0 + v38[19] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v38[20] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v38[21], v77, &qword_1EC7ED9B0, &unk_1D5631050);
  v58 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v58, v59, v79);
  if (v41)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v60(v68, v77, v79);
    OUTLINED_FUNCTION_27();
    sub_1D4FFFE38();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v69 + 8))(v68, v79);
  }

  sub_1D4F39AB0(v0 + v38[22], v78, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v61 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v61, v62, v82);
  if (v41)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v63 = OUTLINED_FUNCTION_116();
    v64(v63);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_157();
    sub_1D539F0E8(v65);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v81 + 8))(v80, v82);
  }

  OUTLINED_FUNCTION_46();
}

void CloudMusicMovie.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  v121 = v21;
  v26 = v25;
  v115 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  v113 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v32 = OUTLINED_FUNCTION_22(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  v114 = v33;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_168_7(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v37 = OUTLINED_FUNCTION_22(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_25_13();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v108 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v41);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_47_5();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v43);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_114();
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5440, &qword_1D565B688);
  OUTLINED_FUNCTION_4();
  v46 = v45;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_38_2();
  v120 = type metadata accessor for CloudMusicMovie.Attributes(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  v119 = v49;
  v50 = v26[3];
  v108 = v26;
  v51 = __swift_project_boxed_opaque_existential_1(v26, v50);
  sub_1D539F1DC();
  v118 = v24;
  v52 = v121;
  sub_1D5616398();
  if (v52)
  {
    v121 = v52;
    v56 = 0;
    v57 = 0;
    OUTLINED_FUNCTION_113_5();
    v58 = 0;
    v59 = 0;
    OUTLINED_FUNCTION_8_113();
  }

  else
  {
    v53 = v20;
    v54 = v40;
    v112 = v22;
    LODWORD(v40) = v46;
    v58 = v117;
    v55 = sub_1D5615F38();
    v63 = v119;
    *v119 = v55;
    v63[1] = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(a10) = 1;
    sub_1D4F886BC();
    OUTLINED_FUNCTION_188();
    sub_1D5615F78();
    v65 = v120;
    sub_1D4F39A1C(v23, v63 + v120[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v122 = 2;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_13_85();
    sub_1D5615F78();
    *(v63 + v65[6]) = a10;
    v66 = sub_1D5615F38();
    v67 = (v63 + v65[7]);
    *v67 = v66;
    v67[1] = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    LOBYTE(a10) = 4;
    sub_1D4F888C0();
    OUTLINED_FUNCTION_188();
    sub_1D5615F78();
    sub_1D4F39A1C(v53, v63 + v65[8], &qword_1EC7EC978, &unk_1D56222A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v122 = 5;
    sub_1D4FCE3FC();
    OUTLINED_FUNCTION_13_85();
    sub_1D5615F78();
    *(v63 + v65[9]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED080, &qword_1D5623EC8);
    v122 = 6;
    sub_1D4FCE488();
    OUTLINED_FUNCTION_13_85();
    sub_1D5615F78();
    v56 = 0;
    v57 = v40;
    *(v63 + v65[10]) = a10;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    LOBYTE(a10) = 7;
    sub_1D4F88A24();
    OUTLINED_FUNCTION_188();
    v23 = v54;
    v59 = v69;
    v111 = v70;
    sub_1D5615F78();
    sub_1D4F39A1C(v23, v63 + v65[11], &qword_1EC7EC960, &unk_1D56334C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v122 = 8;
    sub_1D4FCE5FC();
    OUTLINED_FUNCTION_13_85();
    sub_1D5615F78();
    v121 = 0;
    *(v63 + v65[12]) = a10;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    v122 = 9;
    sub_1D4F88BF4(&qword_1EDD52778);
    OUTLINED_FUNCTION_13_85();
    v71 = v121;
    sub_1D5615F78();
    v121 = v71;
    if (v71)
    {
      v72 = OUTLINED_FUNCTION_82_21();
      v73(v72);
      LODWORD(v113) = 0;
      LODWORD(v114) = 0;
      LODWORD(v115) = 0;
      LODWORD(v117) = 0;
      OUTLINED_FUNCTION_3_163();
      LODWORD(v23) = 1;
      v109 = 1;
      v110 = 1;
    }

    else
    {
      *(v119 + v120[13]) = a10;
      sub_1D560C0A8();
      LOBYTE(a10) = 10;
      OUTLINED_FUNCTION_1_157();
      sub_1D539F0E8(v74);
      v51 = v118;
      v75 = v121;
      sub_1D5615F78();
      v121 = v75;
      if (v75)
      {
        v76 = OUTLINED_FUNCTION_82_21();
        v77(v76);
        LODWORD(v114) = 0;
        LODWORD(v115) = 0;
        LODWORD(v117) = 0;
        OUTLINED_FUNCTION_3_163();
        LODWORD(v23) = 1;
        v109 = 1;
        v110 = 1;
        LODWORD(v113) = 1;
      }

      else
      {
        sub_1D4F39A1C(v116, v119 + v120[14], &unk_1EC7E9CA8, &unk_1D561D1D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3940, qword_1D564F0C0);
        v122 = 11;
        sub_1D53A0508();
        v78 = OUTLINED_FUNCTION_29_1();
        OUTLINED_FUNCTION_147_9(v78, v79);
        v121 = 0;
        *(v119 + v120[15]) = a10;
        v80 = OUTLINED_FUNCTION_116_15(12);
        v121 = 0;
        v81 = (v119 + v120[16]);
        *v81 = v80;
        v81[1] = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA08, &unk_1D56222F0);
        v122 = 13;
        sub_1D4F88C5C();
        v83 = OUTLINED_FUNCTION_29_1();
        OUTLINED_FUNCTION_147_9(v83, v84);
        v121 = 0;
        *(v119 + v120[17]) = a10;
        v51 = v118;
        v85 = v121;
        sub_1D5615F78();
        v121 = v85;
        if (!v85)
        {
          sub_1D4F39A1C(v112, v119 + v120[18], &qword_1EC7EC960, &unk_1D56334C0);
          v90 = OUTLINED_FUNCTION_116_15(15);
          LODWORD(v116) = 1;
          v121 = 0;
          v91 = (v119 + v120[19]);
          *v91 = v90;
          v91[1] = v92;
          v93 = OUTLINED_FUNCTION_116_15(16);
          v121 = 0;
          v96 = (v119 + v120[20]);
          *v96 = v93;
          v96[1] = v97;
          v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
          sub_1D5000184();
          OUTLINED_FUNCTION_188();
          OUTLINED_FUNCTION_147_9(v98, v99);
          v121 = 0;
          sub_1D4F39A1C(v113, v119 + v120[21], &qword_1EC7ED9B0, &unk_1D5631050);
          v51 = v118;
          v100 = v121;
          sub_1D5615F78();
          v121 = v100;
          if (!v100)
          {
            v103 = OUTLINED_FUNCTION_82_21();
            v104(v103);
            v105 = v119;
            sub_1D4F39A1C(v114, v119 + v120[22], &unk_1EC7E9CA8, &unk_1D561D1D0);
            OUTLINED_FUNCTION_28_58();
            sub_1D539F180(v105, v115, v106);
            __swift_destroy_boxed_opaque_existential_1(v108);
            OUTLINED_FUNCTION_31_46();
            sub_1D539EFC0(v105, v107);
            goto LABEL_42;
          }

          v101 = OUTLINED_FUNCTION_82_21();
          v102(v101);
          LODWORD(v111) = 1;
          LODWORD(v112) = 1;
          __swift_destroy_boxed_opaque_existential_1(v108);
          OUTLINED_FUNCTION_6_119();
          OUTLINED_FUNCTION_55_29(v94);
          LODWORD(v117) = v95;
          LODWORD(v118) = v95;
          v62 = 1;
          v60 = v119;
          v61 = v120;
LABEL_6:

          if (v57)
          {
            goto LABEL_7;
          }

          goto LABEL_25;
        }

        v86 = OUTLINED_FUNCTION_82_21();
        v87(v86);
        v56 = 1;
        OUTLINED_FUNCTION_6_119();
        OUTLINED_FUNCTION_55_29(v88);
        LODWORD(v117) = v89;
        LODWORD(v118) = v89;
      }
    }
  }

  v60 = v119;
  v61 = v120;
  __swift_destroy_boxed_opaque_existential_1(v108);
  if (v56)
  {
    v62 = 0;
    LODWORD(v116) = 0;
    LODWORD(v111) = 0;
    LODWORD(v112) = 0;
    goto LABEL_6;
  }

  LODWORD(v112) = 0;
  LODWORD(v111) = 0;
  LODWORD(v116) = 0;
  v62 = 0;
  if (v57)
  {
LABEL_7:
    sub_1D4E50004(v60 + v61[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    if ((v40 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  if (!v40)
  {
LABEL_8:
    if (v51)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:

  if (v51)
  {
LABEL_9:
    OUTLINED_FUNCTION_46_4();
    if ((v58 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v58)
  {
LABEL_10:
    if (v59)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1D4E50004(v60 + v61[8], &qword_1EC7EC978, &unk_1D56222A0);
  if (v59)
  {
LABEL_11:

    if ((v23 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v23)
  {
LABEL_12:
    if (v109)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:

  if (v109)
  {
LABEL_13:
    sub_1D4E50004(v60 + v61[11], &qword_1EC7EC960, &unk_1D56334C0);
    if ((v110 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v110)
  {
LABEL_14:
    if (v113)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:

  if (v113)
  {
LABEL_15:

    if ((v114 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (!v114)
  {
LABEL_16:
    if (v115)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  sub_1D4E50004(v60 + v61[14], &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v115)
  {
LABEL_17:

    if ((v117 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (!v117)
  {
LABEL_18:
    if (v118)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  OUTLINED_FUNCTION_46_4();
  if (v118)
  {
LABEL_19:

    if ((v62 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (!v62)
  {
LABEL_20:
    if (v116)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_38:
  sub_1D4E50004(v60 + v61[18], &qword_1EC7EC960, &unk_1D56334C0);
  if (v116)
  {
LABEL_21:
    OUTLINED_FUNCTION_46_4();
    if ((v111 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (!v111)
  {
LABEL_22:
    if (!v112)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_40:
  OUTLINED_FUNCTION_46_4();
  if (v112)
  {
LABEL_41:
    sub_1D4E50004(v60 + v61[21], &qword_1EC7ED9B0, &unk_1D5631050);
  }

LABEL_42:
  OUTLINED_FUNCTION_26();
}

uint64_t CloudMusicMovie.Relationships.CodingKeys.init(rawValue:)()
{
  OUTLINED_FUNCTION_132_11();
  v1 = sub_1D5615EF8();

  *v0 = v1 != 0;
  return result;
}

uint64_t CloudMusicMovie.Relationships.CodingKeys.init(stringValue:)()
{
  OUTLINED_FUNCTION_132_11();
  v1 = sub_1D5615EF8();

  *v0 = v1 != 0;
  return result;
}

uint64_t sub_1D539BE34(uint64_t a1)
{
  v2 = sub_1D528603C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D539BE70(uint64_t a1)
{
  v2 = sub_1D528603C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudMusicMovie.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_47_5();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA68, &unk_1D5622330);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16_0();
  v12 = *(v11 + 56);
  OUTLINED_FUNCTION_159_9();
  sub_1D4F39AB0(v13, v14, v15, v16);
  OUTLINED_FUNCTION_159_9();
  sub_1D4F39AB0(v17, v18, v19, v20);
  OUTLINED_FUNCTION_57(v1, 1, v3);
  if (!v21)
  {
    sub_1D4F39AB0(v1, v2, &qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_57(v1 + v12, 1, v3);
    if (!v21)
    {
      (*(v5 + 32))(v0, v1 + v12, v3);
      sub_1D4F88E6C();
      sub_1D5614D18();
      v24 = *(v5 + 8);
      v25 = OUTLINED_FUNCTION_71();
      v24(v25);
      v26 = OUTLINED_FUNCTION_116();
      v24(v26);
      sub_1D4E50004(v1, &qword_1EC7EA7F0, &unk_1D561E8C0);
      goto LABEL_10;
    }

    v22 = OUTLINED_FUNCTION_116();
    v23(v22);
LABEL_9:
    sub_1D4E50004(v1, &qword_1EC7ECA68, &unk_1D5622330);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_57(v1 + v12, 1, v3);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v1, &qword_1EC7EA7F0, &unk_1D561E8C0);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

uint64_t CloudMusicMovie.Relationships.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5448, &qword_1D565B690);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_102_1();
  sub_1D528603C();
  OUTLINED_FUNCTION_43_5();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  sub_1D4F89134();
  sub_1D5616068();
  v1 = OUTLINED_FUNCTION_122_1();
  return v2(v1);
}

uint64_t CloudMusicMovie.Relationships.hash(into:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31();
  sub_1D4F39AB0(v0, v2, &qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_1(v2);
  if (v7)
  {
    return sub_1D56162F8();
  }

  OUTLINED_FUNCTION_170_6();
  v8(v1, v2, v3);
  sub_1D56162F8();
  sub_1D4F89490();
  OUTLINED_FUNCTION_51_4();
  sub_1D5614CB8();
  v9 = OUTLINED_FUNCTION_98();
  return v10(v9);
}

uint64_t CloudMusicMovie.Relationships.hashValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  sub_1D56162D8();
  v7 = OUTLINED_FUNCTION_116();
  sub_1D4F39AB0(v7, v8, &qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_1(v6);
  if (v9)
  {
    sub_1D56162F8();
  }

  else
  {
    OUTLINED_FUNCTION_113_9();
    v10(v0, v6, v1);
    sub_1D56162F8();
    sub_1D4F89490();
    sub_1D5614CB8();
    v11 = OUTLINED_FUNCTION_98();
    v12(v11);
  }

  return sub_1D5616328();
}

void CloudMusicMovie.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v19 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5450, &qword_1D565B698);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_114();
  v11 = type metadata accessor for CloudMusicMovie.Relationships(0);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D528603C();
  sub_1D5616398();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    sub_1D4F89704();
    sub_1D5615F78();
    (*(v9 + 8))(v1, v7);
    sub_1D4F39A1C(v19, v15, &qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_26_66();
    v16 = OUTLINED_FUNCTION_200();
    sub_1D539F018(v16, v17, v18);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D539C764(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v9, &qword_1EC7EA7F0, &unk_1D561E8C0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1D56162F8();
    sub_1D4F89490();
    sub_1D5614CB8();
    (*(v4 + 8))(v6, v3);
  }

  return sub_1D5616328();
}

MusicKitInternal::CloudMusicMovie::Associations::CodingKeys_optional __swiftcall CloudMusicMovie.Associations.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_132_11();
  v2 = sub_1D5615EF8();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

MusicKitInternal::CloudMusicMovie::Associations::CodingKeys_optional __swiftcall CloudMusicMovie.Associations.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CloudMusicMovie.Associations.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1D539C9D4()
{
  result = 0x2D6E692D65726F6DLL;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x72612D636973756DLL;
      break;
    case 3:
      result = 0x7473696C79616C70;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1D539CAC4@<X0>(uint64_t *a1@<X8>)
{
  result = CloudMusicMovie.Associations.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D539CB08(uint64_t a1)
{
  v2 = sub_1D5285FE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D539CB44(uint64_t a1)
{
  v2 = sub_1D5285FE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudMusicMovie.Associations.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4();
  v145 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v142 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_171_6(v10);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDA98, &unk_1D5627020);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v148 = v12;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4();
  v151 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v146 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v150 = v18;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDAA0, &unk_1D5627040);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v153 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
  OUTLINED_FUNCTION_4();
  v159 = v22;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v156 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  v26 = OUTLINED_FUNCTION_22(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_59_0();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_135();
  v155 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v141 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5458, &qword_1D565B6A0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13();
  v143 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_25_13();
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v141 - v40;
  v157 = v4;
  v158 = v39;
  v42 = *(v39 + 48);
  sub_1D4F39AB0(v4, &v141 - v40, &qword_1EC7ECD28, &unk_1D565B660);
  sub_1D4F39AB0(v2, &v41[v42], &qword_1EC7ECD28, &unk_1D565B660);
  OUTLINED_FUNCTION_32_1(v41);
  if (v43)
  {
    OUTLINED_FUNCTION_32_1(&v41[v42]);
    if (v43)
    {
      v141 = v29;
      sub_1D4E50004(v41, &qword_1EC7ECD28, &unk_1D565B660);
      goto LABEL_11;
    }

LABEL_9:
    v46 = &qword_1EC7F5458;
    v47 = &qword_1D565B6A0;
    v48 = v41;
LABEL_51:
    sub_1D4E50004(v48, v46, v47);
    goto LABEL_52;
  }

  sub_1D4F39AB0(v41, v34, &qword_1EC7ECD28, &unk_1D565B660);
  OUTLINED_FUNCTION_32_1(&v41[v42]);
  if (v43)
  {
    v44 = OUTLINED_FUNCTION_81_0();
    v45(v44);
    goto LABEL_9;
  }

  v141 = v29;
  v49 = v159;
  OUTLINED_FUNCTION_113_9();
  v50 = v156;
  v51(v156, &v41[v42], v21);
  sub_1D53A058C();
  OUTLINED_FUNCTION_17_2();
  v52 = sub_1D5614D18();
  v53 = *(v49 + 8);
  v53(v50, v21);
  v54 = OUTLINED_FUNCTION_81_0();
  (v53)(v54);
  sub_1D4E50004(v41, &qword_1EC7ECD28, &unk_1D565B660);
  if ((v52 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_11:
  v55 = type metadata accessor for CloudMusicMovie.Associations(0);
  v56 = *(v158 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v57, v58, v59, v60);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v61, v62, v63, v64);
  OUTLINED_FUNCTION_32_1(v0);
  if (v43)
  {
    OUTLINED_FUNCTION_32_1(v0 + v56);
    if (v43)
    {
      sub_1D4E50004(v0, &qword_1EC7ECD28, &unk_1D565B660);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v65 = v155;
  sub_1D4F39AB0(v0, v155, &qword_1EC7ECD28, &unk_1D565B660);
  OUTLINED_FUNCTION_32_1(v0 + v56);
  if (v66)
  {
    v67 = OUTLINED_FUNCTION_81_0();
    v68(v67);
LABEL_19:
    v46 = &qword_1EC7F5458;
    v47 = &qword_1D565B6A0;
    v48 = v0;
    goto LABEL_51;
  }

  v69 = v159;
  v70 = v55;
  v71 = v156;
  (*(v159 + 32))(v156, v0 + v56, v21);
  sub_1D53A058C();
  OUTLINED_FUNCTION_17_2();
  v72 = v65;
  v73 = sub_1D5614D18();
  v74 = *(v69 + 8);
  v75 = v71;
  v55 = v70;
  v74(v75, v21);
  v74(v72, v21);
  sub_1D4E50004(v0, &qword_1EC7ECD28, &unk_1D565B660);
  if ((v73 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_21:
  v155 = v55;
  v76 = v153;
  v77 = *(v152 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v78, v79, v80, v81);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v82, v83, v84, v85);
  v86 = OUTLINED_FUNCTION_67_18();
  v87 = v154;
  OUTLINED_FUNCTION_4_18(v86, v88);
  if (v43)
  {
    v89 = OUTLINED_FUNCTION_118_13();
    OUTLINED_FUNCTION_4_18(v89, v90);
    if (v43)
    {
      sub_1D4E50004(v76, &qword_1EC7EB5A8, &unk_1D5622F00);
      goto LABEL_31;
    }

LABEL_29:
    v46 = &qword_1EC7EDAA0;
    v47 = &unk_1D5627040;
LABEL_50:
    v48 = v76;
    goto LABEL_51;
  }

  sub_1D4F39AB0(v76, v150, &qword_1EC7EB5A8, &unk_1D5622F00);
  v91 = OUTLINED_FUNCTION_118_13();
  OUTLINED_FUNCTION_4_18(v91, v92);
  if (v93)
  {
    v94 = OUTLINED_FUNCTION_200();
    v95(v94);
    goto LABEL_29;
  }

  (*(v151 + 32))(v146, v76 + v77, v87);
  sub_1D5000458();
  v96 = OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_185_1(v96, v97);
  v98 = OUTLINED_FUNCTION_30_30();
  (unk_1D5622F00)(v98);
  v99 = OUTLINED_FUNCTION_200();
  (unk_1D5622F00)(v99);
  sub_1D4E50004(v76, &qword_1EC7EB5A8, &unk_1D5622F00);
  if ((&qword_1EC7EB5A8 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_31:
  v76 = v148;
  v100 = *(v147 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v101, v102, v103, v104);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v105, v106, v107, v108);
  v109 = OUTLINED_FUNCTION_67_18();
  v110 = v149;
  OUTLINED_FUNCTION_4_18(v109, v111);
  if (!v43)
  {
    sub_1D4F39AB0(v76, v144, &qword_1EC7ECD18, &qword_1D5631040);
    v114 = OUTLINED_FUNCTION_118_13();
    OUTLINED_FUNCTION_4_18(v114, v115);
    if (!v116)
    {
      (*(v145 + 32))(v142, v76 + v100, v110);
      sub_1D50003B4();
      v119 = OUTLINED_FUNCTION_45_5();
      OUTLINED_FUNCTION_185_1(v119, v120);
      v121 = OUTLINED_FUNCTION_30_30();
      (qword_1D5631040)(v121);
      v122 = OUTLINED_FUNCTION_200();
      (qword_1D5631040)(v122);
      sub_1D4E50004(v76, &qword_1EC7ECD18, &qword_1D5631040);
      if ((&qword_1EC7ECD18 & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_41;
    }

    v117 = OUTLINED_FUNCTION_200();
    v118(v117);
    goto LABEL_39;
  }

  v112 = OUTLINED_FUNCTION_118_13();
  OUTLINED_FUNCTION_4_18(v112, v113);
  if (!v43)
  {
LABEL_39:
    v46 = &qword_1EC7EDA98;
    v47 = &unk_1D5627020;
    goto LABEL_50;
  }

  sub_1D4E50004(v76, &qword_1EC7ECD18, &qword_1D5631040);
LABEL_41:
  v123 = *(v158 + 48);
  v76 = v143;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v124, v125, v126, v127);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v128, v129, v130, v131);
  OUTLINED_FUNCTION_32_1(v76);
  if (!v43)
  {
    sub_1D4F39AB0(v76, v141, &qword_1EC7ECD28, &unk_1D565B660);
    OUTLINED_FUNCTION_32_1(v76 + v123);
    if (!v132)
    {
      v135 = v159;
      OUTLINED_FUNCTION_81();
      v136 = v76 + v123;
      v137 = v156;
      v138(v156, v136, v21);
      sub_1D53A058C();
      sub_1D5614D18();
      v139 = *(v135 + 8);
      v139(v137, v21);
      v140 = OUTLINED_FUNCTION_15_2();
      (v139)(v140);
      sub_1D4E50004(v76, &qword_1EC7ECD28, &unk_1D565B660);
      goto LABEL_52;
    }

    v133 = OUTLINED_FUNCTION_15_2();
    v134(v133);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_32_1(v76 + v123);
  if (!v43)
  {
LABEL_49:
    v46 = &qword_1EC7F5458;
    v47 = &qword_1D565B6A0;
    goto LABEL_50;
  }

  sub_1D4E50004(v76, &qword_1EC7ECD28, &unk_1D565B660);
LABEL_52:
  OUTLINED_FUNCTION_46();
}

void CloudMusicMovie.Associations.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_25_1();
  a25 = v29;
  a26 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5468, &qword_1D565B6A8);
  OUTLINED_FUNCTION_4();
  v33 = v32;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102_1();
  sub_1D5285FE8();
  OUTLINED_FUNCTION_43_5();
  sub_1D56163D8();
  a16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
  sub_1D53A0610();
  OUTLINED_FUNCTION_38(v26, &a16);
  if (!v27)
  {
    v35 = type metadata accessor for CloudMusicMovie.Associations(0);
    v36 = *(v35 + 20);
    a15 = 1;
    OUTLINED_FUNCTION_38(v26 + v36, &a15);
    a14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    sub_1D5000530();
    OUTLINED_FUNCTION_8_1();
    sub_1D5616068();
    a13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D500069C();
    OUTLINED_FUNCTION_8_1();
    sub_1D5616068();
    v37 = *(v35 + 32);
    a12 = 4;
    OUTLINED_FUNCTION_38(v26 + v37, &a12);
  }

  (*(v33 + 8))(v28, v31);
  OUTLINED_FUNCTION_26();
}

void CloudMusicMovie.Associations.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v68 = v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4();
  v63 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_168_7(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_124_11(v9);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4();
  v61 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v60 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
  OUTLINED_FUNCTION_4();
  v17 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_71_1();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v65 = v21;
  OUTLINED_FUNCTION_23();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v59 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v59 - v26;
  sub_1D4F39AB0(v0, &v59 - v26, &qword_1EC7ECD28, &unk_1D565B660);
  v28 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v28, v29, v15);
  if (v30)
  {
    sub_1D56162F8();
  }

  else
  {
    v31 = OUTLINED_FUNCTION_129_7();
    v32(v31, v27, v15);
    sub_1D56162F8();
    sub_1D4F8B398();
    OUTLINED_FUNCTION_51_4();
    sub_1D5614CB8();
    v33 = OUTLINED_FUNCTION_160_8();
    v34(v33);
  }

  v35 = type metadata accessor for CloudMusicMovie.Associations(0);
  v36 = v0;
  sub_1D4F39AB0(v0 + v35[5], v25, &qword_1EC7ECD28, &unk_1D565B660);
  v37 = OUTLINED_FUNCTION_67_18();
  OUTLINED_FUNCTION_57(v37, v38, v15);
  if (v30)
  {
    sub_1D56162F8();
  }

  else
  {
    v39 = OUTLINED_FUNCTION_129_7();
    v40(v39, v25, v15);
    sub_1D56162F8();
    sub_1D4F8B398();
    OUTLINED_FUNCTION_51_4();
    sub_1D5614CB8();
    v41 = OUTLINED_FUNCTION_160_8();
    v42(v41);
  }

  sub_1D4F39AB0(v0 + v35[6], v1, &qword_1EC7EB5A8, &unk_1D5622F00);
  v43 = v64;
  OUTLINED_FUNCTION_57(v1, 1, v64);
  if (v30)
  {
    sub_1D56162F8();
  }

  else
  {
    v44 = v60;
    v45 = v61;
    (*(v61 + 32))(v60, v1, v43);
    sub_1D56162F8();
    sub_1D4F8B290();
    sub_1D5614CB8();
    (*(v45 + 8))(v44, v43);
  }

  v46 = v66;
  sub_1D4F39AB0(v36 + v35[7], v66, &qword_1EC7ECD18, &qword_1D5631040);
  v47 = OUTLINED_FUNCTION_35_1();
  v48 = v67;
  OUTLINED_FUNCTION_4_18(v47, v49);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v50 = v62;
    OUTLINED_FUNCTION_170_6();
    v51(v50, v46, v48);
    OUTLINED_FUNCTION_27();
    sub_1D4F8B41C();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v52 = OUTLINED_FUNCTION_200();
    v53(v52);
  }

  v54 = v65;
  sub_1D4F39AB0(v36 + v35[8], v65, &qword_1EC7ECD28, &unk_1D565B660);
  v55 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v55, v56, v15);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v57 = OUTLINED_FUNCTION_129_7();
    v58(v57, v54, v15);
    OUTLINED_FUNCTION_27();
    sub_1D4F8B398();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v17 + 8))(v2, v15);
  }

  OUTLINED_FUNCTION_46();
}

void CloudMusicMovie.Associations.hashValue.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = v0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4();
  v59 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v58 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v61 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4();
  v57 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_171_6(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
  OUTLINED_FUNCTION_4();
  v18 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v60 = v22;
  OUTLINED_FUNCTION_23();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v56 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = v56 - v27;
  sub_1D56162D8();
  v63 = v3;
  sub_1D4F39AB0(v3, v28, &qword_1EC7ECD28, &unk_1D565B660);
  OUTLINED_FUNCTION_32_1(v28);
  if (v29)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    (*(v18 + 32))(v2, v28, v16);
    OUTLINED_FUNCTION_183_0();
    v30 = sub_1D4F8B398();
    OUTLINED_FUNCTION_114_8(v30);
    v31 = OUTLINED_FUNCTION_15_2();
    v32(v31);
  }

  v33 = type metadata accessor for CloudMusicMovie.Associations(0);
  v34 = v63;
  sub_1D4F39AB0(v63 + v33[5], v26, &qword_1EC7ECD28, &unk_1D565B660);
  OUTLINED_FUNCTION_32_1(v26);
  if (v29)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    OUTLINED_FUNCTION_113_9();
    v35(v2, v26, v16);
    OUTLINED_FUNCTION_183_0();
    v36 = sub_1D4F8B398();
    OUTLINED_FUNCTION_114_8(v36);
    v37 = OUTLINED_FUNCTION_15_2();
    v38(v37);
  }

  sub_1D4F39AB0(v34 + v33[6], v1, &qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_57(v1, 1, v10);
  if (v29)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v40 = v56[1];
    v39 = v57;
    OUTLINED_FUNCTION_170_6();
    v41(v40, v1, v10);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F8B290();
    sub_1D5614CB8();
    (*(v39 + 8))(v40, v10);
  }

  v42 = v61;
  sub_1D4F39AB0(v34 + v33[7], v61, &qword_1EC7ECD18, &qword_1D5631040);
  v43 = OUTLINED_FUNCTION_35_1();
  v44 = v62;
  OUTLINED_FUNCTION_4_18(v43, v45);
  if (v29)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v46 = v58;
    OUTLINED_FUNCTION_113_9();
    v47(v46, v42, v44);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F8B41C();
    sub_1D5614CB8();
    v48 = OUTLINED_FUNCTION_200();
    v49(v48);
    v34 = v63;
  }

  v50 = v34 + v33[8];
  v51 = v60;
  sub_1D4F39AB0(v50, v60, &qword_1EC7ECD28, &unk_1D565B660);
  OUTLINED_FUNCTION_32_1(v51);
  if (v29)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    OUTLINED_FUNCTION_113_9();
    v52(v2, v51, v16);
    OUTLINED_FUNCTION_183_0();
    v53 = sub_1D4F8B398();
    OUTLINED_FUNCTION_114_8(v53);
    v54 = OUTLINED_FUNCTION_15_2();
    v55(v54);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

void CloudMusicMovie.Associations.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_25_1();
  v74 = v26;
  v29 = v28;
  v67 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v31);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_168_7(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v69 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  v38 = OUTLINED_FUNCTION_22(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_59_0();
  v41 = v39 - v40;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v65 - v44;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_124_11(v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5478, &qword_1D565B6B0);
  OUTLINED_FUNCTION_4();
  v70 = v48;
  v71 = v47;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_19_0();
  v50 = type metadata accessor for CloudMusicMovie.Associations(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5();
  v54 = v53 - v52;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_1D5285FE8();
  v73 = v27;
  v55 = v74;
  sub_1D5616398();
  if (v55)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v66 = v41;
    v74 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
    v56 = sub_1D53A0694();
    OUTLINED_FUNCTION_127_9();
    sub_1D5615F78();
    v57 = v72;
    v72 = v54;
    sub_1D4F39A1C(v57, v54, &qword_1EC7ECD28, &unk_1D565B660);
    OUTLINED_FUNCTION_127_9();
    sub_1D5615F78();
    v65 = v56;
    sub_1D4F39A1C(v45, v72 + v50[5], &qword_1EC7ECD28, &unk_1D565B660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    sub_1D5000808();
    v58 = v69;
    OUTLINED_FUNCTION_138_11();
    sub_1D5615F78();
    v59 = v72;
    sub_1D4F39A1C(v58, v72 + v50[6], &qword_1EC7EB5A8, &unk_1D5622F00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D5000974();
    v60 = v68;
    OUTLINED_FUNCTION_138_11();
    sub_1D5615F78();
    sub_1D4F39A1C(v60, v59 + v50[7], &qword_1EC7ECD18, &qword_1D5631040);
    v61 = v66;
    OUTLINED_FUNCTION_127_9();
    sub_1D5615F78();
    v62 = OUTLINED_FUNCTION_62_31();
    v63(v62);
    sub_1D4F39A1C(v61, v59 + v50[8], &qword_1EC7ECD28, &unk_1D565B660);
    sub_1D539F180(v59, v67, type metadata accessor for CloudMusicMovie.Associations);
    __swift_destroy_boxed_opaque_existential_1(v74);
    OUTLINED_FUNCTION_0_213();
    sub_1D539EFC0(v59, v64);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D539E82C(uint64_t a1, int *a2)
{
  v46 = a2;
  v47 = a1;
  v3 = v2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  v42 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v43 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v39 - v22;
  sub_1D56162D8();
  v47 = v3;
  sub_1D4F39AB0(v3, v23, &qword_1EC7ECD28, &unk_1D565B660);
  if (__swift_getEnumTagSinglePayload(v23, 1, v12) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v13 + 32))(v15, v23, v12);
    sub_1D56162F8();
    sub_1D4F8B398();
    sub_1D5614CB8();
    (*(v13 + 8))(v15, v12);
  }

  v24 = v13;
  v26 = v46;
  v25 = v47;
  sub_1D4F39AB0(v47 + v46[5], v21, &qword_1EC7ECD28, &unk_1D565B660);
  if (__swift_getEnumTagSinglePayload(v21, 1, v12) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v24 + 32))(v15, v21, v12);
    sub_1D56162F8();
    sub_1D4F8B398();
    sub_1D5614CB8();
    (*(v24 + 8))(v15, v12);
  }

  v27 = v45;
  sub_1D4F39AB0(v25 + v26[6], v11, &qword_1EC7EB5A8, &unk_1D5622F00);
  v28 = v7;
  if (__swift_getEnumTagSinglePayload(v11, 1, v7) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v30 = v39;
    v29 = v40;
    (*(v40 + 32))(v39, v11, v28);
    sub_1D56162F8();
    sub_1D4F8B290();
    sub_1D5614CB8();
    (*(v29 + 8))(v30, v28);
  }

  v31 = v44;
  sub_1D4F39AB0(v25 + v26[7], v44, &qword_1EC7ECD18, &qword_1D5631040);
  if (__swift_getEnumTagSinglePayload(v31, 1, v27) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v32 = v42;
    v33 = v24;
    v34 = v41;
    (*(v42 + 32))(v41, v31, v27);
    sub_1D56162F8();
    sub_1D4F8B41C();
    sub_1D5614CB8();
    v35 = v34;
    v24 = v33;
    v25 = v47;
    (*(v32 + 8))(v35, v27);
  }

  v36 = v25 + v26[8];
  v37 = v43;
  sub_1D4F39AB0(v36, v43, &qword_1EC7ECD28, &unk_1D565B660);
  if (__swift_getEnumTagSinglePayload(v37, 1, v12) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v24 + 32))(v15, v37, v12);
    sub_1D56162F8();
    sub_1D4F8B398();
    sub_1D5614CB8();
    (*(v24 + 8))(v15, v12);
  }

  return sub_1D5616328();
}

uint64_t CloudMusicMovie.Metadata.snippets.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static CloudMusicMovie.Metadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {

      v4 = OUTLINED_FUNCTION_159();
      sub_1D4EF7D1C(v4, v5);
      OUTLINED_FUNCTION_82();

      if (v2)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D539EFC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D539F018(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

unint64_t sub_1D539F094()
{
  result = qword_1EDD5C870[0];
  if (!qword_1EDD5C870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD5C870);
  }

  return result;
}

unint64_t sub_1D539F0E8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D539F12C()
{
  result = qword_1EDD5C6F0[0];
  if (!qword_1EDD5C6F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD5C6F0);
  }

  return result;
}

uint64_t sub_1D539F180(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

unint64_t sub_1D539F1DC()
{
  result = qword_1EDD5C978[0];
  if (!qword_1EDD5C978[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD5C978);
  }

  return result;
}

unint64_t sub_1D539F230()
{
  result = qword_1EC7F3968;
  if (!qword_1EC7F3968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F3940, qword_1D564F0C0);
    sub_1D52DB900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3968);
  }

  return result;
}

uint64_t sub_1D539F2B4(uint64_t a1)
{
  v2 = sub_1D53A0718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D539F2F0(uint64_t a1)
{
  v2 = sub_1D53A0718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudMusicMovie.Metadata.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5488, &qword_1D565B6B8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_19_0();
  v26 = *v20;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1D53A0718();

  OUTLINED_FUNCTION_63_3();
  sub_1D56163D8();
  a10 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
  v27 = sub_1D4FCEB00();
  OUTLINED_FUNCTION_21_0(&a10, v28, v29, v30, v27);

  v31 = OUTLINED_FUNCTION_86_0();
  v32(v31);
  OUTLINED_FUNCTION_26();
}

void CloudMusicMovie.Metadata.hash(into:)()
{
  if (*v0)
  {
    sub_1D56162F8();
    v1 = OUTLINED_FUNCTION_98();

    sub_1D4F068B4(v1);
  }

  else
  {
    sub_1D56162F8();
  }
}

uint64_t CloudMusicMovie.Metadata.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D4F068B4(v3);
  }

  return sub_1D5616328();
}

void CloudMusicMovie.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5498, &unk_1D565B6D0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9();
  v16 = OUTLINED_FUNCTION_165();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_1D53A0718();
  OUTLINED_FUNCTION_63_3();
  sub_1D5616398();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
    sub_1D4FCEC6C();
    sub_1D5615F78();
    v18 = OUTLINED_FUNCTION_15_2();
    v19(v18);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_26();
}

uint64_t CloudMusicMovie.attributes.getter()
{
  OUTLINED_FUNCTION_179_7();
  OUTLINED_FUNCTION_28_58();
  return sub_1D539F180(v1 + v2, v0, v3);
}

double static CloudMusicMovie.relationshipCodingKeys.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static CloudMusicMovie.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_1EC7F5410 = a1;
}

uint64_t (*static CloudMusicMovie.relationshipCodingKeys.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_159();
  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1D539F844@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7F5410;

  return result;
}

uint64_t sub_1D539F894(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7F5410 = v1;
}

uint64_t CloudMusicMovie.meta.getter()
{
  v2 = *(v1 + *(OUTLINED_FUNCTION_179_7() + 32));
  *v0 = v2;

  return sub_1D50A24E4(v2);
}

uint64_t CloudMusicMovie.meta.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for CloudMusicMovie(0) + 32);
  result = sub_1D4EA7410(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1D539FA08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  sub_1D5610088();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C050;
  result = sub_1D560FE28();
  qword_1EDD5C7A8 = v0;
  return result;
}

double static CloudMusicMovie.catalogTypes.getter()
{
  if (qword_1EDD5C7A0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1D539FB1C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D539FBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D539FC04(uint64_t a1)
{
  v2 = sub_1D539F094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D539FC40(uint64_t a1)
{
  v2 = sub_1D539F094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudMusicMovie.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  v27 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_124_11(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_114();
  v8 = type metadata accessor for CloudMusicMovie.Relationships(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF310, &qword_1D565B640);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_38_2();
  sub_1D5614E28();
  v15 = type metadata accessor for CloudMusicMovie(0);
  CloudMusicMovie.Attributes.hash(into:)();
  sub_1D4F39AB0(v0 + *(v15 + 24), v2, &qword_1EC7EF310, &qword_1D565B640);
  OUTLINED_FUNCTION_57(v2, 1, v8);
  if (v19)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_26_66();
    sub_1D539F018(v2, v12, v16);
    OUTLINED_FUNCTION_27();
    sub_1D4F39AB0(v12, v1, &qword_1EC7EA7F0, &unk_1D561E8C0);
    v17 = OUTLINED_FUNCTION_67_18();
    OUTLINED_FUNCTION_4_18(v17, v18);
    if (v19)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      OUTLINED_FUNCTION_40_3();
      v20(v26, v1, v27);
      OUTLINED_FUNCTION_27();
      sub_1D4F89490();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v21 = OUTLINED_FUNCTION_200();
      v22(v21);
    }

    OUTLINED_FUNCTION_27_60();
    sub_1D539EFC0(v12, v23);
  }

  sub_1D4F87F60();
  v24 = *(v0 + *(v15 + 32));
  if (v24 == 1 || (OUTLINED_FUNCTION_27(), !v24))
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    v25 = OUTLINED_FUNCTION_128();
    sub_1D4F068B4(v25);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D539FF2C(uint64_t (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

uint64_t sub_1D539FF98(uint64_t a1)
{
  v2 = sub_1D539F0E8(&unk_1EC7F5548);

  return MEMORY[0x1EEDCE440](a1, v2);
}

uint64_t sub_1D53A0058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

void CloudMusicMovie.Attributes.offerKinds.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_47_5();
  v5 = sub_1D560F548();
  OUTLINED_FUNCTION_4();
  v33 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v37 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F8, &qword_1D56294F0);
  OUTLINED_FUNCTION_4();
  v11 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9();
  v13 = *(v1 + *(type metadata accessor for CloudMusicMovie.Attributes(0) + 68));
  if (v13)
  {
    swift_getKeyPath();
    v14 = *(v13 + 16);
    if (v14)
    {
      v16 = *(v11 + 16);
      v15 = v11 + 16;
      v17 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v35 = *(v15 + 56);
      v36 = v16;
      v34 = (v33 + 32);
      v18 = MEMORY[0x1E69E7CC0];
      v31 = v9;
      v32 = v5;
      do
      {
        v36(v2, v17, v9);
        swift_getAtKeyPath();
        v19 = OUTLINED_FUNCTION_15_2();
        v20(v19);
        v21 = OUTLINED_FUNCTION_45_1();
        OUTLINED_FUNCTION_57(v21, v22, v5);
        if (v23)
        {
          sub_1D4E50004(v0, &qword_1EC7EAC58, &unk_1D561DA70);
        }

        else
        {
          v24 = v15;
          v25 = *v34;
          (*v34)(v37, v0, v5);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_157_8();
            sub_1D4F00C24();
            v18 = v29;
          }

          v27 = *(v18 + 16);
          if (v27 >= *(v18 + 24) >> 1)
          {
            OUTLINED_FUNCTION_157_8();
            sub_1D4F00C24();
            v18 = v30;
          }

          *(v18 + 16) = v27 + 1;
          v28 = v18 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27;
          v5 = v32;
          v25(v28, v37, v32);
          v15 = v24;
          v9 = v31;
        }

        v17 += v35;
        --v14;
      }

      while (v14);
    }
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D53A03A8(uint64_t a1, uint64_t a2)
{
  sub_1D539F0E8(&unk_1EDD5C960);

  return sub_1D5612A28();
}

uint64_t sub_1D53A0430(uint64_t a1)
{
  sub_1D539F0E8(&qword_1EC7EF320);

  return sub_1D5612668();
}

uint64_t sub_1D53A049C(uint64_t a1)
{
  v2 = sub_1D539F0E8(&unk_1EC7F5540);

  return MEMORY[0x1EEDCE440](a1, v2);
}

unint64_t sub_1D53A0508()
{
  result = qword_1EDD527A8;
  if (!qword_1EDD527A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F3940, qword_1D564F0C0);
    sub_1D52DB818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD527A8);
  }

  return result;
}

unint64_t sub_1D53A058C()
{
  result = qword_1EC7F5460;
  if (!qword_1EC7F5460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD20, &unk_1D5622F20);
    sub_1D4F36C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5460);
  }

  return result;
}

unint64_t sub_1D53A0610()
{
  result = qword_1EC7F5470;
  if (!qword_1EC7F5470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD20, &unk_1D5622F20);
    sub_1D5158308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5470);
  }

  return result;
}

unint64_t sub_1D53A0694()
{
  result = qword_1EC7F5480;
  if (!qword_1EC7F5480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD20, &unk_1D5622F20);
    sub_1D5156D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5480);
  }

  return result;
}

unint64_t sub_1D53A0718()
{
  result = qword_1EC7F5490;
  if (!qword_1EC7F5490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5490);
  }

  return result;
}

unint64_t sub_1D53A07B8()
{
  result = qword_1EC7F54A8;
  if (!qword_1EC7F54A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F54A8);
  }

  return result;
}

unint64_t sub_1D53A0810()
{
  result = qword_1EC7F54B0;
  if (!qword_1EC7F54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F54B0);
  }

  return result;
}

unint64_t sub_1D53A0868()
{
  result = qword_1EC7F54B8;
  if (!qword_1EC7F54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F54B8);
  }

  return result;
}

unint64_t sub_1D53A0938()
{
  result = qword_1EC7F54D8;
  if (!qword_1EC7F54D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F54D8);
  }

  return result;
}

unint64_t sub_1D53A0990()
{
  result = qword_1EC7F54E0;
  if (!qword_1EC7F54E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F54E0);
  }

  return result;
}

unint64_t sub_1D53A09E8()
{
  result = qword_1EC7F54E8;
  if (!qword_1EC7F54E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F54E8);
  }

  return result;
}

unint64_t sub_1D53A0AB8()
{
  result = qword_1EC7F5508;
  if (!qword_1EC7F5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5508);
  }

  return result;
}

void sub_1D53A0D84(uint64_t a1)
{
  type metadata accessor for CloudMusicMovie.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_1D53A0E90(319, &qword_1EDD5C750, type metadata accessor for CloudMusicMovie.Relationships);
    if (v2 <= 0x3F)
    {
      sub_1D53A0E90(319, qword_1EDD5C808, type metadata accessor for CloudMusicMovie.Associations);
      if (v3 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EDD5C6E8, &type metadata for CloudMusicMovie.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D53A0E90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D53A0F0C(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD531C0, &qword_1EC7EC970, &qword_1D5631060);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD52920, &qword_1EC7ED080, &qword_1D5623EC8);
    if (v9 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
    if (v11 > 0x3F)
    {
      return v10;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v12 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
    if (v13 > 0x3F)
    {
      return v4;
    }

    sub_1D53A0E90(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
    if (v15 > 0x3F)
    {
      return v14;
    }

    sub_1D4E6D600(319, &qword_1EDD527A0, &qword_1EC7F3940, qword_1D564F0C0);
    if (v16 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD527C8, &qword_1EC7ECA08, &unk_1D56222F0);
    if (v17 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1D4E6D600(319, &qword_1EDD53208, &qword_1EC7ED9A8, &unk_1D5626F90);
      v2 = v18;
      if (v19 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_1D53A1244(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EDD530A8, &qword_1EC7EA810, &unk_1D5622320);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D53A1300(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EC7F5510, &qword_1EC7ECD20, &unk_1D5622F20);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD530A0, &qword_1EC7EB5D8, &unk_1D5627030);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD53090, &qword_1EC7ECD10, &unk_1D5622F10);
    if (v6 > 0x3F)
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

_BYTE *sub_1D53A1418(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudMusicMovie.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D53A15A0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D53A1680()
{
  result = qword_1EC7F5518;
  if (!qword_1EC7F5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5518);
  }

  return result;
}

unint64_t sub_1D53A16D8()
{
  result = qword_1EC7F5520;
  if (!qword_1EC7F5520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5520);
  }

  return result;
}

unint64_t sub_1D53A1730()
{
  result = qword_1EC7F5528;
  if (!qword_1EC7F5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5528);
  }

  return result;
}

unint64_t sub_1D53A1788()
{
  result = qword_1EC7F5530;
  if (!qword_1EC7F5530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5530);
  }

  return result;
}

unint64_t sub_1D53A17E0()
{
  result = qword_1EC7F5538;
  if (!qword_1EC7F5538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5538);
  }

  return result;
}

unint64_t sub_1D53A1838()
{
  result = qword_1EDD5C968;
  if (!qword_1EDD5C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5C968);
  }

  return result;
}

unint64_t sub_1D53A1890()
{
  result = qword_1EDD5C970;
  if (!qword_1EDD5C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5C970);
  }

  return result;
}

unint64_t sub_1D53A18E8()
{
  result = qword_1EDD5C860;
  if (!qword_1EDD5C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5C860);
  }

  return result;
}

unint64_t sub_1D53A1940()
{
  result = qword_1EDD5C868;
  if (!qword_1EDD5C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5C868);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_47_40()
{
  v7 = *(v5 - 312) + v3;

  return sub_1D4F39AB0(v7, v4 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_114_8(uint64_t a1)
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_116_15@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1D5615F38();
}

uint64_t OUTLINED_FUNCTION_133_8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return sub_1D4F39AB0(a1, v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_146_8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_1D4E50004(v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_147_9(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_162_8()
{
  if (*(v1 - 152))
  {
    return *(v1 - 152);
  }

  else
  {
    return v0;
  }
}

uint64_t OUTLINED_FUNCTION_179_7()
{

  return type metadata accessor for CloudMusicMovie(0);
}

uint64_t OUTLINED_FUNCTION_180_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
}

uint64_t OUTLINED_FUNCTION_182_4(uint64_t a1, uint64_t a2)
{

  return sub_1D4F39A1C(a1, a2, v2, v3);
}

uint64_t static MusicDaemon.Item.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D560D6E8() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MusicDaemon.Item(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D5616168() & 1) == 0 || (sub_1D56106A8() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 3)
  {
    if (v12 != 3)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  v13 = v4[8];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }

LABEL_17:
    v17 = v4[9];
    v18 = *(a1 + v17);
    v19 = *(a2 + v17);
    if (v18 == 2)
    {
      if (v19 != 2)
      {
        return 0;
      }
    }

    else if (v19 == 2 || ((v19 ^ v18) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v15 != 2 && ((v15 ^ v14) & 1) == 0)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t type metadata accessor for MusicDaemon.Item(uint64_t a1)
{
  result = qword_1EDD5EB58;
  if (!qword_1EDD5EB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicDaemon.Item.init(identifierSet:title:contentRating:favoriteStatus:isLibraryAdded:isLibraryAddEligible:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v13 = *a5;
  v14 = type metadata accessor for MusicDaemon.Item(0);
  v15 = v14[7];
  *(a8 + v15) = 3;
  v16 = v14[8];
  v17 = v14[9];
  sub_1D560D838();
  OUTLINED_FUNCTION_14();
  (*(v18 + 32))(a8, a1);
  v19 = (a8 + v14[5]);
  *v19 = a2;
  v19[1] = a3;
  v20 = v14[6];
  sub_1D56106B8();
  OUTLINED_FUNCTION_14();
  result = (*(v21 + 32))(a8 + v20, a4);
  *(a8 + v15) = v13;
  *(a8 + v16) = a6;
  *(a8 + v17) = a7;
  return result;
}

uint64_t MusicDaemon.Item.identifierSet.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D560D838();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t MusicDaemon.Item.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicDaemon.Item(0) + 20));

  return v1;
}

uint64_t MusicDaemon.Item.contentRating.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicDaemon.Item(0) + 24);
  sub_1D56106B8();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MusicDaemon.Item.favoriteStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MusicDaemon.Item(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t MusicDaemon.Item.favoriteStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MusicDaemon.Item(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

void (*MusicDaemon.Item.favoriteStatus.modify())()
{
  v0 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for MusicDaemon.Item(v0);
  return nullsub_1;
}

uint64_t MusicDaemon.Item.isLibraryAdded.setter(char a1)
{
  result = type metadata accessor for MusicDaemon.Item(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

void (*MusicDaemon.Item.isLibraryAdded.modify())()
{
  v0 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for MusicDaemon.Item(v0);
  return nullsub_1;
}

uint64_t MusicDaemon.Item.isLibraryAddEligible.setter(char a1)
{
  result = type metadata accessor for MusicDaemon.Item(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

void (*MusicDaemon.Item.isLibraryAddEligible.modify())()
{
  v0 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for MusicDaemon.Item(v0);
  return nullsub_1;
}

uint64_t static MusicDaemon.Item.ensureRequiredTypeValuesLoaded()()
{
  sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  sub_1D5613828();
  v3 = *(v1 + 8);
  v4 = OUTLINED_FUNCTION_159();
  v3(v4);
  sub_1D560EE98();
  v5 = OUTLINED_FUNCTION_159();
  return (v3)(v5);
}

uint64_t sub_1D53A2308(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xED00007465537265;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657469726F766166 && a2 == 0xEE00737574617453;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x72617262694C7369 && a2 == 0xEE00646564644179;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000014 && 0x80000001D568CCF0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1D5616168();

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

unint64_t sub_1D53A2514(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x52746E65746E6F63;
      break;
    case 3:
      result = 0x657469726F766166;
      break;
    case 4:
      result = 0x72617262694C7369;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D53A2600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D53A2308(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D53A2628(uint64_t a1)
{
  v2 = sub_1D53A292C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53A2664(uint64_t a1)
{
  v2 = sub_1D53A292C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicDaemon.Item.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5550, &qword_1D565C3E0);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D53A292C();
  sub_1D56163D8();
  v17[15] = 0;
  sub_1D560D838();
  OUTLINED_FUNCTION_2_156();
  sub_1D53A393C(v11, v12, MEMORY[0x1E6974F60]);
  OUTLINED_FUNCTION_10_43();
  sub_1D56160C8();
  if (!v2)
  {
    v13 = type metadata accessor for MusicDaemon.Item(0);
    v17[14] = 1;
    OUTLINED_FUNCTION_10_43();
    sub_1D5616088();
    v17[13] = 2;
    sub_1D56106B8();
    OUTLINED_FUNCTION_1_158();
    sub_1D53A393C(v14, v15, MEMORY[0x1E6975D68]);
    OUTLINED_FUNCTION_10_43();
    sub_1D56160C8();
    v17[12] = *(v3 + *(v13 + 28));
    v17[11] = 3;
    sub_1D53A2980();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616068();
    v17[10] = 4;
    OUTLINED_FUNCTION_10_43();
    sub_1D5616038();
    v17[9] = 5;
    OUTLINED_FUNCTION_10_43();
    sub_1D5616038();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1D53A292C()
{
  result = qword_1EDD5EB88[0];
  if (!qword_1EDD5EB88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD5EB88);
  }

  return result;
}

unint64_t sub_1D53A2980()
{
  result = qword_1EDD5EF48;
  if (!qword_1EDD5EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF48);
  }

  return result;
}

uint64_t MusicDaemon.Item.hash(into:)()
{
  OUTLINED_FUNCTION_64_1();
  sub_1D560D838();
  OUTLINED_FUNCTION_2_156();
  sub_1D53A393C(v1, v2, MEMORY[0x1E6974F68]);
  sub_1D5614CB8();
  v3 = type metadata accessor for MusicDaemon.Item(0);
  sub_1D5614E28();
  sub_1D56106B8();
  OUTLINED_FUNCTION_1_158();
  sub_1D53A393C(v4, v5, MEMORY[0x1E6975D70]);
  sub_1D5614CB8();
  v6 = *(v0 + v3[7]);
  sub_1D56162F8();
  if (v6 != 3)
  {
    MEMORY[0x1DA6EC0D0](v6);
  }

  if (*(v0 + v3[8]) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v0 + v3[9]) != 2)
  {
    sub_1D56162F8();
  }

  return sub_1D56162F8();
}

uint64_t MusicDaemon.Item.hashValue.getter()
{
  sub_1D56162D8();
  MusicDaemon.Item.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicDaemon.Item.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  sub_1D56106B8();
  OUTLINED_FUNCTION_4();
  v41 = v4;
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v47 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5558, &qword_1D565C3E8);
  OUTLINED_FUNCTION_4();
  v43 = v14;
  v44 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  type metadata accessor for MusicDaemon.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v45 = v19;
  v46 = v21 - v20;
  v22 = *(v19 + 28);
  *(v46 + v22) = 3;
  v49 = a1;
  v23 = OUTLINED_FUNCTION_159();
  __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_1D53A292C();
  v25 = v48;
  sub_1D5616398();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v48 = v22;
  v56 = 0;
  OUTLINED_FUNCTION_2_156();
  sub_1D53A393C(v26, v27, MEMORY[0x1E6974F78]);
  sub_1D5615FD8();
  v28 = v46;
  (*(v47 + 32))(v46, v13, v8);
  v55 = 1;
  v29 = sub_1D5615F98();
  v30 = v45;
  v31 = (v28 + *(v45 + 20));
  *v31 = v29;
  v31[1] = v32;
  v54 = 2;
  OUTLINED_FUNCTION_1_158();
  sub_1D53A393C(v33, v34, MEMORY[0x1E6975D80]);
  v35 = v42;
  sub_1D5615FD8();
  (*(v41 + 32))(v28 + *(v30 + 24), v7, v35);
  v52 = 3;
  sub_1D53A3134();
  sub_1D5615F78();
  *(v28 + v48) = v53;
  v51 = 4;
  v36 = sub_1D5615F48();
  v37 = v45;
  *(v28 + *(v45 + 32)) = v36;
  v50 = 5;
  LOBYTE(v35) = sub_1D5615F48();
  v38 = *(v37 + 36);
  (*(v44 + 8))(v17, v43);
  *(v28 + v38) = v35;
  sub_1D53A4694(v28, v40, type metadata accessor for MusicDaemon.Item);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_1D53A46F4();
}

uint64_t sub_1D53A30F8(uint64_t a1)
{
  sub_1D56162D8();
  MusicDaemon.Item.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D53A3134()
{
  result = qword_1EDD5EF40;
  if (!qword_1EDD5EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF40);
  }

  return result;
}

uint64_t sub_1D53A3188()
{
  v2 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_114();
  sub_1D5615B68();

  (*(v4 + 16))(v1, v0, v2);
  v6 = sub_1D5614DB8();
  MEMORY[0x1DA6EAC70](v6);

  MEMORY[0x1DA6EAC70](0x696669746E656469, 0xEF203A7465537265);

  type metadata accessor for MusicDaemon.Item(0);
  OUTLINED_FUNCTION_21_69();
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_5_118();

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D568AC30);
  sub_1D56106B8();
  sub_1D5615D48();
  OUTLINED_FUNCTION_5_118();

  v7 = *(v0 + MEMORY[0xEF203A7465537281]);
  if (v7 != 3)
  {
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = OUTLINED_FUNCTION_12_84();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_11_101();
      }
    }

    else
    {
      v8 = OUTLINED_FUNCTION_18_76();
    }

    MEMORY[0x1DA6EAC70](v8, v7);

    OUTLINED_FUNCTION_5_118();
  }

  if (*(v0 + MEMORY[0xEF203A7465537285]) != 2)
  {
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v9 = sub_1D56158C8();
    MEMORY[0x1DA6EAC70](v9);

    OUTLINED_FUNCTION_5_118();
  }

  if (*(v0 + MEMORY[0xEF203A7465537289]) != 2)
  {
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v13 = v10;
    v11 = sub_1D56158C8();
    MEMORY[0x1DA6EAC70](v11);

    MEMORY[0x1DA6EAC70](0xD000000000000018, v13);
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v14;
}

uint64_t sub_1D53A34BC()
{
  v2 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_114();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v16 = v6;
  (*(v4 + 16))(v1, v0, v2);
  sub_1D5614DD8();
  sub_1D4F53278();
  v7 = sub_1D5615968();
  v9 = v8;

  MEMORY[0x1DA6EAC70](v7, v9);

  MEMORY[0x1DA6EAC70](0xD000000000000012, v16);

  type metadata accessor for MusicDaemon.Item(0);
  OUTLINED_FUNCTION_21_69();
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_5_118();

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000013, 0x80000001D568CD30);
  sub_1D56106B8();
  sub_1D5615D48();
  OUTLINED_FUNCTION_5_118();

  v10 = *(v0 + *(v16 + 28));
  if (v10 == 3)
  {
    MEMORY[0x1DA6EAC70](0xD000000000000017, 0x80000001D568CD50);
  }

  else
  {
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = OUTLINED_FUNCTION_12_84();
      }

      else
      {
        v11 = OUTLINED_FUNCTION_11_101();
      }
    }

    else
    {
      v11 = OUTLINED_FUNCTION_18_76();
    }

    MEMORY[0x1DA6EAC70](v11, v10);

    OUTLINED_FUNCTION_5_118();
  }

  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v12 = sub_1D56158C8();
  MEMORY[0x1DA6EAC70](v12);

  OUTLINED_FUNCTION_5_118();

  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v17 = v13;
  v14 = sub_1D56158C8();
  MEMORY[0x1DA6EAC70](v14);

  MEMORY[0x1DA6EAC70](0xD00000000000001ALL, v17);

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v18;
}

uint64_t sub_1D53A3890(uint64_t (*a1)(void))
{
  strcpy(v3, "MusicDaemon.");
  v1 = a1();
  MEMORY[0x1DA6EAC70](v1);

  return v3[0];
}

uint64_t sub_1D53A393C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D53A39B4(uint64_t a1)
{
  sub_1D560D838();
  if (v1 <= 0x3F)
  {
    sub_1D56106B8();
    if (v2 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD5EF38, &type metadata for MusicFavoriteStatus);
      if (v3 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *_s4ItemV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D53A3B70()
{
  result = qword_1EC7F5568;
  if (!qword_1EC7F5568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5568);
  }

  return result;
}

unint64_t sub_1D53A3BC8()
{
  result = qword_1EDD5EB78;
  if (!qword_1EDD5EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EB78);
  }

  return result;
}

unint64_t sub_1D53A3C20()
{
  result = qword_1EDD5EB80;
  if (!qword_1EDD5EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EB80);
  }

  return result;
}

void sub_1D53A3C74(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a1;
  v102 = a2;
  v95 = sub_1D560D4C8();
  OUTLINED_FUNCTION_4();
  v91 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v94 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v89 - v8;
  v10 = sub_1D560E728();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_5();
  v99 = v12 - v11;
  v13 = sub_1D560F0F8();
  OUTLINED_FUNCTION_4();
  v90 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  sub_1D560F148();
  OUTLINED_FUNCTION_4();
  v92 = v20;
  v93 = v19;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_59_0();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v89 - v25;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v100 = v28;
  v101 = v27;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v105 = v30 - v29;
  v98 = type metadata accessor for MusicFavoriteStatusController.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v34 = v33 - v32;
  v35 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v39);
  v42 = *(v2 + 33);
  if ((v42 - 2) >= 2)
  {
    v96 = v41;
    v97 = v89 - v40;
    if (v42)
    {
      sub_1D560D878();
    }

    else
    {
      sub_1D560D8E8();
    }

    v51 = *(v2 + 8);
    v89[1] = *v2;
    switch(*(v2 + 32))
    {
      case 1:

        sub_1D560D4A8();
        v68 = v91;
        (*(v91 + 16))(v94, v9, v95);
        (*(v37 + 16))(v96, v97, v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
        OUTLINED_FUNCTION_64_1();
        v69 = sub_1D560DB08();
        OUTLINED_FUNCTION_4();
        v71 = v70;
        v72 = OUTLINED_FUNCTION_20_78();
        *(v72 + 16) = xmmword_1D561C050;
        (*(v71 + 104))(v72 + v51, *MEMORY[0x1E6975050], v69);
        OUTLINED_FUNCTION_14_75();
        sub_1D560D5B8();
        (*(v68 + 8))(v9, v95);
        break;
      case 2:
        v56 = OUTLINED_FUNCTION_17_77();
        v57(v56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
        OUTLINED_FUNCTION_64_1();
        v58 = sub_1D560DB08();
        OUTLINED_FUNCTION_4();
        v60 = v59;
        v61 = OUTLINED_FUNCTION_16_85();
        *(v61 + 16) = xmmword_1D561C050;
        (*(v60 + 104))(&v9[v61], *MEMORY[0x1E6975050], v58);

        OUTLINED_FUNCTION_14_75();
        OUTLINED_FUNCTION_19_72();
        sub_1D560D7F8();
        break;
      case 3:
        v62 = OUTLINED_FUNCTION_17_77();
        v63(v62);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
        OUTLINED_FUNCTION_64_1();
        v64 = sub_1D560DB08();
        OUTLINED_FUNCTION_4();
        v66 = v65;
        v67 = OUTLINED_FUNCTION_16_85();
        *(v67 + 16) = xmmword_1D561C050;
        (*(v66 + 104))(&v9[v67], *MEMORY[0x1E6975050], v64);

        OUTLINED_FUNCTION_14_75();
        OUTLINED_FUNCTION_19_72();
        sub_1D560D618();
        break;
      default:
        (*(v90 + 104))(v18, *MEMORY[0x1E69755D0], v13);

        sub_1D560F118();
        (*(v92 + 16))(v23, v26, v93);
        v89[0] = v37;
        (*(v37 + 16))(v96, v97, v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
        OUTLINED_FUNCTION_64_1();
        v52 = sub_1D560DB08();
        OUTLINED_FUNCTION_4();
        v54 = v53;
        v55 = OUTLINED_FUNCTION_20_78();
        *(v55 + 16) = xmmword_1D561C050;
        (*(v54 + 104))(v55 + v51, *MEMORY[0x1E6975050], v52);
        OUTLINED_FUNCTION_14_75();
        sub_1D560D798();
        v37 = v89[0];
        (*(v92 + 8))(v26, v93);
        break;
    }

    (*(v37 + 8))(v97, v35);
    v74 = *(v2 + 40);
    v73 = *(v2 + 48);
    v75 = v98;
    v76 = *(v98 + 28);
    v77 = type metadata accessor for MusicDaemon.Item(0);
    v78 = v77[6];
    sub_1D56106B8();
    OUTLINED_FUNCTION_14();
    v80 = v102;
    (*(v79 + 16))(v102 + v78, v2 + v76);
    v81 = *(v2 + *(v75 + 32));
    v82 = v77[7];
    *(v80 + v82) = 3;
    v83 = v77[8];
    v84 = v77[9];
    (*(v100 + 32))(v80, v105, v101);
    v85 = (v80 + v77[5]);
    *v85 = v74;
    v85[1] = v73;
    *(v80 + v82) = 3;
    *(v80 + v83) = 2;
    *(v80 + v84) = v81;
  }

  else
  {
    if (qword_1EDD544D0 != -1)
    {
      swift_once();
    }

    v43 = sub_1D560C758();
    __swift_project_value_buffer(v43, qword_1EDD76B38);
    sub_1D53A4694(v2, v34, type metadata accessor for MusicFavoriteStatusController.Item);
    v44 = sub_1D560C738();
    v45 = sub_1D56156C8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v103 = v47;
      *v46 = 136446210;
      v48 = 0xE500000000000000;
      v49 = 0x676E6F732ELL;
      v50 = v47;
      switch(*(v34 + 33))
      {
        case 1:
          v48 = 0xEB000000006F6564;
          v49 = 0x6956636973756D2ELL;
          break;
        case 2:
          v86 = 0x6F6964754164;
          goto LABEL_19;
        case 3:
          v86 = 0x6F6564695664;
LABEL_19:
          v48 = v86 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          v49 = 0x6564616F6C70752ELL;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_6_120();
      v87 = sub_1D4E6835C(v49, v48, &v103);

      *(v46 + 4) = v87;
      _os_log_impl(&dword_1D4E3F000, v44, v45, "MusicFavoriteStatusController.Item unsupported kind: %{public}s.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1DA6ED200](v50, -1, -1);
      MEMORY[0x1DA6ED200](v46, -1, -1);
    }

    else
    {

      OUTLINED_FUNCTION_6_120();
    }

    v88 = v96;
    *v96 = xmmword_1D565C3D0;
    *(v88 + 16) = 2;
    v103 = xmmword_1D565C3D0;
    v104 = 2;
    sub_1D53476CC();
    swift_willThrowTypedImpl();
  }
}

uint64_t sub_1D53A4694(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D53A46F4()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v2(v1);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_20_78()
{

  return swift_allocObject();
}

uint64_t sub_1D53A476C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1D53A47C4()
{
  sub_1D53A4820(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1D53A4848(uint64_t a1, uint64_t a2)
{
  v2[4] = MEMORY[0x1E69E7CC0];
  sub_1D560F628();
  swift_allocObject();
  v2[5] = sub_1D560F618();
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t sub_1D53A48AC(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;

  sub_1D560F608();

  if (v4 == 3)
  {
    v22[0] = sub_1D53A4FC8(3);
    v22[1] = v6;
    sub_1D4F53278();
    v7 = sub_1D5615948();

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = (v7 + 40);
      v10 = &OBJC_PROTOCOL___MusicKit_SoftLinking_MPCPlayerCommandDialog;
      do
      {
        v12 = *(v9 - 1);
        v11 = *v9;
        opt_inst_meths = v10[49].opt_inst_meths;

        if (opt_inst_meths != -1)
        {
          swift_once();
        }

        v14 = sub_1D560C758();
        __swift_project_value_buffer(v14, qword_1EC87C140);

        v15 = sub_1D560C738();
        v16 = sub_1D56156E8();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = v10;
          v19 = swift_slowAlloc();
          v22[0] = v19;
          *v17 = 136315394;
          *(v17 + 4) = sub_1D4E6835C(*(v3 + 16), *(v3 + 24), v22);
          *(v17 + 12) = 2080;
          v20 = sub_1D4E6835C(v12, v11, v22);

          *(v17 + 14) = v20;
          _os_log_impl(&dword_1D4E3F000, v15, v16, "%s - %s", v17, 0x16u);
          swift_arrayDestroy();
          v21 = v19;
          v10 = v18;
          MEMORY[0x1DA6ED200](v21, -1, -1);
          MEMORY[0x1DA6ED200](v17, -1, -1);
        }

        else
        {
        }

        v9 += 2;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_1D53A4B50(uint64_t *a1, unsigned __int8 a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D53A4F80();
  v7 = v6;
  v9 = v8;
  swift_endAccess();
  if (!v9)
  {
    swift_beginAccess();

    sub_1D4EFF634();
    v15 = *(a1[4] + 16);
    sub_1D4EFF86C(v15);
    v13 = a1[4];
    *(v13 + 16) = v15 + 1;
    v16 = v13 + 16 * v15;
    *(v16 + 32) = a2;
    *(v16 + 40) = a3;
    goto LABEL_5;
  }

  if (v7 == a2)
  {
    v43[0] = v9;

    sub_1D4EF37E4(v10);
    v11 = v9;
    swift_beginAccess();
    sub_1D4EFF634();
    v12 = *(a1[4] + 16);
    sub_1D4EFF86C(v12);
    v13 = a1[4];
    *(v13 + 16) = v12 + 1;
    v14 = v13 + 16 * v12;
    *(v14 + 32) = a2;
    *(v14 + 40) = v11;
LABEL_5:
    a1[4] = v13;
    return swift_endAccess();
  }

  v41 = a3;
  v42 = a2;
  swift_beginAccess();

  sub_1D4EFF634();
  v18 = *(a1[4] + 16);
  sub_1D4EFF86C(v18);
  v19 = a1[4];
  *(v19 + 16) = v18 + 1;
  v20 = v19 + 16 * v18;
  *(v20 + 32) = v7;
  *(v20 + 40) = v9;
  a1[4] = v19;
  swift_endAccess();
  v21 = sub_1D53A4FC8(v7);
  v23 = v22;

  v43[0] = v21;
  v43[1] = v23;
  sub_1D4F53278();
  v24 = sub_1D5615948();

  v44 = v24;
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = (v44 + 40);
    v27 = &OBJC_PROTOCOL___MusicKit_SoftLinking_MPCPlayerCommandDialog;
    do
    {
      v29 = *(v26 - 1);
      v28 = *v26;
      opt_inst_meths = v27[49].opt_inst_meths;

      if (opt_inst_meths != -1)
      {
        swift_once();
      }

      v31 = sub_1D560C758();
      __swift_project_value_buffer(v31, qword_1EC87C140);

      v32 = sub_1D560C738();
      v33 = sub_1D56156E8();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v43[0] = v35;
        *v34 = 136315394;
        *(v34 + 4) = sub_1D4E6835C(a1[2], a1[3], v43);
        *(v34 + 12) = 2080;
        v36 = sub_1D4E6835C(v29, v28, v43);

        *(v34 + 14) = v36;
        _os_log_impl(&dword_1D4E3F000, v32, v33, "%s - %s", v34, 0x16u);
        swift_arrayDestroy();
        v37 = v35;
        v27 = &OBJC_PROTOCOL___MusicKit_SoftLinking_MPCPlayerCommandDialog;
        MEMORY[0x1DA6ED200](v37, -1, -1);
        MEMORY[0x1DA6ED200](v34, -1, -1);
      }

      else
      {
      }

      v26 += 2;
      --v25;
    }

    while (v25);
  }

  swift_beginAccess();

  sub_1D4EFF634();
  v38 = *(a1[4] + 16);
  sub_1D4EFF86C(v38);
  v39 = a1[4];
  *(v39 + 16) = v38 + 1;
  v40 = v39 + 16 * v38;
  *(v40 + 32) = v42;
  *(v40 + 40) = v41;
  a1[4] = v39;
  return swift_endAccess();
}

void sub_1D53A4F80()
{
  if (*(*v0 + 16))
  {
    sub_1D53A5E98();
    if (!v1)
    {
      sub_1D525CC8C(*(*v0 + 16) - 1);
    }
  }
}

uint64_t sub_1D53A4FC8(char a1)
{
  v2 = 0x100000000000001FLL;
  v3 = "🟦 Local Operations\n";
  switch(a1)
  {
    case 1:
      v3 = "🟦 Saving Playlist\n";
      v2 = 0x1000000000000016;
      break;
    case 2:
      v3 = "ing Edit Session\n";
      v2 = 0x1000000000000015;
      break;
    case 3:
      v3 = "wModel11EventStream";
      v2 = 0x1000000000000021;
      break;
    default:
      break;
  }

  MEMORY[0x1DA6EAC70](v2, v3 | 0x8000000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D50A9E08();
  v4 = sub_1D5614CF8();
  v6 = v5;

  MEMORY[0x1DA6EAC70](v4, v6);

  return 0;
}

uint64_t sub_1D53A50F8()
{
  sub_1D5615B68();

  MEMORY[0x1DA6EAC70](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1DA6EAC70](10, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x100000000000001FLL, 0x80000001D568D0E0);

  OUTLINED_FUNCTION_2_157();
  MEMORY[0x1DA6EAC70](0xA20A69F9FF0, 0xA600000000000000);

  sub_1D560F608();

  OUTLINED_FUNCTION_2_157();
  return 0;
}

uint64_t sub_1D53A521C(uint64_t a1)
{
  swift_beginAccess();
  result = *(a1 + 32);
  v3 = *(result + 16);
  if (v3)
  {
    v4 =  + 40;
    while (2)
    {
      v5 = *(v4 - 8);

      switch(v5)
      {
        case 1:
          v6 = 0x1000000000000016;
          v7 = "🟦 Saving Playlist\n";
          goto LABEL_8;
        case 2:
          v8 = 0x80000001D568CED0;
          v6 = 0x1000000000000015;
          goto LABEL_9;
        case 3:
          v6 = 0x1000000000000021;
          v7 = "wModel11EventStream";
          goto LABEL_8;
        default:
          v6 = 0x100000000000001FLL;
          v7 = "🟦 Local Operations\n";
LABEL_8:
          v8 = v7 | 0x8000000000000000;
LABEL_9:
          MEMORY[0x1DA6EAC70](v6, v8);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
          sub_1D50A9E08();
          v9 = sub_1D5614CF8();
          v11 = v10;

          MEMORY[0x1DA6EAC70](v9, v11);

          MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

          MEMORY[0x1DA6EAC70](0xA20A69F9FF00ALL, 0xA700000000000000);
          v4 += 16;
          if (--v3)
          {
            continue;
          }

          break;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1D53A5430()
{

  return v0;
}

uint64_t sub_1D53A5460()
{
  sub_1D53A5430();
  OUTLINED_FUNCTION_123();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D53A5490()
{
  sub_1D56162D8();
  sub_1D5614E28();
  return sub_1D5616328();
}

void sub_1D53A54D4(char a1, uint64_t a2, char a3)
{
  if (a1 == a3)
  {
    sub_1D4EF81E0();
  }
}

void sub_1D53A54F4(uint64_t a1, unsigned __int8 a2)
{
  MEMORY[0x1DA6EC0D0](a2);

  sub_1D4F06928();
}

uint64_t sub_1D53A5538(unsigned __int8 a1)
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](a1);
  sub_1D4F06928();
  return sub_1D5616328();
}

uint64_t sub_1D53A5608(uint64_t a1)
{
  v2 = *v1;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v2);
  sub_1D4F06928();
  return sub_1D5616328();
}

uint64_t sub_1D53A5670(uint64_t a1)
{
  v2 = 0x100000000000002ALL;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_1D5614898();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D53A5EF8(a1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1D53A5F68(v5);
    v10 = 0x80000001D568D080;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1D5615B68();

    v14 = 0x100000000000002BLL;
    v15 = 0x80000001D568D0B0;
    v11 = sub_1D5614478();
    MEMORY[0x1DA6EAC70](v11);

    v2 = v14;
    v10 = v15;
    (*(v7 + 8))(v9, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
  OUTLINED_FUNCTION_123();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D561C050;
  *(v12 + 32) = v2;
  *(v12 + 40) = v10;
  return 0;
}

uint64_t sub_1D53A5874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5614FD8();
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0x100000000000003CLL, 0x80000001D568D040);
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
  OUTLINED_FUNCTION_123();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  return 0;
}

uint64_t sub_1D53A5948(uint64_t *a1)
{
  v2 = type metadata accessor for MusicLibraryPlaylistViewModel.Delta(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v33 = 0;
  v34 = 0xE000000000000000;
  if (!(v8 >> 62))
  {
    v10 = *(v8 + 16);
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1D4FEEE2C(v10);
    sub_1D5615B68();
    v11 = OUTLINED_FUNCTION_0_214();
    v12 = v13 + 2307;
    goto LABEL_5;
  }

  if (v8 >> 62 == 1)
  {
    v10 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1D4FEEE2C(v10);
    sub_1D5615B68();
    v11 = OUTLINED_FUNCTION_0_214();
    v12 = 0xAF2E203A6F646552;
LABEL_5:
    MEMORY[0x1DA6EAC70](v11, v12);
    v29 = v10;
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](v31, v32);

    sub_1D4FEEE48(v10);
    goto LABEL_16;
  }

  switch(__ROR8__(v8 ^ 0x8000000000000000, 3))
  {
    case 1:
      v14 = "🟦    Insert: ";
      goto LABEL_14;
    case 2:
      v15 = OUTLINED_FUNCTION_0_214();
      v16 = 0xAE00203A65766F4DLL;
      goto LABEL_15;
    case 3:
      v14 = "🟦    Remove: ";
      goto LABEL_14;
    case 4:
      v15 = 0x1000000000000013;
      v16 = 0x80000001D568CFC0;
      goto LABEL_15;
    case 5:
      v14 = "🟦    Update: ";
      goto LABEL_14;
    case 6:
      result = sub_1D5615E08();
      __break(1u);
      return result;
    default:
      v14 = "🟦    Append: ";
LABEL_14:
      v16 = (v14 - 32) | 0x8000000000000000;
      v15 = 0x1000000000000010;
LABEL_15:
      MEMORY[0x1DA6EAC70](v15, v16);
      break;
  }

LABEL_16:
  v31 = 40;
  v32 = 0xE100000000000000;
  MEMORY[0x1DA6EAC70](v6, v7);
  MEMORY[0x1DA6EAC70](8233, 0xE200000000000000);
  MEMORY[0x1DA6EAC70](v31, v32);

  v17 = *(v9 + 16);
  if (v17)
  {
    v18 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v19 = *(v3 + 72);
    do
    {
      sub_1D4FE4934(v18, v5);
      sub_1D4FE631C();
      v31 = v20;
      v32 = v21;
      v29 = 10;
      v30 = 0xE100000000000000;
      v28[0] = 32;
      v28[1] = 0xE100000000000000;
      sub_1D4F53278();
      v22 = sub_1D5615968();
      v24 = v23;

      MEMORY[0x1DA6EAC70](v22, v24);

      sub_1D4FE4998(v5);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
  OUTLINED_FUNCTION_123();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D561C050;
  v26 = v34;
  *(v25 + 32) = v33;
  *(v25 + 40) = v26;
  return 1;
}

uint64_t MusicLibraryPlaylistViewModel.tapToRadarDescription.getter()
{
  if (!sub_1D54550D4())
  {
    return 0;
  }

  v0 = sub_1D53A50F8();

  return v0;
}

unint64_t sub_1D53A5DC8()
{
  result = qword_1EC7F5570;
  if (!qword_1EC7F5570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5570);
  }

  return result;
}

unint64_t sub_1D53A5E20()
{
  result = qword_1EC7F5578;
  if (!qword_1EC7F5578)
  {
    _s11EventStreamCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5578);
  }

  return result;
}

void sub_1D53A5E98()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54B4634(v1, v2, v3, v4);
    v1 = v6;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    *(v1 + 16) = v5 - 1;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D53A5EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D53A5F68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *_s11EventStreamC5EventV4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D53A60CC()
{
  result = qword_1EC7F5580;
  if (!qword_1EC7F5580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5580);
  }

  return result;
}

void sub_1D53A6120(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v154 = a1;
  v156 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v6);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_4();
  v129 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v137 = v12;
  OUTLINED_FUNCTION_70_0();
  v138 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v131 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v16 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v143 = v19;
  OUTLINED_FUNCTION_70_0();
  v142 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v136 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v23 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v148 = v26;
  OUTLINED_FUNCTION_70_0();
  v147 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v141 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v140 = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v31);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  v150 = v33;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v151 = v35;
  v152 = v34;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_59_0();
  v146 = v36 - v37;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v38);
  v145 = &v128 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_11();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v128 - v43;
  v155 = a2;
  v153 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_59_0();
  v134 = v45 - v46;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v47);
  v139 = &v128 - v48;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v49);
  v144 = &v128 - v50;
  OUTLINED_FUNCTION_23();
  v52 = MEMORY[0x1EEE9AC00](v51);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v128 - v53;
  v55 = sub_1D5613D28();
  OUTLINED_FUNCTION_4();
  v149 = v56;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_59_0();
  v60 = (v58 - v59);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v128 - v62;
  v64 = sub_1D560D3F8();
  OUTLINED_FUNCTION_4();
  v66 = v65;
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5();
  v70 = v69 - v68;
  sub_1D560D3A8();
  v71 = sub_1D560D3D8();
  (*(v66 + 8))(v70, v64);
  if ((v71 & 1) == 0)
  {
    *v156 = 0;
    return;
  }

  v72 = objc_opt_self();
  v73 = [v72 standardUserDefaults];
  v74 = [v73 prefersSpatialDownloads];

  if (v74)
  {
    v75 = 7;
LABEL_12:
    *v156 = v75;
    return;
  }

  v76 = [v72 standardUserDefaults];
  v77 = [v76 prefersSpatialAudio];

  if ((v77 & 1) == 0)
  {
    v75 = 5;
    goto LABEL_12;
  }

  v78 = [objc_opt_self() sharedMonitor];
  v79 = [v78 isRemoteServerLikelyReachable];

  if ((v79 & 1) == 0)
  {
    v75 = 1;
    goto LABEL_12;
  }

  v80 = *(v153 + 16);
  (v80)(v54, v154, v155);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v55);
    v81 = v149;
    (*(v149 + 32))(v63, v44, v55);
    (*(v81 + 16))(v60, v63, v55);
    if ((*(v81 + 88))(v60, v55) == *MEMORY[0x1E6976E18])
    {
      (*(v81 + 96))(v60, v55);
      v83 = v151;
      v82 = v152;
      OUTLINED_FUNCTION_9_105();
      v84 = v145;
      v85(v145, v60, v82);
      sub_1D53A6E18(v84, v156);
      (*(v83 + 8))(v84, v82);
      (*(v81 + 8))(v63, v55);
      return;
    }

    v94 = *(v81 + 8);
    v94(v63, v55);
    v94(v60, v55);
    v75 = 8;
    goto LABEL_12;
  }

  __swift_storeEnumTagSinglePayload(v44, 1, 1, v55);
  sub_1D4E6C9CC(v44, &qword_1EC7EA888, &qword_1D563B8C0);
  OUTLINED_FUNCTION_17_75();
  v80();
  v86 = v150;
  v87 = v152;
  if (swift_dynamicCast())
  {
    v88 = OUTLINED_FUNCTION_63_2();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v87);
    v91 = v151;
    OUTLINED_FUNCTION_9_105();
    v92 = v146;
    v93(v146, v86, v87);
    sub_1D53A6E18(v92, v156);
    (*(v91 + 8))(v92, v87);
    return;
  }

  v95 = OUTLINED_FUNCTION_64_2();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v87);
  sub_1D4E6C9CC(v86, &qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_17_75();
  v80();
  v99 = v147;
  v98 = v148;
  v100 = swift_dynamicCast();
  v101 = v156;
  if (v100)
  {
    v102 = OUTLINED_FUNCTION_63_2();
    __swift_storeEnumTagSinglePayload(v102, v103, v104, v99);
    v106 = v140;
    v105 = v141;
    OUTLINED_FUNCTION_9_105();
    v107(v106, v98, v99);
    sub_1D53A7618(v101);
  }

  else
  {
    v108 = OUTLINED_FUNCTION_64_2();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v99);
    sub_1D4E6C9CC(v98, &unk_1EC7F2BE0, &qword_1D56250F0);
    OUTLINED_FUNCTION_17_75();
    v80();
    v111 = v143;
    v99 = v142;
    if (!swift_dynamicCast())
    {
      v116 = OUTLINED_FUNCTION_64_2();
      __swift_storeEnumTagSinglePayload(v116, v117, v118, v99);
      sub_1D4E6C9CC(v111, &qword_1EC7EEC30, &unk_1D5620CE0);
      OUTLINED_FUNCTION_17_75();
      v80();
      v119 = v137;
      v120 = v138;
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v119, 0, 1, v120);
        v121 = v131;
        v122 = v130;
        (*(v131 + 32))(v130, v119, v120);
        v123 = v133;
        sub_1D5614858();
        v124 = v132;
        if (__swift_getEnumTagSinglePayload(v123, 1, v132) != 1)
        {
          v126 = v129;
          v127 = v128;
          (*(v129 + 32))(v128, v123, v124);
          sub_1D53A80FC(v127, v101);
          (*(v126 + 8))(v127, v124);
          (*(v121 + 8))(v122, v120);
          return;
        }

        (*(v121 + 8))(v122, v120);
        sub_1D4E6C9CC(v123, &qword_1EC7EC450, &unk_1D5621060);
        v125 = 2;
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v119, 1, 1, v120);
        sub_1D4E6C9CC(v119, &unk_1EC7F1990, &unk_1D561CEF0);
        v125 = 8;
      }

      *v101 = v125;
      return;
    }

    v112 = OUTLINED_FUNCTION_63_2();
    __swift_storeEnumTagSinglePayload(v112, v113, v114, v99);
    v105 = v136;
    OUTLINED_FUNCTION_9_105();
    v106 = v135;
    v115(v135, v111, v99);
    sub_1D53A78A0(v101);
  }

  (*(v105 + 8))(v106, v99);
}

uint64_t MusicLibrary.UpgradeOnPlayAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D53A6DD0(uint64_t a1)
{
  sub_1D56162D8();
  MusicLibrary.UpgradeOnPlayAction.UnsupportedReason.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D53A6E18@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v60 - v5;
  v7 = sub_1D5613198();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  MEMORY[0x1EEE9AC00](v73);
  v11 = &v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v71 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v60 - v18;
  v19 = sub_1D560F8D8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D5613618();
  if (result)
  {
    v24 = result;
    v67 = v9;
    v68 = v6;
    v69 = v11;
    v70 = a1;
    v72 = a2;
    v25 = v20 + 104;
    v26 = *(v20 + 104);
    v62 = *MEMORY[0x1E69758D8];
    v27 = v26(v22);
    MEMORY[0x1EEE9AC00](v27);
    *(&v60 - 2) = v22;
    v28 = v19;
    v29 = sub_1D4F25D64(sub_1D53A8958, (&v60 - 4), v24);
    v32 = *(v20 + 8);
    v31 = v20 + 8;
    v30 = v32;
    v32(v22, v28);
    v65 = v25;
    v66 = v28;
    v63 = v22;
    v64 = v26;
    if (v29)
    {
      v60 = 0;
      v61 = v31;
    }

    else
    {
      v34 = (v26)(v22, *MEMORY[0x1E69758C8], v28);
      MEMORY[0x1EEE9AC00](v34);
      *(&v60 - 2) = v22;
      v35 = sub_1D4F25D64(sub_1D53A8978, (&v60 - 4), v24);

      result = v30(v22, v28);
      if (!v35)
      {
        v33 = 6;
LABEL_19:
        a2 = v72;
        goto LABEL_20;
      }

      v60 = 0;
      v61 = v31;
    }

    v36 = v76;
    sub_1D5613748();
    v38 = v74;
    v37 = v75;
    (*(v74 + 104))(v17, *MEMORY[0x1E69768D0], v75);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v37);
    v39 = *(v73 + 48);
    v40 = v69;
    sub_1D4F7B054(v36, v69, &qword_1EC7EC530, &unk_1D5632150);
    sub_1D4F7B054(v17, v40 + v39, &qword_1EC7EC530, &unk_1D5632150);
    if (__swift_getEnumTagSinglePayload(v40, 1, v37) == 1)
    {
      sub_1D4E6C9CC(v17, &qword_1EC7EC530, &unk_1D5632150);
      sub_1D4E6C9CC(v36, &qword_1EC7EC530, &unk_1D5632150);
      if (__swift_getEnumTagSinglePayload(v40 + v39, 1, v37) == 1)
      {
        v73 = v30;
        sub_1D4E6C9CC(v40, &qword_1EC7EC530, &unk_1D5632150);
LABEL_15:
        v49 = v68;
        sub_1D5613678();
        v50 = sub_1D5614A78();
        if (__swift_getEnumTagSinglePayload(v49, 1, v50) != 1)
        {
          v51 = sub_1D5614A28();
          (*(*(v50 - 8) + 8))(v49, v50);
          v53 = v63;
          v52 = v64;
          v54 = v66;
          v55 = (v64)(v63, v62, v66);
          MEMORY[0x1EEE9AC00](v55);
          *(&v60 - 2) = v53;
          v56 = sub_1D4F25D64(sub_1D53A8978, (&v60 - 4), v51);
          v57 = v73;
          (v73)(v53, v54);
          if (v56)
          {
          }

          else
          {
            v58 = (v52)(v53, *MEMORY[0x1E69758C8], v54);
            MEMORY[0x1EEE9AC00](v58);
            *(&v60 - 2) = v53;
            v59 = sub_1D4F25D64(sub_1D53A8978, (&v60 - 4), v51);

            result = v57(v53, v54);
            if (!v59)
            {
              goto LABEL_18;
            }
          }

          v33 = 4;
          goto LABEL_19;
        }

        v42 = &qword_1EC7EF5D8;
        v43 = &unk_1D5632160;
        v44 = v49;
        goto LABEL_17;
      }
    }

    else
    {
      v41 = v71;
      sub_1D4F7B054(v40, v71, &qword_1EC7EC530, &unk_1D5632150);
      if (__swift_getEnumTagSinglePayload(v40 + v39, 1, v37) != 1)
      {
        v73 = v30;
        v45 = v40 + v39;
        v46 = v67;
        (*(v38 + 32))(v67, v45, v37);
        sub_1D51DF1C8();
        v47 = sub_1D5614D18();
        v48 = *(v38 + 8);
        v48(v46, v37);
        sub_1D4E6C9CC(v17, &qword_1EC7EC530, &unk_1D5632150);
        sub_1D4E6C9CC(v76, &qword_1EC7EC530, &unk_1D5632150);
        v48(v41, v37);
        result = sub_1D4E6C9CC(v40, &qword_1EC7EC530, &unk_1D5632150);
        if ((v47 & 1) == 0)
        {
LABEL_18:
          v33 = 9;
          goto LABEL_19;
        }

        goto LABEL_15;
      }

      sub_1D4E6C9CC(v17, &qword_1EC7EC530, &unk_1D5632150);
      sub_1D4E6C9CC(v76, &qword_1EC7EC530, &unk_1D5632150);
      (*(v38 + 8))(v41, v37);
    }

    v42 = &qword_1EC7EF628;
    v43 = &unk_1D5632440;
    v44 = v40;
LABEL_17:
    result = sub_1D4E6C9CC(v44, v42, v43);
    goto LABEL_18;
  }

  v33 = 3;
LABEL_20:
  *a2 = v33;
  return result;
}

uint64_t sub_1D53A7618@<X0>(char *a1@<X8>)
{
  v2 = sub_1D5613838();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED08, &qword_1D562E660);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  sub_1D56147E8();
  v12 = sub_1D56147B8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    goto LABEL_7;
  }

  sub_1D4F7B054(v11, v9, &qword_1EC7EED08, &qword_1D562E660);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 88))(v9, v12);
  if (v14 == *MEMORY[0x1E69772B0] || v14 != *MEMORY[0x1E69772B8])
  {
    (*(v13 + 8))(v9, v12);
LABEL_7:
    result = sub_1D4E6C9CC(v11, &qword_1EC7EED08, &qword_1D562E660);
    *a1 = 8;
    return result;
  }

  (*(v13 + 96))(v9, v12);
  (*(v3 + 32))(v5, v9, v2);
  sub_1D53A6E18(v5, a1);
  (*(v3 + 8))(v5, v2);
  return sub_1D4E6C9CC(v11, &qword_1EC7EED08, &qword_1D562E660);
}

uint64_t sub_1D53A78A0@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = sub_1D560F8D8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D56138C8();
  if (!result)
  {
    v19 = 3;
LABEL_8:
    *a1 = v19;
    return result;
  }

  v14 = result;
  v27 = v8;
  v28 = v6;
  v29 = v5;
  v30 = v4;
  v31 = a1;
  v15 = *(v10 + 104);
  v16 = v15(v12, *MEMORY[0x1E69758D8], v9);
  MEMORY[0x1EEE9AC00](v16);
  *(&v27 - 2) = v12;
  v17 = sub_1D4F25D64(sub_1D53A8978, (&v27 - 4), v14);
  v18 = *(v10 + 8);
  v18(v12, v9);
  if (v17)
  {
  }

  else
  {
    v20 = v15(v12, *MEMORY[0x1E69758C8], v9);
    MEMORY[0x1EEE9AC00](v20);
    *(&v27 - 2) = v12;
    v21 = sub_1D4F25D64(sub_1D53A8978, (&v27 - 4), v14);

    result = (v18)(v12, v9);
    if (!v21)
    {
      *v31 = 6;
      return result;
    }
  }

  v22 = v30;
  sub_1D5613AC8();
  v23 = v29;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v29);
  a1 = v31;
  if (EnumTagSinglePayload == 1)
  {
    result = sub_1D4E6C9CC(v22, &qword_1EC7EC458, &unk_1D5620CD0);
    v19 = 2;
    goto LABEL_8;
  }

  v26 = v27;
  v25 = v28;
  (*(v28 + 32))(v27, v22, v23);
  sub_1D53A7C24(v26, a1);
  return (*(v25 + 8))(v26, v23);
}

uint64_t sub_1D53A7C24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v40 = sub_1D5613838();
  v50 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D5613D28();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v49 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F68, &qword_1D56502C0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  v17 = *(v13 + 44);
  v18 = sub_1D4ECCCA4(&qword_1EC7EA4F0, &qword_1EC7EA4E8, &unk_1D561C470);
  sub_1D5615608();
  v46 = (v5 + 32);
  v47 = (v5 + 16);
  v45 = (v5 + 88);
  v44 = *MEMORY[0x1E6976E18];
  v42 = v17;
  v43 = (v5 + 8);
  v37 = (v50 + 32);
  v38 = (v5 + 96);
  v36 = (v50 + 8);
  v19 = 9;
  v41 = v18;
  v20 = v48;
  while (1)
  {
    sub_1D5615648();
    if (*&v15[v17] == *v51)
    {
      break;
    }

    LODWORD(v50) = v19;
    v21 = sub_1D5615688();
    v22 = *v47;
    (*v47)(v20);
    v21(v51, 0);
    v23 = v16;
    sub_1D5615658();
    (*v46)(v10, v20, v4);
    v24 = v49;
    (v22)(v49, v10, v4);
    v25 = (*v45)(v24, v4);
    if (v25 == v44)
    {
      (*v38)(v24, v4);
      v26 = v39;
      v27 = v24;
      v28 = v40;
      (*v37)(v39, v27, v40);
      sub_1D53A6E18(v26, v51);
      (*v36)(v26, v28);
      (*v43)(v10, v4);
      v29 = v51[0];
      v19 = v50;
      if (v51[0] == 9)
      {
        result = sub_1D4E6C9CC(v15, &qword_1EC7F2F68, &qword_1D56502C0);
        v33 = 9;
        goto LABEL_13;
      }
    }

    else
    {
      v30 = v24;
      v31 = *v43;
      (*v43)(v10, v4);
      v31(v30, v4);
      v29 = 8;
      v19 = v50;
    }

    if (v19 == 9)
    {
      v19 = v29;
    }

    v16 = v23;
    v17 = v42;
  }

  result = sub_1D4E6C9CC(v15, &qword_1EC7F2F68, &qword_1D56502C0);
  if (v19 == 9)
  {
    v33 = 2;
  }

  else
  {
    v33 = v19;
  }

LABEL_13:
  *v35 = v33;
  return result;
}

uint64_t sub_1D53A80FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v44 = sub_1D5613838();
  v55 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = &qword_1EC7EED08;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED08, &qword_1D562E660);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v10 = sub_1D5614828();
  v49 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v40 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA0, &qword_1D5666390);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  (*(*(v19 - 8) + 16))(v18, a1, v19);
  v20 = *(v16 + 44);
  v21 = sub_1D4ECCCA4(&unk_1EDD53B80, &unk_1EC7F6A30, &qword_1D561C4C0);
  sub_1D5615608();
  v50 = (v49 + 4);
  v51 = (v49 + 2);
  v46 = *MEMORY[0x1E69772B0];
  ++v49;
  v45 = *MEMORY[0x1E69772B8];
  v41 = (v55 + 8);
  v42 = (v55 + 32);
  v22 = 9;
  v47 = v9;
  v52 = v21;
  v53 = v20;
  while (1)
  {
    sub_1D5615648();
    if (*&v18[v20] == *v56)
    {
      break;
    }

    LODWORD(v55) = v22;
    v23 = v4;
    v24 = sub_1D5615688();
    v25 = v54;
    (*v51)(v54);
    v24(v56, 0);
    sub_1D5615658();
    (*v50)(v13, v25, v10);
    sub_1D56147E8();
    v26 = sub_1D56147B8();
    if (__swift_getEnumTagSinglePayload(v9, 1, v26) == 1)
    {
      (*v49)(v13, v10);
      v4 = v23;
LABEL_7:
      v20 = v53;
      v22 = v55;
LABEL_8:
      sub_1D4E6C9CC(v9, v4, &qword_1D562E660);
      v34 = 8;
      goto LABEL_9;
    }

    v27 = v9;
    v28 = v13;
    v29 = v10;
    v30 = v48;
    sub_1D4F7B054(v27, v48, v23, &qword_1D562E660);
    v31 = *(v26 - 8);
    v32 = (*(v31 + 88))(v30, v26);
    if (v32 == v46)
    {
      (*v49)(v28, v29);
      v33 = v30;
      v10 = v29;
      v13 = v28;
      (*(v31 + 8))(v33, v26);
      v4 = &qword_1EC7EED08;
      v9 = v47;
      goto LABEL_7;
    }

    v22 = v55;
    if (v32 != v45)
    {
      v10 = v29;
      v13 = v28;
      (*v49)(v28, v10);
      (*(v31 + 8))(v48, v26);
      v4 = &qword_1EC7EED08;
      v9 = v47;
      v20 = v53;
      goto LABEL_8;
    }

    v35 = v48;
    (*(v31 + 96))(v48, v26);
    v36 = v43;
    v37 = v44;
    (*v42)(v43, v35, v44);
    sub_1D53A6E18(v36, v56);
    (*v41)(v36, v37);
    v10 = v29;
    v13 = v28;
    (*v49)(v28, v10);
    v9 = v47;
    v4 = &qword_1EC7EED08;
    sub_1D4E6C9CC(v47, &qword_1EC7EED08, &qword_1D562E660);
    v34 = v56[0];
    v20 = v53;
    if (v56[0] == 9)
    {
      result = sub_1D4E6C9CC(v18, &qword_1EC7ECEA0, &qword_1D5666390);
      v39 = 9;
      goto LABEL_19;
    }

LABEL_9:
    if (v22 == 9)
    {
      v22 = v34;
    }
  }

  result = sub_1D4E6C9CC(v18, &qword_1EC7ECEA0, &qword_1D5666390);
  if (v22 == 9)
  {
    v39 = 2;
  }

  else
  {
    v39 = v22;
  }

LABEL_19:
  *v40 = v39;
  return result;
}

unint64_t sub_1D53A8770()
{
  result = qword_1EC7F5588;
  if (!qword_1EC7F5588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5588);
  }

  return result;
}

_BYTE *_s19UpgradeOnPlayActionVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s19UpgradeOnPlayActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *sub_1D53A8994(uint64_t a1)
{
  v2 = type metadata accessor for VideoArtwork(0);
  OUTLINED_FUNCTION_4();
  v88 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA78, &qword_1D5634120);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v94 = &v83 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v83 - v13;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE40, &qword_1D561F370);
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_59_0();
  v99 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v83 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE48, &qword_1D561F378);
  MEMORY[0x1EEE9AC00](v21 - 8);
  OUTLINED_FUNCTION_59_0();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v83 - v26);
  v83 = sub_1D53A90F4();
  v28 = sub_1D5614BD8();
  v29 = *(a1 + 64);
  v95 = a1 + 64;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v84 = (v30 + 63) >> 6;
  v89 = v15 + 16;
  v98 = (v15 + 32);
  v91 = v15;
  v92 = a1;
  v93 = v15 + 8;

  v33 = 0;
  v100 = 0;
  v96 = v24;
  v97 = v27;
  v85 = v2;
  v87 = v9;
  while (1)
  {
    v101 = v28;
    if (!v32)
    {
      break;
    }

    v34 = v2;
    v35 = v33;
LABEL_10:
    v36 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v37 = v36 | (v35 << 6);
    v38 = v91;
    v39 = (*(v92 + 48) + 16 * v37);
    v41 = *v39;
    v40 = v39[1];
    v42 = v90;
    v43 = v102;
    (*(v91 + 16))(v90, *(v92 + 56) + *(v91 + 72) * v37, v102);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE50, &unk_1D561F380);
    v45 = *(v44 + 48);
    v46 = v96;
    *v96 = v41;
    *(v46 + 1) = v40;
    v47 = *(v38 + 32);
    v24 = v46;
    v47(&v46[v45], v42, v43);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v44);

    v27 = v97;
    v2 = v34;
LABEL_11:
    sub_1D53A9148(v24, v27);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE50, &unk_1D561F380);
    if (__swift_getEnumTagSinglePayload(v27, 1, v48) == 1)
    {

      return v101;
    }

    v50 = *v27;
    v49 = v27[1];
    (*v98)(v99, v27 + *(v48 + 48), v102);
    v51 = v100;
    sub_1D51AFBEC(v103);
    v28 = v101;
    if (v51)
    {

      v100 = 0;
      v52 = 1;
    }

    else
    {
      v100 = 0;
      v52 = 0;
    }

    v53 = v94;
    v54 = v103;
    __swift_storeEnumTagSinglePayload(v103, v52, 1, v2);
    sub_1D53A91B8(v54, v53);
    if (__swift_getEnumTagSinglePayload(v53, 1, v2) == 1)
    {
      v55 = v2;
      sub_1D50D34F0(v53);
      v56 = sub_1D4F15A78();
      v58 = v57;

      if (v58)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v104 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5590, &unk_1D565C948);
        sub_1D5615D78();
        v28 = v104;

        v59 = v87;
        sub_1D50D3558(v28[7] + *(v88 + 72) * v56, v87);
        v2 = v55;
        sub_1D5615D98();
        sub_1D50D34F0(v103);
        v60 = OUTLINED_FUNCTION_0_215();
        v61(v60);
        v62 = 0;
      }

      else
      {
        sub_1D50D34F0(v103);
        v69 = OUTLINED_FUNCTION_0_215();
        v70(v69);
        v62 = 1;
        v59 = v87;
        v2 = v55;
      }

      __swift_storeEnumTagSinglePayload(v59, v62, 1, v2);
      sub_1D50D34F0(v59);
    }

    else
    {
      sub_1D50D3558(v53, v86);
      swift_isUniquelyReferenced_nonNull_native();
      v104 = v28;
      v63 = sub_1D4F15A78();
      if (__OFADD__(v28[2], (v64 & 1) == 0))
      {
        goto LABEL_33;
      }

      v65 = v63;
      v66 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5590, &unk_1D565C948);
      if (sub_1D5615D78())
      {
        v67 = sub_1D4F15A78();
        v27 = v97;
        if ((v66 & 1) != (v68 & 1))
        {
          goto LABEL_35;
        }

        v65 = v67;
      }

      else
      {
        v27 = v97;
      }

      v28 = v104;
      if (v66)
      {
        v71 = OUTLINED_FUNCTION_2_158();
        sub_1D53A9228(v71, v72);
      }

      else
      {
        v104[(v65 >> 6) + 8] |= 1 << v65;
        v73 = (v28[6] + 16 * v65);
        *v73 = v50;
        v73[1] = v49;
        v74 = OUTLINED_FUNCTION_2_158();
        sub_1D50D3558(v74, v75);
        v76 = v28[2];
        v77 = __OFADD__(v76, 1);
        v78 = v76 + 1;
        if (v77)
        {
          goto LABEL_34;
        }

        v28[2] = v78;
      }

      sub_1D50D34F0(v103);
      v79 = OUTLINED_FUNCTION_0_215();
      v80(v79);
      v2 = v85;
      v24 = v96;
    }
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v84)
    {
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE50, &unk_1D561F380);
      __swift_storeEnumTagSinglePayload(v24, 1, 1, v81);
      v32 = 0;
      goto LABEL_11;
    }

    v32 = *(v95 + 8 * v35);
    ++v33;
    if (v32)
    {
      v34 = v2;
      v33 = v35;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

unint64_t sub_1D53A90F4()
{
  result = qword_1EDD54F20;
  if (!qword_1EDD54F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD54F20);
  }

  return result;
}

uint64_t sub_1D53A9148(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE48, &qword_1D561F378);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D53A91B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFA78, &qword_1D5634120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D53A9228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoArtwork(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D53A928C()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EDD5ECC0);
  v1 = __swift_project_value_buffer(v0, qword_1EDD5ECC0);
  v2 = *MEMORY[0x1E6976828];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static MusicPin.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD5ECB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  v3 = __swift_project_value_buffer(v2, qword_1EDD5ECC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MusicPin.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v214 = a4;
  v221 = a3;
  v223 = a1;
  v212 = a5;
  v6 = sub_1D5612B88();
  v7 = OUTLINED_FUNCTION_12_0(v6, v235);
  v210 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v9);
  v10 = sub_1D5613D28();
  v11 = OUTLINED_FUNCTION_12_0(v10, &v223);
  v215 = v12;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v14);
  v15 = sub_1D5614898();
  v16 = OUTLINED_FUNCTION_12_0(v15, &v222);
  v193[8] = v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v18);
  v19 = sub_1D5613EF8();
  v20 = OUTLINED_FUNCTION_12_0(v19, &v219);
  v193[5] = v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v22);
  v23 = sub_1D5613AF8();
  v24 = OUTLINED_FUNCTION_12_0(v23, v217);
  v193[2] = v25;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v193[1] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_48(v193 - v29);
  v30 = sub_1D560E728();
  v31 = OUTLINED_FUNCTION_12_0(v30, &v229 + 8);
  v202 = v32;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v33);
  v34 = sub_1D560D9A8();
  v35 = OUTLINED_FUNCTION_12_0(v34, v231);
  v204 = v36;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  v201 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  v39 = OUTLINED_FUNCTION_22(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_48(v193 - v40);
  v41 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v197 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v44);
  v45 = sub_1D560D838();
  v46 = OUTLINED_FUNCTION_12_0(v45, &v236);
  v222 = v47;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_2();
  v213 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D50, &unk_1D5643C60);
  v52 = OUTLINED_FUNCTION_22(v51);
  MEMORY[0x1EEE9AC00](v52);
  v54 = v193 - v53;
  v55 = type metadata accessor for MusicPinPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_59_0();
  v59 = v57 - v58;
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_2();
  v224 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v63 = OUTLINED_FUNCTION_22(v62);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_59_0();
  v66 = v64 - v65;
  MEMORY[0x1EEE9AC00](v67);
  v69 = v193 - v68;
  v70 = sub_1D5612478();
  v71 = OUTLINED_FUNCTION_12_0(v70, &v233);
  v206 = v72;
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5();
  v75 = v74 - v73;
  v217[1] = a2;
  v76 = sub_1D560F7E8();
  v77 = sub_1D53AA9C4();
  v198 = v76;
  v216 = v77;
  v219 = sub_1D5614C68();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v41);
  sub_1D560FE18();
  __swift_storeEnumTagSinglePayload(v66, 0, 1, v41);
  v217[0] = v75;
  sub_1D560D4D8();
  sub_1D4E50004(v66, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v69, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4EC76A8(v221, &v225);
  if (!*(&v226 + 1))
  {
    sub_1D4E50004(&v225, &qword_1EC7EEC40, &unk_1D561C070);
    v228 = 0u;
    v229 = 0u;
    v230 = 0;
LABEL_8:
    v81 = v223;
    v82 = v218;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v230 = 0;
    v228 = 0u;
    v229 = 0u;
    goto LABEL_8;
  }

  v81 = v223;
  v82 = v218;
  if (!*(&v229 + 1))
  {
LABEL_9:
    sub_1D4E50004(&v228, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_10;
  }

  sub_1D4E48324(&v228, &v232);
  __swift_project_boxed_opaque_existential_1(&v232, *(&v233 + 1));
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v55);
    sub_1D53AABCC(v54, v59);
    v83 = v224;
    sub_1D53AAB0C(v59, v224);
    v84 = v213;
    sub_1D560D718();
    (*(v222 + 40))(v83 + v55[9], v84, v82);
    v85 = v196;
    sub_1D5612468();
    (*(v197 + 40))(v83 + v55[10], v85, v41);
    v86 = sub_1D5612458();
    v88 = v87;
    sub_1D53AAB70(v59);
    v89 = (v83 + v55[11]);

    *v89 = v86;
    v89[1] = v88;
    __swift_destroy_boxed_opaque_existential_1(&v232);
    v90 = v220;
    v91 = v215;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v189, v190, v191, v55);
  sub_1D4E50004(v54, &qword_1EC7F1D50, &unk_1D5643C60);
  __swift_destroy_boxed_opaque_existential_1(&v232);
LABEL_10:
  type metadata accessor for MusicPin.Item(0);
  v92 = v55;
  v93 = v224;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  (*(v222 + 16))(&v93[v92[9]], v81, v82);
  sub_1D5612468();
  v197 = sub_1D5612458();
  v99 = v98;
  sub_1D5614A88();
  v100 = OUTLINED_FUNCTION_18_77();
  v101 = OUTLINED_FUNCTION_18_77();
  v102 = OUTLINED_FUNCTION_18_77();
  v103 = OUTLINED_FUNCTION_18_77();
  *v93 = 3;
  v93[v92[6]] = 4;
  v104 = v92;
  v105 = &v93[v92[7]];
  *v105 = 0;
  v105[8] = 1;
  if (qword_1EC7E9388 != -1)
  {
    swift_once();
  }

  v106 = qword_1EC87C4C0;
  v91 = v215;
  if (qword_1EC87C4C0 >> 62)
  {
    sub_1D560CDE8();

    v192 = sub_1D5615E18();

    v106 = v192;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v55 = v104;
  v107 = v224;
  *&v224[v104[8]] = v106;
  v108 = (v107 + v104[11]);
  *v108 = v197;
  v108[1] = v99;
  *(v107 + v104[12]) = v100;
  *(v107 + v104[13]) = v101;
  *(v107 + v104[14]) = v102;
  *(v107 + v104[15]) = v103;
  v90 = v220;
  v82 = v218;
LABEL_15:
  v109 = sub_1D560F7B8();
  if (!v109)
  {
    goto LABEL_38;
  }

  v110 = v109;

  v112 = sub_1D53AAA18(v111);
  if (v112 == 4)
  {
    v113 = 3;
  }

  else
  {
    v113 = v112;
  }

  type metadata accessor for MusicPin.Item(0);
  OUTLINED_FUNCTION_33();
  v197 = v114;
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v114);
  v118 = v221;
  sub_1D4EC76A8(v221, &v232);
  sub_1D4EC76A8(v118, &v228);
  if (!*(&v229 + 1))
  {
    sub_1D4E50004(&v228, &qword_1EC7EEC40, &unk_1D561C070);
    v225 = 0u;
    v226 = 0u;
    v227 = 0;
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v227 = 0;
    v225 = 0u;
    v226 = 0u;
    goto LABEL_25;
  }

  if (!*(&v226 + 1))
  {
LABEL_25:
    sub_1D4E50004(&v225, &qword_1EC7EC520, &unk_1D5621050);
    goto LABEL_26;
  }

  sub_1D4E48324(&v225, &v228);
  __swift_project_boxed_opaque_existential_1(&v228, *(&v229 + 1));
  v91 = v215;
  sub_1D560D078();
  sub_1D4E50004(&v232, &qword_1EC7EEC40, &unk_1D561C070);
  v232 = v225;
  v233 = v226;
  v234 = v227;
  __swift_destroy_boxed_opaque_existential_1(&v228);
LABEL_26:
  v215 = v113;
  v207 = v55;
  v196 = v110;
  switch(v113)
  {
    case 1:
      OUTLINED_FUNCTION_30_56();
      OUTLINED_FUNCTION_27_61();
      v158 = sub_1D560D938();
      OUTLINED_FUNCTION_25_57(v158);
      OUTLINED_FUNCTION_29_53();
      OUTLINED_FUNCTION_14_76();
      sub_1D4E50004(v55, &unk_1EC7EBF30, &qword_1D561C8C0);
      v159 = OUTLINED_FUNCTION_10_101();
      v160(v159);
      v161 = OUTLINED_FUNCTION_9_106();
      v162(v161);
      v163 = OUTLINED_FUNCTION_7_117();
      v164(v163);
      OUTLINED_FUNCTION_36_48();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_12_85();
      sub_1D5613D98();
      v165 = OUTLINED_FUNCTION_11_102();
      v166(v165);
      sub_1D4E50004(v90, &qword_1EC7EEDB8, &qword_1D5640B80);
      v167 = OUTLINED_FUNCTION_20_79();
      v168(v167);
      goto LABEL_35;
    case 2:
      OUTLINED_FUNCTION_30_56();
      OUTLINED_FUNCTION_27_61();
      v130 = sub_1D560D968();
      OUTLINED_FUNCTION_25_57(v130);
      OUTLINED_FUNCTION_29_53();
      OUTLINED_FUNCTION_14_76();
      sub_1D4E50004(v55, &unk_1EC7EBF30, &qword_1D561C8C0);
      v131 = OUTLINED_FUNCTION_10_101();
      v132(v131);
      v133 = OUTLINED_FUNCTION_9_106();
      v134(v133);
      v135 = OUTLINED_FUNCTION_7_117();
      v136(v135);
      OUTLINED_FUNCTION_36_48();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_12_85();
      sub_1D56144C8();
      v137 = OUTLINED_FUNCTION_11_102();
      v138(v137);
      sub_1D4E50004(v90, &qword_1EC7EEDB8, &qword_1D5640B80);
      v139 = OUTLINED_FUNCTION_20_79();
      v140(v139);
      goto LABEL_35;
    case 3:
      v141 = v201;
      sub_1D560D928();
      v142 = v200;
      sub_1D560D588();
      v143 = v199;
      sub_1D560D4F8();
      v144 = v193[0];
      sub_1D560F7D8();
      sub_1D4E50004(v143, &unk_1EC7EBF30, &qword_1D561C8C0);
      (*(v202 + 8))(v142, v203);
      (*(v204 + 8))(v141, v205);
      v145 = v222;
      (*(v222 + 16))(v213, v144, v82);
      OUTLINED_FUNCTION_36_48();
      swift_unknownObjectRetain();

      v146 = v195;
      OUTLINED_FUNCTION_222();
      v147 = v193[10];
      sub_1D5613C88();
      v148 = v194;
      (*(v91 + 16))(v194, v146, v147);
      v149 = OUTLINED_FUNCTION_222();
      v151 = v150(v149);
      if (v151 != *MEMORY[0x1E6976E18])
      {
        if (v151 == *MEMORY[0x1E6976DF8])
        {

          OUTLINED_FUNCTION_30_56();
          (*(v91 + 8))(v195, v147);
          v169 = OUTLINED_FUNCTION_31_47();
          v170(v169);
          sub_1D4E50004(v90, &qword_1EC7EEDB8, &qword_1D5640B80);
          v171 = OUTLINED_FUNCTION_222();
          v172(v171);
          v156 = sub_1D560EEA8();
          v157 = v148;
          goto LABEL_34;
        }

        while (1)
        {
LABEL_38:
          sub_1D5615E08();
          __break(1u);
        }
      }

      OUTLINED_FUNCTION_30_56();
      (*(v91 + 8))(v146, v147);
      v152 = OUTLINED_FUNCTION_31_47();
      v153(v152);
      sub_1D4E50004(v90, &qword_1EC7EEDB8, &qword_1D5640B80);
      v154 = OUTLINED_FUNCTION_222();
      v155(v154);
      v156 = sub_1D5613838();
      v157 = v148;
LABEL_34:
      v214 = v145;
      (*(*(v156 - 8) + 32))(v90, v157);
LABEL_35:
      v173 = v197;
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v90, 0, 1, v173);
      swift_getKeyPath();
      LOBYTE(v228) = 0;
      v174 = *MEMORY[0x1E6976668];
      v175 = v210;
      v213 = *(v210 + 13);
      (v213)(v209, v174, v211);
      v176 = sub_1D53ABB24(&qword_1EC7F1D58, type metadata accessor for MusicPinPropertyProvider, &unk_1D564BCEC);
      sub_1D53AAAB8();
      sub_1D5610D88();

      v177 = *(v175 + 1);
      v178 = OUTLINED_FUNCTION_16_2();
      v177(v178);
      swift_getKeyPath();
      v179 = OUTLINED_FUNCTION_26_67();
      v180 = v213;
      v213(v179);
      sub_1D5610DB8();

      v181 = OUTLINED_FUNCTION_16_2();
      v210 = v177;
      v177(v181);
      swift_getKeyPath();
      LOBYTE(v228) = v215;
      v182 = OUTLINED_FUNCTION_26_67();
      v180(v182);
      sub_1D5610DB8();

      v183 = OUTLINED_FUNCTION_16_2();
      v177(v183);
      swift_getKeyPath();
      LOBYTE(v228) = 1;
      v184 = OUTLINED_FUNCTION_26_67();
      v180(v184);
      v185 = v224;
      sub_1D5610D68();

      v186 = OUTLINED_FUNCTION_16_2();
      v210(v186);
      *(&v229 + 1) = v207;
      v230 = v176;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v228);
      sub_1D53AAB0C(v185, boxed_opaque_existential_0);
      MusicPin.init(propertyProvider:)(&v228, v212);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1D4E50004(v221, &qword_1EC7EEC40, &unk_1D561C070);
      v214(v223, v218);
      sub_1D4E50004(&v232, &qword_1EC7EEC40, &unk_1D561C070);
      sub_1D4E50004(v220, &qword_1EC7EEDB8, &qword_1D5640B80);
      (*(v206 + 8))(v217[0], v208);
      return sub_1D53AAB70(v185);
    default:
      OUTLINED_FUNCTION_30_56();
      OUTLINED_FUNCTION_27_61();
      v119 = sub_1D560D908();
      OUTLINED_FUNCTION_25_57(v119);
      OUTLINED_FUNCTION_29_53();
      OUTLINED_FUNCTION_14_76();
      sub_1D4E50004(v55, &unk_1EC7EBF30, &qword_1D561C8C0);
      v120 = OUTLINED_FUNCTION_10_101();
      v121(v120);
      v122 = OUTLINED_FUNCTION_9_106();
      v123(v122);
      v124 = OUTLINED_FUNCTION_7_117();
      v125(v124);
      OUTLINED_FUNCTION_36_48();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_12_85();
      sub_1D56138E8();
      v126 = OUTLINED_FUNCTION_11_102();
      v127(v126);
      sub_1D4E50004(v90, &qword_1EC7EEDB8, &qword_1D5640B80);
      v128 = OUTLINED_FUNCTION_20_79();
      v129(v128);
      goto LABEL_35;
  }
}

unint64_t sub_1D53AA9C4()
{
  result = qword_1EDD5ED10[0];
  if (!qword_1EDD5ED10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD5ED10);
  }

  return result;
}

uint64_t sub_1D53AAA18(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = sub_1D4F0E844(2), (v3 & 1) == 0))
  {

    return 4;
  }

  sub_1D4E5194C(*(a1 + 56) + 32 * v2, v6);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 4;
  }

  result = sub_1D53AB894(v5);
  if (result == 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1D53AAAB8()
{
  result = qword_1EC7F5598;
  if (!qword_1EC7F5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5598);
  }

  return result;
}

uint64_t sub_1D53AAB0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPinPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D53AAB70(uint64_t a1)
{
  v2 = type metadata accessor for MusicPinPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D53AABCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPinPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MusicPin.convertToLegacyModelStorageDictionary(for:)()
{
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v175 = v1;
  v176 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_13();
  v163 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_2();
  v174 = v4;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v172 = v6;
  v173 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v147 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_2();
  v171 = v9;
  OUTLINED_FUNCTION_70_0();
  v167 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v159 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_2();
  v155 = v13;
  OUTLINED_FUNCTION_70_0();
  v151 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  v143 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_2();
  v139 = v17;
  OUTLINED_FUNCTION_70_0();
  sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v19 = sub_1D5613AF8();
  v20 = OUTLINED_FUNCTION_12_0(v19, &v179);
  v127 = v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_2();
  v24 = OUTLINED_FUNCTION_48(v23);
  type metadata accessor for MusicPin.Item(v24);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  sub_1D4ECC8E4();
  v178 = sub_1D5614BD8();
  if (qword_1EC7E9020 != -1)
  {
    swift_once();
  }

  sub_1D53ABB24(&qword_1EDD5ECA0, type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  sub_1D53ABB24(&qword_1EDD5EC98, type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  OUTLINED_FUNCTION_28_59();
  sub_1D560EC28();
  [objc_opt_self() rawValueForAction_];
  v29 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8B30(v29, 0, v30, v31, v32, v33, v34, v35, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167);
  v36 = sub_1D51D53E8();
  sub_1D53AB4A8(v36);
  v37 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8B30(v37, 2, v38, v39, v40, v41, v42, v43, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168);
  if (qword_1EC7E9038 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v44 = OUTLINED_FUNCTION_39_5();
  sub_1D4EC8B30(v44, 1, v45, v46, v47, v48, v49, v50, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169);
  MusicPin.item.getter(v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v52 = v142;
      v51 = v146;
      v103 = OUTLINED_FUNCTION_13_86();
      v53 = v154;
      v104(v103);
      v105 = OUTLINED_FUNCTION_8_115();
      v106(v105);
      OUTLINED_FUNCTION_23_64();
      v107 = OUTLINED_FUNCTION_15_82();
      v108(v107);
      v109 = OUTLINED_FUNCTION_141();
      sub_1D4ECC064(v109, v110);
      v112 = v111;
      v113 = [v111 underlyingObject];

      OUTLINED_FUNCTION_28_59();
      sub_1D56159A8();
      swift_unknownObjectRelease();
      v63 = OUTLINED_FUNCTION_39_5();
      v70 = 5;
      break;
    case 2u:
      v52 = v158;
      v51 = v162;
      v82 = OUTLINED_FUNCTION_13_86();
      v53 = v170;
      v83(v82);
      v84 = OUTLINED_FUNCTION_8_115();
      v85(v84);
      OUTLINED_FUNCTION_23_64();
      v86 = OUTLINED_FUNCTION_15_82();
      v87(v86);
      v88 = OUTLINED_FUNCTION_141();
      sub_1D4ECB998(v88, v89);
      v80 = v90;
      v81 = [v90 underlyingObject];
      goto LABEL_9;
    case 3u:
      v52 = v171;
      v51 = v172;
      v92 = OUTLINED_FUNCTION_13_86();
      v53 = v173;
      v93(v92);
      v94 = OUTLINED_FUNCTION_8_115();
      v95(v94);
      OUTLINED_FUNCTION_23_64();
      v96 = OUTLINED_FUNCTION_15_82();
      v97(v96);
      v98 = OUTLINED_FUNCTION_141();
      sub_1D4ECAE6C(v98, v99);
      v101 = v100;
      v102 = [v100 underlyingObject];

      OUTLINED_FUNCTION_28_59();
      sub_1D56159A8();
      swift_unknownObjectRelease();
      v63 = OUTLINED_FUNCTION_39_5();
      v70 = 6;
      break;
    case 4u:
      v52 = v174;
      v51 = v175;
      v71 = OUTLINED_FUNCTION_13_86();
      v53 = v176;
      v72(v71);
      v73 = OUTLINED_FUNCTION_8_115();
      v74(v73);
      OUTLINED_FUNCTION_23_64();
      v75 = OUTLINED_FUNCTION_15_82();
      v76(v75);
      v77 = OUTLINED_FUNCTION_141();
      sub_1D4ECB9C0(v77, v78);
      v80 = v79;
      v81 = [v79 underlyingObject];
LABEL_9:
      v91 = v81;

      OUTLINED_FUNCTION_28_59();
      sub_1D56159A8();
      swift_unknownObjectRelease();
      v63 = OUTLINED_FUNCTION_39_5();
      v70 = 7;
      break;
    default:
      v51 = v130;
      v52 = v122;
      v53 = v134;
      (*(v130 + 32))(v122, v28, v134);
      v54 = OUTLINED_FUNCTION_8_115();
      v55(v54);
      OUTLINED_FUNCTION_23_64();
      v56 = OUTLINED_FUNCTION_15_82();
      v57(v56);
      v58 = OUTLINED_FUNCTION_141();
      sub_1D4ECB9E8(v58, v59);
      v61 = v60;
      v62 = [v60 underlyingObject];

      OUTLINED_FUNCTION_28_59();
      sub_1D56159A8();
      swift_unknownObjectRelease();
      v63 = OUTLINED_FUNCTION_39_5();
      v70 = 4;
      break;
  }

  sub_1D4EC8B30(v63, v70, v64, v65, v66, v67, v68, v69, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170);
  (*(v51 + 8))(v52, v53);
  return v178;
}

Swift::Int __swiftcall MusicPin.Action.convertToLegacyModelRawValue()()
{
  v1 = qword_1D565CC30[*v0];
  v2 = objc_opt_self();

  return [v2 rawValueForAction_];
}

id sub_1D53AB4A8(unsigned __int8 a1)
{
  v1 = a1;
  v2 = objc_opt_self();

  return [v2 rawValueForType_];
}

uint64_t MusicPin.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976828];
  sub_1D5613158();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t MusicPin.LegacyModelMusicPinPropertyKey.init(rawValue:)@<X0>(char *a2@<X8>)
{
  v3 = sub_1D5615EF8();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *a2 = v5;
  return result;
}

unint64_t MusicPin.LegacyModelMusicPinPropertyKey.rawValue.getter()
{
  result = 0xD000000000000026;
  switch(*v0)
  {
    case 1:
    case 7:
      result = 0xD000000000000021;
      break;
    case 2:
    case 5:
      result = 0xD000000000000023;
      break;
    case 3:
    case 6:
      result = 0xD000000000000025;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D53AB6A0@<X0>(unint64_t *a1@<X8>)
{
  result = MusicPin.LegacyModelMusicPinPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D53AB6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D53ABB24(&qword_1EDD5EC90, type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D53AB780(uint64_t a1, uint64_t a2)
{
  sub_1D53ABB24(&qword_1EDD5EC88, type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);

  return sub_1D56132F8();
}

MusicKitInternal::MusicPin::Action_optional __swiftcall MusicPin.Action.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v2 = v1;
  v3 = [objc_opt_self() actionForRawValue_];
  v4 = 0x201u >> (8 * v3);
  if (v3 >= 3)
  {
    LOBYTE(v4) = 3;
  }

  *v2 = v4;
  return v3;
}

Swift::Int sub_1D53AB86C@<X0>(Swift::Int *a1@<X8>)
{
  result = MusicPin.Action.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

uint64_t sub_1D53AB894(uint64_t a1)
{
  v1 = [objc_opt_self() typeForRawValue_];
  if (v1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * v1));
  }
}

uint64_t sub_1D53AB8F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D53AB894(*a1);
  *a2 = result;
  return result;
}

id sub_1D53AB91C@<X0>(void *a1@<X8>)
{
  result = sub_1D53AB4A8(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1D53AB94C()
{
  result = qword_1EDD5ED00;
  if (!qword_1EDD5ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5ED00);
  }

  return result;
}

unint64_t sub_1D53AB9A8()
{
  result = qword_1EDD5ECF8;
  if (!qword_1EDD5ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5ECF8);
  }

  return result;
}

_BYTE *_s30LegacyModelMusicPinPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D53ABB24(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_25_57(uint64_t a1)
{

  return sub_1D560D588();
}

uint64_t sub_1D53ABC5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E360;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F55A0, &unk_1D565CCC8);
  swift_getKeyPath();
  v1 = sub_1D5612ED8();

  *(v0 + 32) = v1;
  swift_getKeyPath();
  v2 = sub_1D5612ED8();

  *(v0 + 40) = v2;
  swift_getKeyPath();
  v3 = sub_1D5612ED8();

  *(v0 + 48) = v3;
  qword_1EC87C5A0 = v0;
  return result;
}

id sub_1D53ABD50()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69776A8]);

  return [v0 init];
}

uint64_t sub_1D53ABD88(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2A30, &unk_1D564A2B8);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    v3 = qword_1EC7E8C08;

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_7_0(&qword_1EC7E8C08);
    }

    v29 = qword_1EC7EE5D8;
    v4 = sub_1D53ACD9C();
    OUTLINED_FUNCTION_3(v4, v5, v6, v4, v7, v8, v9, v10, v26, v27, v28, v2, v29);
    if (sub_1D5614D18())
    {

      OUTLINED_FUNCTION_33_3();
      return 0xD00000000000001FLL;
    }

    sub_1D5615B68();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD000000000000025);
    v21 = OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_10_0(v21, v22, v21, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v23, v24, v25);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_6_20();
  }

  else
  {
    OUTLINED_FUNCTION_0();
    sub_1D5615B68();
    OUTLINED_FUNCTION_7_2();
    MEMORY[0x1DA6EAC70](0xD00000000000002ELL, 0x80000001D5688EF0);
    v12 = OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_10_0(v12, v13, v12, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v14, v15, v16);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_6_20();
  }

  result = OUTLINED_FUNCTION_22_61("Fatal error", v17, v18, v19, v20, "MusicKitInternal/TVSeason+LegacyModelLibraryRequestable.swift");
  __break(1u);
  return result;
}

uint64_t sub_1D53ABF24@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2A30, &unk_1D564A2B8);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = qword_1EC7E8C08;

    if (v5 != -1)
    {
      OUTLINED_FUNCTION_7_0(&qword_1EC7E8C08);
    }

    v49 = qword_1EC7EE5D8;
    v6 = sub_1D53ACD9C();
    OUTLINED_FUNCTION_3(v6, v7, v8, v9, v10, v11, v12, v13, v43, v45, v47, v4, v49);
    if (sub_1D5614D18())
    {

      v14 = *MEMORY[0x1E6976860];
      v15 = sub_1D5613158();
      (*(*(v15 - 8) + 104))(a2, v14, v15);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v15);
    }

    v17 = qword_1EC7E8BF8;

    if (v17 != -1)
    {
      v18 = OUTLINED_FUNCTION_9_4(&qword_1EC7E8BF8);
    }

    OUTLINED_FUNCTION_3(v18, v19, v20, v21, v22, v23, v24, v25, v44, v46, v48, v4, qword_1EC7EE5C8);
    v26 = sub_1D5614D18();

    if (v26)
    {
      v27 = sub_1D5613158();
      __swift_storeEnumTagSinglePayload(a2, 1, 1, v27);
    }

    OUTLINED_FUNCTION_0();
    sub_1D5615B68();
    OUTLINED_FUNCTION_7_2();
    MEMORY[0x1DA6EAC70](0xD00000000000001FLL, 0x80000001D568D2D0);
    v38 = OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_10_0(v38, v39, v38, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v40, v41, v42);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_6_20();
  }

  else
  {
    OUTLINED_FUNCTION_0();
    sub_1D5615B68();
    OUTLINED_FUNCTION_7_2();
    v28 = OUTLINED_FUNCTION_31_3();
    MEMORY[0x1DA6EAC70](v28, 0xE900000000000020);
    v29 = OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_10_0(v29, v30, v29, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v31, v32, v33);
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD00000000000001DLL);
    OUTLINED_FUNCTION_6_20();
  }

  result = OUTLINED_FUNCTION_22_61("Fatal error", v34, v35, v36, v37, "MusicKitInternal/TVSeason+LegacyModelLibraryRequestable.swift");
  __break(1u);
  return result;
}

uint64_t sub_1D53AC198()
{
  OUTLINED_FUNCTION_60();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[10] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA918, &qword_1D561D188);
  v1[15] = v6;
  v1[16] = *(v6 - 8);
  v1[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6600, &unk_1D561D190);
  v1[18] = v7;
  v1[19] = *(v7 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for TVSeason(0);
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D53AC300, 0, 0);
}

uint64_t sub_1D53AC300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16[11];
  v16[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2A30, &unk_1D564A2B8);
  v18 = swift_dynamicCastClass();
  v16[24] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v16[25] = v19;
    v20 = sub_1D53ACE00(&qword_1EC7F55A8, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    *v19 = v16;
    v19[1] = sub_1D53AC4D0;
    v27 = v16[21];
    v26 = v16[22];

    return MEMORY[0x1EEDCE198](v26, v27, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    sub_1D5615B68();
    v16[2] = 0;
    v16[3] = 0xE000000000000000;
    v28 = OUTLINED_FUNCTION_31_3();
    MEMORY[0x1DA6EAC70](v28, 0xE900000000000020);
    v16[6] = v17;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD00000000000001DLL);
    return OUTLINED_FUNCTION_22_61("Fatal error", v29, v30, v16[2], v16[3], "MusicKitInternal/TVSeason+LegacyModelLibraryRequestable.swift");
  }
}

uint64_t sub_1D53AC4D0()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  *(v4 + 208) = v0;

  if (v0)
  {
    v5 = sub_1D53ACA7C;
  }

  else
  {
    v5 = sub_1D53AC5D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D53AC5D8()
{
  v1 = qword_1EC7E8BF8;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_9_4(&qword_1EC7E8BF8);
  }

  v2 = v0[24];
  v0[7] = qword_1EC7EE5C8;
  v0[8] = v2;
  sub_1D53ACD9C();
  v3 = sub_1D5614D18();

  if (v3)
  {
    type metadata accessor for TVEpisode(0);
    sub_1D53ACE00(&qword_1EC7EA920, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    sub_1D560DD68();
    sub_1D560CB98();
    sub_1D560DC98();
    swift_getKeyPath();
    sub_1D560DD08();

    _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
    v4 = swift_task_alloc();
    v0[27] = v4;
    *v4 = v0;
    v4[1] = sub_1D53AC85C;
    v5 = v0[17];
    v6 = v0[18];

    return MEMORY[0x1EEDCEAC0](v5, v6);
  }

  else
  {
    v7 = v0[11];
    sub_1D5615B68();
    v0[4] = 0;
    v0[5] = 0xE000000000000000;
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD00000000000002CLL);
    v0[9] = v7;
    sub_1D560CDE8();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    return OUTLINED_FUNCTION_22_61("Fatal error", v8, v9, v0[4], v0[5], "MusicKitInternal/TVSeason+LegacyModelLibraryRequestable.swift");
  }
}

uint64_t sub_1D53AC85C()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  *(v4 + 224) = v0;

  if (v0)
  {
    v5 = sub_1D53ACB04;
  }

  else
  {
    v5 = sub_1D53AC964;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D53AC964()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[10];
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  v8[4] = &protocol witness table for MusicItemCollection<A>;
  __swift_allocate_boxed_opaque_existential_0(v8);
  sub_1D560DE38();

  (*(v7 + 8))(v4, v6);
  (*(v3 + 8))(v2, v5);
  sub_1D53ACE48(v1);

  OUTLINED_FUNCTION_55();

  return v9();
}

uint64_t sub_1D53ACA7C()
{

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D53ACB04()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];

  (*(v3 + 8))(v2, v4);
  sub_1D53ACE48(v1);

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D53ACC28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D51592F8;

  return sub_1D53AC198();
}

uint64_t sub_1D53ACCE8(void *a1)
{
  a1[1] = sub_1D53ACE00(&qword_1EC7F42A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  a1[2] = sub_1D53ACE00(&qword_1EC7EA938, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  result = sub_1D53ACE00(&qword_1EC7EA440, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  a1[3] = result;
  return result;
}

unint64_t sub_1D53ACD9C()
{
  result = qword_1EC7F2A38;
  if (!qword_1EC7F2A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F2A30, &unk_1D564A2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2A38);
  }

  return result;
}

uint64_t sub_1D53ACE00(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D53ACE48(uint64_t a1)
{
  v2 = type metadata accessor for TVSeason(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Playlist.Folder.Item.init<A>(_:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v96 = a3;
  v97 = a5;
  v98 = a2;
  v101 = a6;
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v87 = v9;
  v88 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v100 = v11 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  OUTLINED_FUNCTION_4();
  v86 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v83 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v75 - v17;
  OUTLINED_FUNCTION_70_0();
  v94 = sub_1D5610588();
  OUTLINED_FUNCTION_4();
  v84 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v93 = v21 - v20;
  v99 = a4;
  v90 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v92 = v24 - v23;
  v25 = OUTLINED_FUNCTION_70_0();
  v26 = type metadata accessor for Playlist.Folder(v25);
  MEMORY[0x1EEE9AC00](v26 - 8);
  OUTLINED_FUNCTION_5();
  v82 = (v28 - v27);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2D8, &unk_1D5630FD0);
  OUTLINED_FUNCTION_4();
  v81 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_59_0();
  v79 = v31 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v80 = &v75 - v34;
  OUTLINED_FUNCTION_70_0();
  v35 = sub_1D5611C58();
  OUTLINED_FUNCTION_4();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v41 = v40 - v39;
  OUTLINED_FUNCTION_70_0();
  v42 = sub_1D5612338();
  OUTLINED_FUNCTION_4();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_59_0();
  v48 = v46 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v75 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F55B0, &qword_1D565CD70);
  sub_1D5610648();
  (*(v44 + 16))(v48, v51, v42);
  v53 = (*(v44 + 88))(v48, v42);
  v54 = *MEMORY[0x1E6976420];
  v89 = a1;
  if (v53 == v54)
  {
    (*(v44 + 96))(v48, v42);
    v77 = v37;
    v55 = *(v37 + 32);
    v76 = v41;
    v75 = v35;
    v55(v41, v48, v35);
    sub_1D53ADC10(&qword_1EC7EF350, MEMORY[0x1E69763B8], MEMORY[0x1E69763B0]);
    v56 = v80;
    v100 = v44;
    sub_1D5610598();
    v57 = v81;
    v58 = v79;
    (*(v81 + 16))(v79, v56, v91);
    v59 = v90;
    v60 = v92;
    v61 = v98;
    v62 = v99;
    (*(v90 + 16))(v92, v98, v99);
    v63 = v60;
    v64 = v82;
    Playlist.Folder.init<A>(_:configuration:sharedRelatedItemStore:)(v58, v63, v96, v62, v97, v82);
    (*(v59 + 8))(v61, v62);
    (*(*(v52 - 8) + 8))(v89, v52);
    (*(v57 + 8))(v56, v91);
    (*(v77 + 8))(v76, v75);
    (*(v100 + 8))(v51, v42);
    sub_1D4F1870C(v64, v101);
LABEL_5:
    type metadata accessor for Playlist.Folder.Item(0);
    return swift_storeEnumTagMultiPayload();
  }

  v91 = v51;
  v65 = v42;
  v66 = v92;
  v67 = v90;
  v68 = v98;
  if (v53 == *MEMORY[0x1E6976428])
  {
    v69 = *(v44 + 96);
    v78 = v65;
    v69(v48, v65);
    v70 = v84;
    (*(v84 + 32))(v93, v48, v94);
    sub_1D53ADC10(&qword_1EDD53310, MEMORY[0x1E6975CF0], MEMORY[0x1E6975CE8]);
    v71 = v85;
    sub_1D5610598();
    v72 = v86;
    (*(v86 + 16))(v83, v71, v95);
    v73 = v99;
    (*(v67 + 16))(v66, v68, v99);
    sub_1D56148A8();
    (*(v67 + 8))(v68, v73);
    (*(*(v52 - 8) + 8))(v89, v52);
    (*(v72 + 8))(v71, v95);
    (*(v70 + 8))(v93, v94);
    (*(v44 + 8))(v91, v78);
    (*(v87 + 32))(v101, v100, v88);
    goto LABEL_5;
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t Playlist.Folder.Item.convertToCloudResource<A>(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v52 = a2;
  v53 = a3;
  v54 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  OUTLINED_FUNCTION_4();
  v48 = v5;
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - v6;
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v46 = v9;
  v47 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1D5612338();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2D8, &unk_1D5630FD0);
  OUTLINED_FUNCTION_4();
  v45 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  v25 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v29 = type metadata accessor for Playlist.Folder.Item(0);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  sub_1D4F18770(v50, v31 - v30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v46;
    v33 = v47;
    (*(v46 + 32))(v12, v32, v47);
    sub_1D5614638();
    v35 = v49;
    sub_1D5610648();
    v36 = OUTLINED_FUNCTION_5_119();
    v37(v36);
    OUTLINED_FUNCTION_2_159();
    sub_1D53ADC10(v38, v39, MEMORY[0x1E6976430]);
    OUTLINED_FUNCTION_4_124();
    (*(v15 + 8))(v19, v13);
    (*(v48 + 8))(v7, v35);
    return (*(v34 + 8))(v12, v33);
  }

  else
  {
    sub_1D4F1870C(v32, v28);
    Playlist.Folder.convertToCloudResource<A>(configuration:)(v51, v52, v53, v24);
    sub_1D5610648();
    v41 = OUTLINED_FUNCTION_5_119();
    v42(v41);
    OUTLINED_FUNCTION_2_159();
    sub_1D53ADC10(v43, v44, MEMORY[0x1E6976430]);
    OUTLINED_FUNCTION_4_124();
    (*(v15 + 8))(v19, v13);
    (*(v45 + 8))(v24, v20);
    return sub_1D4F187D4(v28);
  }
}

uint64_t sub_1D53ADBA4(uint64_t a1)
{
  sub_1D53ADC10(&qword_1EC7EF360, type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);

  return sub_1D5612668();
}

uint64_t sub_1D53ADC10(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for StorePlatformAlbum(uint64_t a1)
{
  result = qword_1EDD56128;
  if (!qword_1EDD56128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D53ADCD8(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD53A08, MEMORY[0x1E6975528]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1D511651C(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_1D4E6D600(319, &qword_1EC7EFD68, &qword_1EC7EFD70, ":Q\a");
        if (v10 > 0x3F)
        {
          return v8;
        }

        sub_1D4E6D600(319, &qword_1EC7F55C0, &qword_1EC7F55C8, &qword_1D565CE08);
        if (v11 > 0x3F)
        {
          return v8;
        }

        sub_1D4E6D600(319, &qword_1EC7F02B8, &qword_1EC7F02C0, qword_1D565CE10);
        if (v12 > 0x3F)
        {
          return v8;
        }

        sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
        if (v13 > 0x3F)
        {
          return v8;
        }

        sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
        if (v14 > 0x3F)
        {
          return v8;
        }

        sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
        if (v15 > 0x3F)
        {
          return v8;
        }

        sub_1D4E6D600(319, &qword_1EC7EDD50, &qword_1EC7EDD58, qword_1D5636D90);
        if (v16 > 0x3F)
        {
          return v8;
        }

        sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
        if (v17 > 0x3F)
        {
          return v8;
        }

        sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
        if (v18 > 0x3F)
        {
          return v8;
        }

        sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
        if (v19 > 0x3F)
        {
          return v8;
        }

        sub_1D4E6D600(319, &qword_1EC7EDD60, &qword_1EC7EDD68, qword_1D56285B0);
        if (v20 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_1D4E518A0(319, &qword_1EDD52708, MEMORY[0x1E69E6530]);
          v2 = v21;
          if (v22 <= 0x3F)
          {
            sub_1D511651C(319, &qword_1EDD56980, type metadata accessor for StorePlatformUber);
            v2 = v23;
            if (v24 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1D53AE0EC()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v204 = type metadata accessor for StorePlatformUber(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v207 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v205 = v9;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFDD8, &unk_1D5639570);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v206 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v14 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v191 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v191 - v20;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v191 - v23;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v212 = v25;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v210 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  v211 = v30;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  v215 = v32;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v218 = v34;
  v219 = v33;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v213 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v38 = OUTLINED_FUNCTION_22(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_59_0();
  v203 = v39 - v40;
  OUTLINED_FUNCTION_23();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v191 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v217 = &v191 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_59_0();
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = &v191 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v53 = v3;
  v55 = &v191 - v54;
  v56 = v1;
  v57 = v53[1];
  v58 = v1[1];
  if (v57)
  {
    if (!v58)
    {
      goto LABEL_39;
    }

    v59 = *v53 == *v1 && v57 == v58;
    if (!v59)
    {
      v200 = v21;
      v201 = v24;
      v60 = v17;
      v61 = v14;
      v62 = v12;
      v63 = v51;
      v64 = v44;
      v65 = v46;
      v66 = v52;
      v67 = v56;
      v68 = v53;
      v69 = sub_1D5616168();
      v53 = v68;
      v56 = v67;
      v52 = v66;
      v46 = v65;
      v44 = v64;
      v51 = v63;
      v12 = v62;
      v14 = v61;
      v17 = v60;
      v21 = v200;
      v24 = v201;
      if ((v69 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v58)
  {
    goto LABEL_39;
  }

  v70 = v53[3];
  v71 = v56[3];
  if (v70)
  {
    if (!v71)
    {
      goto LABEL_39;
    }

    v199 = v12;
    v198 = v52;
    v72 = v53;
    v73 = v56;
    v74 = v53[2] == v56[2] && v70 == v71;
    if (!v74 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v199 = v12;
    v72 = v53;
    v73 = v56;
    v198 = v52;
    if (v71)
    {
      goto LABEL_39;
    }
  }

  v201 = v24;
  v194 = v17;
  v195 = v14;
  v192 = v51;
  v193 = v44;
  v75 = type metadata accessor for StorePlatformAlbum(0);
  v202 = v73;
  v197 = v75;
  v76 = *(v46 + 48);
  v196 = v72;
  sub_1D4FB8150();
  v77 = v202;
  sub_1D4FB8150();
  v78 = v219;
  OUTLINED_FUNCTION_57(v55, 1, v219);
  if (v59)
  {
    OUTLINED_FUNCTION_57(&v55[v76], 1, v78);
    if (v59)
    {
      sub_1D4E50004(v55, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_29;
    }

LABEL_27:
    v81 = &qword_1EC7E9FB0;
    v82 = &qword_1D562C590;
    v83 = v55;
LABEL_38:
    sub_1D4E50004(v83, v81, v82);
    goto LABEL_39;
  }

  v79 = v217;
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(&v55[v76], 1, v78);
  if (v80)
  {
    (*(v218 + 8))(v79, v78);
    goto LABEL_27;
  }

  v84 = v218;
  v85 = v213;
  (*(v218 + 32))(v213, &v55[v76], v78);
  OUTLINED_FUNCTION_1_159();
  sub_1D53B2EC8(v86);
  v87 = sub_1D5614D18();
  v88 = v84;
  v77 = v202;
  v89 = *(v88 + 8);
  v89(v85, v78);
  v89(v79, v78);
  sub_1D4E50004(v55, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v87 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_29:
  v200 = v21;
  OUTLINED_FUNCTION_28_7();
  v90 = v215;
  v91 = *(v214 + 48);
  v92 = &qword_1EC7EB5B8;
  v93 = &unk_1D56206A0;
  v94 = v196;
  OUTLINED_FUNCTION_8_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_8_1();
  sub_1D4FB8150();
  v95 = v216;
  OUTLINED_FUNCTION_57(v90, 1, v216);
  if (v59)
  {
    OUTLINED_FUNCTION_57(v90 + v91, 1, v95);
    if (v59)
    {
      sub_1D4E50004(v90, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v92 = v211;
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v90 + v91, 1, v95);
  if (v96)
  {
    (*(v212 + 8))(v92, v95);
LABEL_37:
    v81 = &qword_1EC7EC330;
    v82 = &qword_1D56222C0;
    v83 = v90;
    goto LABEL_38;
  }

  v97 = v90;
  v98 = v212;
  v99 = v97 + v91;
  v100 = v210;
  (*(v212 + 32))(v210, v99, v95);
  sub_1D4F39858();
  v101 = sub_1D5614D18();
  v93 = *(v98 + 8);
  v93(v100, v95);
  v93(v92, v95);
  sub_1D4E50004(v97, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v101 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_41:
  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_59_27();
  if (v93)
  {
    if (!v92)
    {
      goto LABEL_39;
    }

    v102 = OUTLINED_FUNCTION_159();
    sub_1D4EF9D14(v102, v103, v104);
    OUTLINED_FUNCTION_70_2();
    if ((v93 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v92)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_59_27();
  if (v93)
  {
    if (!v92)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F2EC5C();
    OUTLINED_FUNCTION_70_2();
    if ((v93 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v92)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_7();
  v106 = *(v105 + 40);
  v107 = *&v77[v106];
  if (*(v94 + v106))
  {
    if (!v107 || (sub_1D4F0B2E8() & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v107)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_59_27();
  if (v93)
  {
    if (!v92)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F2C07C();
    OUTLINED_FUNCTION_70_2();
    if ((v93 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v92)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_7();
  v109 = *(v108 + 48);
  v110 = *&v77[v109 + 8];
  if (*(v94 + v109 + 8))
  {
    if (!v110)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_31_0(v94 + v109);
    v113 = v59 && v111 == v112;
    if (!v113 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v110)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_59_27();
  if (v93)
  {
    v114 = v199;
    v115 = v197;
    v116 = v209;
    if (!v92)
    {
      goto LABEL_39;
    }

    v117 = v46;

    OUTLINED_FUNCTION_159();
    sub_1D4F28F1C();
    OUTLINED_FUNCTION_70_2();
    if ((v93 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v114 = v199;
    v115 = v197;
    v117 = v46;
    v116 = v209;
    if (v92)
    {
      goto LABEL_39;
    }
  }

  OUTLINED_FUNCTION_25_58();
  if (v93)
  {
    if (!v92)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F29174();
    OUTLINED_FUNCTION_70_2();
    if ((v93 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v92)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_25_58();
  if (v93)
  {
    if (!v92)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4EF8BA4();
    OUTLINED_FUNCTION_70_2();
    if ((v93 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v92)
  {
    goto LABEL_39;
  }

  v118 = v115[16];
  v119 = *&v202[v118];
  if (*(v196 + v118))
  {
    if (!v119)
    {
      goto LABEL_39;
    }

    sub_1D4EF81E0();
    if ((v120 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v119)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_19_73();
  if (v59)
  {
    if (v121 != 2)
    {
      goto LABEL_39;
    }
  }

  else if (v121 == 2 || ((v121 ^ v122) & 1) != 0)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_19_73();
  if (v59)
  {
    if (v123 != 2)
    {
      goto LABEL_39;
    }
  }

  else if (v123 == 2 || ((v123 ^ v124) & 1) != 0)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_19_73();
  if (v59)
  {
    if (v125 != 2)
    {
      goto LABEL_39;
    }
  }

  else if (v125 == 2 || ((v125 ^ v126) & 1) != 0)
  {
    goto LABEL_39;
  }

  v127 = *(v208 + 48);
  v128 = &qword_1EC7EC960;
  v129 = &unk_1D56334C0;
  OUTLINED_FUNCTION_150_0();
  v130 = v201;
  OUTLINED_FUNCTION_8_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_8_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v130, 1, v114);
  if (v59)
  {
    OUTLINED_FUNCTION_57(&v201[v127], 1, v114);
    if (!v59)
    {
      goto LABEL_115;
    }

    sub_1D4E50004(v201, &qword_1EC7EC960, &unk_1D56334C0);
  }

  else
  {
    v131 = v201;
    sub_1D4FB8150();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v131 + v127, 1, v114);
    if (EnumTagSinglePayload == 1)
    {
      (*(v195 + 8))(v200, v114);
LABEL_115:
      v81 = &qword_1EC7EC968;
      v82 = &unk_1D5622290;
      v83 = v201;
      goto LABEL_38;
    }

    v133 = v195;
    v134 = v201;
    v135 = &v201[v127];
    v136 = v194;
    (*(v195 + 32))(v194, v135, v114);
    sub_1D4F7BF60();
    v137 = v200;
    v128 = sub_1D5614D18();
    v129 = *(v133 + 8);
    v129(v136, v114);
    v129(v137, v114);
    sub_1D4E50004(v134, &qword_1EC7EC960, &unk_1D56334C0);
    if ((v128 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v138 = v115[21];
  v139 = *(v196 + v138);
  v140 = *(v196 + v138 + 8);
  v141 = &v202[v138];
  v142 = v139 == *v141 && v140 == *(v141 + 1);
  if (!v142 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_44_35();
  if (v145)
  {
    if (!v143)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_31_0(v144);
    v148 = v59 && v146 == v147;
    if (!v148 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v143)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_25_58();
  if (v129)
  {
    if (!v128)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4EF905C();
    OUTLINED_FUNCTION_70_2();
    if ((v129 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v128)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_44_35();
  if (v151)
  {
    if (!v149)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_31_0(v150);
    v154 = v59 && v152 == v153;
    if (!v154 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v149)
  {
    goto LABEL_39;
  }

  v155 = *(v117 + 48);
  OUTLINED_FUNCTION_150_0();
  v156 = v192;
  OUTLINED_FUNCTION_8_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_8_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_25_8(v156);
  if (v59)
  {
    OUTLINED_FUNCTION_25_8(&v192[v155]);
    if (v59)
    {
      sub_1D4E50004(v192, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_155;
    }

LABEL_153:
    v81 = &qword_1EC7E9FB0;
    v82 = &qword_1D562C590;
    v83 = v192;
    goto LABEL_38;
  }

  v157 = v192;
  sub_1D4FB8150();
  OUTLINED_FUNCTION_25_8(v157 + v155);
  if (v158)
  {
    (*(v218 + 8))(v193, v219);
    goto LABEL_153;
  }

  v159 = v218;
  v160 = v219;
  v161 = v192;
  v162 = v213;
  (*(v218 + 32))(v213, &v192[v155], v219);
  OUTLINED_FUNCTION_1_159();
  sub_1D53B2EC8(v163);
  v164 = v193;
  LODWORD(v217) = sub_1D5614D18();
  v165 = *(v159 + 8);
  v165(v162, v160);
  v165(v164, v160);
  sub_1D4E50004(v161, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v217 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_155:
  v166 = v115[26];
  v167 = (v196 + v166);
  v168 = *(v196 + v166 + 8);
  v169 = &v202[v166];
  v170 = v202[v166 + 8];
  if (v168)
  {
    if (!v170)
    {
      goto LABEL_39;
    }

LABEL_161:
    v171 = *(v116 + 48);
    OUTLINED_FUNCTION_150_0();
    v172 = v206;
    OUTLINED_FUNCTION_8_1();
    sub_1D4FB8150();
    OUTLINED_FUNCTION_8_1();
    sub_1D4FB8150();
    OUTLINED_FUNCTION_57(v172, 1, v204);
    if (v59)
    {
      OUTLINED_FUNCTION_57(v206 + v171, 1, v204);
      if (v59)
      {
        sub_1D4E50004(v206, &qword_1EC7EFBD0, &qword_1D5634650);
LABEL_171:
        v180 = *(v117 + 48);
        OUTLINED_FUNCTION_150_0();
        v181 = v198;
        OUTLINED_FUNCTION_8_1();
        sub_1D4FB8150();
        OUTLINED_FUNCTION_8_1();
        sub_1D4FB8150();
        v182 = v181;
        OUTLINED_FUNCTION_25_8(v181);
        if (v59)
        {
          OUTLINED_FUNCTION_25_8(v181 + v180);
          if (v59)
          {
            sub_1D4E50004(v181, &unk_1EC7E9CA8, &unk_1D561D1D0);
            goto LABEL_39;
          }
        }

        else
        {
          sub_1D4FB8150();
          OUTLINED_FUNCTION_25_8(v181 + v180);
          if (!v183)
          {
            v184 = v218;
            v185 = v181 + v180;
            v186 = v213;
            v187 = v219;
            (*(v218 + 32))(v213, v185, v219);
            OUTLINED_FUNCTION_1_159();
            sub_1D53B2EC8(v188);
            v189 = v203;
            sub_1D5614D18();
            v190 = *(v184 + 8);
            v190(v186, v187);
            v190(v189, v187);
            sub_1D4E50004(v182, &unk_1EC7E9CA8, &unk_1D561D1D0);
            goto LABEL_39;
          }

          (*(v218 + 8))(v203, v219);
        }

        v81 = &qword_1EC7E9FB0;
        v82 = &qword_1D562C590;
        v83 = v181;
        goto LABEL_38;
      }
    }

    else
    {
      v173 = v206;
      sub_1D4FB8150();
      OUTLINED_FUNCTION_57(v173 + v171, 1, v204);
      if (!v174)
      {
        OUTLINED_FUNCTION_30_57();
        v176 = v206;
        v177 = v207;
        sub_1D53B2E70();
        v178 = v205;
        v179 = sub_1D54D5E40(v205, v177);
        sub_1D53B2F0C(v177, type metadata accessor for StorePlatformUber);
        sub_1D53B2F0C(v178, type metadata accessor for StorePlatformUber);
        sub_1D4E50004(v176, &qword_1EC7EFBD0, &qword_1D5634650);
        if (!v179)
        {
          goto LABEL_39;
        }

        goto LABEL_171;
      }

      OUTLINED_FUNCTION_31_48();
      sub_1D53B2F0C(v205, v175);
    }

    v81 = &qword_1EC7EFDD8;
    v82 = &unk_1D5639570;
    v83 = v206;
    goto LABEL_38;
  }

  if (*v167 != *v169)
  {
    LOBYTE(v170) = 1;
  }

  if ((v170 & 1) == 0)
  {
    goto LABEL_161;
  }

LABEL_39:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D53AF394(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449747369747261 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7255747369747261 && a2 == 0xE90000000000006CLL;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6572646C696863 && a2 == 0xEB00000000736449;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000013 && 0x80000001D56843D0 == a2;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x64726F6572507369 && a2 == 0xEA00000000007265;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6F4E73656E757469 && a2 == 0xEB00000000736574;
                                  if (v21 || (sub_1D5616168() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 25705 && a2 == 0xE200000000000000;
                                    if (v22 || (sub_1D5616168() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                      if (v23 || (sub_1D5616168() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x73726566666FLL && a2 == 0xE600000000000000;
                                        if (v24 || (sub_1D5616168() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                          if (v25 || (sub_1D5616168() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6C725574726F6873 && a2 == 0xE800000000000000;
                                            if (v26 || (sub_1D5616168() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x756F436B63617274 && a2 == 0xEA0000000000746ELL;
                                              if (v27 || (sub_1D5616168() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 1919246965 && a2 == 0xE400000000000000;
                                                if (v28 || (sub_1D5616168() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else if (a1 == 7107189 && a2 == 0xE300000000000000)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  v30 = sub_1D5616168();

                                                  if (v30)
                                                  {
                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    return 25;
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