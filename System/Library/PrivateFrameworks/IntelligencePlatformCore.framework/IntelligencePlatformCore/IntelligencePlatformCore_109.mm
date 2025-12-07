uint64_t sub_1C4E056A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E04F10(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E0572C()
{
  sub_1C43FE96C();
  sub_1C444B498(v3);
  v4 = sub_1C4F00DD8();
  v5 = sub_1C4440220(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4460940(v6);
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C44094C8(v8, v104);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44107F0(v10, v11, v12, v13, v14, v15, v16, v17, v105);
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A3EC(v19, v106);
  v20 = sub_1C4EFD548();
  v21 = sub_1C44348EC(v20);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4410058(v22, v107);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C442A5DC(v24, v25, v26, v27, v28, v29, v30, v31, v108);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C440D100();
  type metadata accessor for Source(0);
  sub_1C440F834();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C4406BA0();
  v34 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v34);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FE938(v36, v109);
  sub_1C4EFF0C8();
  sub_1C4425688();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C4415E5C(v38, v110);
  v39 = sub_1C4EFEEF8();
  sub_1C4E2C8A0(v39);
  v40 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_entityClass;
  v41 = sub_1C4EFCFF8();
  v42 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v41 = swift_once();
  }

  sub_1C4E2D608(v41, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasAttendee) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasDate) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasLocationRelationship) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_identifier);
  v43 = sub_1C44019BC();
  v1(v43);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v44 = sub_1C4F00978();
  sub_1C442B738(v44, qword_1EDE2DE10);
  v45 = sub_1C440EBA4();
  v1(v45);
  v46 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v47 = sub_1C4E2D364(v46);
  sub_1C4F01CB8();
  sub_1C43FE670();
  if (sub_1C4E2DF0C())
  {
    sub_1C4495448();
    v48 = sub_1C4488A10();
    sub_1C4E2CA84(v48);
    v49 = sub_1C4E2CD74(4.8453e-34);
    sub_1C4485F78(v49);
    sub_1C442DB9C();
    v52 = sub_1C4E276B4(v50, v51, MEMORY[0x1E69A92F8]);
    sub_1C44804C0(v52);
    v53 = sub_1C442638C();
    v54(v53);
    v55 = sub_1C4409A28();
    sub_1C441D828(v55, v56, v57);
    sub_1C4E2D380();
    sub_1C4414088();
    sub_1C44579E8(&dword_1C43F8000, v58, v59, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C44753CC();
    sub_1C4411B3C();
    sub_1C4E2D23C();
  }

  else
  {

    v60 = sub_1C4462134();
    v61(v60);
  }

  sub_1C4488B88();
  v62 = sub_1C4404084();
  MEMORY[0x1C6940010](v62);

  sub_1C4E2D2F0(v63);
  sub_1C4E2CC80();
  v64 = sub_1C4416A00();
  v65(v64);
  sub_1C4E2D49C();
  if (!v67 & v66)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44BBF0C();
    v68 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v69 = sub_1C4415B1C();
      sub_1C44255B4(v69);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v2 + 4) = v42;
      sub_1C447CEB4(&dword_1C43F8000, v70, v71, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v72 = sub_1C44E7750();
    }

    else
    {

      v72 = sub_1C44BBD58();
    }

    v42 = v111;
    v87 = v111(v72);
    v88 = 1;
  }

  else
  {

    sub_1C4432FC0();
    v75 = sub_1C4E276B4(v73, v74, MEMORY[0x1E6966618]);
    sub_1C441DF80(v75);
    v76 = sub_1C4409D98();
    sub_1C44344B8(v76, v77);
    sub_1C4E2CBF8();
    sub_1C441C6AC();
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v78 = sub_1C442AABC();
    v79(v78);
    v80 = sub_1C43FE318();
    v81(v80);
    v82 = sub_1C4417C80();
    v83(v82);
    sub_1C4507BA8();
    v84 = sub_1C4422CA0();
    v85(v84);
    v86 = sub_1C4430818();
    v87 = v42(v86);
    v88 = 0;
  }

  sub_1C4424A80(v87, v88);
  sub_1C4482D7C();
  if (v67)
  {
    sub_1C446F170(v113, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v89 = sub_1C45CF650();
    v90 = sub_1C43FFB2C(&type metadata for MappingError, v89);
    v92 = sub_1C4428F60(v90, v91);
    sub_1C4E2DEC4(v92, &qword_1EC0B9A08, &unk_1C4F107B0);
    v93 = sub_1C4495DFC();
    v42(v93);
    sub_1C448D818(v0 + v112);
    sub_1C4425820();
    v95 = *(v94 + 8);
    v97 = sub_1C443E068(v96);
    v95(v97);
    sub_1C44102F0();
    v98 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence_predicate);
    v95(v98);
    sub_1C44102F0();

    sub_1C44417C4();
    sub_1C4E2DEF4(v100, v101, *(v99 + 48), *(v99 + 52));
  }

  else
  {
    v102 = sub_1C4440B80();
    v40(v102);
    v103 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_entityIdentifier);
    v40(v103);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E05EE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v4 || (sub_1C43FEC00(0xD000000000000010, 0x80000001C4F855E0) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = sub_1C4E2D0E4();
    v9 = v4 && a2 == v8;
    if (v9 || (sub_1C43FEC00(v7, 0xE900000000000065) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v10 = sub_1C44553A4();
      v12 = a1 == v10 && a2 == v11;
      if (v12 || (sub_1C43FEC00(v10, v11) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v13 = sub_1C4414234();
        v14 = v4 && a2 == 0xE600000000000000;
        if (v14 || (sub_1C43FEC00(v13, 0xE600000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v15 = sub_1C4E2CB90();
          v17 = a1 == v15 && a2 == v16;
          if (v17 || (sub_1C43FEC00(v15, v16) & 1) != 0)
          {

            return 4;
          }

          else
          {
            sub_1C4E2E2C0();
            v18 = v4 && a2 == 0xE400000000000000;
            if (v18 || (sub_1C43FEC00(1701667182, 0xE400000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v19 = sub_1C4E2E8F8();
              v21 = v4 && v20 == a2;
              if (v21 || (sub_1C43FEC00(v19, v20) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v22 = sub_1C4E2DE20();
                v23 = v4 && a2 == v2;
                if (v23 || (sub_1C43FEC00(v22, 0xEA00000000006563) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v24 = a1 == 0xD000000000000010 && 0x80000001C4FC8B10 == a2;
                  if (v24 || (sub_1C43FEC00(0xD000000000000010, 0x80000001C4FC8B10) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v25 = sub_1C4E2D4EC();
                    v27 = a1 == v25 && a2 == v26;
                    if (v27 || (sub_1C43FEC00(v25, v26) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v28 = sub_1C4E2D4CC();
                      v30 = a1 == v28 && a2 == v29;
                      if (v30 || (sub_1C43FEC00(v28, v29) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v31 = sub_1C4E2E450();
                        v32 = v4 && a2 == 0xE700000000000000;
                        if (v32 || (sub_1C43FEC00(v31, 0xE700000000000000) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v33 = sub_1C4E2E8E4();
                          v35 = v4 && v34 == a2;
                          if (v35 || (sub_1C43FEC00(v33, v34) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v36 = sub_1C4E2E090();
                            if (v4 && a2 == v37)
                            {

                              return 13;
                            }

                            else
                            {
                              v39 = sub_1C43FEC00(v36, v37);

                              if (v39)
                              {
                                return 13;
                              }

                              else
                              {
                                return 14;
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

void sub_1C4E061A0(uint64_t a1, uint64_t a2)
{
  sub_1C4E2E060();
  switch(v2)
  {
    case 1:
    case 13:
      return;
    case 2:
      sub_1C44553A4();
      break;
    case 3:
      sub_1C4461FC0();
      break;
    case 4:
      sub_1C4E2CB90();
      break;
    case 5:
      sub_1C4E2E0AC();
      break;
    case 6:
      sub_1C441AA58();
      break;
    case 7:
      sub_1C4E2D9AC();
      break;
    case 9:
      sub_1C4E2D4EC();
      break;
    case 10:
      sub_1C4E2D4CC();
      break;
    case 11:
      sub_1C4E2DB98();
      break;
    case 12:
      sub_1C4E2DBB0();
      break;
    default:
      sub_1C43FE984();
      break;
  }
}

uint64_t sub_1C4E06290(uint64_t a1)
{
  v2 = sub_1C4E29004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E062CC(uint64_t a1)
{
  v2 = sub_1C4E29004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E06308()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_entityIdentifier;
  sub_1C4EFF0C8();
  sub_1C43FD3F8();
  (*(v2 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_entityClass;
  sub_1C4EFD548();
  sub_1C43FD3F8();
  (*(v4 + 8))(v0 + v3);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_source + v0);
  sub_1C4EFEEF8();
  sub_1C4424878();
  v6 = *(v5 + 8);
  v7 = sub_1C4460780();
  v6(v7);
  sub_1C440DE48();
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence_predicate);
  v6(v8);
  sub_1C440DE48();

  return v0;
}

void sub_1C4E064D4()
{
  sub_1C43FE96C();
  sub_1C4E2CC60();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C441D0D8(v4, v37);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402CA8();
  v6 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FE95C();
  sub_1C456902C(&qword_1EC0C8528, &qword_1C4F77510);
  sub_1C4412DFC();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4401780();
  sub_1C447F680();
  v9 = sub_1C4E29004();
  sub_1C4E2CDB4(&type metadata for LifeEventStructs.ReadingActivity.CodingKeys, v10, v9);
  sub_1C4E2DDCC();
  sub_1C4420B30();
  v13 = sub_1C4E276B4(v11, v12, MEMORY[0x1E69A9818]);
  sub_1C4423E24(v13);
  if (v1)
  {
    v14 = sub_1C4E2CA3C();
  }

  else
  {
    sub_1C4E2CA94();
    sub_1C44A3B20();
    sub_1C4E2DEDC();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    v18 = sub_1C4E276B4(v16, v17, MEMORY[0x1E69A9750]);
    sub_1C446078C(v18);
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v19, v20, MEMORY[0x1E69A92D0]);
    sub_1C43FCD50();
    sub_1C4F027E8();
    v21 = sub_1C44019B0(3);
    type metadata accessor for Source(v21);
    sub_1C4413E34();
    sub_1C4E276B4(v22, v23, &protocol conformance descriptor for Source);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C447CF8C();
    v24 = sub_1C43FFA70();
    v25(v24);
    sub_1C443F48C();
    sub_1C4E2D1E4();
    sub_1C4F027E8();
    v26 = sub_1C4428A8C();
    v0(v26);
    sub_1C4E2C80C();
    sub_1C445CD44();

    sub_1C4E2CB70();
    v27 = sub_1C4414468();
    v28(v27);
    sub_1C441D57C();
    v29 = sub_1C4E2CAC4();
    v0(v29);
    sub_1C44882A4();
    sub_1C44D3E80();
    sub_1C4E2D640();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_startingLocation);
    sub_1C4401574();
    v32 = sub_1C4E276B4(v30, v31, &unk_1C4F772AC);
    sub_1C44BBFAC(v32);
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_endLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v33, v34, &unk_1C4F771D4);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v35, v36, &unk_1C4F77168);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_identifier);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E28950();
    sub_1C4411650();
    sub_1C4F02778();
    v14 = sub_1C4475668();
  }

  v15(v14);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4E06A6C()
{
  sub_1C43FE96C();
  sub_1C445CD30();
  sub_1C4EFEEF8();
  sub_1C4425688();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440DC5C(v4, v54);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C446BD9C(v6, v7, v8, v9, v10, v11, v12, v13, v55);
  v14 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C44A3D38(v16, v56);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C441BFD4(v18, v57);
  sub_1C456902C(&qword_1EC0C86B0, &qword_1C4F77608);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FCBE0(v20, v58);
  sub_1C44A3C3C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_predicate);
  sub_1C4E2D820(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_entityClass);
  sub_1C4EFCFF8();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v21 = type metadata accessor for Source(0);
  sub_1C4E2D85C(v21, qword_1EDDFED10);
  sub_1C4E2E250(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_name_predicate);
  sub_1C4E2DA60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence);
  sub_1C4E2CDD4();
  sub_1C4E2CE04();
  *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasAttendee) = 0;
  *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasDate) = 0;
  *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasLocationRelationship) = 0;
  sub_1C44A1F88(v22);
  v23 = sub_1C4E29004();
  sub_1C4E2CB3C(&type metadata for LifeEventStructs.ReadingActivity.CodingKeys, v24, v23);
  if (v1)
  {
    sub_1C4E2DA54();
    sub_1C4E2E280(v28, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FD3F8();
    v29 = sub_1C4E2D5B0();
    v30(v29);
    sub_1C4E2DE7C();
    v31 = sub_1C44D7418(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_name_predicate);
    v0(v31);
    sub_1C44102F0();
    v32 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence_predicate);
    v0(v32);
    sub_1C44102F0();

    sub_1C44417C4();
    sub_1C4E2DE94(v34, v35, *(v33 + 48), *(v33 + 52));
  }

  else
  {
    sub_1C443052C();
    sub_1C4420B30();
    v27 = sub_1C4E276B4(v25, v26, MEMORY[0x1E69A9838]);
    sub_1C440CF04(v27);
    v36 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_entityIdentifier);
    v37(v36);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v38, v39, MEMORY[0x1E69A9778]);
    sub_1C442F568();
    sub_1C4E2CDE4();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2DEAC();
    swift_endAccess();
    sub_1C441E9A8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v40 = sub_1C449AF8C();
    v2(v40);
    swift_endAccess();
    v41 = sub_1C44D4094();
    sub_1C4E2CF38(v41, v42);
    sub_1C448E194();
    sub_1C44AB1FC();
    v43 = sub_1C447540C();
    v2(v43);
    swift_endAccess();
    v44 = sub_1C44D45AC();
    sub_1C4E2C87C(v44, v45);
    sub_1C44A18F0();
    sub_1C4401574();
    sub_1C4E276B4(v46, v47, &unk_1C4F772D4);
    sub_1C4435DCC();
    sub_1C4422C90(v60);

    sub_1C4422610();
    sub_1C4422C90(v60);

    sub_1C4480640();
    sub_1C441B2D4();
    sub_1C4412AAC();
    sub_1C4E276B4(v48, v49, &unk_1C4F771FC);
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C444C4C0();

    sub_1C4E2C948();
    sub_1C448F0CC();
    sub_1C440B98C();
    sub_1C4E276B4(v50, v51, &unk_1C4F77190);
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C445EBBC();

    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E2CA08();
    sub_1C4E29544();
    sub_1C44063D8();
    sub_1C442FEF4();
    sub_1C4F02658();
    sub_1C447F42C();

    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E2CA18();
    sub_1C4E295F8();
    sub_1C443F8E4();
    v52 = sub_1C44625E0();
    v53(v52);
    sub_1C4436800();
  }

  sub_1C440962C(v59);
  sub_1C4507BC8();
  sub_1C43FBC80();
}

uint64_t sub_1C4E071D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E06A40(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E0725C()
{
  sub_1C43FE96C();
  sub_1C444B498(v3);
  v4 = sub_1C4F00DD8();
  v5 = sub_1C4440220(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4460940(v6);
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C44094C8(v8, v104);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44107F0(v10, v11, v12, v13, v14, v15, v16, v17, v105);
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A3EC(v19, v106);
  v20 = sub_1C4EFD548();
  v21 = sub_1C44348EC(v20);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4410058(v22, v107);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C442A5DC(v24, v25, v26, v27, v28, v29, v30, v31, v108);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C440D100();
  type metadata accessor for Source(0);
  sub_1C440F834();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C4406BA0();
  v34 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v34);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FE938(v36, v109);
  sub_1C4EFF0C8();
  sub_1C4425688();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C4415E5C(v38, v110);
  v39 = sub_1C4EFEEF8();
  sub_1C4E2C8A0(v39);
  v40 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_entityClass;
  v41 = sub_1C4EFD008();
  v42 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v41 = swift_once();
  }

  sub_1C4E2D608(v41, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasAttendee) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasDate) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasLocationRelationship) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_identifier);
  v43 = sub_1C44019BC();
  v1(v43);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v44 = sub_1C4F00978();
  sub_1C442B738(v44, qword_1EDE2DE10);
  v45 = sub_1C440EBA4();
  v1(v45);
  v46 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v47 = sub_1C4E2D364(v46);
  sub_1C4F01CB8();
  sub_1C43FE670();
  if (sub_1C4E2DF0C())
  {
    sub_1C4495448();
    v48 = sub_1C4488A10();
    sub_1C4E2CA84(v48);
    v49 = sub_1C4E2CD74(4.8453e-34);
    sub_1C4485F78(v49);
    sub_1C442DB9C();
    v52 = sub_1C4E276B4(v50, v51, MEMORY[0x1E69A92F8]);
    sub_1C44804C0(v52);
    v53 = sub_1C442638C();
    v54(v53);
    v55 = sub_1C4409A28();
    sub_1C441D828(v55, v56, v57);
    sub_1C4E2D380();
    sub_1C4414088();
    sub_1C44579E8(&dword_1C43F8000, v58, v59, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C44753CC();
    sub_1C4411B3C();
    sub_1C4E2D23C();
  }

  else
  {

    v60 = sub_1C4462134();
    v61(v60);
  }

  sub_1C4488B88();
  v62 = sub_1C4404084();
  MEMORY[0x1C6940010](v62);

  sub_1C4E2D2F0(v63);
  sub_1C4E2CC80();
  v64 = sub_1C4416A00();
  v65(v64);
  sub_1C4E2D49C();
  if (!v67 & v66)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44BBF0C();
    v68 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v69 = sub_1C4415B1C();
      sub_1C44255B4(v69);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v2 + 4) = v42;
      sub_1C447CEB4(&dword_1C43F8000, v70, v71, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v72 = sub_1C44E7750();
    }

    else
    {

      v72 = sub_1C44BBD58();
    }

    v42 = v111;
    v87 = v111(v72);
    v88 = 1;
  }

  else
  {

    sub_1C4432FC0();
    v75 = sub_1C4E276B4(v73, v74, MEMORY[0x1E6966618]);
    sub_1C441DF80(v75);
    v76 = sub_1C4409D98();
    sub_1C44344B8(v76, v77);
    sub_1C4E2CBF8();
    sub_1C441C6AC();
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v78 = sub_1C442AABC();
    v79(v78);
    v80 = sub_1C43FE318();
    v81(v80);
    v82 = sub_1C4417C80();
    v83(v82);
    sub_1C4507BA8();
    v84 = sub_1C4422CA0();
    v85(v84);
    v86 = sub_1C4430818();
    v87 = v42(v86);
    v88 = 0;
  }

  sub_1C4424A80(v87, v88);
  sub_1C4482D7C();
  if (v67)
  {
    sub_1C446F170(v113, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v89 = sub_1C45CF650();
    v90 = sub_1C43FFB2C(&type metadata for MappingError, v89);
    v92 = sub_1C4428F60(v90, v91);
    sub_1C4E2DEC4(v92, &qword_1EC0B9A08, &unk_1C4F107B0);
    v93 = sub_1C4495DFC();
    v42(v93);
    sub_1C448D818(v0 + v112);
    sub_1C4425820();
    v95 = *(v94 + 8);
    v97 = sub_1C443E068(v96);
    v95(v97);
    sub_1C44102F0();
    v98 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence_predicate);
    v95(v98);
    sub_1C44102F0();

    sub_1C44417C4();
    sub_1C4E2DEF4(v100, v101, *(v99 + 48), *(v99 + 52));
  }

  else
  {
    v102 = sub_1C4440B80();
    v40(v102);
    v103 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_entityIdentifier);
    v40(v103);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E07A10(uint64_t a1)
{
  v2 = sub_1C4E29058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E07A4C(uint64_t a1)
{
  v2 = sub_1C4E29058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E07A88()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_entityIdentifier;
  sub_1C4EFF0C8();
  sub_1C43FD3F8();
  (*(v2 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_entityClass;
  sub_1C4EFD548();
  sub_1C43FD3F8();
  (*(v4 + 8))(v0 + v3);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_source + v0);
  sub_1C4EFEEF8();
  sub_1C4424878();
  v6 = *(v5 + 8);
  v7 = sub_1C4460780();
  v6(v7);
  sub_1C440DE48();
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence_predicate);
  v6(v8);
  sub_1C440DE48();

  return v0;
}

void sub_1C4E07C54()
{
  sub_1C43FE96C();
  sub_1C4E2CC60();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C441D0D8(v4, v37);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402CA8();
  v6 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FE95C();
  sub_1C456902C(&qword_1EC0C8538, &qword_1C4F77518);
  sub_1C4412DFC();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4401780();
  sub_1C447F680();
  v9 = sub_1C4E29058();
  sub_1C4E2CDB4(&type metadata for LifeEventStructs.RunningActivity.CodingKeys, v10, v9);
  sub_1C4E2DDCC();
  sub_1C4420B30();
  v13 = sub_1C4E276B4(v11, v12, MEMORY[0x1E69A9818]);
  sub_1C4423E24(v13);
  if (v1)
  {
    v14 = sub_1C4E2CA3C();
  }

  else
  {
    sub_1C4E2CA94();
    sub_1C44A3B20();
    sub_1C4E2DEDC();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    v18 = sub_1C4E276B4(v16, v17, MEMORY[0x1E69A9750]);
    sub_1C446078C(v18);
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v19, v20, MEMORY[0x1E69A92D0]);
    sub_1C43FCD50();
    sub_1C4F027E8();
    v21 = sub_1C44019B0(3);
    type metadata accessor for Source(v21);
    sub_1C4413E34();
    sub_1C4E276B4(v22, v23, &protocol conformance descriptor for Source);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C447CF8C();
    v24 = sub_1C43FFA70();
    v25(v24);
    sub_1C443F48C();
    sub_1C4E2D1E4();
    sub_1C4F027E8();
    v26 = sub_1C4428A8C();
    v0(v26);
    sub_1C4E2C80C();
    sub_1C445CD44();

    sub_1C4E2CB70();
    v27 = sub_1C4414468();
    v28(v27);
    sub_1C441D57C();
    v29 = sub_1C4E2CAC4();
    v0(v29);
    sub_1C44882A4();
    sub_1C44D3E80();
    sub_1C4E2D640();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_endLocation);
    sub_1C4401574();
    v32 = sub_1C4E276B4(v30, v31, &unk_1C4F772AC);
    sub_1C44BBFAC(v32);
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_startingLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v33, v34, &unk_1C4F771D4);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v35, v36, &unk_1C4F77168);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_identifier);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E28950();
    sub_1C4411650();
    sub_1C4F02778();
    v14 = sub_1C4475668();
  }

  v15(v14);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4E081EC()
{
  sub_1C43FE96C();
  sub_1C445CD30();
  sub_1C4EFEEF8();
  sub_1C4425688();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440DC5C(v4, v54);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C446BD9C(v6, v7, v8, v9, v10, v11, v12, v13, v55);
  v14 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C44A3D38(v16, v56);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C441BFD4(v18, v57);
  sub_1C456902C(&qword_1EC0C86A8, &qword_1C4F77600);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FCBE0(v20, v58);
  sub_1C44A3C3C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_predicate);
  sub_1C4E2D820(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_entityClass);
  sub_1C4EFD008();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v21 = type metadata accessor for Source(0);
  sub_1C4E2D85C(v21, qword_1EDDFED10);
  sub_1C4E2E250(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_name_predicate);
  sub_1C4E2DA60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence);
  sub_1C4E2CDD4();
  sub_1C4E2CE04();
  *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasAttendee) = 0;
  *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasDate) = 0;
  *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasLocationRelationship) = 0;
  sub_1C44A1F88(v22);
  v23 = sub_1C4E29058();
  sub_1C4E2CB3C(&type metadata for LifeEventStructs.RunningActivity.CodingKeys, v24, v23);
  if (v1)
  {
    sub_1C4E2DA54();
    sub_1C4E2E280(v28, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FD3F8();
    v29 = sub_1C4E2D5B0();
    v30(v29);
    sub_1C4E2DE7C();
    v31 = sub_1C44D7418(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_name_predicate);
    v0(v31);
    sub_1C44102F0();
    v32 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence_predicate);
    v0(v32);
    sub_1C44102F0();

    sub_1C44417C4();
    sub_1C4E2DE94(v34, v35, *(v33 + 48), *(v33 + 52));
  }

  else
  {
    sub_1C443052C();
    sub_1C4420B30();
    v27 = sub_1C4E276B4(v25, v26, MEMORY[0x1E69A9838]);
    sub_1C440CF04(v27);
    v36 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_entityIdentifier);
    v37(v36);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v38, v39, MEMORY[0x1E69A9778]);
    sub_1C442F568();
    sub_1C4E2CDE4();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2DEAC();
    swift_endAccess();
    sub_1C441E9A8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v40 = sub_1C449AF8C();
    v2(v40);
    swift_endAccess();
    v41 = sub_1C44D4094();
    sub_1C4E2CF38(v41, v42);
    sub_1C448E194();
    sub_1C44AB1FC();
    v43 = sub_1C447540C();
    v2(v43);
    swift_endAccess();
    v44 = sub_1C44D45AC();
    sub_1C4E2C87C(v44, v45);
    sub_1C44A18F0();
    sub_1C4401574();
    sub_1C4E276B4(v46, v47, &unk_1C4F772D4);
    sub_1C4435DCC();
    sub_1C4422C90(v60);

    sub_1C4422610();
    sub_1C4422C90(v60);

    sub_1C4480640();
    sub_1C441B2D4();
    sub_1C4412AAC();
    sub_1C4E276B4(v48, v49, &unk_1C4F771FC);
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C444C4C0();

    sub_1C4E2C948();
    sub_1C448F0CC();
    sub_1C440B98C();
    sub_1C4E276B4(v50, v51, &unk_1C4F77190);
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C445EBBC();

    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E2CA08();
    sub_1C4E29544();
    sub_1C44063D8();
    sub_1C442FEF4();
    sub_1C4F02658();
    sub_1C447F42C();

    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E2CA18();
    sub_1C4E295F8();
    sub_1C443F8E4();
    v52 = sub_1C44625E0();
    v53(v52);
    sub_1C4436800();
  }

  sub_1C440962C(v59);
  sub_1C4507BC8();
  sub_1C43FBC80();
}

uint64_t sub_1C4E08950@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E081C0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E089DC()
{
  sub_1C43FE96C();
  sub_1C444B498(v3);
  v4 = sub_1C4F00DD8();
  v5 = sub_1C4440220(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4460940(v6);
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C44094C8(v8, v104);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44107F0(v10, v11, v12, v13, v14, v15, v16, v17, v105);
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A3EC(v19, v106);
  v20 = sub_1C4EFD548();
  v21 = sub_1C44348EC(v20);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4410058(v22, v107);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C442A5DC(v24, v25, v26, v27, v28, v29, v30, v31, v108);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C440D100();
  type metadata accessor for Source(0);
  sub_1C440F834();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C4406BA0();
  v34 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v34);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FE938(v36, v109);
  sub_1C4EFF0C8();
  sub_1C4425688();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C4415E5C(v38, v110);
  v39 = sub_1C4EFEEF8();
  sub_1C4E2C8A0(v39);
  v40 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_entityClass;
  v41 = sub_1C4EFD0F8();
  v42 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v41 = swift_once();
  }

  sub_1C4E2D608(v41, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasDate) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_identifier) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasAttendee) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasLocationRelationship);
  v43 = sub_1C44019BC();
  v1(v43);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v44 = sub_1C4F00978();
  sub_1C442B738(v44, qword_1EDE2DE10);
  v45 = sub_1C440EBA4();
  v1(v45);
  v46 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v47 = sub_1C4E2D364(v46);
  sub_1C4F01CB8();
  sub_1C43FE670();
  if (sub_1C4E2DF0C())
  {
    sub_1C4495448();
    v48 = sub_1C4488A10();
    sub_1C4E2CA84(v48);
    v49 = sub_1C4E2CD74(4.8453e-34);
    sub_1C4485F78(v49);
    sub_1C442DB9C();
    v52 = sub_1C4E276B4(v50, v51, MEMORY[0x1E69A92F8]);
    sub_1C44804C0(v52);
    v53 = sub_1C442638C();
    v54(v53);
    v55 = sub_1C4409A28();
    sub_1C441D828(v55, v56, v57);
    sub_1C4E2D380();
    sub_1C4414088();
    sub_1C44579E8(&dword_1C43F8000, v58, v59, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C44753CC();
    sub_1C4411B3C();
    sub_1C4E2D23C();
  }

  else
  {

    v60 = sub_1C4462134();
    v61(v60);
  }

  sub_1C4488B88();
  v62 = sub_1C4404084();
  MEMORY[0x1C6940010](v62);

  sub_1C4E2D2F0(v63);
  sub_1C4E2CC80();
  v64 = sub_1C4416A00();
  v65(v64);
  sub_1C4E2D49C();
  if (!v67 & v66)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44BBF0C();
    v68 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v69 = sub_1C4415B1C();
      sub_1C44255B4(v69);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v2 + 4) = v42;
      sub_1C447CEB4(&dword_1C43F8000, v70, v71, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v72 = sub_1C44E7750();
    }

    else
    {

      v72 = sub_1C44BBD58();
    }

    v42 = v111;
    v87 = v111(v72);
    v88 = 1;
  }

  else
  {

    sub_1C4432FC0();
    v75 = sub_1C4E276B4(v73, v74, MEMORY[0x1E6966618]);
    sub_1C441DF80(v75);
    v76 = sub_1C4409D98();
    sub_1C44344B8(v76, v77);
    sub_1C4E2CBF8();
    sub_1C441C6AC();
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v78 = sub_1C442AABC();
    v79(v78);
    v80 = sub_1C43FE318();
    v81(v80);
    v82 = sub_1C4417C80();
    v83(v82);
    sub_1C4507BA8();
    v84 = sub_1C4422CA0();
    v85(v84);
    v86 = sub_1C4430818();
    v87 = v42(v86);
    v88 = 0;
  }

  sub_1C4424A80(v87, v88);
  sub_1C4482D7C();
  if (v67)
  {
    sub_1C446F170(v113, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v89 = sub_1C45CF650();
    v90 = sub_1C43FFB2C(&type metadata for MappingError, v89);
    v92 = sub_1C4428F60(v90, v91);
    sub_1C4E2DEC4(v92, &qword_1EC0B9A08, &unk_1C4F107B0);
    v93 = sub_1C4495DFC();
    v42(v93);
    sub_1C448D818(v0 + v112);
    sub_1C4425820();
    v95 = *(v94 + 8);
    v97 = sub_1C443E068(v96);
    v95(v97);
    sub_1C44102F0();
    v98 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence_predicate);
    v95(v98);
    sub_1C44102F0();

    sub_1C44417C4();
    sub_1C4E2DEF4(v100, v101, *(v99 + 48), *(v99 + 52));
  }

  else
  {
    v102 = sub_1C4440B80();
    v40(v102);
    v103 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_entityIdentifier);
    v40(v103);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E09190(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001C4FC7F00 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x80000001C4FC8B10 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x65746144736168 && a2 == 0xE700000000000000;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6E65747441736168 && a2 == 0xEB00000000656564;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0xD000000000000017 && 0x80000001C4FC85A0 == a2)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_1C4F02938();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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

unint64_t sub_1C4E095DC(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x6E656469666E6F63;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x7461636F4C646E65;
      break;
    case 10:
      result = 0x65746144736168;
      break;
    case 11:
      result = 0x696669746E656469;
      break;
    case 12:
      result = 0x6E65747441736168;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4E09790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4E09190(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4E097B8(uint64_t a1)
{
  v2 = sub_1C4E290AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E097F4(uint64_t a1)
{
  v2 = sub_1C4E290AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E09830()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_entityIdentifier;
  sub_1C4EFF0C8();
  sub_1C43FD3F8();
  (*(v2 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_entityClass;
  sub_1C4EFD548();
  sub_1C43FD3F8();
  (*(v4 + 8))(v0 + v3);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_source + v0);
  sub_1C4EFEEF8();
  sub_1C4424878();
  v6 = *(v5 + 8);
  v7 = sub_1C4460780();
  v6(v7);
  sub_1C440DE48();
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence_predicate);
  v6(v8);
  sub_1C440DE48();

  return v0;
}

void sub_1C4E099FC()
{
  sub_1C43FE96C();
  sub_1C4E2CC60();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C441D0D8(v4, v37);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402CA8();
  v6 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FE95C();
  sub_1C456902C(&qword_1EC0C8548, &qword_1C4F77520);
  sub_1C4412DFC();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4401780();
  sub_1C447F680();
  v9 = sub_1C4E290AC();
  sub_1C4E2CDB4(&type metadata for LifeEventStructs.OnThePhoneActivity.CodingKeys, v10, v9);
  sub_1C4E2DDCC();
  sub_1C4420B30();
  v13 = sub_1C4E276B4(v11, v12, MEMORY[0x1E69A9818]);
  sub_1C4423E24(v13);
  if (v1)
  {
    v14 = sub_1C4E2CA3C();
  }

  else
  {
    sub_1C4E2CA94();
    sub_1C44A3B20();
    sub_1C4E2DEDC();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    v18 = sub_1C4E276B4(v16, v17, MEMORY[0x1E69A9750]);
    sub_1C446078C(v18);
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v19, v20, MEMORY[0x1E69A92D0]);
    sub_1C43FCD50();
    sub_1C4F027E8();
    v21 = sub_1C44019B0(3);
    type metadata accessor for Source(v21);
    sub_1C4413E34();
    sub_1C4E276B4(v22, v23, &protocol conformance descriptor for Source);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C447CF8C();
    v24 = sub_1C43FFA70();
    v25(v24);
    sub_1C443F48C();
    sub_1C4E2D1E4();
    sub_1C4F027E8();
    v26 = sub_1C4428A8C();
    v0(v26);
    sub_1C4E2C80C();
    sub_1C445CD44();

    sub_1C4E2CB70();
    v27 = sub_1C4414468();
    v28(v27);
    sub_1C441D57C();
    v29 = sub_1C4E2CAC4();
    v0(v29);
    sub_1C44882A4();
    sub_1C44D3E80();
    sub_1C4E2D640();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_startingLocation);
    sub_1C4401574();
    v32 = sub_1C4E276B4(v30, v31, &unk_1C4F772AC);
    sub_1C44BBFAC(v32);
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_endLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v33, v34, &unk_1C4F77168);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_identifier);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E28950();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v35, v36, &unk_1C4F771D4);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    v14 = sub_1C4475668();
  }

  v15(v14);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4E09F94()
{
  sub_1C43FE96C();
  sub_1C445CD30();
  sub_1C4EFEEF8();
  sub_1C4425688();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440DC5C(v4, v54);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C446BD9C(v6, v7, v8, v9, v10, v11, v12, v13, v55);
  v14 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C44A3D38(v16, v56);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C441BFD4(v18, v57);
  sub_1C456902C(&qword_1EC0C86A0, &qword_1C4F775F8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FCBE0(v20, v58);
  sub_1C44A3C3C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_predicate);
  sub_1C4E2D820(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_entityClass);
  sub_1C4EFD0F8();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v21 = type metadata accessor for Source(0);
  sub_1C4E2D85C(v21, qword_1EDDFED10);
  sub_1C4E2E250(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_name_predicate);
  sub_1C4E2DA60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence);
  sub_1C4E2CDD4();
  sub_1C4E2CE04();
  *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasDate) = 0;
  *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_identifier) = 0;
  *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasAttendee) = 0;
  sub_1C44A1F88(v22);
  v23 = sub_1C4E290AC();
  sub_1C4E2CB3C(&type metadata for LifeEventStructs.OnThePhoneActivity.CodingKeys, v24, v23);
  if (v1)
  {
    sub_1C4E2DA54();
    sub_1C4E2E280(v28, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FD3F8();
    v29 = sub_1C4E2D5B0();
    v30(v29);
    sub_1C4E2DE7C();
    v31 = sub_1C44D7418(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_name_predicate);
    v0(v31);
    sub_1C44102F0();
    v32 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence_predicate);
    v0(v32);
    sub_1C44102F0();

    sub_1C44417C4();
    sub_1C4E2DE94(v34, v35, *(v33 + 48), *(v33 + 52));
  }

  else
  {
    sub_1C443052C();
    sub_1C4420B30();
    v27 = sub_1C4E276B4(v25, v26, MEMORY[0x1E69A9838]);
    sub_1C440CF04(v27);
    v36 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_entityIdentifier);
    v37(v36);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v38, v39, MEMORY[0x1E69A9778]);
    sub_1C442F568();
    sub_1C4E2CDE4();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2DEAC();
    swift_endAccess();
    sub_1C441E9A8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v40 = sub_1C449AF8C();
    v2(v40);
    swift_endAccess();
    v41 = sub_1C44D4094();
    sub_1C4E2CF38(v41, v42);
    sub_1C448E194();
    sub_1C44AB1FC();
    v43 = sub_1C447540C();
    v2(v43);
    swift_endAccess();
    v44 = sub_1C44D45AC();
    sub_1C4E2C87C(v44, v45);
    sub_1C44A18F0();
    sub_1C4401574();
    sub_1C4E276B4(v46, v47, &unk_1C4F772D4);
    sub_1C4435DCC();
    sub_1C4422C90(v60);

    sub_1C4422610();
    sub_1C4422C90(v60);

    sub_1C4E2C948();
    sub_1C441B2D4();
    sub_1C440B98C();
    sub_1C4E276B4(v48, v49, &unk_1C4F77190);
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C444C4C0();

    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E2CA4C();
    sub_1C4E295F8();
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C445EBBC();

    sub_1C4480640();
    sub_1C442A360();
    sub_1C4412AAC();
    sub_1C4E276B4(v50, v51, &unk_1C4F771FC);
    sub_1C44063D8();
    sub_1C442FEF4();
    sub_1C4F02658();
    sub_1C447F42C();

    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E2CA18();
    sub_1C4E29544();
    sub_1C443F8E4();
    v52 = sub_1C44625E0();
    v53(v52);
    sub_1C4436800();
  }

  sub_1C440962C(v59);
  sub_1C4507BC8();
  sub_1C43FBC80();
}

uint64_t sub_1C4E0A6F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E09F68(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E0A784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v24;
  a20 = v26;
  v27 = v21;
  v28 = v20;
  v30 = v29;
  v222 = v31;
  v223 = v32;
  v33 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v34 = sub_1C43FBD18(v33);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C4441388(v35, v207);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  sub_1C43FD2C8(v37);
  v38 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  v51 = sub_1C44AE144(v43, v44, v45, v46, v47, v48, v49, v50, v208);
  type metadata accessor for EntityTriple(v51);
  sub_1C43FCDF8();
  v220 = v52;
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C442EEDC();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C447CF24();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C4485B28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C44144E4();
  v57 = *v30;
  i = MEMORY[0x1E69E7CC0];
  v225[0] = MEMORY[0x1E69E7CC0];
  sub_1C4E2D790();
  v224 = v20;
  v217 = v38;
  v218 = v40;
  v221 = v57;
  if (!v22)
  {
    goto LABEL_6;
  }

  sub_1C44181E4();
  if (!v59)
  {
    v28 = v20;
    goto LABEL_6;
  }

  v219 = v21;
  sub_1C4E2E42C();
  v60(v23);
  v27 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_name_predicate;
  sub_1C4E2D1F0();
  sub_1C4E2E268();
  sub_1C43FCE50();
  (*(v61 + 16))(v23 + v40, v57 + v27);
  v62 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_source);
  v57 = v57;
  sub_1C449ED64(v62, v23 + v63);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C4414830();
  v64 = sub_1C4EFF888();
  sub_1C4E2E3D8(v64);
  v65 = (v23 + v220[8]);
  *v65 = v20;
  v65[1] = v22;
  v66 = (v23 + v220[10]);
  *v66 = v222;
  v66[1] = v223;
  *(v23 + v220[11]) = v25;
  *(v23 + v220[12]) = v57;
  v67 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v67, v68, v69, MEMORY[0x1E69E7CC0]);
  sub_1C445FC80();
  if (v71)
  {
    goto LABEL_80;
  }

  while (1)
  {
    *(i + 16) = v27;
    sub_1C4415270();
    sub_1C4A948D8(v23, v72);
    sub_1C4E2E244();
    sub_1C4E2D5FC();
    v27 = v219;
LABEL_6:
    sub_1C4E2D790();
    if (v22)
    {
      sub_1C44181E4();
      if (v73)
      {
        v219 = v27;
        sub_1C4E2E42C();
        v74(v20);
        v75 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence_predicate;
        sub_1C4E2D210();
        v76 = v220[5];
        sub_1C4EFEEF8();
        sub_1C43FCE50();
        (*(v77 + 16))(v20 + v76, v57 + v75);
        v78 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_source);
        sub_1C449ED64(v78, v20 + v79);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4414830();
        v80 = sub_1C4EFF888();
        sub_1C4E2DF74(v80);
        sub_1C4E2D7B4();
        *v81 = v28;
        v81[1] = v22;
        sub_1C4E2D7A8();
        *v82 = v222;
        v82[1] = v223;
        sub_1C4E2CAF4();
        *(v20 + v83) = v57;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v175 = sub_1C43FCEC0();
          sub_1C44C9240(v175, v176, v177, i);
          i = v178;
        }

        sub_1C4E2CE44();
        if (v71)
        {
          v179 = sub_1C4413F5C(v84);
          sub_1C44C9240(v179, v180, v181, i);
          i = v182;
        }

        sub_1C4E2D5FC();
        *(i + 16) = v75;
        sub_1C4415270();
        sub_1C4A948D8(v20, v85);
        sub_1C4E2E244();
        v27 = v219;
      }

      else
      {
        v28 = v224;
      }
    }

    v86 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_endLocation);
    v87 = v222;
    if (v86)
    {
      break;
    }

LABEL_25:
    v105 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_startingLocation);
    if (!v105)
    {
      goto LABEL_28;
    }

    v106 = v87;
    v20 = v105;
    v87 = v27;
    sub_1C4DE69B4(v106, v223);
    if (v27)
    {
LABEL_27:

      goto LABEL_66;
    }

    sub_1C4E2DD4C();
    if (!v108)
    {

LABEL_28:
      v107 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
      goto LABEL_36;
    }

    v219 = 0;
    v109 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C49D3614(v109);
    v110 = sub_1C442B9BC();
    v111(v110);
    v112 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
    sub_1C4E2CE74();
    v27 = v211;
    sub_1C47CBF50(v105 + v112, v211);
    sub_1C4EFEEF8();
    sub_1C4410BC4(v211);
    if (v93)
    {
      goto LABEL_82;
    }

    sub_1C4EFF048();
    sub_1C4408DEC();
    v113 = sub_1C4E2D5A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_source);
    sub_1C4E2DE64(v113, &a13);
    sub_1C4EF9AE8();
    sub_1C4414830();
    v114 = sub_1C4EFF888();
    sub_1C4E2DDB4(v114);
    sub_1C4E2D7C0();
    sub_1C442F834();
    v115();
    sub_1C4443500();
    v117 = sub_1C4E2CED0(v116);
    v118(v117);
    sub_1C4488888();
    *v119 = v222;
    v119[1] = v223;
    sub_1C445AB58();
    v57 = v221;
    *(v28 + v120) = v221;
    v20 = v225[0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v191 = sub_1C43FCEC0();
      sub_1C44C9240(v191, v192, v193, v20);
      v20 = v194;
    }

    v107 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
    sub_1C4E2CE64();
    if (v71)
    {
      v195 = sub_1C4413F5C(v121);
      sub_1C44C9240(v195, v196, v197, v20);
      v20 = v198;
    }

    v20[2] = v211;
    sub_1C447E440();
    sub_1C4A948D8(v213, v122);
    v225[0] = v20;
    v28 = v224;
LABEL_36:
    v22 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasLocationRelationship);
    if (!v22)
    {
LABEL_47:
      v22 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_identifier);
      if (v22)
      {
        v23 = sub_1C4428DA0(*(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_identifier));
        v28 = v107[25];
        sub_1C4E2D328();
        for (i = 0; v23 != i; ++i)
        {
          if (v57)
          {
            sub_1C4E2DF5C();
            v27 = v142;
          }

          else
          {
            sub_1C4E2D79C();
            if (v71)
            {
              goto LABEL_79;
            }

            sub_1C4E2D53C();
          }

          if (__OFADD__(i, 1))
          {
            goto LABEL_78;
          }

          sub_1C4E2CCD8();
          sub_1C44178D8();
          sub_1C4DE44E8(v133, v134, v135, v136, v137, v138, v139, v140, v209, v210);
          if (v87)
          {
            goto LABEL_57;
          }

          v20 = v225;
          sub_1C49D3614(v141);
        }

        v28 = v224;
        sub_1C4E2D5FC();
        v107 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
      }

      if (*(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasDate))
      {
        v143 = v107[25];

        v144 = sub_1C44C0500();
        sub_1C4DECF58(v144, v145, v146, v147, v148, v149, v150, v151, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220);
        if (!v143)
        {
          sub_1C49D3614(v152);

          goto LABEL_62;
        }

LABEL_64:

LABEL_65:
      }

      else
      {
LABEL_62:
        if (*(v224 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasAttendee))
        {
          v153 = v107[25];

          v154 = sub_1C44C0500();
          sub_1C4DEBBF0(v154, v155, v156, v157, v158, v159, v160, v161, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220);
          if (v153)
          {
            goto LABEL_64;
          }

          sub_1C49D3614(v162);
        }

        sub_1C4E2DA6C();
        if (v163)
        {
          sub_1C4E2E42C();
          v164(v210);
          sub_1C4EFEBB8();
          v165 = v221 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_entityClass;
          sub_1C4EFD2F8();
          sub_1C44106D4();
          sub_1C4E2E1A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_source);
          sub_1C4EF9AE8();
          sub_1C440EEE0();
          sub_1C4EFF888();
          sub_1C444AF00();
          sub_1C4EFEC38();
          sub_1C4E2CFD8();
          *v166 = v222;
          v166[1] = v223;
          sub_1C4E2D72C();
          sub_1C4E2E658(v167);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v199 = sub_1C43FCEC0();
            sub_1C44C9240(v199, v200, v201, v22);
            v22 = v202;
          }

          sub_1C4E2C928();
          if (v71)
          {
            v203 = sub_1C43FFD98(v168);
            sub_1C44C9240(v203, v204, v205, v22);
            v22 = v206;
          }

          *(v22 + 16) = v165;
          sub_1C43FBF6C();
          sub_1C4E2CF9C();
          v169 = sub_1C441C660();
          sub_1C4A948D8(v169, v170);
        }
      }

LABEL_66:
      sub_1C44103B4();
      sub_1C44109F8();
      return;
    }

    v23 = sub_1C4428DA0(*(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasLocationRelationship));
    v28 = v107[25];
    sub_1C4E2D328();
    for (i = 0; ; ++i)
    {
      if (v23 == i)
      {

        v28 = v224;
        sub_1C4E2D5FC();
        v107 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
        goto LABEL_47;
      }

      if (v57)
      {
        sub_1C4E2DF5C();
        v27 = v132;
      }

      else
      {
        sub_1C4E2D79C();
        if (v71)
        {
          goto LABEL_77;
        }

        sub_1C4E2D53C();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1C4E2CCD8();
      sub_1C44178D8();
      sub_1C4DE5C70(v123, v124, v125, v126, v127, v128, v129, v130, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220);
      if (v87)
      {
LABEL_57:

        goto LABEL_65;
      }

      v20 = v225;
      sub_1C49D3614(v131);
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    v171 = sub_1C4413F5C(v70);
    sub_1C44C9240(v171, v172, v173, i);
    i = v174;
  }

  v20 = v86;
  sub_1C4DE69B4(v222, v223);
  if (v27)
  {
    goto LABEL_27;
  }

  sub_1C4E2DE40();
  if (!v88)
  {

LABEL_24:
    v87 = v222;
    goto LABEL_25;
  }

  v219 = 0;
  v89 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v89);
  v90 = sub_1C44CD188();
  v91(v90);
  sub_1C4E2CB70();
  sub_1C4405930();
  sub_1C47CBF50(v92, 0);
  sub_1C4EFEEF8();
  sub_1C4410BC4(0);
  if (!v93)
  {

    v20 = (v86 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier);
    sub_1C4EFF048();
    sub_1C4416328();
    sub_1C4E2CFF0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_source);
    sub_1C4EF9AE8();
    sub_1C4414830();
    v94 = sub_1C4EFF888();
    sub_1C4E2DDB4(v94);
    sub_1C4E2D7C0();
    sub_1C446C204();
    v95();
    sub_1C4443500();
    v97 = sub_1C4E2CED0(v96);
    v98(v97);
    sub_1C449F4C0();
    *v99 = v222;
    v99[1] = v223;
    sub_1C445AB58();
    v57 = v221;
    *(v28 + v100) = v221;
    v101 = v225[0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v183 = sub_1C43FCEC0();
      sub_1C44C9240(v183, v184, v185, v101);
      v101 = v186;
    }

    sub_1C4414030();
    if (v71)
    {
      v187 = sub_1C43FFD98(v102);
      sub_1C44C9240(v187, v188, v189, v101);
      v101 = v190;
    }

    *(v101 + 16) = v20;
    sub_1C4415270();
    v103 = sub_1C4458588();
    sub_1C4A948D8(v103, v104);
    sub_1C4E2E244();
    goto LABEL_24;
  }

  __break(1u);
LABEL_82:
  __break(1u);
}

void sub_1C4E0B2F0()
{
  sub_1C43FE96C();
  sub_1C444B498(v3);
  v4 = sub_1C4F00DD8();
  v5 = sub_1C4440220(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4460940(v6);
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C44094C8(v8, v104);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44107F0(v10, v11, v12, v13, v14, v15, v16, v17, v105);
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A3EC(v19, v106);
  v20 = sub_1C4EFD548();
  v21 = sub_1C44348EC(v20);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4410058(v22, v107);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C442A5DC(v24, v25, v26, v27, v28, v29, v30, v31, v108);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C440D100();
  type metadata accessor for Source(0);
  sub_1C440F834();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C4406BA0();
  v34 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v34);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FE938(v36, v109);
  sub_1C4EFF0C8();
  sub_1C4425688();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C4415E5C(v38, v110);
  v39 = sub_1C4EFEEF8();
  sub_1C4E2C8A0(v39);
  v40 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_entityClass;
  v41 = sub_1C4EFD108();
  v42 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v41 = swift_once();
  }

  sub_1C4E2D608(v41, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasLocationRelationship) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_identifier) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasDate) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasAttendee);
  v43 = sub_1C44019BC();
  v1(v43);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v44 = sub_1C4F00978();
  sub_1C442B738(v44, qword_1EDE2DE10);
  v45 = sub_1C440EBA4();
  v1(v45);
  v46 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v47 = sub_1C4E2D364(v46);
  sub_1C4F01CB8();
  sub_1C43FE670();
  if (sub_1C4E2DF0C())
  {
    sub_1C4495448();
    v48 = sub_1C4488A10();
    sub_1C4E2CA84(v48);
    v49 = sub_1C4E2CD74(4.8453e-34);
    sub_1C4485F78(v49);
    sub_1C442DB9C();
    v52 = sub_1C4E276B4(v50, v51, MEMORY[0x1E69A92F8]);
    sub_1C44804C0(v52);
    v53 = sub_1C442638C();
    v54(v53);
    v55 = sub_1C4409A28();
    sub_1C441D828(v55, v56, v57);
    sub_1C4E2D380();
    sub_1C4414088();
    sub_1C44579E8(&dword_1C43F8000, v58, v59, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C44753CC();
    sub_1C4411B3C();
    sub_1C4E2D23C();
  }

  else
  {

    v60 = sub_1C4462134();
    v61(v60);
  }

  sub_1C4488B88();
  v62 = sub_1C4404084();
  MEMORY[0x1C6940010](v62);

  sub_1C4E2D2F0(v63);
  sub_1C4E2CC80();
  v64 = sub_1C4416A00();
  v65(v64);
  sub_1C4E2D49C();
  if (!v67 & v66)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44BBF0C();
    v68 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v69 = sub_1C4415B1C();
      sub_1C44255B4(v69);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v2 + 4) = v42;
      sub_1C447CEB4(&dword_1C43F8000, v70, v71, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v72 = sub_1C44E7750();
    }

    else
    {

      v72 = sub_1C44BBD58();
    }

    v42 = v111;
    v87 = v111(v72);
    v88 = 1;
  }

  else
  {

    sub_1C4432FC0();
    v75 = sub_1C4E276B4(v73, v74, MEMORY[0x1E6966618]);
    sub_1C441DF80(v75);
    v76 = sub_1C4409D98();
    sub_1C44344B8(v76, v77);
    sub_1C4E2CBF8();
    sub_1C441C6AC();
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v78 = sub_1C442AABC();
    v79(v78);
    v80 = sub_1C43FE318();
    v81(v80);
    v82 = sub_1C4417C80();
    v83(v82);
    sub_1C4507BA8();
    v84 = sub_1C4422CA0();
    v85(v84);
    v86 = sub_1C4430818();
    v87 = v42(v86);
    v88 = 0;
  }

  sub_1C4424A80(v87, v88);
  sub_1C4482D7C();
  if (v67)
  {
    sub_1C446F170(v113, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v89 = sub_1C45CF650();
    v90 = sub_1C43FFB2C(&type metadata for MappingError, v89);
    v92 = sub_1C4428F60(v90, v91);
    sub_1C4E2DEC4(v92, &qword_1EC0B9A08, &unk_1C4F107B0);
    v93 = sub_1C4495DFC();
    v42(v93);
    sub_1C448D818(v0 + v112);
    sub_1C4425820();
    v95 = *(v94 + 8);
    v97 = sub_1C443E068(v96);
    v95(v97);
    sub_1C44102F0();
    v98 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence_predicate);
    v95(v98);
    sub_1C44102F0();

    sub_1C44417C4();
    sub_1C4E2DEF4(v100, v101, *(v99 + 48), *(v99 + 52));
  }

  else
  {
    v102 = sub_1C4440B80();
    v40(v102);
    v103 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_entityIdentifier);
    v40(v103);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E0BAA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001C4FC7F00 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001C4FC8B10 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000017 && 0x80000001C4FC85A0 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x65746144736168 && a2 == 0xE700000000000000;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x6E65747441736168 && a2 == 0xEB00000000656564)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_1C4F02938();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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

unint64_t sub_1C4E0BEF0(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x6E656469666E6F63;
      break;
    case 8:
      result = 0x7461636F4C646E65;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x696669746E656469;
      break;
    case 12:
      result = 0x65746144736168;
      break;
    case 13:
      result = 0x6E65747441736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4E0C0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4E0BAA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4E0C0CC(uint64_t a1)
{
  v2 = sub_1C4E29100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E0C108(uint64_t a1)
{
  v2 = sub_1C4E29100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E0C144()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_entityIdentifier;
  sub_1C4EFF0C8();
  sub_1C43FD3F8();
  (*(v2 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_entityClass;
  sub_1C4EFD548();
  sub_1C43FD3F8();
  (*(v4 + 8))(v0 + v3);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_source + v0);
  sub_1C4EFEEF8();
  sub_1C4424878();
  v6 = *(v5 + 8);
  v7 = sub_1C4460780();
  v6(v7);
  sub_1C440DE48();
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence_predicate);
  v6(v8);
  sub_1C440DE48();

  return v0;
}

void sub_1C4E0C310()
{
  sub_1C43FE96C();
  sub_1C4E2CC60();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C441D0D8(v4, v37);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402CA8();
  v6 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FE95C();
  sub_1C456902C(&qword_1EC0C8558, &qword_1C4F77528);
  sub_1C4412DFC();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4401780();
  sub_1C447F680();
  v9 = sub_1C4E29100();
  sub_1C4E2CDB4(&type metadata for LifeEventStructs.StationaryActivity.CodingKeys, v10, v9);
  sub_1C4E2DDCC();
  sub_1C4420B30();
  v13 = sub_1C4E276B4(v11, v12, MEMORY[0x1E69A9818]);
  sub_1C4423E24(v13);
  if (v1)
  {
    v14 = sub_1C4E2CA3C();
  }

  else
  {
    sub_1C4E2CA94();
    sub_1C44A3B20();
    sub_1C4E2DEDC();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    v18 = sub_1C4E276B4(v16, v17, MEMORY[0x1E69A9750]);
    sub_1C446078C(v18);
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v19, v20, MEMORY[0x1E69A92D0]);
    sub_1C43FCD50();
    sub_1C4F027E8();
    v21 = sub_1C44019B0(3);
    type metadata accessor for Source(v21);
    sub_1C4413E34();
    sub_1C4E276B4(v22, v23, &protocol conformance descriptor for Source);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C447CF8C();
    v24 = sub_1C43FFA70();
    v25(v24);
    sub_1C443F48C();
    sub_1C4E2D1E4();
    sub_1C4F027E8();
    v26 = sub_1C4428A8C();
    v0(v26);
    sub_1C4E2C80C();
    sub_1C445CD44();

    sub_1C4E2CB70();
    v27 = sub_1C4414468();
    v28(v27);
    sub_1C441D57C();
    v29 = sub_1C4E2CAC4();
    v0(v29);
    sub_1C44882A4();
    sub_1C44D3E80();
    sub_1C4E2D640();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_endLocation);
    sub_1C4401574();
    v32 = sub_1C4E276B4(v30, v31, &unk_1C4F772AC);
    sub_1C44BBFAC(v32);
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_startingLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_identifier);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E28950();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v33, v34, &unk_1C4F77168);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v35, v36, &unk_1C4F771D4);
    sub_1C4411650();
    sub_1C4F02778();
    v14 = sub_1C4475668();
  }

  v15(v14);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4E0C8A8()
{
  sub_1C43FE96C();
  sub_1C4E2C9D0();
  sub_1C4EFEEF8();
  sub_1C4425688();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440DC5C(v4, v56);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C446BD9C(v6, v7, v8, v9, v10, v11, v12, v13, v57);
  v14 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C44A3D38(v16, v58);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C441BFD4(v18, v59);
  sub_1C456902C(&qword_1EC0C8698, &qword_1C4F775F0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FCBE0(v20, v60);
  v21 = sub_1C4473DCC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_predicate);
  sub_1C4E2DF24(v21, v22, v23);
  sub_1C4E2DCCC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_entityClass);
  sub_1C4EFD108();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v24 = type metadata accessor for Source(0);
  sub_1C4E2DCF0(v24, qword_1EDDFED10);
  sub_1C4E2E3A8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_name_predicate);
  sub_1C4E2DD64(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2DD58(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence);
  sub_1C4E2CF28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_endLocation);
  sub_1C4E2CF18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_startingLocation);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasLocationRelationship) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_identifier) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasDate) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasAttendee) = 0;
  sub_1C4E2C7E8();
  v25 = sub_1C4E29100();
  v27 = sub_1C4E2CF78(&type metadata for LifeEventStructs.StationaryActivity.CodingKeys, v26, v25);
  if (v1)
  {
    sub_1C4E2DB4C(v27, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FD3F8();
    v31 = sub_1C4E2D5B0();
    v32(v31);
    sub_1C4E2DE7C();
    v33 = sub_1C4E2CD60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_name_predicate);
    v0(v33);
    sub_1C44102F0();
    v34 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence_predicate);
    v0(v34);
    sub_1C44102F0();

    sub_1C44417C4();
    sub_1C4E2DE94(v36, v37, *(v35 + 48), *(v35 + 52));
  }

  else
  {
    sub_1C44049E4();
    sub_1C4420B30();
    v30 = sub_1C4E276B4(v28, v29, MEMORY[0x1E69A9838]);
    sub_1C440CF04(v30);
    v38 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_entityIdentifier);
    v39(v38);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v40, v41, MEMORY[0x1E69A9778]);
    sub_1C442F568();
    sub_1C4E2D5BC();
    sub_1C4E2DA98();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2DEAC();
    swift_endAccess();
    sub_1C441E9A8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v42 = sub_1C4449480();
    v2(v42);
    swift_endAccess();
    v43 = sub_1C44D4094();
    sub_1C4425188(v43, v44);
    sub_1C44514A8();
    sub_1C44AB1FC();
    v45 = sub_1C4E2CF08();
    v2(v45);
    swift_endAccess();
    v46 = sub_1C44D45AC();
    sub_1C4E2C87C(v46, v47);
    sub_1C44A18F0();
    sub_1C4401574();
    sub_1C4E276B4(v48, v49, &unk_1C4F772D4);
    sub_1C4435DCC();
    sub_1C441E968(v61);

    sub_1C4422610();
    sub_1C443F058(v61);

    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C44CD958();
    sub_1C4E29544();
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C444C4C0();

    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E2CA4C();
    sub_1C4E295F8();
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C445EBBC();

    sub_1C4E2C948();
    sub_1C442A360();
    sub_1C440B98C();
    sub_1C4E276B4(v50, v51, &unk_1C4F77190);
    sub_1C44063D8();
    sub_1C442FEF4();
    sub_1C4F02658();
    sub_1C447F42C();

    sub_1C4480640();
    sub_1C4414134();
    sub_1C4412AAC();
    sub_1C4E276B4(v52, v53, &unk_1C4F771FC);
    sub_1C443F8E4();
    v54 = sub_1C44625E0();
    v55(v54);
    sub_1C4436800();
  }

  sub_1C440962C(v0);
  sub_1C4507BC8();
  sub_1C43FBC80();
}

uint64_t sub_1C4E0CFB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E0C87C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E0D040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v27;
  a20 = v28;
  sub_1C4E2C9B8(v29);
  v30 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v31 = sub_1C43FBD18(v30);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C4410058(v32, v190);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  sub_1C43FD2C8(v34);
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  v38 = sub_1C43FD2C8(v37);
  type metadata accessor for EntityTriple(v38);
  sub_1C43FCDF8();
  v202 = v39;
  v203 = v40;
  MEMORY[0x1EEE9AC00](v39);
  sub_1C4441388(v41, v191);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C445C308();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C4485B28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C4E2C864();
  i = MEMORY[0x1E69E7CC0];
  v207[0] = MEMORY[0x1E69E7CC0];
  sub_1C4E2D2A4();
  sub_1C4E2E350();
  if (!v24)
  {
    goto LABEL_6;
  }

  sub_1C44181E4();
  if (!v47)
  {
    v22 = v205;
    goto LABEL_6;
  }

  v193 = v26;
  sub_1C44CD0E0();
  v48 = sub_1C4E2E198();
  v49(v48);
  i = v23;
  v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_name_predicate;
  sub_1C4E2D1F0();
  sub_1C4E2D930();
  sub_1C43FCE50();
  v50 = sub_1C4E2D2B4();
  v51(v50);
  v52 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_source);
  sub_1C449ED64(v52, v25 + v53);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C4414830();
  v54 = sub_1C4EFF888();
  sub_1C4E2E3D8(v54);
  v55 = sub_1C442A80C();
  sub_1C4401EC4(v55, v56, v57, MEMORY[0x1E69E7CC0]);
  sub_1C445FC80();
  if (v59)
  {
    goto LABEL_77;
  }

  while (1)
  {
    *(i + 16) = v23;
    sub_1C44056A4();
    sub_1C4A948D8(v25, v60);
    sub_1C4E2D114();
LABEL_6:
    sub_1C4E2D790();
    if (v24)
    {
      sub_1C44181E4();
      if (v61)
      {
        sub_1C44CD0E0();
        v62(v20);
        v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence_predicate;
        sub_1C4E2D210();
        sub_1C4E2DAA4();
        sub_1C43FCE50();
        v63 = sub_1C4E2D318();
        v64(v63);
        v65 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_source);
        sub_1C449ED64(v65, v20 + v66);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4414830();
        v67 = sub_1C4EFF888();
        sub_1C4E2DF74(v67);
        sub_1C4440EE4();
        sub_1C4E2E238(v68);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v158 = sub_1C43FCEC0();
          sub_1C44C9240(v158, v159, v160, i);
          i = v161;
        }

        sub_1C4E2CE44();
        if (v59)
        {
          v162 = sub_1C4413F5C(v69);
          sub_1C44C9240(v162, v163, v164, i);
          i = v165;
        }

        sub_1C4E2D5FC();
        *(i + 16) = v23;
        sub_1C44056A4();
        sub_1C4A948D8(v20, v70);
        sub_1C4E2D344();
      }

      else
      {
        v22 = v205;
      }
    }

    v25 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_startingLocation);
    if (v25)
    {
      break;
    }

LABEL_24:
    sub_1C4E2E1CC();
    if (v24)
    {
      sub_1C4E2D8F4();

      sub_1C4E2D038();
      v26 = v21;
      if (v21)
      {
LABEL_26:

        goto LABEL_65;
      }

      sub_1C4E2DD4C();
      if (v88)
      {
        v89 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C49D3614(v89);
        sub_1C4E2CBE8();
        v90 = sub_1C4E2D7CC(&a15);
        v91(v90);
        sub_1C4E2CE74();
        sub_1C4405930();
        sub_1C47CBF50(v92, v23);
        sub_1C4EFEEF8();
        sub_1C4410BC4(v23);
        if (v76)
        {
          goto LABEL_79;
        }

        sub_1C4EFF048();
        sub_1C4408DEC();
        v93 = sub_1C4E2CAD4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_source);
        sub_1C4E2DE64(v93, &a14);
        sub_1C4EF9AE8();
        sub_1C4414830();
        v94 = sub_1C4EFF888();
        sub_1C4E2DDB4(v94);
        sub_1C4E2D2D4();
        sub_1C4E2DD34();
        v95();
        sub_1C4443500();
        v97 = sub_1C4E2CED0(v96);
        v98(v97);
        sub_1C4488888();
        v25 = v206;
        *v99 = v206;
        v99[1] = v204;
        sub_1C4423984();
        v20 = v207[0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v174 = sub_1C43FCEC0();
          sub_1C44C9240(v174, v175, v176, v20);
          v20 = v177;
        }

        v87 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
        sub_1C4E2CE64();
        if (v59)
        {
          v178 = sub_1C4413F5C(v100);
          sub_1C44C9240(v178, v179, v180, v20);
          v20 = v181;
        }

        v20[2] = v23;
        sub_1C447E440();
        v101 = sub_1C442B9BC();
        sub_1C4A948D8(v101, v102);
        sub_1C4E2E1C0();
      }

      else
      {

        v87 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
        v25 = v206;
      }
    }

    else
    {
      v87 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
    }

    v24 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_identifier);
    if (!v24)
    {
LABEL_47:
      v23 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasAttendee);
      if (!v23)
      {
        goto LABEL_50;
      }

      v21 = v87[34];
      sub_1C4E2D4C0();

      v114 = sub_1C441B67C();
      sub_1C4DEBBF0(v114, v115, v116, v117, v118, v119, v120, v121, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203);
      v26 = v21;
      if (v21)
      {
LABEL_64:
      }

      else
      {
        v20 = v207;
        sub_1C49D3614(v122);

LABEL_50:
        v24 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasLocationRelationship);
        if (v24)
        {
          v123 = sub_1C4E2D7D8();
          v25 = sub_1C4428DA0(v123);
          v22 = v87[34];
          sub_1C4E2D328();
          for (i = 0; v25 != i; ++i)
          {
            if (v26)
            {
              sub_1C4E2DF5C();
              v23 = v133;
            }

            else
            {
              sub_1C4E2D79C();
              if (v59)
              {
                goto LABEL_76;
              }

              sub_1C4E2D53C();
            }

            if (__OFADD__(i, 1))
            {
              goto LABEL_75;
            }

            v124 = sub_1C441F25C();
            sub_1C4DE5C70(v124, v125, v126, v127, v128, v129, v130, v131, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203);
            if (v21)
            {
              goto LABEL_60;
            }

            v20 = v207;
            sub_1C49D3614(v132);
          }

          sub_1C4E2CD4C();
          v87 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
        }

        if (*(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasDate))
        {
          v134 = v87[34];
          sub_1C4E2D4C0();

          v135 = sub_1C441B67C();
          sub_1C4DECF58(v135, v136, v137, v138, v139, v140, v141, v142, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203);
          if (v134)
          {
            goto LABEL_64;
          }

          sub_1C49D3614(v143);
        }

        sub_1C4E2DA6C();
        if (v144)
        {
          sub_1C4E2CD38();
          v145 = sub_1C4E2D188();
          v147.n128_f64[0] = v146(v145);
          sub_1C4E2DAC0(v147);
          v148 = v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_entityClass;
          sub_1C4EFD2F8();
          sub_1C44106D4();
          sub_1C4E2D9C8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_source);
          sub_1C4EF9AE8();
          sub_1C4414830();
          v149 = sub_1C4EFF888();
          sub_1C4E2DDB4(v149);
          sub_1C443E0A4();
          *v150 = v87;
          v150[1] = v204;
          sub_1C4423984();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v182 = sub_1C43FCEC0();
            sub_1C44C9240(v182, v183, v184, v24);
            v24 = v185;
          }

          sub_1C4E2C928();
          if (v59)
          {
            v186 = sub_1C43FFD98(v151);
            sub_1C44C9240(v186, v187, v188, v24);
            v24 = v189;
          }

          *(v24 + 16) = v148;
          sub_1C449DBCC();
          sub_1C4E2CF9C();
          v152 = sub_1C4E2DDE4();
          sub_1C4A948D8(v152, v153);
        }
      }

LABEL_65:
      sub_1C4E2D354();
      sub_1C44109F8();
      return;
    }

    v103 = sub_1C4E2D7D8();
    v25 = sub_1C4428DA0(v103);
    v22 = v87[34];
    sub_1C4E2D328();
    for (i = 0; ; ++i)
    {
      if (v25 == i)
      {

        sub_1C4E2CD4C();
        v87 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
        goto LABEL_47;
      }

      if (v26)
      {
        sub_1C4E2DF5C();
        v23 = v113;
      }

      else
      {
        sub_1C4E2D79C();
        if (v59)
        {
          goto LABEL_74;
        }

        sub_1C4E2D53C();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v104 = sub_1C441F25C();
      sub_1C4DE44E8(v104, v105, v106, v107, v108, v109, v110, v111, v192, v193);
      if (v21)
      {
LABEL_60:

        goto LABEL_65;
      }

      v20 = v207;
      sub_1C49D3614(v112);
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    v154 = sub_1C4413F5C(v58);
    sub_1C44C9240(v154, v155, v156, i);
    i = v157;
  }

  sub_1C4E2D8F4();

  sub_1C4E2D014();
  v26 = v21;
  if (v21)
  {
    goto LABEL_26;
  }

  sub_1C4E2DE40();
  if (!v71)
  {

    goto LABEL_24;
  }

  v72 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v72);
  sub_1C4E2CBE8();
  v73 = sub_1C4E2D7CC(&a17);
  v74(v73);
  sub_1C4E2CB70();
  sub_1C4E2DF3C();
  v75 = sub_1C4EFEEF8();
  sub_1C4410BC4(v23);
  if (!v76)
  {

    v20 = (v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier);
    sub_1C4EFF048();
    sub_1C4416328();
    v77 = sub_1C4E2CAD4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_source);
    sub_1C4E2DE64(v77, &a16);
    sub_1C4EF9AE8();
    sub_1C4414830();
    v78 = sub_1C4EFF888();
    sub_1C4E2DDB4(v78);
    sub_1C4E2D2D4();
    sub_1C4E2DD34();
    v79();
    sub_1C4443500();
    v81 = sub_1C4E2CED0(v80);
    v82(v81);
    sub_1C449F4C0();
    v23 = v204;
    *v83 = v206;
    v83[1] = v204;
    sub_1C4423984();
    sub_1C4E2E728();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v166 = sub_1C43FCEC0();
      sub_1C44C9240(v166, v167, v168, v75);
      v75 = v169;
    }

    sub_1C4414030();
    if (v59)
    {
      v170 = sub_1C43FFD98(v84);
      sub_1C44C9240(v170, v171, v172, v75);
      v75 = v173;
    }

    *(v75 + 16) = v20;
    sub_1C44056A4();
    v85 = sub_1C43FFF1C();
    sub_1C4A948D8(v85, v86);
    sub_1C4E2D580();
    goto LABEL_24;
  }

  __break(1u);
LABEL_79:
  __break(1u);
}

void sub_1C4E0DA30()
{
  sub_1C43FE96C();
  sub_1C444B498(v3);
  v4 = sub_1C4F00DD8();
  v5 = sub_1C4440220(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4460940(v6);
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C44094C8(v8, v104);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44107F0(v10, v11, v12, v13, v14, v15, v16, v17, v105);
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A3EC(v19, v106);
  v20 = sub_1C4EFD548();
  v21 = sub_1C44348EC(v20);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4410058(v22, v107);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C442A5DC(v24, v25, v26, v27, v28, v29, v30, v31, v108);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C440D100();
  type metadata accessor for Source(0);
  sub_1C440F834();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C4406BA0();
  v34 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v34);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FE938(v36, v109);
  sub_1C4EFF0C8();
  sub_1C4425688();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C4415E5C(v38, v110);
  v39 = sub_1C4EFEEF8();
  sub_1C4E2C8A0(v39);
  v40 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_entityClass;
  v41 = sub_1C4EFD068();
  v42 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v41 = swift_once();
  }

  sub_1C4E2D608(v41, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_identifier) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasAttendee) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasLocationRelationship) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasDate);
  v43 = sub_1C44019BC();
  v1(v43);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v44 = sub_1C4F00978();
  sub_1C442B738(v44, qword_1EDE2DE10);
  v45 = sub_1C440EBA4();
  v1(v45);
  v46 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v47 = sub_1C4E2D364(v46);
  sub_1C4F01CB8();
  sub_1C43FE670();
  if (sub_1C4E2DF0C())
  {
    sub_1C4495448();
    v48 = sub_1C4488A10();
    sub_1C4E2CA84(v48);
    v49 = sub_1C4E2CD74(4.8453e-34);
    sub_1C4485F78(v49);
    sub_1C442DB9C();
    v52 = sub_1C4E276B4(v50, v51, MEMORY[0x1E69A92F8]);
    sub_1C44804C0(v52);
    v53 = sub_1C442638C();
    v54(v53);
    v55 = sub_1C4409A28();
    sub_1C441D828(v55, v56, v57);
    sub_1C4E2D380();
    sub_1C4414088();
    sub_1C44579E8(&dword_1C43F8000, v58, v59, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C44753CC();
    sub_1C4411B3C();
    sub_1C4E2D23C();
  }

  else
  {

    v60 = sub_1C4462134();
    v61(v60);
  }

  sub_1C4488B88();
  v62 = sub_1C4404084();
  MEMORY[0x1C6940010](v62);

  sub_1C4E2D2F0(v63);
  sub_1C4E2CC80();
  v64 = sub_1C4416A00();
  v65(v64);
  sub_1C4E2D49C();
  if (!v67 & v66)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44BBF0C();
    v68 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v69 = sub_1C4415B1C();
      sub_1C44255B4(v69);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v2 + 4) = v42;
      sub_1C447CEB4(&dword_1C43F8000, v70, v71, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v72 = sub_1C44E7750();
    }

    else
    {

      v72 = sub_1C44BBD58();
    }

    v42 = v111;
    v87 = v111(v72);
    v88 = 1;
  }

  else
  {

    sub_1C4432FC0();
    v75 = sub_1C4E276B4(v73, v74, MEMORY[0x1E6966618]);
    sub_1C441DF80(v75);
    v76 = sub_1C4409D98();
    sub_1C44344B8(v76, v77);
    sub_1C4E2CBF8();
    sub_1C441C6AC();
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v78 = sub_1C442AABC();
    v79(v78);
    v80 = sub_1C43FE318();
    v81(v80);
    v82 = sub_1C4417C80();
    v83(v82);
    sub_1C4507BA8();
    v84 = sub_1C4422CA0();
    v85(v84);
    v86 = sub_1C4430818();
    v87 = v42(v86);
    v88 = 0;
  }

  sub_1C4424A80(v87, v88);
  sub_1C4482D7C();
  if (v67)
  {
    sub_1C446F170(v113, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v89 = sub_1C45CF650();
    v90 = sub_1C43FFB2C(&type metadata for MappingError, v89);
    v92 = sub_1C4428F60(v90, v91);
    sub_1C4E2DEC4(v92, &qword_1EC0B9A08, &unk_1C4F107B0);
    v93 = sub_1C4495DFC();
    v42(v93);
    sub_1C448D818(v0 + v112);
    sub_1C4425820();
    v95 = *(v94 + 8);
    v97 = sub_1C443E068(v96);
    v95(v97);
    sub_1C44102F0();
    v98 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence_predicate);
    v95(v98);
    sub_1C44102F0();

    sub_1C44417C4();
    sub_1C4E2DEF4(v100, v101, *(v99 + 48), *(v99 + 52));
  }

  else
  {
    v102 = sub_1C4440B80();
    v40(v102);
    v103 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_entityIdentifier);
    v40(v103);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E0E1E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001C4FC7F00 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x80000001C4FC8B10 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E65747441736168 && a2 == 0xEB00000000656564;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000017 && 0x80000001C4FC85A0 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x65746144736168 && a2 == 0xE700000000000000)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_1C4F02938();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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

unint64_t sub_1C4E0E630(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x6E656469666E6F63;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x7461636F4C646E65;
      break;
    case 10:
      result = 0x696669746E656469;
      break;
    case 11:
      result = 0x6E65747441736168;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x65746144736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4E0E7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4E0E1E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4E0E80C(uint64_t a1)
{
  v2 = sub_1C4E29154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E0E848(uint64_t a1)
{
  v2 = sub_1C4E29154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E0E884()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_entityIdentifier;
  sub_1C4EFF0C8();
  sub_1C43FD3F8();
  (*(v2 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_entityClass;
  sub_1C4EFD548();
  sub_1C43FD3F8();
  (*(v4 + 8))(v0 + v3);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_source + v0);
  sub_1C4EFEEF8();
  sub_1C4424878();
  v6 = *(v5 + 8);
  v7 = sub_1C4460780();
  v6(v7);
  sub_1C440DE48();
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence_predicate);
  v6(v8);
  sub_1C440DE48();

  return v0;
}

void sub_1C4E0EA50()
{
  sub_1C43FE96C();
  sub_1C4E2CC60();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C441D0D8(v4, v37);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402CA8();
  v6 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FE95C();
  sub_1C456902C(&qword_1EC0C8568, &qword_1C4F77530);
  sub_1C4412DFC();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4401780();
  sub_1C447F680();
  v9 = sub_1C4E29154();
  sub_1C4E2CDB4(&type metadata for LifeEventStructs.ShoppingActivity.CodingKeys, v10, v9);
  sub_1C4E2DDCC();
  sub_1C4420B30();
  v13 = sub_1C4E276B4(v11, v12, MEMORY[0x1E69A9818]);
  sub_1C4423E24(v13);
  if (v1)
  {
    v14 = sub_1C4E2CA3C();
  }

  else
  {
    sub_1C4E2CA94();
    sub_1C44A3B20();
    sub_1C4E2DEDC();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    v18 = sub_1C4E276B4(v16, v17, MEMORY[0x1E69A9750]);
    sub_1C446078C(v18);
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v19, v20, MEMORY[0x1E69A92D0]);
    sub_1C43FCD50();
    sub_1C4F027E8();
    v21 = sub_1C44019B0(3);
    type metadata accessor for Source(v21);
    sub_1C4413E34();
    sub_1C4E276B4(v22, v23, &protocol conformance descriptor for Source);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C447CF8C();
    v24 = sub_1C43FFA70();
    v25(v24);
    sub_1C443F48C();
    sub_1C4E2D1E4();
    sub_1C4F027E8();
    v26 = sub_1C4428A8C();
    v0(v26);
    sub_1C4E2C80C();
    sub_1C445CD44();

    sub_1C4E2CB70();
    v27 = sub_1C4414468();
    v28(v27);
    sub_1C441D57C();
    v29 = sub_1C4E2CAC4();
    v0(v29);
    sub_1C44882A4();
    sub_1C44D3E80();
    sub_1C4E2D640();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_startingLocation);
    sub_1C4401574();
    v32 = sub_1C4E276B4(v30, v31, &unk_1C4F772AC);
    sub_1C44BBFAC(v32);
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_endLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_identifier);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E28950();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v33, v34, &unk_1C4F771D4);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v35, v36, &unk_1C4F77168);
    sub_1C4411650();
    sub_1C4F02778();
    v14 = sub_1C4475668();
  }

  v15(v14);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4E0EFE8()
{
  sub_1C43FE96C();
  sub_1C4E2C9D0();
  sub_1C4EFEEF8();
  sub_1C4425688();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440DC5C(v4, v56);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C446BD9C(v6, v7, v8, v9, v10, v11, v12, v13, v57);
  v14 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C44A3D38(v16, v58);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C441BFD4(v18, v59);
  sub_1C456902C(&qword_1EC0C8690, &qword_1C4F775E8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FCBE0(v20, v60);
  v21 = sub_1C4473DCC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_predicate);
  sub_1C4E2DF24(v21, v22, v23);
  sub_1C4E2DCCC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_entityClass);
  sub_1C4EFD068();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v24 = type metadata accessor for Source(0);
  sub_1C4E2DCF0(v24, qword_1EDDFED10);
  sub_1C4E2E3A8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_name_predicate);
  sub_1C4E2DD64(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2DD58(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence);
  sub_1C4E2CF28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_startingLocation);
  sub_1C4E2CF18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_endLocation);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_identifier) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasAttendee) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasLocationRelationship) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasDate) = 0;
  sub_1C4E2C7E8();
  v25 = sub_1C4E29154();
  v27 = sub_1C4E2CF78(&type metadata for LifeEventStructs.ShoppingActivity.CodingKeys, v26, v25);
  if (v1)
  {
    sub_1C4E2DB4C(v27, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FD3F8();
    v31 = sub_1C4E2D5B0();
    v32(v31);
    sub_1C4E2DE7C();
    v33 = sub_1C4E2CD60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_name_predicate);
    v0(v33);
    sub_1C44102F0();
    v34 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence_predicate);
    v0(v34);
    sub_1C44102F0();

    sub_1C44417C4();
    sub_1C4E2DE94(v36, v37, *(v35 + 48), *(v35 + 52));
  }

  else
  {
    sub_1C44049E4();
    sub_1C4420B30();
    v30 = sub_1C4E276B4(v28, v29, MEMORY[0x1E69A9838]);
    sub_1C440CF04(v30);
    v38 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_entityIdentifier);
    v39(v38);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v40, v41, MEMORY[0x1E69A9778]);
    sub_1C442F568();
    sub_1C4E2D5BC();
    sub_1C4E2DA98();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2DEAC();
    swift_endAccess();
    sub_1C441E9A8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v42 = sub_1C4449480();
    v2(v42);
    swift_endAccess();
    v43 = sub_1C44D4094();
    sub_1C4425188(v43, v44);
    sub_1C44514A8();
    sub_1C44AB1FC();
    v45 = sub_1C4E2CF08();
    v2(v45);
    swift_endAccess();
    v46 = sub_1C44D45AC();
    sub_1C4E2C87C(v46, v47);
    sub_1C44A18F0();
    sub_1C4401574();
    sub_1C4E276B4(v48, v49, &unk_1C4F772D4);
    sub_1C4435DCC();
    sub_1C441E968(v61);

    sub_1C4422610();
    sub_1C443F058(v61);

    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C44CD958();
    sub_1C4E295F8();
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C444C4C0();

    sub_1C4480640();
    sub_1C448F0CC();
    sub_1C4412AAC();
    sub_1C4E276B4(v50, v51, &unk_1C4F771FC);
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C445EBBC();

    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E2CA08();
    sub_1C4E29544();
    sub_1C44063D8();
    sub_1C442FEF4();
    sub_1C4F02658();
    sub_1C447F42C();

    sub_1C4E2C948();
    sub_1C4414134();
    sub_1C440B98C();
    sub_1C4E276B4(v52, v53, &unk_1C4F77190);
    sub_1C443F8E4();
    v54 = sub_1C44625E0();
    v55(v54);
    sub_1C4436800();
  }

  sub_1C440962C(v0);
  sub_1C4507BC8();
  sub_1C43FBC80();
}

uint64_t sub_1C4E0F6F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E0EFBC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E0F744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v101 = v14;
  v15 = v11;
  v17 = v16;
  v99 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v103 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C441D0D8(v20, v92);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD230();
  v95 = v22;
  sub_1C43FBE44();
  v96 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v28 = v27 - v26;
  v29 = sub_1C4EFF8A8();
  v30 = sub_1C44348EC(v29);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C442599C();
  v31 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v31);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBD64();
  v33 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  sub_1C444BFE4();
  v98 = *v17;
  v37 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_predicate;
  sub_1C44169A0(v15 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_predicate);
  sub_1C47CBF50(v15 + v37, v13);
  sub_1C440175C(v13, 1, v33);
  if (v38)
  {
    sub_1C446F170(v13, &qword_1EC0B9A08, &unk_1C4F107B0);
    v39 = sub_1C45CF650();
    v40 = sub_1C43FFB2C(&type metadata for MappingError, v39);
    sub_1C4414040(v40, v41);
    goto LABEL_21;
  }

  v94 = v35;
  v102 = v10;
  (*(v35 + 32))(v10, v13, v33);
  v93 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_entityClass;
  (*(v24 + 16))(v28, v15 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_entityClass, v96);
  sub_1C4EFF838();
  v42 = *(v15 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity + 8);
  v97 = v15;
  if (v42)
  {
    v43 = *(v15 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity);
    v44 = HIBYTE(v42) & 0xF;
    if ((v42 & 0x2000000000000000) == 0)
    {
      v44 = v43 & 0xFFFFFFFFFFFFLL;
    }

    v45 = v99;
    if (v44)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v46 + 16))(v95, v101);
      v47 = *(v94 + 16);
      v47(v95 + v99[5], v102, v33);
      v48 = sub_1C448879C(v99[6]);
      v49(v48, v12, a10);
      v50 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity_predicate;
      sub_1C4460954(v97 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity_predicate);
      v47(v95 + v99[7], v97 + v50, v33);
      sub_1C449ED64(v97 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_source, v95 + v99[9]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v51 = (v95 + v99[8]);
      *v51 = v43;
      v51[1] = v42;
      sub_1C4E2E864((v95 + v99[10]));
      *(v95 + v99[11]) = v52;
      v53 = v98;
      *(v95 + v99[12]) = v98;
      v54 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v54, v55, v56, MEMORY[0x1E69E7CC0]);
      v58 = v57;
      v60 = *(v57 + 16);
      v59 = *(v57 + 24);
      v28 = v60 + 1;
      if (v60 >= v59 >> 1)
      {
        sub_1C44C9240(v59 > 1, v60 + 1, 1, v57);
        v58 = v91;
      }

      v61 = v100;
      *(v58 + 16) = v28;
      sub_1C43FC354();
      sub_1C4A948D8(v95, v58 + v62 + *(v103 + 72) * v60);
      v63 = v94;
      v64 = v102;
      sub_1C4E2E8B4();
      goto LABEL_14;
    }

    v58 = MEMORY[0x1E69E7CC0];
    v61 = v100;
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
    v45 = v99;
    v61 = v100;
  }

  v60 = v33;
  v63 = v94;
  v64 = v102;
  v53 = v98;
LABEL_14:
  if (*(v58 + 16))
  {
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    (*(v65 + 16))(v61, v101);
    v66 = sub_1C4486044(v45[5]);
    v67(v66, v64, v60);
    v68 = sub_1C4486044(v45[6]);
    v69(v68, v12, a10);
    sub_1C444AF00();
    sub_1C4EFEBB8();
    sub_1C4EFD2F8();
    sub_1C4416328();
    sub_1C4E2E1A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_source);
    sub_1C4EF9AE8();
    sub_1C4E2DD40();
    *v70 = v97 + v93;
    v70[1] = v28;
    sub_1C4E2E864((v61 + v45[10]));
    *(v61 + v45[11]) = v71;
    *(v61 + v45[12]) = v53;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v72 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v83 = sub_1C43FCEC0();
      sub_1C44C9240(v83, v84, v85, v58);
      v58 = v86;
    }

    v73 = *(v58 + 16);
    sub_1C4E2E824();
    if (v75)
    {
      v87 = sub_1C43FFD98(v74);
      sub_1C44C9240(v87, v88, v89, v58);
      v58 = v90;
    }

    v76 = sub_1C4E2E95C();
    v77(v76);
    (*(v63 + 8))(v102, v72);
    *(v58 + 16) = v97 + v93;
    sub_1C43FC354();
    sub_1C4A948D8(v61, v58 + v78 + *(v103 + 72) * v73);
  }

  else
  {
    v79 = sub_1C4E2E95C();
    v80(v79);
    v81 = sub_1C4E2D45C();
    v82(v81, v60);
  }

LABEL_21:
  sub_1C440431C();
  sub_1C43FBC80();
}

unint64_t sub_1C4E0FD98(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x797469746E617571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4E0FE48(uint64_t a1)
{
  v2 = sub_1C4E291A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E0FE84(uint64_t a1)
{
  v2 = sub_1C4E291A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E0FEC0()
{
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_entityClass;
  sub_1C4EFD548();
  sub_1C43FD3F8();
  (*(v2 + 8))(v0 + v1);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_source);
  v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity_predicate;
  sub_1C4EFEEF8();
  sub_1C43FD3F8();
  (*(v4 + 8))(v0 + v3);
  sub_1C440DE48();
  return v0;
}

void sub_1C4E0FFC4(uint64_t a1)
{
  sub_1C4D889F8(319);
  if (v1 <= 0x3F)
  {
    sub_1C4EFD548();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Source(319);
      if (v3 <= 0x3F)
      {
        sub_1C4EFEEF8();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C4E1010C()
{
  sub_1C43FE96C();
  v5 = v0;
  sub_1C447E4C8();
  sub_1C4425688();
  v31 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v30 = v8;
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4401780();
  v11 = sub_1C456902C(&qword_1EC0C8578, &qword_1C4F77538);
  sub_1C43FCDF8();
  v13 = v12;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C440A474();
  v15 = sub_1C442A90C();
  sub_1C4417F50(v15, v16);
  sub_1C4E291A8();
  v17 = v2;
  v18 = v0;
  sub_1C4F02BF8();
  v19 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_predicate;
  sub_1C4433D44(v5 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_predicate);
  sub_1C47CBF50(v5 + v19, v3);
  sub_1C441ACD0();
  sub_1C4E276B4(v20, v21, MEMORY[0x1E69A9750]);
  sub_1C4F02778();
  sub_1C446F170(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (v1)
  {
    (*(v13 + 8))(v4, v11);
  }

  else
  {
    sub_1C44019B0(1);
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v22, v23, MEMORY[0x1E69A92D0]);
    sub_1C4E2CBD8();
    sub_1C4F027E8();
    v24 = sub_1C44343BC();
    type metadata accessor for Source(v24);
    sub_1C4413E34();
    sub_1C4E276B4(v25, v26, &protocol conformance descriptor for Source);
    sub_1C4E2CBD8();
    sub_1C4F027E8();
    v27 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity_predicate;
    sub_1C4418194(v18 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity_predicate);
    (*(v31 + 16))(v30, v18 + v27, v17);
    sub_1C441599C(3);
    sub_1C4E2D28C();
    sub_1C4F027E8();
    (*(v31 + 8))(v30, v17);
    sub_1C4E2E5E8(4);
    sub_1C4404084();
    sub_1C4E2D28C();
    sub_1C4F02738();
    v28 = sub_1C4E2CD24();
    v29(v28);
  }

  sub_1C440E3AC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E104CC()
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v1, v2, v3, v4);
  sub_1C4EFD208();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v5 = type metadata accessor for Source(0);
  sub_1C4E2EB4C(v5, qword_1EDDFED10);
  sub_1C4EFEE08();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity);
  return v0;
}

void sub_1C4E105A4()
{
  sub_1C43FE96C();
  v3 = v0;
  v5 = v4;
  v6 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v29 = v8;
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FE938(v11, v27);
  sub_1C456902C(&qword_1EC0C8688, &qword_1C4F775E0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD64();
  v28 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_predicate;
  sub_1C43FCF64();
  sub_1C440BAA8(v13, v14, v15, v6);
  sub_1C4EFD208();
  v16 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v17 = type metadata accessor for Source(0);
  v18 = sub_1C442B738(v17, qword_1EDDFED10);
  sub_1C449ED64(v18, v3 + v16);
  sub_1C4EFEE08();
  v19 = (v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity);
  *v19 = 0;
  v19[1] = 0;
  sub_1C4417F50(v5, v5[3]);
  sub_1C4E291A8();
  sub_1C4F02BC8();
  if (v1)
  {

    v22 = v5;
  }

  else
  {
    sub_1C441ACD0();
    sub_1C4E276B4(v20, v21, MEMORY[0x1E69A9778]);
    sub_1C44804EC();
    sub_1C4F02658();
    sub_1C44D7E3C();
    sub_1C449A970(v30, v3 + v28);
    swift_endAccess();
    sub_1C4E2E528();
    sub_1C44804EC();
    sub_1C4F026C8();
    v22 = v5;
    sub_1C44D7E3C();
    v23 = sub_1C4E2DCE4();
    v24(v23, v29, v6);
    swift_endAccess();
    sub_1C4E2DD70(4);
    sub_1C4F02618();
    sub_1C4416328();
    v25 = sub_1C4485C30();
    v26(v25);
    *v19 = v2;
    v19[1] = v6;
  }

  sub_1C440962C(v22);
  sub_1C43FBC80();
}

uint64_t sub_1C4E10968@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E10578(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E109B8()
{
  sub_1C43FE628();
  sub_1C4E2D5BC();
  v6 = v5;
  v76 = v7;
  v77 = v8;
  v9 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4E2D104();
  v14 = *v6;
  v15 = MEMORY[0x1E69E7CC0];
  v80 = MEMORY[0x1E69E7CC0];
  v16 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name + 8);
  v17 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
  v75 = v14;
  if (v16)
  {
    v18 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name);
    v19 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v19 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v71 = v2;
      v72 = v11;
      v20 = v14;
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v21 = sub_1C4E2E084();
      v22(v21);
      v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name_predicate;
      sub_1C440D164(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name_predicate, &v78);
      v24 = v9[5];
      sub_1C4EFEEF8();
      sub_1C43FCE50();
      (*(v25 + 16))(v0 + v24, v3 + v23);
      v26 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_source);
      sub_1C449ED64(v26, v0 + v27);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4416C58();
      v28 = sub_1C4EFF888();
      sub_1C4E2E5D0(v28);
      v29 = (v0 + v9[8]);
      *v29 = v18;
      v29[1] = v16;
      v30 = (v0 + v9[10]);
      *v30 = v76;
      v30[1] = v77;
      *(v0 + v9[11]) = v4;
      *(v0 + v9[12]) = v20;
      v31 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v31, v32, v33, MEMORY[0x1E69E7CC0]);
      v15 = v34;
      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      if (v36 >= v35 >> 1)
      {
        v59 = sub_1C4405AF4(v35);
        sub_1C44C9240(v59, v60, v61, v15);
        v15 = v62;
      }

      v11 = v72;
      *(v15 + 16) = v36 + 1;
      sub_1C43FF9D4();
      sub_1C4A948D8(v0, v37 + *(v72 + 72) * v36);
      v80 = v15;
      v2 = v71;
      v14 = v75;
      v17 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }
  }

  v38 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_fuelConsumed);
  v39 = v77;
  if (v38)
  {
    v40 = v17[44];
    v79 = v14;

    sub_1C4E0F744(v76, v77, v3 + v40, &v79, v41, v42, v43, v44, v71, v1);
    if (v2)
    {

      goto LABEL_19;
    }

    sub_1C49D3614(v45);

    v15 = v80;
    v39 = v77;
    v1 = v73;
  }

  if (*(v15 + 16))
  {
    v74 = v11;
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    v46 = sub_1C4E2E4EC();
    v48.n128_f64[0] = v47(v46);
    sub_1C4E2E798(v48);
    v49 = v39;
    v50 = v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_entityClass;
    sub_1C4EFD2F8();
    sub_1C43FC1CC();
    v51 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_source);
    sub_1C449ED64(v51, v1 + v52);
    sub_1C4EF9AE8();
    sub_1C4416C58();
    v53 = sub_1C4EFF888();
    sub_1C4E2E7B0(v53);
    sub_1C4E2E988((v1 + v9[8]));
    v55 = (v1 + v54);
    *v55 = v76;
    v55[1] = v49;
    *(v1 + v9[11]) = v4;
    *(v1 + v9[12]) = v75;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = sub_1C43FCEC0();
      sub_1C44C9240(v63, v64, v65, v15);
      v15 = v66;
    }

    sub_1C4414030();
    if (v57)
    {
      v67 = sub_1C43FFD98(v56);
      sub_1C44C9240(v67, v68, v69, v15);
      v15 = v70;
    }

    *(v15 + 16) = v50;
    sub_1C43FF9D4();
    sub_1C4A948D8(v1, v58 + *(v74 + 72) * v38);
  }

LABEL_19:
  sub_1C44109F8();
}

void sub_1C4E10D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  sub_1C44D4078(v25);
  v26 = sub_1C4F00DD8();
  v27 = sub_1C43FFAE0(v26, &a16);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v28);
  v29 = sub_1C4F00DC8();
  v30 = sub_1C43FFAE0(v29, &a18);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C4410058(v31, v110);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD230();
  sub_1C4460940(v33);
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v35 = sub_1C4EFD548();
  v36 = sub_1C44348EC(v35);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C4441388(v37, v111);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C4E2D074();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C440D100();
  type metadata accessor for Source(0);
  sub_1C440F834();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C4406BA0();
  v41 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v41);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FE938(v43, v112);
  sub_1C4EFF0C8();
  sub_1C4425688();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD2D8();
  sub_1C4E2E038(v45);
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v46, v47, v48, v49);
  v50 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_entityClass;
  v51 = sub_1C4EFD498();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v51 = swift_once();
  }

  sub_1C4E2E994(v51, qword_1EDDFED10);
  sub_1C4EFEBF8();
  v52 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name);
  *v52 = 0;
  v52[1] = 0;
  sub_1C4E2EA6C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_fuelConsumed);
  v53 = sub_1C4E2E480();
  (v21)(v53);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v54 = sub_1C4F00978();
  v55 = sub_1C442B738(v54, qword_1EDE2DE10);
  sub_1C447D06C();
  sub_1C4E2D69C();
  *(v56 - 256) = v21;
  v21();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v57 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4E2E7E0();
  os_log_type_enabled(v57, v55);
  sub_1C4E2E970();
  if (v58)
  {
    sub_1C4495448();
    v59 = sub_1C4488A10();
    sub_1C4E2DB74(v59);
    sub_1C4E2D4A8(4.8453e-34);
    v61 = sub_1C441D828(v118, v117, v60);
    sub_1C4485F78(v61);
    sub_1C442DB9C();
    v64 = sub_1C4E276B4(v62, v63, MEMORY[0x1E69A92F8]);
    sub_1C4E2DA78(v64);
    sub_1C4434430();
    v65 = sub_1C4E2E8CC();
    v113 = v66;
    v66(v65);
    v67 = sub_1C4409A28();
    sub_1C441D828(v67, v68, v69);
    sub_1C43FEF2C();

    sub_1C4414088();
    sub_1C4E2D264(&dword_1C43F8000, v70, v55, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C4E2E0D8();
    sub_1C4E2D9E4();
    sub_1C4E2D23C();
  }

  else
  {

    v71 = sub_1C4E2D3F8();
    v113 = v72;
    v72(v71);
  }

  sub_1C4E2E01C();
  v73 = sub_1C4404084();
  MEMORY[0x1C6940010](v73);

  sub_1C4F01178();
  sub_1C442F9C8();
  sub_1C4F01148();
  v74 = sub_1C4E2D0A4();
  v75(v74);
  sub_1C4E2D49C();
  if (!v77 & v76)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2D490();
    v78 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v79 = sub_1C4415B1C();
      sub_1C44255B4(v79);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v24 + 4) = v120;
      sub_1C447CEB4(&dword_1C43F8000, v80, v81, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v82 = sub_1C44E7750();
    }

    else
    {

      v82 = sub_1C44BBD58();
    }

    v98 = v113;
    v99 = (v113)(v82);
    v100 = 1;
  }

  else
  {

    sub_1C4432FC0();
    v85 = sub_1C4E276B4(v83, v84, MEMORY[0x1E6966618]);
    sub_1C4E2C974(v85);
    v86 = sub_1C4409D98();
    sub_1C44344B8(v86, v87);
    sub_1C4E2CBF8();
    v88 = sub_1C4409D98();
    sub_1C441DFEC(v88, v89);
    sub_1C445BBB0();
    v90 = sub_1C445BE84();
    v91(v90);
    sub_1C4E2E3F0();
    sub_1C442913C();
    sub_1C4E2CEF4();
    v92();
    v93 = sub_1C4E2C834();
    v94(v93);
    sub_1C4E2DA1C();
    v95 = sub_1C447CD1C(v50);
    v96(v95);
    v97 = sub_1C43FE7D0();
    v98 = v113;
    v99 = (v113)(v97);
    v100 = 0;
  }

  sub_1C445886C(v99, v100);
  sub_1C4482D7C();
  if (v77)
  {
    sub_1C446F170(v119, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v101 = sub_1C45CF650();
    v102 = sub_1C43FFB2C(&type metadata for MappingError, v101);
    v104 = sub_1C4428F60(v102, v103);
    sub_1C4E2EBA4(v104, &qword_1EC0B9A08, &unk_1C4F107B0);
    v105 = sub_1C4495DFC();
    v98(v105);
    sub_1C448D818(v114 + v115);
    sub_1C441B884();
    (*(v106 + 8))(v114 + v107);
    sub_1C44102F0();

    sub_1C44417C4();
    sub_1C4E2E010();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v108 = sub_1C4440EB0();
    v116(v108);
    v109 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_entityIdentifier);
    v116(v109);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E1154C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x736E6F436C657566 && a2 == 0xEC00000064656D75)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

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

unint64_t sub_1C4E11798(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x736E6F436C657566;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4E11884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4E1154C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4E118AC(uint64_t a1)
{
  v2 = sub_1C4E291FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E118E8(uint64_t a1)
{
  v2 = sub_1C4E291FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E11924()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_entityIdentifier;
  sub_1C4EFF0C8();
  sub_1C43FD3F8();
  (*(v2 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_entityClass;
  sub_1C4EFD548();
  sub_1C43FD3F8();
  (*(v4 + 8))(v0 + v3);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_source);
  v5 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name_predicate;
  sub_1C4EFEEF8();
  sub_1C43FD3F8();
  (*(v6 + 8))(v0 + v5);
  sub_1C440DE48();

  return v0;
}

void sub_1C4E11A6C(uint64_t a1)
{
  sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4D889F8(319);
    if (v2 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Source(319);
        if (v4 <= 0x3F)
        {
          sub_1C4EFEEF8();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C4E11BFC()
{
  sub_1C43FE96C();
  v4 = v0;
  sub_1C447E4C8();
  sub_1C43FCDF8();
  v32 = v6;
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4440AD4();
  v9 = sub_1C456902C(&qword_1EC0C8588, &qword_1C4F77540);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4402A68();
  sub_1C4E2C908();
  sub_1C4E291FC();
  sub_1C4E2D814();
  sub_1C4F02BF8();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v11, v12, MEMORY[0x1E69A9818]);
  sub_1C4E2E100();
  sub_1C4F027E8();
  if (v1)
  {
    v13 = sub_1C440D510();
    v14(v13);
  }

  else
  {
    v15 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_predicate;
    sub_1C4433D44(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_predicate);
    sub_1C47CBF50(v4 + v15, v3);
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v16, v17, MEMORY[0x1E69A9750]);
    sub_1C4475550();
    sub_1C4402150();
    sub_1C4F02778();
    sub_1C446F170(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v18, v19, MEMORY[0x1E69A92D0]);
    sub_1C4E2E100();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v20 = sub_1C44019B0(3);
    type metadata accessor for Source(v20);
    sub_1C4413E34();
    sub_1C4E276B4(v21, v22, &protocol conformance descriptor for Source);
    sub_1C4E2E100();
    sub_1C4E2D6CC();
    sub_1C4402150();
    sub_1C4F027E8();
    v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name_predicate;
    sub_1C4418194(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name_predicate);
    (*(v32 + 16))(v2, v4 + v23, v33);
    sub_1C43FE79C(4);
    sub_1C4475550();
    sub_1C4402150();
    sub_1C4F027E8();
    (*(v32 + 8))(v2, v33);
    v26 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4402150();
    sub_1C4F02738();
    if (v26)
    {
      v27 = sub_1C4401D04();
      v28(v27, v9);
    }

    else
    {

      v29 = sub_1C4E2DB84(*(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_fuelConsumed));
      type metadata accessor for LifeEventStructs.QuantityRelationshipType(v29);
      sub_1C4455534();
      sub_1C4E276B4(v30, v31, &unk_1C4F76A3C);
      sub_1C4414374();
      sub_1C43FCB2C();
      sub_1C4F02778();
      v24 = sub_1C4401D04();
      v25(v24, v9);
    }
  }

  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4E120D4()
{
  sub_1C43FE96C();
  sub_1C445CD30();
  sub_1C4EFEEF8();
  sub_1C4425688();
  v37 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C441BFD4(v6, v33);
  v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  sub_1C43FBE44();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD2D8();
  sub_1C456902C(&qword_1EC0C8680, &qword_1C4F775D8);
  sub_1C43FCDF8();
  v35 = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD64();
  v38 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_predicate;
  v12 = sub_1C44F0C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_predicate);
  sub_1C440BAA8(v12, v13, v14, v3);
  v36 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_entityClass;
  sub_1C4EFD498();
  v15 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v16 = type metadata accessor for Source(0);
  v17 = sub_1C442B738(v16, qword_1EDDFED10);
  sub_1C449ED64(v17, v0 + v15);
  sub_1C4EFEBF8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_fuelConsumed) = 0;
  sub_1C4E2C908();
  sub_1C4E291FC();
  sub_1C4F02BC8();
  if (v2)
  {
    sub_1C446F170(v0 + v38, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FD3F8();
    (*(v20 + 8))(v0 + v36);
    sub_1C448D818(v0 + v15);
    (*(v37 + 8))(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name_predicate, v3);
    sub_1C44102F0();

    sub_1C44417C4();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_1C4420B30();
    sub_1C4E276B4(v18, v19, MEMORY[0x1E69A9838]);
    sub_1C4E2DBEC();
    sub_1C440BCD8();
    sub_1C4F026C8();
    v21 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_entityIdentifier);
    v22(v21);
    sub_1C4480434();
    sub_1C441ACD0();
    sub_1C4E276B4(v23, v24, MEMORY[0x1E69A9778]);
    sub_1C4E2DCA4();
    sub_1C440BCD8();
    sub_1C4F02658();
    sub_1C44D7E3C();
    sub_1C4E2DEAC();
    swift_endAccess();
    sub_1C4E2D6BC();
    sub_1C4E2DCA4();
    sub_1C440BCD8();
    sub_1C4F026C8();
    sub_1C44D7E3C();
    v25 = sub_1C4E2DCE4();
    v26(v25, v34, v3);
    swift_endAccess();
    sub_1C4E2DD70(5);
    sub_1C440BCD8();
    v27 = sub_1C4F02618();
    sub_1C4425188(v27, v28);
    type metadata accessor for LifeEventStructs.QuantityRelationshipType(0);
    sub_1C4E2DC4C();
    sub_1C4455534();
    sub_1C4E276B4(v29, v30, &unk_1C4F76A64);
    sub_1C445FC54();
    sub_1C4E2D0C8();
    sub_1C440BCD8();
    sub_1C4F02658();
    v31 = sub_1C4485C30();
    v32(v31, v35);
    sub_1C4488620(v39);
  }

  sub_1C440962C(v1);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4E1267C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E120A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E126CC()
{
  sub_1C43FE628();
  sub_1C4E2D1BC(v5);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4E2D05C();
  sub_1C4E2E444();
  v8 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
  if (v4 && (sub_1C4E2CEB8(), v9))
  {
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    v10 = sub_1C4E2E084();
    v11(v10);
    sub_1C4433D44(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_name_predicate + v3);
    sub_1C4E2EC34();
    sub_1C43FCE50();
    v12 = sub_1C4E2EA08();
    v13(v12);
    v14 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_source);
    sub_1C449ED64(v14, v1 + v15);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C4416C58();
    v16 = sub_1C4EFF888();
    sub_1C4E2E5D0(v16);
    v17 = sub_1C4E2C8C4();
    sub_1C4401EC4(v17, v18, v19, MEMORY[0x1E69E7CC0]);
    sub_1C4E2D3B0();
    if (v21)
    {
      v40 = sub_1C43FF640(v20);
      sub_1C44C9240(v40, v41, v42, v4);
      v4 = v43;
    }

    *(v4 + 16) = v0;
    sub_1C4409498();
    sub_1C4E2E044(v22);
    v8 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (*(v4 + 16))
  {
    v23 = v8[47];
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    v24 = sub_1C4E2E4EC();
    v26.n128_f64[0] = v25(v24);
    sub_1C4E2E798(v26);
    sub_1C4EFD2F8();
    sub_1C440D158();
    v27 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_source);
    sub_1C449ED64(v27, v2 + v28);
    sub_1C4EF9AE8();
    sub_1C4416C58();
    v29 = sub_1C4EFF888();
    sub_1C4E2E7B0(v29);
    sub_1C44B9260();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1C43FCEC0();
      sub_1C44C9240(v32, v33, v34, v4);
      v4 = v35;
    }

    sub_1C4424824();
    if (v21)
    {
      v36 = sub_1C43FF640(v30);
      sub_1C44C9240(v36, v37, v38, v4);
      v4 = v39;
    }

    *(v4 + 16) = v23;
    sub_1C43FF9D4();
    sub_1C4E2E17C(v31);
  }

  sub_1C4403810();
  sub_1C44109F8();
}

uint64_t sub_1C4E1294C(uint64_t a1)
{
  v2 = sub_1C4E29250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E12988(uint64_t a1)
{
  v2 = sub_1C4E29250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E129C4()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_entityIdentifier;
  sub_1C4EFF0C8();
  sub_1C43FD3F8();
  (*(v2 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_entityClass;
  sub_1C4EFD548();
  sub_1C43FD3F8();
  (*(v4 + 8))(v0 + v3);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_source);
  v5 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_name_predicate;
  sub_1C4EFEEF8();
  sub_1C43FD3F8();
  (*(v6 + 8))(&v5[v0]);
  sub_1C440DE48();
  return v0;
}

void sub_1C4E12AFC()
{
  sub_1C43FE96C();
  sub_1C4E2D990();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C442599C();
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4440AD4();
  sub_1C456902C(&qword_1EC0C8598, &qword_1C4F77548);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440A474();
  sub_1C4E2C908();
  sub_1C4E29250();
  sub_1C4475B58();
  sub_1C4F02BF8();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v7, v8, MEMORY[0x1E69A9818]);
  sub_1C4E2CE14();
  if (v0)
  {
    v9 = sub_1C43FFE24();
    v10(v9);
  }

  else
  {
    sub_1C4E2E9F0();
    sub_1C4433D44(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_predicate);
    sub_1C4E2E600();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v11, v12, MEMORY[0x1E69A9750]);
    sub_1C4E2CEE0();
    sub_1C44887A8();
    sub_1C4F02778();
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v13, v14, MEMORY[0x1E69A92D0]);
    sub_1C4416C08();
    sub_1C4E2D6AC();
    sub_1C4E2CBD8();
    sub_1C4F027E8();
    v15 = sub_1C44019B0(3);
    type metadata accessor for Source(v15);
    sub_1C4413E34();
    sub_1C4E276B4(v16, v17, &protocol conformance descriptor for Source);
    sub_1C4416C08();
    sub_1C4E2DA04();
    sub_1C4E2CBD8();
    sub_1C4F027E8();
    sub_1C4418194(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_name_predicate + v1);
    v18 = sub_1C4E2CD08();
    v19(v18);
    sub_1C441599C(4);
    sub_1C44887A8();
    sub_1C4F027E8();
    sub_1C4E2E80C();
    v20 = sub_1C4E2CF68();
    v21(v20);
    sub_1C4E2D58C();
    sub_1C4E2E5E8(v22);
    sub_1C44D71EC();
    sub_1C4E2D28C();
    sub_1C4F02738();
    v23 = sub_1C4E2CF58();
    v24(v23);
  }

  sub_1C440E3AC();
  sub_1C43FBC80();
}

void sub_1C4E12EC0()
{
  sub_1C43FE96C();
  sub_1C445CD30();
  sub_1C4EFEEF8();
  sub_1C4425688();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440A3EC(v4, v34);
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBC74();
  sub_1C43FBE44();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  sub_1C4E2E438(v8);
  sub_1C456902C(&qword_1EC0C8678, &qword_1C4F775D0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4401780();
  v10 = sub_1C44F0C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_predicate);
  sub_1C4E2EC1C(v10, v11, v12);
  v13 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_entityClass;
  sub_1C4EFCFC8();
  v14 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v15 = type metadata accessor for Source(0);
  v16 = sub_1C442B738(v15, qword_1EDDFED10);
  sub_1C449ED64(v16, v0 + v14);
  sub_1C4EFEBF8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_name);
  sub_1C445631C();
  sub_1C4E29250();
  sub_1C4475644();
  sub_1C44804EC();
  v17 = sub_1C4F02BC8();
  if (v2)
  {
    sub_1C4E2E7C8(v17, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FD3F8();
    (*(v20 + 8))(v0 + v13);
    sub_1C448D818(v0 + v14);
    v21 = sub_1C4E2D40C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_name_predicate);
    v22(v21);
    sub_1C44102F0();
    sub_1C44417C4();
    sub_1C4E2EBBC(v24, v25, *(v23 + 48), *(v23 + 52));
  }

  else
  {
    sub_1C4E2DC3C();
    sub_1C4420B30();
    sub_1C4E276B4(v18, v19, MEMORY[0x1E69A9838]);
    sub_1C4E2CB04();
    v26 = sub_1C44D7338(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_entityIdentifier);
    v27(v26);
    sub_1C4480434();
    sub_1C441ACD0();
    sub_1C4E276B4(v28, v29, MEMORY[0x1E69A9778]);
    sub_1C44628E4();
    sub_1C4F02658();
    sub_1C44D7E3C();
    sub_1C4E2EBD4();
    swift_endAccess();
    sub_1C4E2D6BC();
    sub_1C4E2E414();
    sub_1C44628E4();
    sub_1C4F026C8();
    sub_1C44D7E3C();
    v30 = sub_1C4E2CFAC();
    v31(v30);
    swift_endAccess();
    sub_1C4E2D194();
    sub_1C43FC1CC();
    v32 = sub_1C445BC84();
    v33(v32);
    sub_1C4E2DF8C();
  }

  sub_1C440962C(v1);
  sub_1C4E2D0D4();
  sub_1C43FBC80();
}

uint64_t sub_1C4E13330@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E12E94(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E13380()
{
  sub_1C43FE628();
  sub_1C4E2D1BC(v5);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4E2D05C();
  sub_1C4E2E444();
  v8 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
  if (v4 && (sub_1C4E2CEB8(), v9))
  {
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    v10 = sub_1C4E2E084();
    v11(v10);
    sub_1C4433D44(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_name_predicate + v3);
    sub_1C4E2EC34();
    sub_1C43FCE50();
    v12 = sub_1C4E2EA08();
    v13(v12);
    v14 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_source);
    sub_1C449ED64(v14, v1 + v15);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C4416C58();
    v16 = sub_1C4EFF888();
    sub_1C4E2E5D0(v16);
    v17 = sub_1C4E2C8C4();
    sub_1C4401EC4(v17, v18, v19, MEMORY[0x1E69E7CC0]);
    sub_1C4E2D3B0();
    if (v21)
    {
      v40 = sub_1C43FF640(v20);
      sub_1C44C9240(v40, v41, v42, v4);
      v4 = v43;
    }

    *(v4 + 16) = v0;
    sub_1C4409498();
    sub_1C4E2E044(v22);
    v8 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (*(v4 + 16))
  {
    v23 = v8[49];
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    v24 = sub_1C4E2E4EC();
    v26.n128_f64[0] = v25(v24);
    sub_1C4E2E798(v26);
    sub_1C4EFD2F8();
    sub_1C440D158();
    v27 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_source);
    sub_1C449ED64(v27, v2 + v28);
    sub_1C4EF9AE8();
    sub_1C4416C58();
    v29 = sub_1C4EFF888();
    sub_1C4E2E7B0(v29);
    sub_1C44B9260();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1C43FCEC0();
      sub_1C44C9240(v32, v33, v34, v4);
      v4 = v35;
    }

    sub_1C4424824();
    if (v21)
    {
      v36 = sub_1C43FF640(v30);
      sub_1C44C9240(v36, v37, v38, v4);
      v4 = v39;
    }

    *(v4 + 16) = v23;
    sub_1C43FF9D4();
    sub_1C4E2E17C(v31);
  }

  sub_1C4403810();
  sub_1C44109F8();
}

uint64_t sub_1C4E13600(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C43FEC00(0xD000000000000010, 0x80000001C4F855E0) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = sub_1C4E2D0E4();
    v8 = v3 && a2 == v7;
    if (v8 || (sub_1C43FEC00(v6, 0xE900000000000065) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = sub_1C44553A4();
      v11 = a1 == v9 && a2 == v10;
      if (v11 || (sub_1C43FEC00(v9, v10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v12 = sub_1C4414234();
        v13 = v3 && a2 == 0xE600000000000000;
        if (v13 || (sub_1C43FEC00(v12, 0xE600000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v14 = sub_1C4E2CB90();
          v16 = a1 == v14 && a2 == v15;
          if (v16 || (sub_1C43FEC00(v14, v15) & 1) != 0)
          {

            return 4;
          }

          else
          {
            sub_1C4E2E2C0();
            if (v3 && a2 == 0xE400000000000000)
            {

              return 5;
            }

            else
            {
              v18 = sub_1C43FEC00(1701667182, 0xE400000000000000);

              if (v18)
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
}

uint64_t sub_1C4E13758(uint64_t a1)
{
  v2 = sub_1C4E292A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E13794(uint64_t a1)
{
  v2 = sub_1C4E292A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E137D0()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_entityIdentifier;
  sub_1C4EFF0C8();
  sub_1C43FD3F8();
  (*(v2 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_entityClass;
  sub_1C4EFD548();
  sub_1C43FD3F8();
  (*(v4 + 8))(v0 + v3);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_source);
  v5 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_name_predicate;
  sub_1C4EFEEF8();
  sub_1C43FD3F8();
  (*(v6 + 8))(&v5[v0]);
  sub_1C440DE48();
  return v0;
}

void sub_1C4E13908()
{
  sub_1C44569B4();
  sub_1C4EFF0C8();
  if (v0 <= 0x3F)
  {
    sub_1C4D889F8(319);
    if (v1 <= 0x3F)
    {
      sub_1C4E2E9C0();
      sub_1C4EFD548();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Source(319);
        if (v3 <= 0x3F)
        {
          sub_1C4EFEEF8();
          if (v4 <= 0x3F)
          {
            sub_1C4E2DC2C();
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C4E13A7C()
{
  sub_1C43FE96C();
  sub_1C4E2D990();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C442599C();
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4440AD4();
  sub_1C456902C(&qword_1EC0C85A8, &qword_1C4F77550);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440A474();
  sub_1C4E2C908();
  sub_1C4E292A4();
  sub_1C4475B58();
  sub_1C4F02BF8();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v7, v8, MEMORY[0x1E69A9818]);
  sub_1C4E2CE14();
  if (v0)
  {
    v9 = sub_1C43FFE24();
    v10(v9);
  }

  else
  {
    sub_1C4E2E9F0();
    sub_1C4433D44(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_predicate);
    sub_1C4E2E600();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v11, v12, MEMORY[0x1E69A9750]);
    sub_1C4E2CEE0();
    sub_1C44887A8();
    sub_1C4F02778();
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v13, v14, MEMORY[0x1E69A92D0]);
    sub_1C4416C08();
    sub_1C4E2D6AC();
    sub_1C4E2CBD8();
    sub_1C4F027E8();
    v15 = sub_1C44019B0(3);
    type metadata accessor for Source(v15);
    sub_1C4413E34();
    sub_1C4E276B4(v16, v17, &protocol conformance descriptor for Source);
    sub_1C4416C08();
    sub_1C4E2DA04();
    sub_1C4E2CBD8();
    sub_1C4F027E8();
    sub_1C4418194(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_name_predicate + v1);
    v18 = sub_1C4E2CD08();
    v19(v18);
    sub_1C441599C(4);
    sub_1C44887A8();
    sub_1C4F027E8();
    sub_1C4E2E80C();
    v20 = sub_1C4E2CF68();
    v21(v20);
    sub_1C4E2D58C();
    sub_1C4E2E5E8(v22);
    sub_1C44D71EC();
    sub_1C4E2D28C();
    sub_1C4F02738();
    v23 = sub_1C4E2CF58();
    v24(v23);
  }

  sub_1C440E3AC();
  sub_1C43FBC80();
}

void sub_1C4E13E40()
{
  sub_1C43FE96C();
  sub_1C445CD30();
  sub_1C4EFEEF8();
  sub_1C4425688();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440A3EC(v4, v34);
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBC74();
  sub_1C43FBE44();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  sub_1C4E2E438(v8);
  sub_1C456902C(&qword_1EC0C8670, &qword_1C4F775C8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4401780();
  v10 = sub_1C44F0C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_predicate);
  sub_1C4E2EC1C(v10, v11, v12);
  v13 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_entityClass;
  sub_1C4EFD3C8();
  v14 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v15 = type metadata accessor for Source(0);
  v16 = sub_1C442B738(v15, qword_1EDDFED10);
  sub_1C449ED64(v16, v0 + v14);
  sub_1C4EFEBF8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_name);
  sub_1C445631C();
  sub_1C4E292A4();
  sub_1C4475644();
  sub_1C44804EC();
  v17 = sub_1C4F02BC8();
  if (v2)
  {
    sub_1C4E2E7C8(v17, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FD3F8();
    (*(v20 + 8))(v0 + v13);
    sub_1C448D818(v0 + v14);
    v21 = sub_1C4E2D40C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_name_predicate);
    v22(v21);
    sub_1C44102F0();
    sub_1C44417C4();
    sub_1C4E2EBBC(v24, v25, *(v23 + 48), *(v23 + 52));
  }

  else
  {
    sub_1C4E2DC3C();
    sub_1C4420B30();
    sub_1C4E276B4(v18, v19, MEMORY[0x1E69A9838]);
    sub_1C4E2CB04();
    v26 = sub_1C44D7338(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_entityIdentifier);
    v27(v26);
    sub_1C4480434();
    sub_1C441ACD0();
    sub_1C4E276B4(v28, v29, MEMORY[0x1E69A9778]);
    sub_1C44628E4();
    sub_1C4F02658();
    sub_1C44D7E3C();
    sub_1C4E2EBD4();
    swift_endAccess();
    sub_1C4E2D6BC();
    sub_1C4E2E414();
    sub_1C44628E4();
    sub_1C4F026C8();
    sub_1C44D7E3C();
    v30 = sub_1C4E2CFAC();
    v31(v30);
    swift_endAccess();
    sub_1C4E2D194();
    sub_1C43FC1CC();
    v32 = sub_1C445BC84();
    v33(v32);
    sub_1C4E2DF8C();
  }

  sub_1C440962C(v1);
  sub_1C4E2D0D4();
  sub_1C43FBC80();
}

uint64_t sub_1C4E142B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E13E14(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E14300()
{
  sub_1C43FE628();
  v6 = v2;
  v7 = v1;
  v177 = v9;
  v178 = v8;
  v10 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C440DC5C(v12, v162);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  v169 = v14;
  sub_1C43FBE44();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v175 = v16;
  v176 = v15;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  v173 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_1C4E2EA20();
  type metadata accessor for EntityTriple(v19);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  v170 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4E2D104();
  v179 = MEMORY[0x1E69E7CC0];
  v25 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name + 8);
  v174 = v1;
  if (v25)
  {
    v171 = v0;
    v26 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name);
    sub_1C4E2D5D4();
    if (v28)
    {
      v167 = v2;
      v29 = v27;
      (*(v175 + 16))(v1, v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier, v176);
      v30 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name_predicate;
      sub_1C4E2D474(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name_predicate);
      v6 = v4[5];
      sub_1C4EFEEF8();
      sub_1C43FCE50();
      (*(v31 + 16))(v1 + v6, v1 + v30);
      v32 = sub_1C4E2DD28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_source);
      sub_1C449ED64(v32, v1 + v33);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4429130();
      sub_1C4EFF888();
      sub_1C4EFEC38();
      v34 = (v1 + v4[8]);
      *v34 = v26;
      v34[1] = v25;
      sub_1C4E2D5C8(v177, (v1 + v4[10]));
      *(v1 + v35) = v5;
      *(v1 + v4[12]) = v29;
      v36 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v36, v37, v38, MEMORY[0x1E69E7CC0]);
      v40 = v39;
      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      if (v42 >= v41 >> 1)
      {
        v134 = sub_1C43FF640(v41);
        sub_1C44C9240(v134, v135, v136, v40);
        v40 = v137;
      }

      *(v40 + 16) = v42 + 1;
      sub_1C43FBF6C();
      sub_1C44F0CA0();
      sub_1C4A948D8(v1, v43 + v44 * v42);
      v179 = v40;
      sub_1C4495248();
      v7 = v1;
    }

    v0 = v171;
  }

  v45 = *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_modelOfAutomobile);
  if (v45)
  {
    v164 = v3;

    sub_1C4E126CC();
    if (v6)
    {
      goto LABEL_21;
    }

    sub_1C4E2E948();
    v165 = v4;
    if (v48)
    {
      v49 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C49D3614(v49);
      v7 = v1;
      (*(v175 + 16))(v0, v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier, v176);
      v50 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_predicate;
      sub_1C4E2D16C(v45 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_predicate);
      sub_1C47CBF50(v45 + v50, v169);
      v51 = sub_1C4EFEEF8();
      sub_1C43FC0FC(v169);
      if (v52)
      {
        __break(1u);
        goto LABEL_53;
      }

      sub_1C4EFF048();
      sub_1C440D158();
      v53 = sub_1C4E2DD28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_source);
      sub_1C449ED64(v53, v3 + v54);
      sub_1C4EF9AE8();
      sub_1C4429130();
      sub_1C4EFF888();
      sub_1C4E2E9FC();
      sub_1C4EFEC38();
      (*(v175 + 32))(v3, v0, v176);
      sub_1C441B884();
      (*(v55 + 32))(v3 + v56, v169, v51);
      sub_1C4E2D714();
      v47 = v177;
      *v57 = v178;
      v57[1] = v177;
      sub_1C4E2E160();
      v58 = v179;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = sub_1C43FCEC0();
        sub_1C44C9240(v138, v139, v140, v179);
        v58 = v141;
      }

      v59 = *(v58 + 16);
      sub_1C4424824();
      if (v61)
      {
        v142 = sub_1C43FF640(v60);
        sub_1C44C9240(v142, v143, v144, v58);
        v58 = v145;
      }

      v46 = 0;

      *(v58 + 16) = v0;
      sub_1C43FBF6C();
      sub_1C44F0CA0();
      sub_1C4A948D8(v3, v62 + v63 * v59);
      v179 = v58;
      sub_1C4E2E89C();
    }

    else
    {
      v46 = 0;

      v47 = v177;
      sub_1C4E2E89C();
      v7 = v1;
    }
  }

  else
  {
    v165 = v4;
    v46 = v6;
    v47 = v177;
  }

  v64 = *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_makeOfAutomobile);
  v65 = v178;
  if (!v64)
  {
LABEL_30:
    v69 = v46;
    sub_1C44225D8();
    goto LABEL_31;
  }

  sub_1C441E0A4();
  sub_1C4E13380();
  if (v46)
  {
LABEL_21:

LABEL_43:
    sub_1C44109F8();
    return;
  }

  sub_1C4E2E948();
  if (!v66)
  {

    sub_1C4E2E89C();
    v7 = v174;
    v47 = v177;
    v65 = v178;
    goto LABEL_30;
  }

  v67 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v67);
  v7 = v174;
  (*(v175 + 16))(v173, v174 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier, v176);
  v68 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_predicate;
  sub_1C4418194(v64 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_predicate);
  sub_1C47CBF50(v64 + v68, v168);
  sub_1C4EFEEF8();
  sub_1C43FC0FC(v168);
  v47 = v177;
  if (!v52)
  {
    v69 = 0;

    v172 = sub_1C4EFF048();
    v71 = v70;
    v72 = sub_1C4E2DD28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_source);
    sub_1C449ED64(v72, v170 + v73);
    sub_1C4EF9AE8();
    sub_1C4429130();
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v74 = sub_1C4E2E010();
    v75(v74);
    sub_1C441B884();
    v77 = sub_1C44A1CC0(v76);
    v78(v77);
    v79 = (v170 + v165[8]);
    *v79 = v172;
    v79[1] = v71;
    v80 = (v170 + v165[10]);
    *v80 = v178;
    v80[1] = v177;
    *(v170 + v165[11]) = v5;
    *(v170 + v165[12]) = v167;
    v81 = v179;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v146 = sub_1C43FCEC0();
      sub_1C44C9240(v146, v147, v148, v179);
      v81 = v149;
    }

    v82 = *(v81 + 16);
    sub_1C4424824();
    if (v61)
    {
      v150 = sub_1C43FF640(v83);
      sub_1C44C9240(v150, v151, v152, v81);
      v81 = v153;
    }

    *(v81 + 16) = v170;
    sub_1C43FBF6C();
    sub_1C44F0CA0();
    sub_1C4A948D8(v170, v84 + v85 * v82);
    v179 = v81;
    sub_1C4E2E89C();
    v65 = v178;
LABEL_31:
    if (*(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_identifier))
    {
      v64 = v86;

      v87 = sub_1C4E2D39C();
      sub_1C4DE44E8(v87, v88, v89, v90, v91, v92, v93, v94, v163, v164);
      if (v69)
      {
        goto LABEL_21;
      }

      sub_1C49D3614(v95);
    }

    if (*(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_fuelConsumed))
    {
      v96 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier;
      sub_1C4E2E574();
      v97 = sub_1C4E2D39C();
      sub_1C4E2E558(v97, v98, v99, v100, v101, v102, v103, v104, v163, v164);
      if (v96)
      {
        goto LABEL_42;
      }

      sub_1C49D3614(v105);

      v65 = v64;
    }

    if (!*(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_cityMileage))
    {
      goto LABEL_40;
    }

    v106 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier;
    sub_1C4E2E574();
    v107 = sub_1C4E2D39C();
    sub_1C4E2E558(v107, v108, v109, v110, v111, v112, v113, v114, v163, v164);
    if (!v106)
    {
      sub_1C49D3614(v115);

      v65 = v64;
LABEL_40:
      v116 = *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_highwayMileage);
      if (v116)
      {
        v117 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier;
        sub_1C4E2E574();
        v118 = sub_1C4E2D39C();
        sub_1C4E2E558(v118, v119, v120, v121, v122, v123, v124, v125, v163, v164);
        if (v117)
        {
          goto LABEL_42;
        }

        sub_1C49D3614(v126);

        v65 = v64;
      }

      v127 = v179;
      if (*(v179 + 16))
      {
        (*(v175 + 16))(v166, v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier, v176);
        sub_1C4EFEBB8();
        sub_1C4EFD2F8();
        sub_1C440D158();
        v128 = sub_1C4E2DD28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_source);
        sub_1C449ED64(v128, v166 + v129);
        sub_1C4EF9AE8();
        sub_1C4429130();
        sub_1C4EFF888();
        sub_1C4E2E9FC();
        sub_1C4EFEC38();
        sub_1C4E2D714();
        *v130 = v65;
        v130[1] = v47;
        sub_1C4E2E160();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v154 = sub_1C43FCEC0();
          sub_1C44C9240(v154, v155, v156, v179);
          v127 = v157;
        }

        sub_1C4424824();
        if (v61)
        {
          v158 = sub_1C43FF640(v131);
          sub_1C44C9240(v158, v159, v160, v127);
          v127 = v161;
        }

        *(v127 + 16) = v116;
        sub_1C43FBF6C();
        sub_1C44F0CA0();
        v132 = sub_1C43FFF1C();
        sub_1C4A948D8(v132, v133);
      }

      goto LABEL_43;
    }

LABEL_42:

    goto LABEL_43;
  }

LABEL_53:
  __break(1u);
}

void sub_1C4E14D40()
{
  sub_1C43FE96C();
  sub_1C444B498(v3);
  v4 = sub_1C4F00DD8();
  v5 = sub_1C4440220(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4460940(v6);
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C44094C8(v8, v101);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44107F0(v10, v11, v12, v13, v14, v15, v16, v17, v102);
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A3EC(v19, v103);
  v20 = sub_1C4EFD548();
  v21 = sub_1C44348EC(v20);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4410058(v22, v104);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C442A5DC(v24, v25, v26, v27, v28, v29, v30, v31, v105);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C440D100();
  type metadata accessor for Source(0);
  sub_1C440F834();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C4406BA0();
  v34 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v34);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FE938(v36, v106);
  sub_1C4EFF0C8();
  sub_1C4425688();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C4415E5C(v38, v107);
  v39 = sub_1C4EFEEF8();
  sub_1C4E2C8A0(v39);
  v40 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityClass;
  v41 = sub_1C4EFCEC8();
  v42 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v41 = swift_once();
  }

  sub_1C4E2D608(v41, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_modelOfAutomobile) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_makeOfAutomobile) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_identifier) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_fuelConsumed) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_cityMileage) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_highwayMileage);
  v43 = sub_1C44019BC();
  v1(v43);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v44 = sub_1C4F00978();
  sub_1C442B738(v44, qword_1EDE2DE10);
  v45 = sub_1C440EBA4();
  v1(v45);
  v46 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v47 = sub_1C4E2D364(v46);
  sub_1C4F01CB8();
  sub_1C43FE670();
  if (sub_1C4E2DF0C())
  {
    sub_1C4495448();
    v48 = sub_1C4488A10();
    sub_1C4E2CA84(v48);
    v49 = sub_1C4E2CD74(4.8453e-34);
    sub_1C4485F78(v49);
    sub_1C442DB9C();
    v52 = sub_1C4E276B4(v50, v51, MEMORY[0x1E69A92F8]);
    sub_1C44804C0(v52);
    v53 = sub_1C442638C();
    v54(v53);
    v55 = sub_1C4409A28();
    sub_1C441D828(v55, v56, v57);
    sub_1C4E2D380();
    sub_1C4414088();
    sub_1C44579E8(&dword_1C43F8000, v58, v59, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C44753CC();
    sub_1C4411B3C();
    sub_1C4E2D23C();
  }

  else
  {

    v60 = sub_1C4462134();
    v61(v60);
  }

  sub_1C4488B88();
  v62 = sub_1C4404084();
  MEMORY[0x1C6940010](v62);

  sub_1C4E2D2F0(v63);
  sub_1C4E2CC80();
  v64 = sub_1C4416A00();
  v65(v64);
  sub_1C4E2D49C();
  if (!v67 & v66)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44BBF0C();
    v68 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v69 = sub_1C4415B1C();
      sub_1C44255B4(v69);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v2 + 4) = v42;
      sub_1C447CEB4(&dword_1C43F8000, v70, v71, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v72 = sub_1C44E7750();
    }

    else
    {

      v72 = sub_1C44BBD58();
    }

    v42 = v108;
    v87 = v108(v72);
    v88 = 1;
  }

  else
  {

    sub_1C4432FC0();
    v75 = sub_1C4E276B4(v73, v74, MEMORY[0x1E6966618]);
    sub_1C441DF80(v75);
    v76 = sub_1C4409D98();
    sub_1C44344B8(v76, v77);
    sub_1C4E2CBF8();
    sub_1C441C6AC();
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v78 = sub_1C442AABC();
    v79(v78);
    v80 = sub_1C43FE318();
    v81(v80);
    v82 = sub_1C4417C80();
    v83(v82);
    sub_1C4507BA8();
    v84 = sub_1C4422CA0();
    v85(v84);
    v86 = sub_1C4430818();
    v87 = v42(v86);
    v88 = 0;
  }

  sub_1C4424A80(v87, v88);
  sub_1C4482D7C();
  if (v67)
  {
    sub_1C446F170(v110, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v89 = sub_1C45CF650();
    v90 = sub_1C43FFB2C(&type metadata for MappingError, v89);
    v92 = sub_1C4428F60(v90, v91);
    sub_1C4E2DEC4(v92, &qword_1EC0B9A08, &unk_1C4F107B0);
    v93 = sub_1C4495DFC();
    v42(v93);
    sub_1C448D818(v0 + v109);
    sub_1C441B884();
    (*(v94 + 8))(v0 + v95);
    sub_1C44102F0();

    sub_1C44417C4();
    sub_1C4E2DEF4(v97, v98, *(v96 + 48), *(v96 + 52));
  }

  else
  {
    v99 = sub_1C4440B80();
    v40(v99);
    v100 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier);
    v40(v100);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E154BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001C4FC97B0 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000001C4FC97D0 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x736E6F436C657566 && a2 == 0xEC00000064656D75;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x656C694D79746963 && a2 == 0xEB00000000656761;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x4D79617768676968 && a2 == 0xEE00656761656C69)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1C4F02938();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_1C4E15888(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x696669746E656469;
      break;
    case 9:
      result = 0x736E6F436C657566;
      break;
    case 10:
      result = 0x656C694D79746963;
      break;
    case 11:
      result = 0x4D79617768676968;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4E15A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4E154BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4E15A30(uint64_t a1)
{
  v2 = sub_1C4E292F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E15A6C(uint64_t a1)
{
  v2 = sub_1C4E292F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E15AA8()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier;
  sub_1C4EFF0C8();
  sub_1C43FD3F8();
  (*(v2 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityClass;
  sub_1C4EFD548();
  sub_1C43FD3F8();
  (*(v4 + 8))(v0 + v3);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_source + v0);
  v5 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name_predicate;
  sub_1C4EFEEF8();
  sub_1C43FD3F8();
  (*(v6 + 8))(v0 + v5);
  sub_1C440DE48();

  return v0;
}

void sub_1C4E15C40(uint64_t a1)
{
  sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4D889F8(319);
    if (v2 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Source(319);
        if (v4 <= 0x3F)
        {
          sub_1C4EFEEF8();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C4E15DD8()
{
  sub_1C43FE96C();
  sub_1C4E2D990();
  sub_1C43FCDF8();
  v40 = v6;
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C444BFE4();
  v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4440AD4();
  v9 = sub_1C456902C(&qword_1EC0C85B8, &qword_1C4F77558);
  sub_1C43FCDF8();
  v11 = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4402A68();
  sub_1C4E2C908();
  sub_1C4E292F8();
  sub_1C4E2D814();
  sub_1C4F02BF8();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v13, v14, MEMORY[0x1E69A9818]);
  sub_1C4F027E8();
  if (v1)
  {
    (*(v11 + 8))(v2, v9);
  }

  else
  {
    v15 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_predicate;
    sub_1C4433D44(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_predicate);
    sub_1C47CBF50(v3 + v15, v4);
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v16, v17, MEMORY[0x1E69A9750]);
    sub_1C4E2CEE0();
    sub_1C43FBF44();
    sub_1C4F02778();
    sub_1C446F170(v4, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v18, v19, MEMORY[0x1E69A92D0]);
    sub_1C44200DC();
    sub_1C4F027E8();
    v20 = sub_1C44019B0(3);
    type metadata accessor for Source(v20);
    sub_1C4413E34();
    sub_1C4E276B4(v21, v22, &protocol conformance descriptor for Source);
    sub_1C44200DC();
    sub_1C4F027E8();
    v24 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name_predicate;
    sub_1C4418194(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name_predicate);
    (*(v40 + 16))(v0, v3 + v24, v41);
    sub_1C43FE79C(4);
    sub_1C43FBF44();
    sub_1C4F027E8();
    v25 = sub_1C4402E08();
    v26(v25);
    sub_1C4E2EA4C();
    sub_1C442A65C();
    sub_1C44200DC();
    sub_1C4F02738();

    v27 = sub_1C4E2DB84(*(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_modelOfAutomobile));
    type metadata accessor for LifeEventStructs.AutomobileModel(v27);
    sub_1C4E2D844();
    sub_1C4E276B4(v28, v29, &unk_1C4F76964);
    sub_1C4414374();
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C4E2E004(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_makeOfAutomobile);
    v30 = sub_1C4E2DE14(7);
    type metadata accessor for LifeEventStructs.Make(v30);
    sub_1C4E2D82C();
    sub_1C4E276B4(v31, v32, &unk_1C4F768F8);
    sub_1C4414374();
    sub_1C44200DC();
    sub_1C4F02778();
    sub_1C4E2E004(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_identifier);
    v33 = sub_1C4E2DE14(8);
    type metadata accessor for LifeEventStructs.IdentifierRelationshipType(v33);
    sub_1C4499604();
    sub_1C4E276B4(v34, v35, &unk_1C4F77384);
    sub_1C4414374();
    sub_1C44200DC();
    sub_1C4F02778();
    sub_1C4E2E004(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_fuelConsumed);
    v36 = sub_1C4E2DE14(9);
    type metadata accessor for LifeEventStructs.QuantityRelationshipType(v36);
    sub_1C4455534();
    sub_1C4E276B4(v37, v38, &unk_1C4F76A3C);
    sub_1C43FBF44();
    sub_1C4F02778();
    sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_cityMileage);
    sub_1C4E2DFE8(10);
    sub_1C43FBF44();
    sub_1C4F02778();
    sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_highwayMileage);
    sub_1C4E2DFE8(11);
    sub_1C4F02778();
    v39 = sub_1C4417840();
    v23(v39, v9);
  }

  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4E1641C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  sub_1C4EFEEF8();
  sub_1C4425688();
  v80 = v27;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4415E5C(v29, v75);
  v30 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v30);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C44A3D38(v32, v76);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C441BFD4(v34, v77);
  sub_1C456902C(&qword_1EC0C8668, &qword_1C4F775C0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FCBE0(v36, v78);
  v81 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_predicate;
  sub_1C43FCF64();
  sub_1C4D9A130(v37, v38, v39);
  sub_1C4EFCEC8();
  v40 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v41 = type metadata accessor for Source(0);
  v42 = sub_1C442B738(v41, qword_1EDDFED10);
  sub_1C449ED64(v42, v40 + v24);
  sub_1C4EFEBF8();
  v43 = (v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name);
  *v43 = 0;
  v43[1] = 0;
  *(v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_modelOfAutomobile) = 0;
  *(v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_makeOfAutomobile) = 0;
  *(v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_identifier) = 0;
  *(v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_fuelConsumed) = 0;
  *(v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_cityMileage) = 0;
  *(v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_highwayMileage) = 0;
  sub_1C4E2C908();
  sub_1C4E292F8();
  sub_1C4E2D530();
  sub_1C4F02BC8();
  if (v21)
  {
    sub_1C446F170(v24 + v81, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FD3F8();
    v46 = sub_1C4E2D5B0();
    v47(v46);
    sub_1C4E2DE7C();
    (*(v80 + 8))(v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name_predicate);
    sub_1C44102F0();

    sub_1C44417C4();
    sub_1C4E2DE94(v49, v50, *(v48 + 48), *(v48 + 52));
  }

  else
  {
    sub_1C4E2E8A8();
    sub_1C4E2D598(&a13);
    sub_1C4420B30();
    sub_1C4E276B4(v44, v45, MEMORY[0x1E69A9838]);
    sub_1C4E2D518();
    sub_1C4E2D3EC();
    sub_1C4F026C8();
    v51 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier);
    v52(v51);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v53, v54, MEMORY[0x1E69A9778]);
    sub_1C4E2DCA4();
    sub_1C4F02658();
    sub_1C4E2DA98();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C449A970(v79, v43 + v82);
    swift_endAccess();
    sub_1C4E2C964();
    sub_1C4E2DCA4();
    sub_1C441BF88();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v55 = sub_1C4E2DCE4();
    v56(v55);
    swift_endAccess();
    sub_1C447E2A8();
    sub_1C441BF88();
    v57 = sub_1C4F02618();
    sub_1C4425188(v57, v58);
    type metadata accessor for LifeEventStructs.AutomobileModel(0);
    sub_1C4E2DC4C();
    sub_1C4E2D844();
    sub_1C4E276B4(v59, v60, &unk_1C4F7698C);
    sub_1C441481C();
    sub_1C4E2D0C8();
    sub_1C441BF88();
    sub_1C4F02658();
    sub_1C443F058(v83);

    type metadata accessor for LifeEventStructs.Make(0);
    sub_1C4E2D82C();
    sub_1C4E276B4(v61, v62, &unk_1C4F76920);
    sub_1C441481C();
    sub_1C4E2D0C8();
    sub_1C441BF88();
    sub_1C4F02658();
    sub_1C4422C90(v83);

    type metadata accessor for LifeEventStructs.IdentifierRelationshipType(0);
    sub_1C4499604();
    sub_1C4E276B4(v63, v64, &unk_1C4F773AC);
    sub_1C441481C();
    sub_1C4E2D0C8();
    sub_1C441BF88();
    sub_1C4F02658();
    sub_1C4422C90(v83);

    type metadata accessor for LifeEventStructs.QuantityRelationshipType(0);
    sub_1C4455534();
    sub_1C4E276B4(v65, v66, &unk_1C4F76A64);
    v67 = sub_1C447F798();
    sub_1C4E2DC08(v67, v68);
    sub_1C441E968(v83);

    v69 = sub_1C44C1348(10);
    sub_1C4E2DC08(v69, v70);
    sub_1C441E968(v83);

    v71 = sub_1C44C1348(11);
    sub_1C4E2DC08(v71, v72);
    v73 = sub_1C4E2E870();
    v74(v73);
    sub_1C443F058(v83);
  }

  sub_1C440962C(v26);
  sub_1C4507BC8();
  sub_1C43FBC80();
}

uint64_t sub_1C4E16BC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E163F0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E16C90()
{
  sub_1C43FE628();
  v5 = v1;
  v7 = v6;
  v9 = v8;
  v344 = v10;
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v12 = sub_1C43FBD18(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  sub_1C43FD2C8(v16);
  sub_1C4EFF0C8();
  sub_1C4412DFC();
  v341 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD230();
  v23 = sub_1C43FD2C8(v22);
  v24 = type metadata accessor for EntityTriple(v23);
  v25 = sub_1C43FFAE0(v24, &v351);
  v338 = v26;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v322 - v33;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C4410A24();
  v36 = *v7;
  v37 = MEMORY[0x1E69E7CC0];
  v350 = MEMORY[0x1E69E7CC0];
  v38 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name + 8);
  v339 = v3;
  v345 = v36;
  v340 = v1;
  v343 = v0;
  if (!v38)
  {
    goto LABEL_8;
  }

  v39 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name);
  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {
    v5 = v1;
LABEL_8:
    v48 = v9;
    v57 = v0;
    sub_1C4E2DE08();
    goto LABEL_9;
  }

  (*(v341 + 16))(v2, v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier, v3);
  v41 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name_predicate;
  sub_1C440D164(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name_predicate, &v346);
  v42 = v337;
  v43 = v337[5];
  sub_1C4EFEEF8();
  sub_1C43FCE50();
  (*(v44 + 16))(v2 + v43, v0 + v41);
  sub_1C449ED64(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source, v2 + v42[9]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C4E2E4F8();
  sub_1C4EFF888();
  sub_1C4EFEC38();
  v45 = (v2 + v42[8]);
  *v45 = v39;
  v45[1] = v38;
  sub_1C4E2D2E4();
  v0 = v46;
  *v47 = v46;
  v47[1] = v9;
  *(v2 + v42[11]) = v4;
  *(v2 + v42[12]) = v345;
  v48 = v9;
  v49 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v49, v50, v51, MEMORY[0x1E69E7CC0]);
  v37 = v52;
  v5 = *(v52 + 16);
  v53 = *(v52 + 24);
  i = v5 + 1;
  if (v5 >= v53 >> 1)
  {
    goto LABEL_116;
  }

  while (1)
  {
    *(v37 + 16) = i;
    sub_1C4418E28();
    sub_1C4A948D8(v2, v55 + v56 * v5);
    v350 = v37;
    sub_1C4E2E3FC();
    v57 = v343;
    v3 = v339;
    sub_1C4E2DCC0();
LABEL_9:
    v59 = *(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain + 8);
    if (v59)
    {
      sub_1C4434384();
      if (v60)
      {
        sub_1C4E2CCA0();
        v61(v34);
        v62 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain_predicate;
        sub_1C440D164(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain_predicate, &v347);
        sub_1C4E2E70C();
        sub_1C43FCE50();
        (*(v63 + 16))(&v34[v3], v57 + v62);
        sub_1C449ED64(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source, &v34[*(v48 + 36)]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C444AF00();
        sub_1C4EFEC38();
        sub_1C4E2DD40();
        *v64 = v2;
        v64[1] = v59;
        sub_1C4E2D2E4();
        v0 = v65;
        *v66 = v65;
        v66[1] = v48;
        sub_1C4E2D72C();
        v34[v67] = v345;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v266 = sub_1C43FCEC0();
          sub_1C44C9240(v266, v267, v268, v37);
          v37 = v269;
        }

        sub_1C4422CC8();
        v5 = v340;
        v3 = v339;
        if (v69)
        {
          v270 = sub_1C4405AF4(v68);
          sub_1C44C9240(v270, v271, v272, v37);
          v37 = v273;
        }

        *(v37 + 16) = v59;
        sub_1C4418E28();
        sub_1C4A948D8(v34, v70 + v71 * v2);
        v350 = v37;
        v57 = v343;
        sub_1C4E2DCC0();
      }
    }

    v72 = *(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence + 8);
    if (v72)
    {
      sub_1C4434384();
      if (v73)
      {
        v342 = v48;
        sub_1C4E2CCA0();
        v74 = v336;
        v75(v336);
        v76 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence_predicate;
        sub_1C440D164(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence_predicate, v348);
        v77 = v0;
        v78 = v57;
        v79 = v337;
        sub_1C4E2E268();
        sub_1C43FCE50();
        (*(v80 + 16))(&v34[v74], v78 + v76);
        sub_1C449ED64(v78 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source, v74 + v79[9]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        sub_1C4EFEC38();
        v81 = (v74 + v79[8]);
        *v81 = v2;
        v81[1] = v72;
        v82 = (v74 + v79[10]);
        v83 = v342;
        *v82 = v77;
        v82[1] = v83;
        *(v74 + v79[11]) = v4;
        sub_1C4E2D73C();
        v85 = v84;
        *(v74 + v86) = v84;
        v48 = v87;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v274 = sub_1C43FCEC0();
          sub_1C44C9240(v274, v275, v276, v37);
          v37 = v277;
        }

        sub_1C4422CC8();
        v3 = v339;
        v5 = v340;
        if (v69)
        {
          v278 = sub_1C4405AF4(v88);
          sub_1C44C9240(v278, v279, v280, v37);
          v37 = v281;
        }

        *(v37 + 16) = v72;
        sub_1C4418E28();
        v89 = sub_1C443F1AC();
        sub_1C4A948D8(v89, v90);
        v350 = v37;
        v57 = v343;
        v58 = v85;
      }
    }

    v34 = *(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_startingLocation);
    if (v34)
    {
      break;
    }

LABEL_34:
    v118 = *(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_endLocation);
    if (v118)
    {
      sub_1C4E2E740();
      v119 = sub_1C441E0A4();
      sub_1C4DE69B4(v119, v120);
      if (v5)
      {
        goto LABEL_57;
      }

      sub_1C4E2DB68();
      if (v121)
      {
        v122 = sub_1C4E2DFB4();
        sub_1C49D3614(v122);
        sub_1C4E2CCA0();
        v5 = v330;
        v123(v330);
        v124 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
        sub_1C4E2D474(v118 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate);
        v34 = v331;
        sub_1C47CBF50(v118 + v124, v331);
        v125 = sub_1C4EFEEF8();
        sub_1C43FD490(v34);
        if (v100)
        {
          goto LABEL_118;
        }

        sub_1C4EFF048();
        sub_1C43FC1CC();
        v126 = v337;
        v127 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source);
        v128 = v334;
        sub_1C449ED64(v127, v334 + v129);
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        sub_1C4EFEC38();
        sub_1C4E2DB20();
        v130 = sub_1C4E2E7F8();
        v131(v130);
        sub_1C4E2CA28();
        (*(v132 + 32))(v128 + v133, v34, v125);
        sub_1C4E2E97C((v128 + v126[8]));
        v135 = (v128 + v134);
        v136 = v344;
        *v135 = v344;
        v135[1] = v48;
        *(v128 + v126[11]) = v4;
        sub_1C4E2D73C();
        *(v128 + v137) = v138;
        v139 = v350;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v290 = sub_1C43FCEC0();
          sub_1C44C9240(v290, v291, v292, v139);
          v139 = v293;
        }

        sub_1C4E2E3FC();
        sub_1C4485C88();
        v3 = v339;
        v57 = v343;
        if (v69)
        {
          v294 = sub_1C43FFD98(v140);
          sub_1C44C9240(v294, v295, v296, v139);
          v139 = v297;
        }

        *(v139 + 16) = v136;
        sub_1C440C23C();
        sub_1C4A948D8(v334, v141);
        v350 = v139;
        sub_1C4E2DADC();
      }

      else
      {

        sub_1C4E2DCC0();
        v3 = v34;
      }
    }

    v142 = *(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_airplaneTransportationType);
    if (v142)
    {
      sub_1C4E2E740();
      sub_1C441E0A4();
      sub_1C4E109B8();
      if (v5)
      {
        goto LABEL_57;
      }

      sub_1C4E2DB68();
      if (v143)
      {
        v144 = sub_1C4E2DFB4();
        sub_1C49D3614(v144);
        sub_1C4E2CCA0();
        v5 = v327;
        v145(v327);
        v146 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_predicate;
        sub_1C4E2D16C(v142 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_predicate);
        v147 = v328;
        sub_1C47CBF50(v142 + v146, v328);
        v148 = sub_1C4EFEEF8();
        sub_1C43FD490(v147);
        if (v100)
        {
          goto LABEL_119;
        }

        sub_1C4EFF048();
        sub_1C43FC1CC();
        v149 = v337;
        v150 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source);
        v151 = v326;
        sub_1C449ED64(v150, v326 + v152);
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        sub_1C4EFEC38();
        sub_1C4E2DB20();
        v153 = sub_1C4E2E7F8();
        v154(v153);
        sub_1C4E2CA28();
        (*(v155 + 32))(v151 + v156, v147, v148);
        sub_1C4E2E97C((v151 + v149[8]));
        v158 = (v151 + v157);
        v159 = v344;
        *v158 = v344;
        v158[1] = v48;
        *(v151 + v149[11]) = v4;
        sub_1C4E2D73C();
        *(v151 + v160) = v161;
        v162 = v350;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v298 = sub_1C43FCEC0();
          sub_1C44C9240(v298, v299, v300, v162);
          v162 = v301;
        }

        sub_1C4E2E3FC();
        sub_1C4485C88();
        v34 = v339;
        v57 = v343;
        if (v69)
        {
          v302 = sub_1C43FFD98(v163);
          sub_1C44C9240(v302, v303, v304, v162);
          v162 = v305;
        }

        *(v162 + 16) = v159;
        sub_1C440C23C();
        sub_1C4A948D8(v151, v164);
        v350 = v162;
        sub_1C4E2DADC();
      }

      else
      {

        sub_1C4E2DCC0();
      }

      v3 = v34;
    }

    v165 = *(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_automobileTransportationType);
    if (v165)
    {
      sub_1C4E2E740();
      sub_1C441E0A4();
      sub_1C4E14300();
      if (v5)
      {
LABEL_57:

        goto LABEL_58;
      }

      sub_1C4E2DB68();
      if (v168)
      {
        v169 = sub_1C4E2DFB4();
        sub_1C49D3614(v169);
        sub_1C4E2CCA0();
        v3 = v325;
        v170(v325);
        v171 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_predicate;
        sub_1C4418194(v165 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_predicate);
        v172 = v165 + v171;
        v173 = v329;
        sub_1C47CBF50(v172, v329);
        v174 = sub_1C4EFEEF8();
        sub_1C440175C(v173, 1, v174);
        if (v100)
        {
          goto LABEL_120;
        }

        v175 = v57;

        sub_1C4EFF048();
        sub_1C43FC1CC();
        v167 = v337;
        v166 = v175;
        v176 = v175 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source;
        v34 = v324;
        sub_1C449ED64(v176, &v324[v337[9]]);
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        sub_1C4EFEC38();
        sub_1C4E2DB20();
        v177(v34, v3, v339);
        sub_1C441B884();
        (*(v178 + 32))(&v34[v179], v329, v174);
        sub_1C4E2E97C(&v34[*(v167 + 32)]);
        sub_1C4E2D2E4();
        *v180 = v181;
        v180[1] = v48;
        *&v34[*(v167 + 44)] = v4;
        sub_1C4E2D73C();
        v34[v182] = v183;
        v184 = v350;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v306 = sub_1C43FCEC0();
          sub_1C44C9240(v306, v307, v308, v184);
          v184 = v309;
        }

        v186 = *(v184 + 16);
        v185 = *(v184 + 24);
        if (v186 >= v185 >> 1)
        {
          v310 = sub_1C4405AF4(v185);
          sub_1C44C9240(v310, v311, v312, v184);
          v184 = v313;
        }

        sub_1C4E2E3F0();

        *(v184 + 16) = v186 + 1;
        sub_1C4409B30();
        sub_1C4A948D8(v34, v184 + v187 + *(v188 + 72) * v186);
        v350 = v184;
      }

      else
      {
        v166 = v57;
        v167 = 0;
      }

      sub_1C4E2DCC0();
    }

    else
    {
      v166 = v57;
      v167 = v5;
    }

    v342 = v48;
    v2 = *(v166 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_identifier);
    if (!v2)
    {
      v34 = v166;
LABEL_81:
      v199 = v341;
      v2 = *&v34[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasLocationRelationship];
      if (v2)
      {
        v0 = v58;
        v200 = v58;
        v37 = sub_1C4428DA0(*&v34[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasLocationRelationship]);
        v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier;
        v5 = v2 & 0xC000000000000001;
        v48 = v2 & 0xFFFFFFFFFFFFFF8;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        for (i = 0; v37 != i; ++i)
        {
          if (v5)
          {
            v0 = v200;
            v34 = MEMORY[0x1C6940F90](i, v2);
          }

          else
          {
            v53 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (i >= v53)
            {
              goto LABEL_115;
            }

            v34 = *(v2 + 8 * i + 32);
          }

          if (__OFADD__(i, 1))
          {
            goto LABEL_114;
          }

          v349 = v200;
          sub_1C4459C44();
          sub_1C4458588();
          sub_1C4E2DDFC();
          sub_1C4DE5C70(v201, v202, v203, v204, v205, v206, v207, v208, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333);
          if (v167)
          {
            goto LABEL_91;
          }

          v0 = &v350;
          sub_1C49D3614(v209);

          v200 = v345;
        }

        sub_1C4E2DDF0();
        v199 = v341;
      }

      v210 = *&v34[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasAttendee];
      v211 = v342;
      sub_1C44225D8();
      if (v210)
      {
        v2 = v212;
        v213 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier;
        sub_1C4E2EB74();
        sub_1C4DEBBF0(v3, v211, &v34[v213], &v349, v214, v215, v216, v217, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333);
        if (!v167)
        {
          sub_1C49D3614(v218);

          LOBYTE(v212) = v2;
          goto LABEL_96;
        }

LABEL_104:
      }

      else
      {
LABEL_96:
        v219 = v34;
        if (*&v34[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_elevationGain])
        {
          v220 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier;
          sub_1C4E2EB74();
          v221 = sub_1C4E2CE94();
          sub_1C4E0F744(v221, v222, v223, v224, v225, v226, v227, v228, v322, v323);
          if (v220)
          {
            goto LABEL_104;
          }

          sub_1C49D3614(v229);

          LOBYTE(v212) = v34;
          v219 = v2;
        }

        if (*&v219[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasDate])
        {
          v230 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier;
          sub_1C4E2EB74();
          v231 = sub_1C4E2CE94();
          sub_1C4DECF58(v231, v232, v233, v234, v235, v236, v237, v238, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333);
          if (v230)
          {
            goto LABEL_104;
          }

          sub_1C49D3614(v239);

          LOBYTE(v212) = v219;
          v219 = v2;
        }

        if (*&v219[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_length])
        {
          v240 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier;
          sub_1C4E2EB74();
          v241 = sub_1C4E2CE94();
          sub_1C4E0F744(v241, v242, v243, v244, v245, v246, v247, v248, v322, v323);
          if (v240)
          {
            goto LABEL_104;
          }

          sub_1C49D3614(v249);

          LOBYTE(v212) = v219;
          v219 = v2;
        }

        v250 = v350;
        if (*(v350 + 16))
        {
          v251 = *(v199 + 16);
          v252 = &v219[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier];
          v253 = v219;
          v254 = v323;
          v255 = v212;
          v251(v323, v252, v339);
          v256 = v337;
          sub_1C4EFEBB8();
          v257 = &v253[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityClass];
          sub_1C4EFD2F8();
          sub_1C43FC1CC();
          sub_1C449ED64(&v253[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source], v254 + v256[9]);
          sub_1C4EF9AE8();
          sub_1C4416C58();
          sub_1C4EFF888();
          sub_1C4EFEC38();
          sub_1C4E2E988((v254 + v256[8]));
          sub_1C4E2D2E4();
          *v258 = v259;
          v258[1] = v211;
          *(v254 + v256[11]) = v4;
          *(v254 + v256[12]) = v255;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v314 = sub_1C43FCEC0();
            sub_1C44C9240(v314, v315, v316, v250);
            v250 = v317;
          }

          sub_1C44019A4();
          if (v69)
          {
            v318 = sub_1C43FFD98(v260);
            sub_1C44C9240(v318, v319, v320, v250);
            v250 = v321;
          }

          *(v250 + 16) = v257;
          sub_1C4409B30();
          sub_1C4E2D154();
          sub_1C4A948D8(v323, v261);
        }
      }

LABEL_58:
      sub_1C440EE0C();
      sub_1C44109F8();
      return;
    }

    v0 = v58;
    v189 = v58;
    v37 = sub_1C4428DA0(*(v166 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_identifier));
    v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier;
    v5 = v2 & 0xC000000000000001;
    v48 = v2 & 0xFFFFFFFFFFFFFF8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    for (i = 0; ; ++i)
    {
      if (v37 == i)
      {

        sub_1C4E2DDF0();
        goto LABEL_81;
      }

      if (v5)
      {
        v0 = v189;
        v34 = MEMORY[0x1C6940F90](i, v2);
      }

      else
      {
        v53 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (i >= v53)
        {
          goto LABEL_113;
        }

        v34 = *(v2 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v349 = v189;
      sub_1C4459C44();
      sub_1C4458588();
      sub_1C4E2DDFC();
      sub_1C4DE44E8(v190, v191, v192, v193, v194, v195, v196, v197, v322, v323);
      if (v167)
      {
LABEL_91:

        goto LABEL_58;
      }

      v0 = &v350;
      sub_1C49D3614(v198);

      v189 = v345;
    }

    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    v262 = sub_1C4405AF4(v53);
    sub_1C44C9240(v262, v263, v264, v37);
    v37 = v265;
  }

  v348[96] = v58;

  v91 = sub_1C441E0A4();
  sub_1C4DE69B4(v91, v92);
  if (v5)
  {
    goto LABEL_57;
  }

  sub_1C4E2DB68();
  if (!v93)
  {

LABEL_33:
    sub_1C4E2DADC();
    goto LABEL_34;
  }

  v342 = v48;
  v94 = sub_1C4E2DFB4();
  sub_1C49D3614(v94);
  v5 = v3;
  sub_1C4E2CCA0();
  v95 = v332;
  v96(v332);
  v97 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
  sub_1C4E2D564(&v34[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate]);
  v98 = v333;
  sub_1C47CBF50(&v34[v97], v333);
  v99 = sub_1C4EFEEF8();
  sub_1C440175C(v98, 1, v99);
  if (!v100)
  {
    v101 = v57;

    v102 = &v34[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier];
    sub_1C4EFF048();
    sub_1C43FC1CC();
    v103 = v337;
    v104 = v101 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source;
    v105 = v335;
    sub_1C449ED64(v104, v335 + v337[9]);
    sub_1C4EF9AE8();
    sub_1C4414830();
    v106 = sub_1C4EFF888();
    sub_1C4E2E3D8(v106);
    sub_1C4E2DB20();
    v107(v105, v95, v5);
    sub_1C4E2C9A8();
    (*(v108 + 32))(v105 + v109, v98, v99);
    sub_1C4E2E97C((v105 + v103[8]));
    v111 = (v105 + v110);
    v48 = v342;
    *v111 = v344;
    v111[1] = v48;
    *(v105 + v103[11]) = v4;
    sub_1C4E2D73C();
    *(v105 + v112) = v113;
    v114 = v350;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v282 = sub_1C43FCEC0();
      sub_1C44C9240(v282, v283, v284, v114);
      v114 = v285;
    }

    sub_1C4E2E3FC();
    sub_1C4485C88();
    v3 = v339;
    v57 = v343;
    if (v69)
    {
      v286 = sub_1C43FFD98(v115);
      sub_1C44C9240(v286, v287, v288, v114);
      v114 = v289;
    }

    *(v114 + 16) = v102;
    sub_1C440C23C();
    sub_1C4E2E780(v116, v117);
    v350 = v114;
    goto LABEL_33;
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
}

void sub_1C4E181D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v13 = v10;
  v15 = v14;
  v124 = v16;
  v17 = sub_1C4F00DD8();
  v18 = sub_1C4440220(v17);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD2D8();
  sub_1C4460940(v19);
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C44094C8(v21, v112);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C44107F0(v23, v24, v25, v26, v27, v28, v29, v30, v113);
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C440A3EC(v32, v114);
  v33 = sub_1C4EFD548();
  v34 = sub_1C44348EC(v33);
  v126 = v35;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C4410058(v36, v115);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  v39 = v38;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C440D100();
  type metadata accessor for Source(0);
  sub_1C440F834();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v42 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v42);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FE938(v44, v116);
  sub_1C4EFF0C8();
  sub_1C4425688();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C4415E5C(v46, v117);
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v47, v48, v49, v50);
  v51 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityClass;
  sub_1C4EFD1C8();
  v52 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v53 = sub_1C442B738(v10, qword_1EDDFED10);
  sub_1C449ED64(v53, v10 + v52);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name);
  sub_1C4EFED38();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence);
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_startingLocation) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_endLocation) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_airplaneTransportationType) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_automobileTransportationType) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_identifier) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasLocationRelationship) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasAttendee) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_elevationGain) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasDate) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_length) = 0;
  sub_1C449ED64(v10 + v52, v11);
  v54 = *(v126 + 16);
  v123 = v51;
  v54(v12, (v10 + v51), a10);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v55 = sub_1C4F00978();
  v56 = sub_1C442B738(v55, qword_1EDE2DE10);
  sub_1C447D06C();
  v118 = v54;
  (v54)();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v57 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4E2E7E0();
  if (os_log_type_enabled(v57, v56))
  {
    sub_1C4495448();
    sub_1C4488A10();
    sub_1C4E2D4A8(4.8453e-34);
    v59 = sub_1C441D828(v124, v15, v58);
    sub_1C4485F78(v59);
    sub_1C442DB9C();
    sub_1C4E276B4(v60, v61, MEMORY[0x1E69A92F8]);
    sub_1C4F02858();
    v62 = sub_1C4E2E4BC();
    v63(v62);
    v64 = sub_1C442A90C();
    sub_1C441D828(v64, v65, v66);

    sub_1C4414088();
    sub_1C4E2D264(&dword_1C43F8000, v67, v56, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C4E2D23C();
  }

  else
  {

    v68 = sub_1C4E2E4BC();
    v69(v68);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v70 = sub_1C4404084();
  MEMORY[0x1C6940010](v70);

  sub_1C4E2D2F0(v71);
  sub_1C4E2CC80();
  v72 = sub_1C4416A00();
  v73(v72);
  sub_1C4E2D49C();
  if (!v75 & v74)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44BBF0C();
    v88 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v76 = sub_1C4415B1C();
      sub_1C44255B4(v76);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v39 + 4) = v56;
      sub_1C447CEB4(&dword_1C43F8000, v77, v78, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v79 = sub_1C44E7750();
    }

    else
    {

      v79 = sub_1C44BBD58();
    }

    v93 = v121;
    v94 = (v121)(v79);
    v95 = 1;
  }

  else
  {

    sub_1C4432FC0();
    sub_1C4E276B4(v80, v81, MEMORY[0x1E6966618]);
    sub_1C440BB4C();
    sub_1C4F00DB8();
    v82 = sub_1C4409D98();
    sub_1C44344B8(v82, v83);
    v84 = sub_1C4409D98();
    sub_1C4498FD8(v84, v85, v120);
    sub_1C441C6AC();
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v86 = sub_1C4464BE4();
    v87(v86);
    v88 = v122;
    v118(v119, v122, a10);
    v89 = sub_1C4417C80();
    v90(v89);
    sub_1C4EFF028();
    v91 = sub_1C447CD1C(v11);
    v92(v91);
    v93 = v121;
    v94 = (v121)(v122, a10);
    v95 = 0;
  }

  sub_1C4E2DAFC(v94, v95);
  sub_1C448D818(v11);
  sub_1C43FC0FC(v88);
  if (v75)
  {
    sub_1C446F170(v125, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v96 = sub_1C45CF650();
    v97 = sub_1C43FFB2C(&type metadata for MappingError, v96);
    v99 = sub_1C4428F60(v97, v98);
    sub_1C4E2DEC4(v99, &qword_1EC0B9A08, &unk_1C4F107B0);
    v100 = sub_1C4495DFC();
    v93(v100);
    sub_1C448D818(v13 + v52);
    sub_1C4425820();
    v102 = *(v101 + 8);
    v104 = sub_1C443E068(v103);
    v102(v104);
    sub_1C44102F0();
    v105 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain_predicate);
    v102(v105);
    sub_1C44102F0();
    v106 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence_predicate);
    v102(v106);
    sub_1C44102F0();

    sub_1C44417C4();
    sub_1C4E2DEF4(v108, v109, *(v107 + 48), *(v107 + 52));
  }

  else
  {
    v110 = sub_1C4440B80();
    v123(v110);
    v111 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier);
    v123(v111);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E18BB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001C4FC9850 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E696172726574 && a2 == 0xE700000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x80000001C4FC7F00 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000001C4FC8B10 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001ALL && 0x80000001C4FC9870 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001CLL && 0x80000001C4FC9890 == a2;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000017 && 0x80000001C4FC85A0 == a2;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6E65747441736168 && a2 == 0xEB00000000656564;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6F69746176656C65 && a2 == 0xED00006E6961476ELL;
                                    if (v22 || (sub_1C4F02938() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x65746144736168 && a2 == 0xE700000000000000;
                                      if (v23 || (sub_1C4F02938() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_1C4F02938();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
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

unint64_t sub_1C4E191B0(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6E696172726574;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x6E656469666E6F63;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x7461636F4C646E65;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0x696669746E656469;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0x6E65747441736168;
      break;
    case 17:
      result = 0x6F69746176656C65;
      break;
    case 18:
      result = 0x65746144736168;
      break;
    case 19:
      result = 0x6874676E656CLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4E19418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4E18BB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4E19440@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4E191A8();
  *a1 = result;
  return result;
}

uint64_t sub_1C4E19468(uint64_t a1)
{
  v2 = sub_1C4E2934C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E194A4(uint64_t a1)
{
  v2 = sub_1C4E2934C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E194E0()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier;
  sub_1C4EFF0C8();
  sub_1C43FD3F8();
  (*(v2 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityClass;
  sub_1C4EFD548();
  sub_1C43FD3F8();
  (*(v4 + 8))(v0 + v3);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source);
  sub_1C4EFEEF8();
  sub_1C4424878();
  v6 = *(v5 + 8);
  v7 = sub_1C4460780();
  v6(v7);
  sub_1C440DE48();
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain_predicate);
  v6(v8);
  sub_1C440DE48();
  v9 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence_predicate);
  v6(v9);
  sub_1C440DE48();

  return v0;
}

void sub_1C4E19710(uint64_t a1)
{
  sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4D889F8(319);
    if (v2 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Source(319);
        if (v4 <= 0x3F)
        {
          sub_1C4EFEEF8();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C4E198B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v26;
  a20 = v27;
  sub_1C4E2D990();
  sub_1C43FCDF8();
  v101 = v29;
  v102 = v28;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  v100 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C4402CA8();
  v33 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v33);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C440A474();
  sub_1C456902C(&qword_1EC0C85C8, &qword_1C4F77560);
  sub_1C4412DFC();
  v36 = v35;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FE95C();
  sub_1C4417F50(v20, v20[3]);
  sub_1C4E2934C();
  sub_1C4F02BF8();
  v106[0] = 0;
  sub_1C4EFF0C8();
  sub_1C4420B30();
  sub_1C4E276B4(v38, v39, MEMORY[0x1E69A9818]);
  sub_1C4E2E93C();
  sub_1C4F027E8();
  if (v21)
  {
    v40 = sub_1C4E2D45C();
    v41(v40, v24);
  }

  else
  {
    v42 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_predicate;
    sub_1C44169A0(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_predicate);
    sub_1C47CBF50(v22 + v42, v23);
    v105 = 1;
    sub_1C441ACD0();
    sub_1C4E276B4(v43, v44, MEMORY[0x1E69A9750]);
    sub_1C4F02778();
    sub_1C446F170(v23, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441483C();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v45, v46, MEMORY[0x1E69A92D0]);
    sub_1C4E2DCD8();
    sub_1C4F027E8();
    v47 = sub_1C446257C(3);
    type metadata accessor for Source(v47);
    sub_1C4413E34();
    sub_1C4E276B4(v48, v49, &protocol conformance descriptor for Source);
    sub_1C4E2DCD8();
    sub_1C4F027E8();
    sub_1C4460954(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name_predicate);
    v52 = sub_1C4E2E528();
    v53(v52);
    sub_1C4E2E90C();
    sub_1C4E2D74C();
    sub_1C4F027E8();
    sub_1C4E2E8A8();
    v54 = *(v101 + 8);
    v55 = sub_1C440BB4C();
    v54(v55);
    v56 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name);
    v104[0] = 5;
    v57 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2DBC8(v57, v58, v104);
    if (v56 || (, sub_1C4488504(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain_predicate), sub_1C4E2E528(), sub_1C440E3C8(), v60(), sub_1C4455A00(), sub_1C4E2D74C(), sub_1C4E2DCD8(), sub_1C4F027E8(), (v54)(v100, v102), v61 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain), LOBYTE(v103[0]) = 7, v62 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), sub_1C4E2DBC8(v62, v63, v103), v61))
    {
      sub_1C4E2E534();
      v59(v25, v24);
    }

    else
    {

      sub_1C4429150(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence_predicate);
      sub_1C4E2E528();
      sub_1C440E3C8();
      v64();
      sub_1C43FE79C(8);
      sub_1C4E2D74C();
      sub_1C4E2DCD8();
      sub_1C4F027E8();
      v65 = sub_1C440BB4C();
      v54(v65);
      v66 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence);
      LOBYTE(a10) = 9;
      v67 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4E2DBC8(v67, v68, &a10);
      if (!v66)
      {

        a10 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_startingLocation);
        v69 = sub_1C4E2DE4C(10);
        type metadata accessor for LifeEventStructs.Place(v69);
        sub_1C4401574();
        sub_1C4E276B4(v70, v71, &unk_1C4F772AC);
        sub_1C4E2D8D0();
        sub_1C4E2DCD8();
        sub_1C4F02778();
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_endLocation);
        v72 = sub_1C4E2D8D0();
        sub_1C4E2E6A8(v72, v73, v24);
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_airplaneTransportationType);
        v74 = sub_1C4E2DE4C(12);
        type metadata accessor for LifeEventStructs.Plane(v74);
        sub_1C4E2D918();
        v77 = sub_1C4E276B4(v75, v76, &unk_1C4F769D0);
        sub_1C4E2CC18(v77);
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_automobileTransportationType);
        v78 = sub_1C4E2DE4C(13);
        type metadata accessor for LifeEventStructs.Automobile(v78);
        sub_1C4E2D900();
        v81 = sub_1C4E276B4(v79, v80, &unk_1C4F7688C);
        sub_1C4E2CC18(v81);
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_identifier);
        sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
        v82 = sub_1C4E28950();
        sub_1C4E2CC18(v82);
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasLocationRelationship);
        sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
        v83 = sub_1C4E28C08();
        sub_1C4E2CC18(v83);
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasAttendee);
        v84 = sub_1C4E2DE4C(16);
        type metadata accessor for LifeEventStructs.ParticipationRelationshipType(v84);
        sub_1C4412AAC();
        v87 = sub_1C4E276B4(v85, v86, &unk_1C4F771D4);
        sub_1C4E2CC18(v87);
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_elevationGain);
        v88 = sub_1C4E2DE4C(17);
        type metadata accessor for LifeEventStructs.QuantityRelationshipType(v88);
        sub_1C4455534();
        sub_1C4E276B4(v89, v90, &unk_1C4F76A3C);
        v91 = sub_1C4E2D8D0();
        sub_1C4E2E6A8(v91, v92, v24);
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasDate);
        v93 = sub_1C4E2DE4C(18);
        type metadata accessor for LifeEventStructs.DateRelationshipType(v93);
        sub_1C440B98C();
        v96 = sub_1C4E276B4(v94, v95, &unk_1C4F77168);
        sub_1C4E2CC18(v96);
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_length);
        v97 = sub_1C4E2D8D0();
        sub_1C4E2E6A8(v97, v98, v24);
        sub_1C4E2E534();
        v99 = sub_1C4402120();
        v51(v99, v50);
        goto LABEL_4;
      }

      (*(v36 + 8))(v25, v24);
    }
  }

LABEL_4:
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4E1A1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  sub_1C445CD30();
  sub_1C4EFEEF8();
  sub_1C4425688();
  v131 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C441B244();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C446BD9C(v29, v30, v31, v32, v33, v34, v35, v36, v124);
  v37 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v37);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  v130 = sub_1C44A3D38(v39, v125);
  sub_1C43FCDF8();
  v127 = v40;
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD2D8();
  sub_1C445BEF4(v42);
  sub_1C456902C(&qword_1EC0C8660, &qword_1C4F775B8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FCBE0(v44, v126);
  v132 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_predicate;
  v45 = sub_1C44F0C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_predicate);
  sub_1C4E2DF24(v45, v46, v47);
  sub_1C4E2D820(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityClass);
  sub_1C4EFD1C8();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v48 = type metadata accessor for Source(0);
  sub_1C4E2D85C(v48, qword_1EDDFED10);
  sub_1C4E2E250(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name_predicate);
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name);
  sub_1C442BC14(v49);
  sub_1C4EFED38();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain);
  sub_1C4E2D298(v50);
  sub_1C4EFE2A8();
  v51 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence);
  *v51 = 0;
  v51[1] = 0;
  sub_1C4E2E8D8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_startingLocation);
  sub_1C4E2E8D8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_endLocation);
  sub_1C4E2E8D8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_airplaneTransportationType);
  sub_1C4E2E8D8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_automobileTransportationType);
  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_identifier) = 0;
  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasLocationRelationship) = 0;
  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasAttendee) = 0;
  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_elevationGain) = 0;
  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasDate) = 0;
  v133 = v21;
  v134 = v20;
  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_length) = 0;
  sub_1C445631C();
  sub_1C4E2934C();
  sub_1C4E2D530();
  sub_1C4F02BC8();
  if (v22)
  {
    sub_1C446F170(v134 + v132, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FD3F8();
    v54 = sub_1C4E2D5B0();
    v55(v54);
    sub_1C4E2DE7C();
    v56 = *(v131 + 8);
    v57 = sub_1C441733C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name_predicate);
    v56(v57);
    sub_1C44102F0();
    v58 = sub_1C441733C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain_predicate);
    v56(v58);
    sub_1C44102F0();
    v59 = sub_1C441733C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence_predicate);
    v56(v59);
    sub_1C44102F0();

    sub_1C44417C4();
    sub_1C4E2DE94(v61, v62, *(v60 + 48), *(v60 + 52));
    v123 = v133;
  }

  else
  {
    sub_1C4E2D598(&v134);
    sub_1C4420B30();
    sub_1C4E276B4(v52, v53, MEMORY[0x1E69A9838]);
    sub_1C4E2D518();
    sub_1C4F026C8();
    v63 = v134;
    (*(v127 + 32))(v134 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier, v129, v130);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v64, v65, MEMORY[0x1E69A9778]);
    sub_1C4E2D08C();
    sub_1C4F02658();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C449A970(v128, v63 + v132);
    swift_endAccess();
    sub_1C4E2C964();
    sub_1C4E2D08C();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v66 = *(v131 + 40);
    sub_1C4E2E9CC();
    v67();
    swift_endAccess();
    sub_1C447E2A8();
    v68 = sub_1C4F02618();
    sub_1C4418DB0(v68, v69, &a17);
    sub_1C4402064(6);
    sub_1C4E2D08C();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2E9CC();
    v66();
    swift_endAccess();
    sub_1C442F858(7);
    v70 = sub_1C4F02618();
    sub_1C4E2C87C(v70, v71);
    sub_1C4402064(8);
    sub_1C4E2D08C();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2E9CC();
    v66();
    swift_endAccess();
    sub_1C442F858(9);
    v72 = sub_1C4F02618();
    sub_1C4425188(v72, v73);
    type metadata accessor for LifeEventStructs.Place(0);
    sub_1C441B2D4();
    sub_1C4401574();
    sub_1C4E276B4(v74, v75, &unk_1C4F772D4);
    sub_1C447F798();
    sub_1C4E2E818();
    sub_1C4F02658();
    sub_1C4422C90(v135);

    sub_1C44C1348(11);
    sub_1C4E2E818();
    sub_1C4F02658();
    sub_1C4E2E4B0();
    sub_1C4E2DD7C(v76);
    type metadata accessor for LifeEventStructs.Plane(0);
    sub_1C4E2CA08();
    sub_1C4E2D918();
    sub_1C4E276B4(v77, v78, &unk_1C4F769F8);
    v79 = sub_1C44063D8();
    sub_1C4E2E3C0(v79, v80, v81, v82);
    sub_1C4E2E4B0();
    sub_1C4E2DD7C(v83);
    type metadata accessor for LifeEventStructs.Automobile(0);
    sub_1C4E2CA18();
    sub_1C4E2D900();
    sub_1C4E276B4(v84, v85, &unk_1C4F768B4);
    v86 = sub_1C44063D8();
    sub_1C4E2E3C0(v86, v87, v88, v89);
    sub_1C4E2E4B0();
    sub_1C4E2DD7C(v90);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C444AC68();
    sub_1C4E295F8();
    v91 = sub_1C44063D8();
    sub_1C4E2E3C0(v91, v92, v93, v94);
    sub_1C441E968(v135);

    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E29544();
    v95 = sub_1C44063D8();
    sub_1C4E2E3C0(v95, v96, v97, v98);
    sub_1C441E968(v135);

    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v99, v100, &unk_1C4F771FC);
    v101 = sub_1C44063D8();
    sub_1C4E2E3C0(v101, v102, v103, v104);
    sub_1C441E968(v135);

    type metadata accessor for LifeEventStructs.QuantityRelationshipType(0);
    sub_1C4455534();
    sub_1C4E276B4(v105, v106, &unk_1C4F76A64);
    sub_1C447F798();
    sub_1C4E2E818();
    sub_1C4E2E3C0(v107, v108, v109, v110);
    sub_1C441E968(v135);

    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v111, v112, &unk_1C4F77190);
    v113 = sub_1C44063D8();
    sub_1C4E2E3C0(v113, v114, v115, v116);
    sub_1C441E968(v135);

    sub_1C44C1348(19);
    sub_1C4E2E818();
    sub_1C4E2E3C0(v117, v118, v119, v120);
    v121 = sub_1C4485C30();
    v122(v121);
    sub_1C443F058(v135);

    v123 = v21;
  }

  sub_1C440962C(v123);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

uint64_t sub_1C4E1AD2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E1A1C8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E1ADB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  sub_1C43FE628();
  a19 = v31;
  a20 = v33;
  v229 = v34;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v234 = v29;
  v41 = v28;
  v43 = v42;
  v236 = v44;
  v237 = v45;
  sub_1C442BC14(a22);
  v46 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v47 = sub_1C43FBD18(v46);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  v233 = v49;
  sub_1C43FBE44();
  v50 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v232 = v51;
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FD230();
  v55 = sub_1C43FD2C8(v54);
  v56 = type metadata accessor for EntityTriple(v55);
  v57 = sub_1C43FFAE0(v56, &a18);
  v59 = v58;
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C4458614();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C4485B28();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C4402CA8();
  v235 = *v43;
  v64 = MEMORY[0x1E69E7CC0];
  v238 = MEMORY[0x1E69E7CC0];
  v65 = (v28 + *v40);
  v66 = v65[1];
  v226 = v50;
  v228 = v59;
  v227 = v38;
  if (!v66)
  {
    goto LABEL_6;
  }

  v67 = *v65;
  sub_1C4E2D5D4();
  if (!v68)
  {
    v64 = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  sub_1C4E2D434();
  v69(v30);
  v70 = *v36;
  sub_1C4E2D564(v28 + v70);
  v71 = v231[5];
  sub_1C4EFEEF8();
  sub_1C43FCE50();
  v59 = v236;
  (*(v72 + 16))(v30 + v71, v28 + v70);
  sub_1C4E2E420();
  v38 = v28;
  sub_1C449ED64(v28 + v73, v30 + v231[9]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C440EEE0();
  sub_1C4EFF888();
  sub_1C4EFEC38();
  v74 = (v30 + v231[8]);
  *v74 = v67;
  v74[1] = v66;
  v75 = (v30 + v231[10]);
  *v75 = v236;
  v75[1] = v237;
  *(v30 + v231[11]) = v32;
  *(v30 + v231[12]) = v235;
  v76 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v76, v77, v78, MEMORY[0x1E69E7CC0]);
  v64 = v79;
  i = *(v79 + 16);
  v36 = i + 1;
  if (i >= *(v79 + 24) >> 1)
  {
    goto LABEL_79;
  }

  while (1)
  {
    sub_1C44225D8();
    *(v64 + 16) = v36;
    sub_1C4E2C938();
    sub_1C4A948D8(v30, v81 + *(v59 + 72) * i);
    v238 = v64;
    v41 = v38;
    sub_1C4E2DDF0();
LABEL_6:
    sub_1C4E2D2C4();
    v30 = *(v41 + v82 + 8);
    v83 = v233;
    if (v30 && (sub_1C4434384(), v84))
    {
      v85 = a21;
      sub_1C4E2D434();
      v86(v28);
      v87 = *v85;
      sub_1C4E2D474(v41 + v87);
      sub_1C4E2D468();
      sub_1C4E2E268();
      sub_1C43FCE50();
      (*(v88 + 16))(v38 + v28, v41 + v87);
      sub_1C4E2E420();
      sub_1C449ED64(v41 + v89, v28 + *(v41 + 9));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4414830();
      v90 = sub_1C4EFF888();
      sub_1C4E2DF74(v90);
      sub_1C4E2D7B4();
      *v91 = v36;
      v91[1] = v30;
      sub_1C4E2D7A8();
      *v92 = v236;
      v92[1] = v237;
      sub_1C4E2CAF4();
      sub_1C4E2E238(v93);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v191 = sub_1C43FCEC0();
        sub_1C44C9240(v191, v192, v193, v64);
        v64 = v194;
      }

      sub_1C4422CC8();
      v59 = v228;
      v38 = v227;
      v95 = v230;
      if (v96)
      {
        sub_1C44C9240(v94 > 1, v30, 1, v64);
        v64 = v195;
      }

      *(v64 + 16) = v30;
      sub_1C4E2C938();
      sub_1C4A948D8(v28, v97 + *(v228 + 72) * v36);
      v238 = v64;
      v83 = v233;
    }

    else
    {
      v95 = v230;
    }

    v98 = *(v41 + *v95);
    v99 = v234;
    v28 = v236;
    if (v98)
    {
      break;
    }

LABEL_26:
    v119 = *(v41 + *a23);
    if (v119)
    {

      v29 = v99;
      sub_1C4DE69B4(v28, v237);
      if (v99)
      {
        goto LABEL_39;
      }

      sub_1C4E2DB68();
      if (v120)
      {
        v121 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C49D3614(v121);
        sub_1C4E2D434();
        v122 = sub_1C441C660();
        v123(v122);
        v124 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
        sub_1C4E2CE74();
        sub_1C4E2EC4C(v119 + v124, &v239);
        v125 = sub_1C4EFEEF8();
        sub_1C440175C(v235, 1, v125);
        if (v106)
        {
          goto LABEL_81;
        }

        v126 = v119 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier;
        v233 = sub_1C4EFF048();
        v30 = v127;
        sub_1C4E2E420();
        sub_1C4E2E300(v128);
        sub_1C44BBF0C();
        sub_1C449ED64(v130, v126 + v129);
        sub_1C4EF9AE8();
        sub_1C4E2E4F8();
        sub_1C4EFF888();
        sub_1C4EFEC38();
        v131 = sub_1C4E2E51C();
        v132(v131, v223, v226);
        sub_1C4E2C9A8();
        sub_1C4E2E9CC();
        v133();
        v134 = (v126 + *(v64 + 32));
        *v134 = v233;
        v134[1] = v30;
        v135 = (v126 + *(v64 + 40));
        *v135 = v236;
        v135[1] = v237;
        *(v126 + *(v64 + 44)) = v32;
        *(v126 + *(v64 + 48)) = v235;
        v136 = v238;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v204 = sub_1C43FCEC0();
          sub_1C44C9240(v204, v205, v206, v136);
          v136 = v207;
        }

        v99 = v29;
        sub_1C4485C88();
        if (v96)
        {
          sub_1C4460700();
          sub_1C44C9240(v208, v209, v210, v136);
          v136 = v211;
        }

        *(v136 + 16) = v126;
        sub_1C4E2C938();
        sub_1C4E2D7F0();
        sub_1C4A948D8(v222, v137);
        v238 = v136;
      }

      else
      {
      }

      v28 = v236;
    }

    sub_1C4E2EA34();
    if (v30)
    {
      v29 = *v38;
      sub_1C4E2EC64();
      sub_1C43FBF44();
      sub_1C4DECF58(v138, v139, v140, v141, v142, v143, v144, v145, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231);
      v99 = v29;
      if (v29)
      {
LABEL_39:

LABEL_40:
        sub_1C44103B4();
        sub_1C44109F8();
        return;
      }

      sub_1C49D3614(v146);
    }

    sub_1C4E2EA34();
    v64 = v237;
    if (!v30)
    {
LABEL_53:
      sub_1C4E2EA34();
      if (v30)
      {
        v29 = *v38;
        sub_1C4E2EC64();
        sub_1C4409A28();
        sub_1C43FBF44();
        sub_1C4DEBBF0(v158, v159, v160, v161, v162, v163, v164, v165, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231);
        v99 = v29;
        if (v29)
        {

          goto LABEL_40;
        }

        sub_1C49D3614(v166);
      }

      sub_1C4E2EA34();
      if (v30)
      {
        v234 = v41;
        v167 = v99;
        v36 = sub_1C4428DA0(v30);
        sub_1C4E2E21C();
        for (i = 0; v36 != i; ++i)
        {
          if (v38)
          {
            v177 = sub_1C440BB4C();
            v64 = MEMORY[0x1C6940F90](v177);
          }

          else
          {
            sub_1C4E2E9D8();
            if (v96)
            {
              goto LABEL_78;
            }

            sub_1C4E2E1F4();
          }

          if (__OFADD__(i, 1))
          {
            goto LABEL_77;
          }

          sub_1C4E2D4C0();
          v168 = sub_1C4E2E0BC();
          sub_1C4DE5C70(v168, v169, v170, v171, v172, v173, v174, v175, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231);
          v167 = v29;
          if (v29)
          {
            goto LABEL_67;
          }

          v28 = &v238;
          sub_1C49D3614(v176);
        }

        v28 = v236;
        v64 = v237;
        v99 = v167;
        sub_1C44225D8();
        v41 = v234;
        sub_1C4E2DDF0();
      }

      v178 = v238;
      if (*(v238 + 16))
      {
        v179 = v28;
        v180 = a28;
        (*(v232 + 16))(v220, v41 + *v38, v226);
        sub_1C4458608();
        sub_1C4EFEBB8();
        v181 = v41 + *v180;
        sub_1C4EFD2F8();
        sub_1C44106D4();
        sub_1C4E2E420();
        sub_1C449ED64(v41 + v182, v220 + *(v64 + 36));
        sub_1C4EF9AE8();
        sub_1C4E2E4F8();
        sub_1C4EFF888();
        sub_1C4EFEC38();
        v183 = (v220 + *(v64 + 32));
        *v183 = v181;
        v183[1] = v99;
        v184 = (v220 + *(v64 + 40));
        *v184 = v179;
        v184[1] = v64;
        *(v220 + *(v64 + 44)) = v32;
        *(v220 + *(v64 + 48)) = v235;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v212 = sub_1C43FCEC0();
          sub_1C44C9240(v212, v213, v214, v178);
          v178 = v215;
        }

        sub_1C4E2E824();
        if (v96)
        {
          sub_1C4460700();
          sub_1C44C9240(v216, v217, v218, v178);
          v178 = v219;
        }

        *(v178 + 16) = v181;
        sub_1C43FC354();
        v185 = sub_1C443F1AC();
        sub_1C4A948D8(v185, v186);
      }

      goto LABEL_40;
    }

    v234 = v41;
    v147 = v99;
    v36 = sub_1C4428DA0(v30);
    sub_1C4E2E21C();
    for (i = 0; ; ++i)
    {
      if (v36 == i)
      {

        v28 = v236;
        v64 = v237;
        v99 = v147;
        sub_1C44225D8();
        v41 = v234;
        sub_1C4E2DDF0();
        goto LABEL_53;
      }

      if (v38)
      {
        v157 = sub_1C440BB4C();
        v64 = MEMORY[0x1C6940F90](v157);
      }

      else
      {
        sub_1C4E2E9D8();
        if (v96)
        {
          goto LABEL_76;
        }

        sub_1C4E2E1F4();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1C4E2D4C0();
      v148 = sub_1C4E2E0BC();
      sub_1C4DE44E8(v148, v149, v150, v151, v152, v153, v154, v155, v220, v221);
      v147 = v29;
      if (v29)
      {
LABEL_67:

        goto LABEL_40;
      }

      v28 = &v238;
      sub_1C49D3614(v156);
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    sub_1C4E2D230();
    sub_1C44C9240(v187, v188, v189, v64);
    v64 = v190;
  }

  sub_1C4E2D8F4();

  v29 = v234;
  sub_1C4DE69B4(v236, v237);
  if (v234)
  {
    goto LABEL_39;
  }

  sub_1C4E2DB68();
  if (!v100)
  {

LABEL_25:
    v28 = v236;
    goto LABEL_26;
  }

  v101 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v101);
  sub_1C4E2D434();
  v102 = sub_1C44302FC();
  v103(v102);
  v104 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
  sub_1C4E2D16C(v98 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate);
  sub_1C47CBF50(v98 + v104, v83);
  v105 = sub_1C4EFEEF8();
  sub_1C440175C(v83, 1, v105);
  if (!v106)
  {

    v107 = v98 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier;
    v230 = sub_1C4EFF048();
    v30 = v108;
    sub_1C4E2E420();
    sub_1C442C004();
    sub_1C449ED64(v110, v107 + v109);
    sub_1C4EF9AE8();
    v32 = v111;
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v112 = sub_1C4E2E51C();
    v113(v112, v225, v226);
    sub_1C4E2C9A8();
    (*(v114 + 32))(v107 + v115, v233, v105);
    sub_1C4E2EA14((v107 + v231[8]));
    v116 = (v107 + v231[10]);
    *v116 = v236;
    v116[1] = v237;
    *(v107 + v231[11]) = v32;
    sub_1C4E2E238(v231[12]);
    v64 = v238;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v196 = sub_1C43FCEC0();
      sub_1C44C9240(v196, v197, v198, v64);
      v64 = v199;
    }

    v99 = v234;
    sub_1C4485C88();
    if (v96)
    {
      sub_1C4460700();
      sub_1C44C9240(v200, v201, v202, v64);
      v64 = v203;
    }

    *(v64 + 16) = v107;
    sub_1C4E2C938();
    sub_1C4E2D7F0();
    v117 = sub_1C4E2DDE4();
    sub_1C4A948D8(v117, v118);
    v238 = v64;
    goto LABEL_25;
  }

  __break(1u);
LABEL_81:
  __break(1u);
}