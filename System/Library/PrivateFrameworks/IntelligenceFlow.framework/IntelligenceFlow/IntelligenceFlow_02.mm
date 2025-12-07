uint64_t sub_1DD71011C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD7102D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD7103A4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1DD710A9C(&qword_1ECD16CE8, &qword_1DD8B3370);
    v11 = &a1[*(a3 + 20)];

    return sub_1DD6E5ED0(v11, a2, v10);
  }
}

_BYTE *sub_1DD710438(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1DD710A9C(&qword_1ECD16CE8, &qword_1DD8B3370);
    v8 = &v5[*(a4 + 20)];

    return sub_1DD6E5E68(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD7104C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD874820();
  sub_1DD6E0A68();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_1DD874790();
    sub_1DD6E0A68();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_1DD874FA0();
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return sub_1DD6E5ED0(v9, a2, v8);
}

uint64_t sub_1DD710598(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1DD874820();
  sub_1DD6E0A68();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1DD874790();
    sub_1DD6E0A68();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_1DD874FA0();
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return sub_1DD6E5E68(v11, a2, a2, v10);
}

uint64_t sub_1DD7106F8()
{

  v0 = sub_1DD6E6088();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t CrossAPIAssociationKey.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CrossAPIAssociationKey.key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static CrossAPIAssociationKey.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DD875A30();
  }
}

uint64_t sub_1DD7108A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD710918()
{
  sub_1DD875B20();
  MEMORY[0x1E12B5570](0);
  return sub_1DD875B60();
}

uint64_t sub_1DD710970(uint64_t a1)
{
  sub_1DD875B20();
  MEMORY[0x1E12B5570](0);
  return sub_1DD875B60();
}

uint64_t sub_1DD7109B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7108A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7109F8@<X0>(_BYTE *a1@<X8>)
{
  result = _ss5NeverO16IntelligenceFlowE11loadFromOtaABSgyFZ_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DD710A24(uint64_t a1)
{
  v2 = sub_1DD6EF42C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD710A60(uint64_t a1)
{
  v2 = sub_1DD6EF42C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD710A9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t CrossAPIAssociationKey.hashValue.getter()
{
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  return sub_1DD875B60();
}

uint64_t sub_1DD710B44(uint64_t a1)
{
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  return sub_1DD875B60();
}

unint64_t sub_1DD710BA0()
{
  result = qword_1ECD0E028;
  if (!qword_1ECD0E028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E028);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrossAPIAssociationKey.CodingKeys(unsigned int *a1, int a2)
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

unint64_t sub_1DD710C88()
{
  result = qword_1ECD0E040;
  if (!qword_1ECD0E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E040);
  }

  return result;
}

unint64_t sub_1DD710CE0()
{
  result = qword_1EE017008;
  if (!qword_1EE017008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017008);
  }

  return result;
}

unint64_t sub_1DD710D38()
{
  result = qword_1EE017010;
  if (!qword_1EE017010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017010);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceDetails.DeviceType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DeviceDetails.DeviceType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_1DD710DF4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t SiriXResponse.siriXOutputCommand.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  sub_1DD6E5EF8();
  return sub_1DD711154(v4, v5, v6, v7);
}

uint64_t sub_1DD710E74(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t static SiriXResponse.SiriXOutputCommand.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v8 = *a2;
  v7 = a2[1];
  v9 = *(a2 + 16);
  if (v6)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 16))
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = (v7 >> 60) & 3 | v11;
  switch((v4 >> 60) & 3 | v10)
  {
    case 1uLL:
      if (v12 != 1)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    case 2uLL:
      if (v12 != 2)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    case 3uLL:
      if (v12 != 3)
      {
        goto LABEL_23;
      }

LABEL_17:
      sub_1DD6DF268();
      sub_1DD711154(v8, v7, v9, v29);
      v30 = sub_1DD6E1F14();
      sub_1DD711154(v30, v31, v32, v2);
      v17 = sub_1DD6E10C8();
      goto LABEL_18;
    case 4uLL:
      if (v12 != 4)
      {
        goto LABEL_23;
      }

      sub_1DD6DF268();
      sub_1DD711154(v8, v7, v9, v18);
      v19 = sub_1DD6E1F14();
      sub_1DD711154(v19, v20, v21, v2);
      v22 = sub_1DD6ED214();
      sub_1DD711154(v22, v23, v24, v2);
      v25 = sub_1DD6E1F14();
      sub_1DD711154(v25, v26, v27, v2);
      v28 = sub_1DD6DDEDC();
      goto LABEL_21;
    case 5uLL:
      if (v12 != 5)
      {
        goto LABEL_23;
      }

      sub_1DD6DF268();
      sub_1DD711154(v8, v7, v9, v37);
      v38 = sub_1DD6E1F14();
      sub_1DD711154(v38, v39, v40, v2);
      v41 = sub_1DD6ED214();
      sub_1DD711154(v41, v42, v43, v2);
      v44 = sub_1DD6E1F14();
      sub_1DD711154(v44, v45, v46, v2);
      v28 = sub_1DD6E10C8();
LABEL_21:
      MEMORY[0x1E12B41A0](v28);
      sub_1DD6EE1E0();
      sub_1DD711154(v5, v4, v6, v47);
      v48 = sub_1DD6ED214();
      sub_1DD711154(v48, v49, v50, v3);
      v51 = sub_1DD6ED214();
      sub_1DD711154(v51, v52, v53, v3);
      v34 = sub_1DD6E1F14();
      goto LABEL_22;
    default:
      if (v12)
      {
LABEL_23:
        sub_1DD6DF268();
        sub_1DD711154(v8, v7, v9, v55);
        v56 = sub_1DD6E1F14();
        sub_1DD711154(v56, v57, v58, v2);
        sub_1DD711154(v5, v4, v6, sub_1DD6E6658);
        v59 = sub_1DD6ED214();
        sub_1DD711154(v59, v60, v61, sub_1DD6E6658);
        return 0;
      }

      else
      {
        sub_1DD6DF268();
        sub_1DD711154(v8, v7, v9, v13);
        v14 = sub_1DD6E1F14();
        sub_1DD711154(v14, v15, v16, v2);
        v17 = sub_1DD6DDEDC();
LABEL_18:
        MEMORY[0x1E12B41A0](v17);
        sub_1DD6EE1E0();
        sub_1DD711154(v5, v4, v6, v33);
        v34 = sub_1DD6ED214();
LABEL_22:
        sub_1DD711154(v34, v35, v36, v3);
        return v2 & 1;
      }
  }
}

uint64_t sub_1DD711154(uint64_t result, unint64_t a2, char a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  if (a3)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  switch((a2 >> 60) & 3 | v4)
  {
    case 0uLL:
    case 4uLL:
      goto LABEL_6;
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 5uLL:
      a2 &= 0xCFFFFFFFFFFFFFFFLL;
LABEL_6:
      result = a4(result, a2);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7111A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7377656956646461 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6C616944646461 && a2 == 0xEA00000000007367;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7449796173 && a2 == 0xE500000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7449746165706572 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD875A30();

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

uint64_t sub_1DD71139C(char a1)
{
  result = 0x7377656956646461;
  switch(a1)
  {
    case 1:
      result = 0x6F6C616944646461;
      break;
    case 2:
      result = 0x7449796173;
      break;
    case 3:
      result = 0x7449746165706572;
      break;
    case 4:
      result = 0x73736563637573;
      break;
    case 5:
      result = 0x6572756C696166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD71144C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD6FF778(12383, 0xE200000000000000, a1);

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7114B4(uint64_t a1)
{
  v2 = sub_1DD712118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7114F0(uint64_t a1)
{
  v2 = sub_1DD712118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD71152C(uint64_t a1)
{
  v2 = sub_1DD71216C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD711568(uint64_t a1)
{
  v2 = sub_1DD71216C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7115AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7111A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7115F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD711394();
  *a1 = result;
  return result;
}

uint64_t sub_1DD71161C(uint64_t a1)
{
  v2 = sub_1DD711ECC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD711658(uint64_t a1)
{
  v2 = sub_1DD711ECC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD711694(uint64_t a1)
{
  v2 = sub_1DD711F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7116D0(uint64_t a1)
{
  v2 = sub_1DD711F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD71170C(uint64_t a1)
{
  v2 = sub_1DD71201C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD711748(uint64_t a1)
{
  v2 = sub_1DD71201C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD711784(uint64_t a1)
{
  v2 = sub_1DD7120C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7117C0(uint64_t a1)
{
  v2 = sub_1DD7120C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7117FC(uint64_t a1)
{
  v2 = sub_1DD711FC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD711838(uint64_t a1)
{
  v2 = sub_1DD711FC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriXResponse.SiriXOutputCommand.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD0E0A8, &qword_1DD876E50);
  sub_1DD6DDEAC();
  v67 = v4;
  v68 = v3;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E0C6C();
  v66 = v6;
  sub_1DD710A9C(&qword_1ECD0E0B0, &qword_1DD876E58);
  sub_1DD6DDEAC();
  v64 = v8;
  v65 = v7;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E0C6C();
  v63 = v10;
  sub_1DD710A9C(&qword_1ECD0E0B8, &qword_1DD876E60);
  sub_1DD6DDEAC();
  v61 = v12;
  v62 = v11;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E0C6C();
  v60 = v14;
  sub_1DD710A9C(&qword_1ECD0E0C0, &qword_1DD876E68);
  sub_1DD6DDEAC();
  v58 = v16;
  v59 = v15;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E0C6C();
  v57 = v18;
  sub_1DD710A9C(&qword_1ECD0E0C8, &qword_1DD876E70);
  sub_1DD6DDEAC();
  v55 = v20;
  v56 = v19;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - v22;
  sub_1DD710A9C(&qword_1ECD0E0D0, &qword_1DD876E78);
  sub_1DD6DDEAC();
  v53 = v25;
  v54 = v24;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v53 - v27;
  sub_1DD710A9C(&qword_1ECD0E0D8, &qword_1DD876E80);
  sub_1DD6DDEAC();
  v70 = v29;
  v71 = v30;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  v32 = v0[1];
  v69 = *v0;
  v33 = *(v0 + 16);
  sub_1DD6DF224(v2, v2[3]);
  sub_1DD711ECC();
  sub_1DD875BB0();
  if (v33)
  {
    v34 = 4;
  }

  else
  {
    v34 = 0;
  }

  switch((v32 >> 60) & 3 | v34)
  {
    case 1uLL:
      LOBYTE(v72) = 1;
      sub_1DD712118();
      sub_1DD719298(&type metadata for SiriXResponse.SiriXOutputCommand.AddDialogsCodingKeys, &v72);
      sub_1DD6ED754();
      sub_1DD712070();
      v49 = v56;
      sub_1DD8759D0();
      (*(v55 + 8))(v23, v49);
      goto LABEL_13;
    case 2uLL:
      LOBYTE(v72) = 2;
      sub_1DD7120C4();
      v40 = v57;
      sub_1DD719298(&type metadata for SiriXResponse.SiriXOutputCommand.SayItCodingKeys, &v72);
      sub_1DD6ED754();
      v41 = sub_1DD712070();
      v42 = v59;
      sub_1DD6E6098(&v72, v43, v44, MEMORY[0x1E6969080], v41);
      v45 = v58;
      goto LABEL_12;
    case 3uLL:
      LOBYTE(v72) = 3;
      sub_1DD71201C();
      v40 = v60;
      sub_1DD719298(&type metadata for SiriXResponse.SiriXOutputCommand.RepeatItCodingKeys, &v72);
      sub_1DD6ED754();
      v46 = sub_1DD712070();
      v42 = v62;
      sub_1DD6E6098(&v72, v47, v48, MEMORY[0x1E6969080], v46);
      v45 = v61;
      goto LABEL_12;
    case 4uLL:
      LOBYTE(v72) = 4;
      sub_1DD711FC8();
      v36 = v63;
      sub_1DD6E710C();
      sub_1DD875910();
      v72 = v69;
      v73 = v32;
      sub_1DD711F74();
      v37 = v65;
      sub_1DD8759D0();
      (*(v64 + 8))(v36, v37);
      goto LABEL_7;
    case 5uLL:
      LOBYTE(v72) = 5;
      sub_1DD711F20();
      v40 = v66;
      sub_1DD719298(&type metadata for SiriXResponse.SiriXOutputCommand.FailureCodingKeys, &v72);
      sub_1DD6ED754();
      v50 = sub_1DD711F74();
      v42 = v68;
      sub_1DD6E6098(&v72, v51, v52, &type metadata for SiriXResponse.RequestEndedData, v50);
      v45 = v67;
LABEL_12:
      (*(v45 + 8))(v40, v42);
LABEL_13:
      v38 = sub_1DD6E0F70();
      break;
    default:
      LOBYTE(v72) = 0;
      sub_1DD71216C();
      sub_1DD6E710C();
      sub_1DD875910();
      v72 = v69;
      v73 = v32;
      sub_1DD712070();
      v35 = v54;
      sub_1DD8759D0();
      (*(v53 + 8))(v28, v35);
LABEL_7:
      v38 = sub_1DD6DDEDC();
      break;
  }

  v39(v38);
  sub_1DD6E0C78();
}

unint64_t sub_1DD711ECC()
{
  result = qword_1ECD0E0E0;
  if (!qword_1ECD0E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E0E0);
  }

  return result;
}

unint64_t sub_1DD711F20()
{
  result = qword_1ECD0E0E8;
  if (!qword_1ECD0E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E0E8);
  }

  return result;
}

unint64_t sub_1DD711F74()
{
  result = qword_1ECD0E0F0;
  if (!qword_1ECD0E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E0F0);
  }

  return result;
}

unint64_t sub_1DD711FC8()
{
  result = qword_1ECD0E0F8;
  if (!qword_1ECD0E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E0F8);
  }

  return result;
}

unint64_t sub_1DD71201C()
{
  result = qword_1ECD0E100;
  if (!qword_1ECD0E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E100);
  }

  return result;
}

unint64_t sub_1DD712070()
{
  result = qword_1ECD0F4B0;
  if (!qword_1ECD0F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F4B0);
  }

  return result;
}

unint64_t sub_1DD7120C4()
{
  result = qword_1ECD0E108;
  if (!qword_1ECD0E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E108);
  }

  return result;
}

unint64_t sub_1DD712118()
{
  result = qword_1ECD0E110;
  if (!qword_1ECD0E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E110);
  }

  return result;
}

unint64_t sub_1DD71216C()
{
  result = qword_1ECD0E118;
  if (!qword_1ECD0E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E118);
  }

  return result;
}

void SiriXResponse.SiriXOutputCommand.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v77 = v3;
  v76[6] = sub_1DD710A9C(&qword_1ECD0E120, &qword_1DD876E88);
  sub_1DD6DDEAC();
  v76[13] = v4;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E0C6C();
  v76[15] = v6;
  v76[8] = sub_1DD710A9C(&qword_1ECD0E128, &qword_1DD876E90);
  sub_1DD6DDEAC();
  v76[16] = v7;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E0C6C();
  v79 = v9;
  v76[7] = sub_1DD710A9C(&qword_1ECD0E130, &qword_1DD876E98);
  sub_1DD6DDEAC();
  v76[12] = v10;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E0C6C();
  v78 = v12;
  v76[5] = sub_1DD710A9C(&qword_1ECD0E138, &qword_1DD876EA0);
  sub_1DD6DDEAC();
  v76[11] = v13;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E0C6C();
  v76[14] = v15;
  v76[4] = sub_1DD710A9C(&qword_1ECD0E140, &qword_1DD876EA8);
  sub_1DD6DDEAC();
  v76[10] = v16;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v76 - v18;
  v20 = sub_1DD710A9C(&qword_1ECD0E148, &qword_1DD876EB0);
  sub_1DD6DDEAC();
  v76[9] = v21;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v76 - v23;
  sub_1DD710A9C(&qword_1ECD0E150, &qword_1DD876EB8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  v26 = v2[3];
  v80 = v2;
  sub_1DD6DF224(v2, v26);
  sub_1DD711ECC();
  sub_1DD875B90();
  if (v0)
  {
    goto LABEL_8;
  }

  v76[2] = v24;
  v76[1] = v20;
  v76[3] = v19;
  v27 = sub_1DD875900();
  sub_1DD717CAC(v27, 0);
  if (v30 == v31 >> 1)
  {
LABEL_7:
    v38 = sub_1DD875740();
    swift_allocError();
    v40 = v39;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v40 = &type metadata for SiriXResponse.SiriXOutputCommand;
    sub_1DD875810();
    sub_1DD875730();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = sub_1DD703234();
    v42(v41);
LABEL_8:
    sub_1DD6E1EC8(v80);
LABEL_9:
    sub_1DD6E0C78();
    return;
  }

  v76[0] = 0;
  if (v30 < (v31 >> 1))
  {
    v32 = *(v29 + v30);
    sub_1DD718EB8(v30 + 1, v31 >> 1, v28, v29, v30, v31);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      v37 = v77;
      switch(v32)
      {
        case 1:
          LOBYTE(v81) = 1;
          sub_1DD712118();
          sub_1DD6E64D4(&type metadata for SiriXResponse.SiriXOutputCommand.AddDialogsCodingKeys, &v81);
          sub_1DD717D38();
          sub_1DD6E1F24();
          sub_1DD8758D0();
          sub_1DD6E48D0();
          swift_unknownObjectRelease();
          v67 = sub_1DD6DDEDC();
          v68(v67);
          v69 = sub_1DD6FC3CC();
          v70(v69);
          sub_1DD700BD8();
          v66 = v71 | 0x1000000000000000;
          goto LABEL_15;
        case 2:
          LOBYTE(v81) = 2;
          sub_1DD7120C4();
          sub_1DD6E64D4(&type metadata for SiriXResponse.SiriXOutputCommand.SayItCodingKeys, &v81);
          sub_1DD717D38();
          sub_1DD6E1F24();
          sub_1DD8758D0();
          sub_1DD6E48D0();
          swift_unknownObjectRelease();
          v50 = sub_1DD6DDEDC();
          v51(v50);
          v52 = sub_1DD6FC3CC();
          v53(v52);
          sub_1DD700BD8();
          v66 = v54 | 0x2000000000000000;
          goto LABEL_15;
        case 3:
          LOBYTE(v81) = 3;
          sub_1DD71201C();
          sub_1DD6E64D4(&type metadata for SiriXResponse.SiriXOutputCommand.RepeatItCodingKeys, &v81);
          sub_1DD717D38();
          sub_1DD6E1F24();
          sub_1DD8758D0();
          sub_1DD6E48D0();
          swift_unknownObjectRelease();
          v55 = sub_1DD6DDEDC();
          v56(v55);
          v57 = sub_1DD6FC3CC();
          v58(v57);
          sub_1DD700BD8();
          v66 = v59 | 0x3000000000000000;
          goto LABEL_15;
        case 4:
          v43 = v77;
          LOBYTE(v81) = 4;
          sub_1DD711FC8();
          sub_1DD6E64D4(&type metadata for SiriXResponse.SiriXOutputCommand.SuccessCodingKeys, &v81);
          sub_1DD717CE4();
          sub_1DD6E710C();
          sub_1DD8758D0();
          sub_1DD6E48D0();
          swift_unknownObjectRelease();
          v45 = sub_1DD7029A8();
          v46(v45);
          v47 = sub_1DD6FC3CC();
          v48(v47);
          v64 = v81;
          v66 = v82;
          v65 = 1;
          v49 = v80;
          v37 = v43;
          goto LABEL_16;
        case 5:
          v44 = v77;
          LOBYTE(v81) = 5;
          sub_1DD711F20();
          sub_1DD6E64D4(&type metadata for SiriXResponse.SiriXOutputCommand.FailureCodingKeys, &v81);
          sub_1DD717CE4();
          sub_1DD6E710C();
          sub_1DD8758D0();
          sub_1DD6E48D0();
          swift_unknownObjectRelease();
          v72 = sub_1DD7029A8();
          v73(v72);
          v74 = sub_1DD6FC3CC();
          v75(v74);
          v64 = v81;
          v66 = v82 | 0x1000000000000000;
          v65 = 1;
          v49 = v80;
          v37 = v44;
          goto LABEL_16;
        default:
          LOBYTE(v81) = 0;
          sub_1DD71216C();
          sub_1DD6E64D4(&type metadata for SiriXResponse.SiriXOutputCommand.AddViewsCodingKeys, &v81);
          sub_1DD717D38();
          sub_1DD6E1F24();
          sub_1DD8758D0();
          sub_1DD6E48D0();
          swift_unknownObjectRelease();
          v60 = sub_1DD6DDEDC();
          v61(v60);
          v62 = sub_1DD6FC3CC();
          v63(v62);
          sub_1DD700BD8();
LABEL_15:
          v49 = v80;
LABEL_16:
          *v37 = v64;
          *(v37 + 8) = v66;
          *(v37 + 16) = v65;
          sub_1DD6E1EC8(v49);
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t SiriXResponse.RequestEndedData.command.getter()
{
  v0 = sub_1DD6DDEFC();
  sub_1DD710E74(v0, v1);
  return sub_1DD6DDEFC();
}

uint64_t SiriXResponse.RequestEndedData.init(command:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1DD712BB8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD712C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD712BB8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD712C78(uint64_t a1)
{
  v2 = sub_1DD717D8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD712CB4(uint64_t a1)
{
  v2 = sub_1DD717D8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriXResponse.RequestEndedData.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD0E168, &qword_1DD876EC8);
  sub_1DD6DDEAC();
  v5 = v4;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = *v0;
  v10 = v0[1];
  sub_1DD6DF224(v2, v2[3]);
  sub_1DD710E74(v9, v10);
  sub_1DD717D8C();
  sub_1DD875BB0();
  v11 = v9;
  v12 = v10;
  sub_1DD712070();
  sub_1DD8759D0();
  sub_1DD6E6658(v11, v12);
  (*(v5 + 8))(v8, v3);
  sub_1DD6E0C78();
}

void SiriXResponse.RequestEndedData.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  sub_1DD710A9C(&qword_1ECD0E178, &qword_1DD876ED0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DF224(v2, v2[3]);
  sub_1DD717D8C();
  sub_1DD875B90();
  if (!v0)
  {
    sub_1DD717D38();
    sub_1DD6E1F24();
    sub_1DD8758D0();
    v6 = sub_1DD6DDEDC();
    v7(v6);
    *v4 = v8;
  }

  sub_1DD6E1EC8(v2);
  sub_1DD6E0C78();
}

__n128 SiriXResponse.init(isFinal:siriXOutputCommand:outcome:)@<Q0>(char a1@<W0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2[1].n128_u8[0];
  *a4 = a1;
  result = *a2;
  *(a4 + 8) = *a2;
  *(a4 + 24) = v4;
  *(a4 + 32) = a3;
  return result;
}

void static SiriXResponse.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && (v2 = a2[24], v4 = *(a2 + 1), v3 = *(a2 + 2), v5 = a1[24], v7 = *(a1 + 1), v6 = *(a1 + 2), v16[0] = v7, v16[1] = v6, v17 = v5, v14[0] = v4, v14[1] = v3, v15 = v2, sub_1DD711154(v7, v6, v5, sub_1DD710E74), v8 = sub_1DD6E0F70(), sub_1DD711154(v8, v9, v2, sub_1DD710E74), v10 = static SiriXResponse.SiriXOutputCommand.== infix(_:_:)(v16, v14), sub_1DD711154(v4, v3, v2, sub_1DD6E6658), sub_1DD711154(v7, v6, v5, sub_1DD6E6658), (v10 & 1) != 0))
  {
    sub_1DD6DDEFC();
    sub_1DD6F37CC();

    sub_1DD716D5C(v11, v12);
  }

  else
  {
    sub_1DD6F37CC();
  }
}

void sub_1DD7130EC()
{
  sub_1DD6DEB38();
  v2 = sub_1DD6F09D0();
  v3 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum(v2);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DD710A9C(&qword_1ECD0E2D0, &qword_1DD8781E0);
  sub_1DD6DEA10(v7);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v93 - v9;
  v11 = sub_1DD710A9C(&qword_1ECD0E2D8, &qword_1DD8781E8);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6E0C6C();
  v103 = v13;
  v113 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DDEE8();
  v112 = v15;
  v16 = sub_1DD710A9C(&qword_1ECD0E2E0, &qword_1DD8781F0);
  sub_1DD6DEA10(v16);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E0C6C();
  v104 = v18;
  v105 = sub_1DD710A9C(&qword_1ECD0E2E8, &qword_1DD8781F8);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6E0C6C();
  v117 = v20;
  v102 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DDEE8();
  v99 = v22;
  v23 = sub_1DD710A9C(&qword_1ECD0E2F0, &qword_1DD878200);
  sub_1DD6DEA10(v23);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6E0C6C();
  v107 = v25;
  v100 = sub_1DD710A9C(&qword_1ECD0E2F8, &qword_1DD878208);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6E0C6C();
  v101 = v27;
  v111 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6DDEE8();
  v106 = v29;
  v30 = sub_1DD710A9C(&qword_1ECD0E300, &qword_1DD878210);
  sub_1DD6DEA10(v30);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6E0C6C();
  v108 = v32;
  v109 = sub_1DD710A9C(&qword_1ECD0E308, qword_1DD878218);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v93 - v34;
  v114 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate(0);
  sub_1DD6E046C();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6DDEC0();
  v116 = v37 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v93 - v40;
  v42 = *(v1 + 16);
  if (v42 != *(v0 + 16) || !v42 || v1 == v0)
  {
    goto LABEL_51;
  }

  v95 = v11;
  v94 = v10;
  v93 = v6;
  v96 = v3;
  sub_1DD6DE1EC();
  v44 = v1 + v43;
  v115 = v0 + v43;
  v46 = *(v45 + 72);
  v97 = v41;
  v98 = v46;
  v47 = v111;
  while (1)
  {
    sub_1DD6ED118();
    sub_1DD7191C0();
    v110 = v44;
    sub_1DD7191C0();
    v48 = *(v109 + 48);
    sub_1DD719110();
    sub_1DD719110();
    sub_1DD6DE1FC(v35, 1, v47);
    if (v50)
    {
      sub_1DD6DE1FC(&v35[v48], 1, v47);
      if (!v50)
      {
        goto LABEL_38;
      }

      sub_1DD6FC560(v35, &qword_1ECD0E300, &qword_1DD878210);
    }

    else
    {
      v49 = v108;
      sub_1DD719110();
      sub_1DD6DE1FC(&v35[v48], 1, v47);
      v51 = v107;
      if (v50)
      {
        sub_1DD719218(v49, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
LABEL_38:
        v88 = &qword_1ECD0E308;
        v89 = qword_1DD878218;
        goto LABEL_44;
      }

      sub_1DD719168();
      v52 = *(v100 + 48);
      v53 = v101;
      sub_1DD719110();
      sub_1DD719110();
      v54 = v102;
      sub_1DD6DE1FC(v53, 1, v102);
      if (v50)
      {
        sub_1DD6DE1FC(v53 + v52, 1, v54);
        if (!v50)
        {
          goto LABEL_42;
        }

        sub_1DD6FC560(v53, &qword_1ECD0E2F0, &qword_1DD878200);
        v41 = v97;
      }

      else
      {
        sub_1DD719110();
        sub_1DD6DE1FC(v53 + v52, 1, v54);
        if (v55)
        {
          sub_1DD719218(v51, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum);
LABEL_42:
          sub_1DD6FC560(v53, &qword_1ECD0E2F8, &qword_1DD878208);
LABEL_43:
          sub_1DD719218(v106, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
          sub_1DD719218(v108, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
          v88 = &qword_1ECD0E300;
          v89 = &qword_1DD878210;
LABEL_44:
          v90 = v35;
          goto LABEL_49;
        }

        v56 = v99;
        sub_1DD719168();
        static ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum.== infix(_:_:)();
        v58 = v57;
        sub_1DD719218(v56, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum);
        sub_1DD719218(v107, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum);
        sub_1DD6FC560(v53, &qword_1ECD0E2F0, &qword_1DD878200);
        v41 = v97;
        if ((v58 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      sub_1DD874910();
      sub_1DD6E1274();
      sub_1DD7190C8(&qword_1ECD0E2C8, v59, MEMORY[0x1E69AAC10]);
      v60 = v108;
      v61 = v106;
      v62 = sub_1DD8750F0();
      sub_1DD719218(v61, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
      v47 = v111;
      sub_1DD719218(v60, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate);
      sub_1DD6FC560(v35, &qword_1ECD0E300, &qword_1DD878210);
      if ((v62 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v63 = *(v105 + 48);
    v64 = v117;
    sub_1DD6FAD88();
    sub_1DD719110();
    sub_1DD6FAD88();
    sub_1DD719110();
    v65 = v64;
    v66 = v113;
    sub_1DD6DE1FC(v65, 1, v113);
    if (!v50)
    {
      break;
    }

    sub_1DD6DE1FC(v117 + v63, 1, v66);
    if (!v50)
    {
      goto LABEL_40;
    }

    sub_1DD6FC560(v117, &qword_1ECD0E2E0, &qword_1DD8781F0);
LABEL_33:
    sub_1DD874910();
    sub_1DD6E1274();
    sub_1DD7190C8(&qword_1ECD0E2C8, v85, MEMORY[0x1E69AAC10]);
    v86 = v116;
    v87 = sub_1DD8750F0();
    sub_1DD719218(v86, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate);
    sub_1DD719218(v41, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate);
    if (v87)
    {
      v115 += v98;
      v44 = v110 + v98;
      if (--v42)
      {
        continue;
      }
    }

    goto LABEL_51;
  }

  v67 = v117;
  v68 = v104;
  sub_1DD6FAD88();
  sub_1DD719110();
  sub_1DD6DE1FC(v67 + v63, 1, v66);
  if (v69)
  {
    sub_1DD719218(v68, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
LABEL_40:
    v88 = &qword_1ECD0E2E8;
    v89 = &qword_1DD8781F8;
    goto LABEL_48;
  }

  sub_1DD719168();
  v70 = *(v95 + 48);
  v71 = v103;
  sub_1DD719110();
  sub_1DD719110();
  v72 = v96;
  sub_1DD6DE1FC(v71, 1, v96);
  if (v50)
  {
    sub_1DD6DE1FC(v71 + v70, 1, v72);
    if (!v50)
    {
      goto LABEL_46;
    }

    sub_1DD6FC560(v71, &qword_1ECD0E2D0, &qword_1DD8781E0);
    v73 = v112;
LABEL_32:
    sub_1DD874910();
    sub_1DD6E1274();
    sub_1DD7190C8(&qword_1ECD0E2C8, v81, MEMORY[0x1E69AAC10]);
    v82 = sub_1DD8750F0();
    sub_1DD719218(v73, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
    v83 = sub_1DD6E0C60();
    sub_1DD719218(v83, v84);
    sub_1DD6FC560(v117, &qword_1ECD0E2E0, &qword_1DD8781F0);
    v47 = v111;
    if ((v82 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_33;
  }

  v74 = v94;
  sub_1DD719110();
  sub_1DD6DE1FC(v71 + v70, 1, v72);
  if (!v75)
  {
    v76 = v93;
    sub_1DD719168();
    static ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum.== infix(_:_:)();
    v78 = v77;
    sub_1DD719218(v76, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum);
    v79 = sub_1DD6E0C60();
    sub_1DD719218(v79, v80);
    sub_1DD6FC560(v103, &qword_1ECD0E2D0, &qword_1DD8781E0);
    v73 = v112;
    if ((v78 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_32;
  }

  sub_1DD719218(v74, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum);
LABEL_46:
  sub_1DD6FC560(v71, &qword_1ECD0E2D8, &qword_1DD8781E8);
  v73 = v112;
LABEL_47:
  sub_1DD719218(v73, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
  sub_1DD719218(v104, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate);
  v88 = &qword_1ECD0E2E0;
  v89 = &qword_1DD8781F0;
LABEL_48:
  v90 = v117;
LABEL_49:
  sub_1DD6FC560(v90, v88, v89);
LABEL_50:
  sub_1DD719218(v116, type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate);
  v91 = sub_1DD6DDEFC();
  sub_1DD719218(v91, v92);
LABEL_51:
  sub_1DD6FE01C();
  sub_1DD6DFED0();
}

void sub_1DD713D3C()
{
  sub_1DD6DEB38();
  v4 = sub_1DD6F09D0();
  type metadata accessor for OverridesCommon_StringPredicate(v4);
  sub_1DD6E046C();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDEC0();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6EED34();
  if (v15 && v3 && v2 != v0)
  {
    sub_1DD6DE1EC();
    v11 = v2 + v10;
    v12 = v0 + v10;
    v14 = *(v13 + 72);
    while (1)
    {
      sub_1DD6E0F70();
      sub_1DD7191C0();
      sub_1DD7191C0();
      if (*v1 != *v8)
      {
        break;
      }

      v15 = *(v1 + 1) == *(v8 + 1) && *(v1 + 2) == *(v8 + 2);
      if (!v15 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      sub_1DD874910();
      sub_1DD6E1274();
      v17 = sub_1DD7190C8(&qword_1ECD0E2C8, v16, MEMORY[0x1E69AAC10]);
      v18 = sub_1DD7192BC(v17);
      sub_1DD719218(v8, type metadata accessor for OverridesCommon_StringPredicate);
      v19 = sub_1DD6FAA88();
      sub_1DD719218(v19, v20);
      if (v18)
      {
        v12 += v14;
        v11 += v14;
        sub_1DD6E6314();
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    sub_1DD719218(v8, type metadata accessor for OverridesCommon_StringPredicate);
    v21 = sub_1DD6DEA04();
    sub_1DD719218(v21, v22);
  }

LABEL_18:
  sub_1DD6FE01C();
  sub_1DD6DFED0();
}

void sub_1DD713F30()
{
  sub_1DD6DEB38();
  v1 = v0;
  v3 = v2;
  v40 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEE8();
  v35 = v5;
  v6 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD6DEA10(v6);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E0C6C();
  v39 = v8;
  v38 = sub_1DD710A9C(&qword_1ECD0E2C0, &qword_1DD8781D8);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v37 = type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(0);
  sub_1DD6E046C();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DDEC0();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v19 = *(v3 + 16);
  if (v19 != *(v1 + 16) || !v19 || v3 == v1)
  {
    goto LABEL_20;
  }

  sub_1DD6DE1EC();
  v21 = v3 + v20;
  v22 = v1 + v20;
  v36 = *(v23 + 72);
  v24 = v39;
  while (1)
  {
    sub_1DD7191C0();
    sub_1DD7191C0();
    v25 = *(v38 + 48);
    sub_1DD719110();
    sub_1DD6E1BC4();
    sub_1DD719110();
    sub_1DD6DE1FC(v11, 1, v40);
    if (!v28)
    {
      break;
    }

    sub_1DD6DE1FC(&v11[v25], 1, v40);
    if (!v28)
    {
      goto LABEL_18;
    }

    v26 = sub_1DD6E0F70();
    sub_1DD6FC560(v26, v27, &qword_1DD8781D0);
LABEL_12:
    sub_1DD874910();
    sub_1DD6E1274();
    sub_1DD7190C8(&qword_1ECD0E2C8, v33, MEMORY[0x1E69AAC10]);
    v34 = sub_1DD8750F0();
    sub_1DD719218(v15, type metadata accessor for ResponseGenerationOverrides_Rule.Predicate);
    sub_1DD719218(v18, type metadata accessor for ResponseGenerationOverrides_Rule.Predicate);
    if (v34)
    {
      v22 += v36;
      v21 += v36;
      sub_1DD6E6314();
      if (!v28)
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  sub_1DD6E1BC4();
  sub_1DD719110();
  sub_1DD6DE1FC(&v11[v25], 1, v40);
  if (!v28)
  {
    v29 = v35;
    sub_1DD719168();
    static ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum.== infix(_:_:)();
    v31 = v30;
    v32 = v29;
    v24 = v39;
    sub_1DD719218(v32, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    sub_1DD719218(v24, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    sub_1DD6FC560(v11, &qword_1ECD0E2B8, &qword_1DD8781D0);
    if ((v31 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  sub_1DD719218(v24, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
LABEL_18:
  sub_1DD6FC560(v11, &qword_1ECD0E2C0, &qword_1DD8781D8);
LABEL_19:
  sub_1DD719218(v15, type metadata accessor for ResponseGenerationOverrides_Rule.Predicate);
  sub_1DD719218(v18, type metadata accessor for ResponseGenerationOverrides_Rule.Predicate);
LABEL_20:
  sub_1DD6FE01C();
  sub_1DD6DFED0();
}

void sub_1DD71435C()
{
  sub_1DD6FF8A8();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v1 + 64);
    v4 = (v0 + 64);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      v9 = *(v3 - 2);
      v8 = *(v3 - 1);
      v10 = *v3;
      if (*(v4 - 4) != *(v3 - 4) || *(v4 - 3) != *(v3 - 3))
      {
        v82 = *(v4 - 2);
        v12 = *(v3 - 1);
        v13 = *v4;
        v14 = sub_1DD875A30();
        v7 = v13;
        v8 = v12;
        v6 = v82;
        if ((v14 & 1) == 0)
        {
          break;
        }
      }

      if (v7)
      {
        if ((v10 & 1) == 0)
        {
          goto LABEL_24;
        }

        sub_1DD718FA4(v9, v8, 1);
        v15 = sub_1DD6E09C4();
        sub_1DD718FA4(v15, v16, v17);
        v18 = sub_1DD6E07BC();
        sub_1DD718FA4(v18, v19, v20);
        v21 = sub_1DD6E09C4();
        sub_1DD718FA4(v21, v22, v23);

        v24 = sub_1DD6E09C4();
        sub_1DD718FA4(v24, v25, v26);

        v27 = sub_1DD6E07BC();
        sub_1DD718FA4(v27, v28, v29);
        v30 = sub_1DD714590(v6, v9);
        v31 = sub_1DD6E09C4();
        sub_1DD718FB0(v31, v32, v33);
        v34 = sub_1DD6E07BC();
        sub_1DD718FB0(v34, v35, v36);
        v37 = sub_1DD6E07BC();
        sub_1DD718FB0(v37, v38, v39);
        v40 = sub_1DD6E09C4();
        sub_1DD718FB0(v40, v41, v42);

        v43 = sub_1DD6E07BC();
        sub_1DD718FB0(v43, v44, v45);

        v46 = sub_1DD6E09C4();
        sub_1DD718FB0(v46, v47, v48);
        if ((v30 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        if (v10)
        {
LABEL_24:
          v70 = sub_1DD6E0C60();
          v72 = v71;
          v75 = sub_1DD6E699C(v70, v73, v74);
          v77 = sub_1DD6E699C(v75, v76, v72);
          sub_1DD718FB0(v77, v78, v72);
          v79 = sub_1DD6E0C60();
          sub_1DD718FB0(v79, v80, v81);
          break;
        }

        if (v6 == v9 && v5 == v8)
        {
          sub_1DD718FA4(v6, v5, 0);
          v61 = sub_1DD6DE464();
          sub_1DD718FA4(v61, v62, v63);
          v64 = sub_1DD6DE464();
          sub_1DD718FB0(v64, v65, v66);
          v67 = sub_1DD6DE464();
          sub_1DD718FB0(v67, v68, v69);
        }

        else
        {
          sub_1DD6E1BC4();
          v50 = sub_1DD875A30();
          v51 = sub_1DD6E0C60();
          sub_1DD718FA4(v51, v52, 0);
          v53 = sub_1DD6DE464();
          sub_1DD718FA4(v53, v54, v55);
          v56 = sub_1DD6DE464();
          sub_1DD718FB0(v56, v57, v58);
          v59 = sub_1DD6E0C60();
          sub_1DD718FB0(v59, v60, 0);
          if ((v50 & 1) == 0)
          {
            break;
          }
        }
      }

      v4 += 40;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  sub_1DD6E58C4();
}

uint64_t sub_1DD714590(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *i;
      v7 = *(v3 - 2);
      if (*i)
      {
        break;
      }

      if (*v3)
      {
LABEL_19:
        v64 = sub_1DD6E0C60();
        v67 = sub_1DD6E699C(v64, v65, v66);
        v69 = sub_1DD6E699C(v67, v68, v6);
        sub_1DD718FB0(v69, v70, v6);
        v71 = sub_1DD6E0C60();
        sub_1DD718FB0(v71, v72, v73);
        return 0;
      }

      if (v5 != v7 || *(i - 1) != *(v3 - 1))
      {
        sub_1DD6E1BC4();
        v26 = sub_1DD875A30();
        v46 = sub_1DD6E0C60();
        sub_1DD718FA4(v46, v47, 0);
        v48 = sub_1DD6DE464();
        sub_1DD718FA4(v48, v49, v50);
        v51 = sub_1DD6DE464();
        sub_1DD718FB0(v51, v52, v53);
        v42 = sub_1DD6E0C60();
        v44 = 0;
LABEL_14:
        sub_1DD718FB0(v42, v43, v44);
        if ((v26 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_17;
      }

      sub_1DD718FA4(*(i - 2), *(i - 1), 0);
      v54 = sub_1DD6DE464();
      sub_1DD718FA4(v54, v55, v56);
      v57 = sub_1DD6DE464();
      sub_1DD718FB0(v57, v58, v59);
      v60 = sub_1DD6DE464();
      sub_1DD718FB0(v60, v61, v62);
LABEL_17:
      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    if ((*v3 & 1) == 0)
    {
      goto LABEL_19;
    }

    v8 = sub_1DD6E07BC();
    sub_1DD718FA4(v8, v9, v10);
    v11 = sub_1DD6E09C4();
    sub_1DD718FA4(v11, v12, v13);
    v14 = sub_1DD6E07BC();
    sub_1DD718FA4(v14, v15, v16);
    v17 = sub_1DD6E09C4();
    sub_1DD718FA4(v17, v18, v19);
    v20 = sub_1DD6E07BC();
    sub_1DD718FA4(v20, v21, v22);
    v23 = sub_1DD6E09C4();
    sub_1DD718FA4(v23, v24, v25);
    v26 = sub_1DD714590(v5, v7);
    v27 = sub_1DD6E09C4();
    sub_1DD718FB0(v27, v28, v29);
    v30 = sub_1DD6E07BC();
    sub_1DD718FB0(v30, v31, v32);
    v33 = sub_1DD6E07BC();
    sub_1DD718FB0(v33, v34, v35);
    v36 = sub_1DD6E09C4();
    sub_1DD718FB0(v36, v37, v38);
    v39 = sub_1DD6E07BC();
    sub_1DD718FB0(v39, v40, v41);
    v42 = sub_1DD6E09C4();
    goto LABEL_14;
  }

  return 1;
}

uint64_t sub_1DD714734(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a1 == a2;
    if (a1 != a2)
    {
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      do
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v8 = *v4 >> 62;
        v10 = *(v5 - 1);
        v9 = *v5;
        v11 = *v5 >> 62;
        if (v3)
        {
          if (v7)
          {
            v12 = 0;
          }

          else
          {
            v12 = v6 == 0xC000000000000000;
          }

          v14 = 0;
          v13 = v12 && *v5 >> 62 == 3;
          if (v13 && !v10 && v9 == 0xC000000000000000)
          {
            goto LABEL_85;
          }
        }

        else
        {
          v14 = 0;
          switch(v8)
          {
            case 0uLL:
              v14 = BYTE6(v6);
              break;
            case 1uLL:
              if (__OFSUB__(HIDWORD(v7), v7))
              {
                goto LABEL_90;
              }

              v14 = HIDWORD(v7) - v7;
              break;
            case 2uLL:
              v16 = *(v7 + 16);
              v15 = *(v7 + 24);
              v17 = __OFSUB__(v15, v16);
              v14 = v15 - v16;
              if (!v17)
              {
                break;
              }

              goto LABEL_91;
            case 3uLL:
              break;
            default:
              goto LABEL_108;
          }
        }

        switch(v11)
        {
          case 1uLL:
            LODWORD(v18) = HIDWORD(v10) - v10;
            if (__OFSUB__(HIDWORD(v10), v10))
            {
              __break(1u);
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
            }

            v18 = v18;
LABEL_32:
            if (v14 != v18)
            {
              return 0;
            }

            if (v14 < 1)
            {
              goto LABEL_85;
            }

            break;
          case 2uLL:
            v20 = *(v10 + 16);
            v19 = *(v10 + 24);
            v17 = __OFSUB__(v19, v20);
            v18 = v19 - v20;
            if (!v17)
            {
              goto LABEL_32;
            }

            goto LABEL_89;
          case 3uLL:
            if (v14)
            {
              return 0;
            }

            goto LABEL_85;
          default:
            v18 = BYTE6(v9);
            goto LABEL_32;
        }

        v21 = v10 >> 32;
        switch(v8)
        {
          case 1:
            if (v7 >> 32 < v7)
            {
              goto LABEL_92;
            }

            v47 = sub_1DD6DEA04();
            sub_1DD710E74(v47, v48);
            v49 = sub_1DD6DEA04();
            sub_1DD710E74(v49, v50);
            v51 = sub_1DD6DEA04();
            sub_1DD710E74(v51, v52);
            v53 = sub_1DD6DEA04();
            sub_1DD710E74(v53, v54);
            v55 = sub_1DD6DDEDC();
            sub_1DD710E74(v55, v56);
            v39 = sub_1DD874640();
            if (!v39)
            {
              goto LABEL_59;
            }

            v57 = sub_1DD874660();
            if (__OFSUB__(v7, v57))
            {
              goto LABEL_95;
            }

            v39 += v7 - v57;
LABEL_59:
            sub_1DD874650();
            sub_1DD717A88(__s1, v39, v10, v9);
            v58 = sub_1DD6DEA04();
            sub_1DD6E6658(v58, v59);
            v60 = sub_1DD6DEA04();
            sub_1DD6E6658(v60, v61);
            v62 = sub_1DD6DDEDC();
            sub_1DD6E6658(v62, v63);
            v64 = __s1[0];
            v65 = sub_1DD6DEA04();
            sub_1DD6E6658(v65, v66);
            v67 = sub_1DD6DEA04();
            sub_1DD6E6658(v67, v68);
            if ((v64 & 1) == 0)
            {
              return 0;
            }

            break;
          case 2:
            v28 = *(v7 + 16);
            v97 = *(v7 + 24);
            v29 = sub_1DD6DEA04();
            sub_1DD710E74(v29, v30);
            v31 = sub_1DD6DEA04();
            sub_1DD710E74(v31, v32);
            v33 = sub_1DD6DEA04();
            sub_1DD710E74(v33, v34);
            v35 = sub_1DD6DEA04();
            sub_1DD710E74(v35, v36);
            v37 = sub_1DD6DDEDC();
            sub_1DD710E74(v37, v38);
            v39 = sub_1DD874640();
            if (!v39)
            {
              goto LABEL_44;
            }

            v40 = sub_1DD874660();
            if (__OFSUB__(v28, v40))
            {
              goto LABEL_94;
            }

            v39 += v28 - v40;
LABEL_44:
            if (!__OFSUB__(v97, v28))
            {
              goto LABEL_59;
            }

            goto LABEL_93;
          case 3:
            memset(__s1, 0, 14);
            if (v11 == 2)
            {
              v69 = *(v10 + 16);
              v100 = *(v10 + 24);
              v70 = sub_1DD6DEA04();
              sub_1DD710E74(v70, v71);
              v72 = sub_1DD6DDEDC();
              sub_1DD710E74(v72, v73);
              v74 = sub_1DD874640();
              if (v74)
              {
                v75 = sub_1DD874660();
                if (__OFSUB__(v69, v75))
                {
                  goto LABEL_100;
                }

                v74 += v69 - v75;
              }

              v17 = __OFSUB__(v100, v69);
              v76 = &v100[-v69];
              if (v17)
              {
                goto LABEL_99;
              }

              v77 = sub_1DD874650();
              if (!v74)
              {
                goto LABEL_107;
              }

LABEL_72:
              if (v77 >= v76)
              {
                v84 = v76;
              }

              else
              {
                v84 = v77;
              }

              v85 = v74;
LABEL_84:
              v87 = memcmp(__s1, v85, v84);
              v88 = sub_1DD6DDEDC();
              sub_1DD6E6658(v88, v89);
              v90 = sub_1DD6DEA04();
              sub_1DD6E6658(v90, v91);
              if (v87)
              {
                return 0;
              }

              break;
            }

            if (v11 == 1)
            {
              if (v21 < v10)
              {
                goto LABEL_96;
              }

              v41 = sub_1DD6DEA04();
              sub_1DD710E74(v41, v42);
              v43 = sub_1DD6DDEDC();
              sub_1DD710E74(v43, v44);
              v45 = sub_1DD874640();
              if (v45)
              {
                v98 = v45;
                v46 = sub_1DD874660();
                if (__OFSUB__(v10, v46))
                {
                  goto LABEL_103;
                }

                v99 = &v98[v10 - v46];
              }

              else
              {
                v99 = 0;
              }

              v86 = sub_1DD874650();
              v85 = v99;
              if (!v99)
              {
                goto LABEL_105;
              }

LABEL_81:
              if (v86 >= v21 - v10)
              {
                v84 = v21 - v10;
              }

              else
              {
                v84 = v86;
              }

              goto LABEL_84;
            }

LABEL_57:
            __s2 = v10;
            v103 = v9;
            v104 = BYTE2(v9);
            v105 = BYTE3(v9);
            v106 = BYTE4(v9);
            v107 = BYTE5(v9);
            if (memcmp(__s1, &__s2, BYTE6(v9)))
            {
              return 0;
            }

            break;
          default:
            LOWORD(__s1[0]) = *(v4 - 1);
            BYTE2(__s1[0]) = BYTE2(v7);
            BYTE3(__s1[0]) = BYTE3(v7);
            BYTE4(__s1[0]) = BYTE4(v7);
            BYTE5(__s1[0]) = BYTE5(v7);
            BYTE6(__s1[0]) = BYTE6(v7);
            HIBYTE(__s1[0]) = HIBYTE(v7);
            LOWORD(__s1[1]) = v6;
            BYTE2(__s1[1]) = BYTE2(v6);
            BYTE3(__s1[1]) = BYTE3(v6);
            BYTE4(__s1[1]) = BYTE4(v6);
            BYTE5(__s1[1]) = BYTE5(v6);
            if (!v11)
            {
              goto LABEL_57;
            }

            if (v11 == 1)
            {
              if (v21 < v10)
              {
                goto LABEL_97;
              }

              v22 = sub_1DD6DEA04();
              sub_1DD710E74(v22, v23);
              v24 = sub_1DD6DDEDC();
              sub_1DD710E74(v24, v25);
              v26 = sub_1DD874640();
              if (v26)
              {
                v95 = v26;
                v27 = sub_1DD874660();
                if (__OFSUB__(v10, v27))
                {
                  goto LABEL_102;
                }

                v96 = &v95[v10 - v27];
              }

              else
              {
                v96 = 0;
              }

              v86 = sub_1DD874650();
              v85 = v96;
              if (!v96)
              {
                goto LABEL_106;
              }

              goto LABEL_81;
            }

            v78 = *(v10 + 16);
            v101 = *(v10 + 24);
            v79 = sub_1DD6DEA04();
            sub_1DD710E74(v79, v80);
            v81 = sub_1DD6DDEDC();
            sub_1DD710E74(v81, v82);
            v74 = sub_1DD874640();
            if (v74)
            {
              v83 = sub_1DD874660();
              if (__OFSUB__(v78, v83))
              {
                goto LABEL_101;
              }

              v74 += v78 - v83;
            }

            v17 = __OFSUB__(v101, v78);
            v76 = &v101[-v78];
            if (v17)
            {
              goto LABEL_98;
            }

            v77 = sub_1DD874650();
            if (!v74)
            {
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
              v93 = sub_1DD6DEA04();
              sub_1DD6E6658(v93, v94);

              __break(1u);
LABEL_108:
              JUMPOUT(0);
            }

            goto LABEL_72;
        }

LABEL_85:
        v4 += 2;
        v5 += 2;
        v3 = --v2 == 0;
      }

      while (v2);
    }
  }

  return 1;
}

void sub_1DD714FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DEB38();
  a19 = v23;
  a20 = v24;
  v25 = sub_1DD6DF08C();
  type metadata accessor for ClientAction.Definition.ParameterDefinition(v25);
  sub_1DD6E046C();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DDEC0();
  sub_1DD6ED108();
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&a9 - v28);
  v30 = *(v21 + 16);
  if (v30 == *(v22 + 16) && v30 && v21 != v22)
  {
    sub_1DD6DE1EC();
    v32 = v21 + v31;
    v33 = v22 + v31;
    v35 = *(v34 + 72);
    while (1)
    {
      sub_1DD6E0C60();
      sub_1DD7191C0();
      sub_1DD6F4498();
      sub_1DD7191C0();
      v36 = *v29 == *v20 && v29[1] == v20[1];
      if (!v36 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      v37 = v29[2] == v20[2] && v29[3] == v20[3];
      if (!v37 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      v38 = sub_1DD874FB0();
      sub_1DD719218(v20, type metadata accessor for ClientAction.Definition.ParameterDefinition);
      sub_1DD719218(v29, type metadata accessor for ClientAction.Definition.ParameterDefinition);
      if (v38)
      {
        v33 += v35;
        v32 += v35;
        if (--v30)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    sub_1DD719218(v20, type metadata accessor for ClientAction.Definition.ParameterDefinition);
    v39 = sub_1DD6ED118();
    sub_1DD719218(v39, v40);
  }

LABEL_20:
  sub_1DD6DFED0();
}

void sub_1DD715190()
{
  sub_1DD6FF8A8();
  sub_1DD6E3808();
  if (v14 && v0 && v1 != v2)
  {
    v3 = 0;
    v19 = v1 + 32;
    v4 = v2 + 32;
    while (v3 != v0)
    {
      v5 = (v19 + 24 * v3);
      v6 = *v5;
      v7 = (v4 + 24 * v3);
      v8 = *v7;
      v9 = *(*v5 + 16);
      if (v9 != *(*v7 + 16))
      {
        goto LABEL_30;
      }

      v10 = v5[1];
      v11 = v5[2];
      v13 = v7[1];
      v12 = v7[2];
      if (v9)
      {
        v14 = v6 == v8;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v15 = (v6 + 40);
        v16 = (v8 + 40);
        while (v9)
        {
          v17 = *(v15 - 1) == *(v16 - 1) && *v15 == *v16;
          if (!v17 && (sub_1DD875A30() & 1) == 0)
          {
            goto LABEL_30;
          }

          v15 += 2;
          v16 += 2;
          if (!--v9)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        break;
      }

LABEL_20:
      if (v11)
      {
        if (!v12)
        {
          goto LABEL_30;
        }

        v18 = v10 == v13 && v11 == v12;
        if (!v18 && (sub_1DD6FF778(v10, v11, v13) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if (v12)
      {
        goto LABEL_30;
      }

      if (++v3 == v0)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_30:
    sub_1DD6E58C4();
  }
}

void sub_1DD7152B8()
{
  sub_1DD6E8860();
  if (v5 && v0 && v1 != v2)
  {
    v3 = (v1 + 40);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
      if (!v5 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      v4 += 2;
      --v0;
    }

    while (v0);
  }
}

void sub_1DD715384()
{
  sub_1DD6DEB38();
  v5 = sub_1DD6DF08C();
  v6 = type metadata accessor for PlannerPromptData.OnScreenContextValue(v5);
  sub_1DD6E046C();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDEC0();
  sub_1DD6ED108();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6F1758();
  if (v16 && v4 && v2 != v3)
  {
    sub_1DD6DE1EC();
    v10 = v2 + v9;
    v11 = v3 + v9;
    v13 = *(v12 + 72);
    while (1)
    {
      sub_1DD6E0C60();
      sub_1DD7191C0();
      if (!v4)
      {
        break;
      }

      sub_1DD6F4498();
      sub_1DD7191C0();
      if ((_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        sub_1DD719218(v0, type metadata accessor for PlannerPromptData.OnScreenContextValue);
        v17 = sub_1DD6ED118();
        sub_1DD719218(v17, v18);
        goto LABEL_16;
      }

      v14 = *(v1 + *(v6 + 20));
      sub_1DD719218(v1, type metadata accessor for PlannerPromptData.OnScreenContextValue);
      v15 = *(v0 + *(v6 + 20));
      sub_1DD719218(v0, type metadata accessor for PlannerPromptData.OnScreenContextValue);
      v16 = v14 != v15 || v4-- == 1;
      v11 += v13;
      v10 += v13;
      if (v16)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    sub_1DD6DFED0();
  }
}

void sub_1DD71557C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 80);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v3 - 4);
      v5 = *(v3 - 3);
      v7 = *(v3 - 2);
      v8 = *v3;
      v9 = v4[1];
      v10 = v4[2];
      v11 = v4[3];
      v53 = v4[4];
      v54 = *(v3 - 1);
      v12 = *(v3 - 6) == *(v4 - 1) && *(v3 - 5) == *v4;
      v55 = v4[5];
      v56 = *(v3 - 3);
      if (!v12)
      {
        v13 = sub_1DD875A30();
        v5 = v56;
        if ((v13 & 1) == 0)
        {
          break;
        }
      }

      v14 = v6 == v9 && v5 == v10;
      if (!v14 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      v15 = v7;
      sub_1DD718F34(v7);

      sub_1DD718F34(v11);
      v16 = v55;

      if ((static TypeDefinition.== infix(_:_:)(v15, v11) & 1) == 0)
      {
        goto LABEL_29;
      }

      if (v8)
      {
        if (!v55)
        {
LABEL_29:

          sub_1DD6EE70C(v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);

          sub_1DD718F6C(v15);

          break;
        }

        if (v54 == v53 && v8 == v55)
        {

          sub_1DD6EE70C(v36, v37, v38, v39, v40, v41, v42, v43, v52, v53, v54, v55, v56);

          sub_1DD718F6C(v15);
        }

        else
        {
          v18 = v15;
          v19 = sub_1DD875A30();

          sub_1DD6EE70C(v20, v21, v22, v23, v24, v25, v26, v27, v52, v53, v54, v55, v56);

          sub_1DD718F6C(v18);

          if ((v19 & 1) == 0)
          {
            break;
          }
        }
      }

      else
      {

        sub_1DD6EE70C(v28, v29, v30, v31, v32, v33, v34, v35, v52, v53, v54, v55, v56);

        sub_1DD718F6C(v15);

        if (v16)
        {
          break;
        }
      }

      v3 += 7;
      v4 += 7;
      --v2;
    }

    while (v2);
  }

  sub_1DD6F37CC();
}

uint64_t sub_1DD7157E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 56)
    {
      v4 = *(a1 + i + 32);
      v5 = *(a1 + i + 40);
      v7 = *(a1 + i + 48);
      v6 = *(a1 + i + 56);
      v8 = *(a1 + i + 72);
      v9 = *(a2 + i + 32);
      v11 = *(a2 + i + 48);
      v10 = *(a2 + i + 56);
      v12 = *(a2 + i + 64);
      v13 = *(a2 + i + 72);
      v25 = *(a1 + i + 64);
      v14 = v4 == v9 && v5 == *(a2 + i + 40);
      v26 = *(a2 + i + 56);
      if (!v14)
      {
        v15 = sub_1DD6FF778(v4, v5, v9);
        v10 = v26;
        if ((v15 & 1) == 0)
        {
          break;
        }
      }

      v16 = v7 == v11 && v6 == v10;
      if (!v16 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      v17 = v25 == v12 && v8 == v13;
      if (!v17 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      v18 = sub_1DD6FAA88();
      sub_1DD71557C(v18, v19);
      v21 = v20;

      if ((v21 & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1DD715A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DEB38();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30(0) - 8;
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6DDEC0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  v35 = *(v29 + 16);
  if (v35 == *(v27 + 16) && v35 && v29 != v27)
  {
    sub_1DD6DE1EC();
    v37 = v29 + v36;
    v38 = v27 + v36;
    v40 = *(v39 + 72);
    do
    {
      sub_1DD6DDEDC();
      sub_1DD7191C0();
      sub_1DD7191C0();
      v41 = sub_1DD6E0F70();
      v42 = v25(v41);
      v43 = sub_1DD6DEA04();
      sub_1DD719218(v43, v44);
      sub_1DD719218(v34, v23);
      if ((v42 & 1) == 0)
      {
        break;
      }

      v38 += v40;
      v37 += v40;
      sub_1DD6E6314();
    }

    while (!v45);
  }

  sub_1DD6DFED0();
}

void sub_1DD715B8C()
{
  sub_1DD6E8860();
  if (v6 && v0 && v1 != v2)
  {
    v3 = (v1 + 48);
    for (i = (v2 + 48); *(v3 - 4) == *(i - 4); i += 3)
    {
      v5 = *i;
      if (*v3)
      {
        if (!v5)
        {
          return;
        }

        v6 = *(v3 - 1) == *(i - 1) && *v3 == v5;
        if (!v6 && (sub_1DD875A30() & 1) == 0)
        {
          return;
        }
      }

      else if (v5)
      {
        return;
      }

      v3 += 3;
      if (!--v0)
      {
        return;
      }
    }
  }
}

void sub_1DD715C80()
{
  sub_1DD6DEB38();
  v35 = v0;
  v36 = v1;
  v34 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  sub_1DD6DDEAC();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v18 = *(v6 + 16);
  if (v18 == *(v4 + 16) && v18 && v6 != v4)
  {
    v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v20 = v6 + v19;
    v21 = v4 + v19;
    v23 = *(v10 + 16);
    v22 = v10 + 16;
    v24 = (v22 - 8);
    v32 = *(v22 + 56);
    v33 = v23;
    while (1)
    {
      v25 = v33;
      (v33)(v17, v20, v8, v15);
      if (!v18)
      {
        break;
      }

      v26 = v22;
      v25(v13, v21, v8);
      sub_1DD7190C8(v34, v35, v36);
      sub_1DD6DDEDC();
      v27 = sub_1DD8750F0();
      v28 = *v24;
      v29 = sub_1DD6F4498();
      v28(v29);
      (v28)(v17, v8);
      if (v27)
      {
        v21 += v32;
        v20 += v32;
        v30 = v18-- == 1;
        v22 = v26;
        if (!v30)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_1DD6DFED0();
  }
}

void sub_1DD715EA8()
{
  sub_1DD6DEB38();
  sub_1DD6E3808();
  if (v11 && v0 && v1 != v2)
  {
    v3 = (v2 + 64);
    v4 = (v1 + 64);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v3 - 4);
      v10 = *(v3 - 1);
      v9 = *v3;
      v11 = *(v4 - 4) == *(v3 - 4) && *(v4 - 3) == *(v3 - 3);
      if (v11)
      {
        if (v5 != v8)
        {
          break;
        }
      }

      else if ((sub_1DD875A30() & 1) == 0 || v5 != v8)
      {
        break;
      }

      if (v7)
      {
        if (!v9)
        {
          break;
        }

        if (v6 != v10 || v7 != v9)
        {
          sub_1DD6DDEFC();
          sub_1DD6E1BC4();
          if ((sub_1DD875A30() & 1) == 0)
          {
            break;
          }
        }
      }

      else if (v9)
      {
        break;
      }

      v4 += 5;
      v3 += 5;
      --v0;
    }

    while (v0);
  }

  sub_1DD6DFED0();
}

void sub_1DD715F90()
{
  sub_1DD6FF8A8();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = v0 + 64;
    v4 = v1 + 64;
    do
    {
      v5 = *(v3 - 32);
      v6 = *(v3 - 24);
      v8 = *(v3 - 16);
      v7 = *(v3 - 8);
      v9 = *(v4 - 32);
      v11 = *(v4 - 16);
      v10 = *(v4 - 8);
      v12 = v5 == v9 && v6 == *(v4 - 24);
      if (!v12 && (sub_1DD6FF778(v5, v6, v9) & 1) == 0)
      {
        break;
      }

      v13 = v8 == v11 && v7 == v10;
      if (!v13 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      sub_1DD71435C();
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        break;
      }

      v3 += 40;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  sub_1DD6E58C4();
}

void sub_1DD71612C()
{
  sub_1DD6E3808();
  if (v9 && v0 && v1 != v2)
  {
    v3 = (v1 + 56);
    v4 = (v2 + 56);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = *(v3 - 3) == *(v4 - 3) && *(v3 - 2) == *(v4 - 2);
      if (!v9 && (sub_1DD875A30() & 1) == 0)
      {
        break;
      }

      if (v5 != v7 || v6 != v8)
      {
        sub_1DD6DDEFC();
        if ((sub_1DD875A30() & 1) == 0)
        {
          break;
        }
      }

      v3 += 4;
      v4 += 4;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_1DD7161EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 80)
    {
      memcpy(__dst, v3, 0x49uLL);
      memcpy(v9, v3, 0x49uLL);
      memcpy(v11, i, 0x49uLL);
      memcpy(__src, i, 0x49uLL);
      sub_1DD719018(__dst, v7);
      sub_1DD719018(v11, v7);
      v5 = static ResponseParameter.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, 0x49uLL);
      sub_1DD719074(v12);
      memcpy(v13, v9, 0x49uLL);
      sub_1DD719074(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 80;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1DD7162FC()
{
  sub_1DD6DEB38();
  v1 = v0;
  v3 = v2;
  v115 = type metadata accessor for AttributedValue(0);
  sub_1DD6E046C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEC0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v105 - v9;
  v11 = *(v3 + 16);
  if (v11 == *(v1 + 16) && v11 && v3 != v1)
  {
    sub_1DD6DE1EC();
    v13 = v3 + v12;
    v14 = v1 + v12;
    v108 = *(v15 + 72);
    v111 = v7;
    v112 = v10;
    while (1)
    {
      sub_1DD7191C0();
      sub_1DD7191C0();
      sub_1DD7029A8();
      if ((_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
LABEL_37:
        sub_1DD719218(v7, type metadata accessor for AttributedValue);
        v103 = sub_1DD6DEA04();
        sub_1DD719218(v103, v104);
        goto LABEL_38;
      }

      v16 = *(v115 + 20);
      v17 = &v10[v16];
      v19 = *&v10[v16];
      v18 = *(v17 + 1);
      v20 = *(v17 + 2);
      v21 = *(v17 + 3);
      v22 = v17[32];
      v23 = v7 + v16;
      v25 = *v23;
      v24 = *(v23 + 8);
      v26 = *(v23 + 16);
      v116 = *(v23 + 24);
      v27 = *(v23 + 32);
      if (v20 != 1)
      {
        break;
      }

      v114 = v11;
      v107 = v14;
      v28 = v26;
      sub_1DD703958(v19, v18, 1);
      if (v28 != 1)
      {
        v83 = v25;
        v84 = sub_1DD6E9594();
        v105 = v85;
        sub_1DD703958(v84, v86, v85);
        v79 = 1;
        v78 = v83;
        v80 = v105;
        goto LABEL_33;
      }

      v29 = sub_1DD6E9594();
      sub_1DD703958(v29, v30, v31);
      v32 = sub_1DD6FAA88();
      sub_1DD70148C(v32, v33, 1);
      sub_1DD6E5D58();
      v7 = v111;
      sub_1DD719218(v111, v34);
      v10 = v112;
      v35 = sub_1DD6DEA04();
      sub_1DD719218(v35, v36);
      v14 = v107;
      v11 = v114;
LABEL_27:
      v14 += v108;
      v13 += v108;
      if (!--v11)
      {
        goto LABEL_38;
      }
    }

    if (v26 == 1)
    {
      v78 = v25;
      v79 = v20;
      sub_1DD703958(v19, v18, v20);
      v80 = 1;
      sub_1DD703958(v78, v24, 1);
      v81 = sub_1DD6FAA88();
      sub_1DD703958(v81, v82, v79);

LABEL_33:
      v87 = sub_1DD6FAA88();
      sub_1DD70148C(v87, v88, v79);
      v89 = v78;
      v90 = v24;
      v91 = v80;
      goto LABEL_36;
    }

    if (v19 != v25)
    {
      goto LABEL_34;
    }

    v113 = v21;
    v109 = v18;
    v110 = v19;
    v106 = v25;
    if (v20)
    {
      if (!v26)
      {
LABEL_34:
        v92 = v20;
        goto LABEL_35;
      }

      LODWORD(v114) = v27;
      v37 = v18 == v24 && v20 == v26;
      v38 = v20;
      if (!v37)
      {
        v105 = v26;
        v39 = v22;
        LODWORD(v107) = sub_1DD875A30();
        sub_1DD700D18();
        sub_1DD703958(v40, v41, v42);
        sub_1DD6E9594();
        sub_1DD6FF964();
        LOBYTE(v27) = v114;
        sub_1DD703958(v43, v44, v45);
        sub_1DD700D18();
        v46 = v25;
        sub_1DD703958(v47, v48, v49);
        sub_1DD70148C(v106, v24, v105);
        v50 = v107 & v39 & v27;
        if ((v107 & 1) == 0)
        {
          v7 = v111;
          goto LABEL_26;
        }

        v7 = v111;
        if (v39)
        {
LABEL_26:

          sub_1DD70148C(v110, v109, v38);
          sub_1DD6E5D58();
          sub_1DD719218(v7, v75);
          v10 = v112;
          v76 = sub_1DD6DEA04();
          sub_1DD719218(v76, v77);
          if ((v50 & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_27;
        }

LABEL_24:
        if ((v27 & 1) == 0)
        {
          v50 = v113 == v46;
        }

        goto LABEL_26;
      }

      v64 = v18;
      sub_1DD700D18();
      v57 = v65;
      sub_1DD703958(v66, v67, v68);
      sub_1DD6E0F70();
      sub_1DD6FF964();
      LOBYTE(v27) = v114;
      sub_1DD703958(v69, v70, v71);
      sub_1DD700D18();
      v46 = v25;
      sub_1DD703958(v72, v73, v74);
      v61 = v106;
      v62 = v64;
      v63 = v38;
    }

    else
    {
      if (v26)
      {
        v92 = 0;
LABEL_35:
        v115 = v20;
        v93 = v19;
        v94 = v19;
        v95 = v18;
        sub_1DD703958(v94, v18, v92);
        sub_1DD6E9594();
        sub_1DD6FF964();
        sub_1DD703958(v96, v97, v98);
        sub_1DD703958(v93, v95, v92);
        sub_1DD6FAD88();
        sub_1DD70148C(v99, v100, v101);
        v102 = v115;

        v89 = v93;
        v90 = v95;
        v91 = v102;
LABEL_36:
        sub_1DD70148C(v89, v90, v91);
        v7 = v111;
        goto LABEL_37;
      }

      v114 = v11;
      v51 = v14;
      v52 = v13;
      v53 = v24;
      v54 = v19;
      v55 = v19;
      v38 = 0;
      v56 = v18;
      v57 = v22;
      sub_1DD703958(v55, v18, 0);
      sub_1DD6FF964();
      sub_1DD703958(v58, v59, v60);
      v46 = v25;
      sub_1DD703958(v54, v56, 0);
      v61 = v106;
      v62 = v53;
      v13 = v52;
      v14 = v51;
      v11 = v114;
      v63 = 0;
    }

    sub_1DD70148C(v61, v62, v63);
    v50 = v57 & v27;
    v7 = v111;
    if (v57)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_38:
  sub_1DD6DFED0();
}

void sub_1DD716910()
{
  sub_1DD6E8860();
  if (v3 && v0 && v1 != v2)
  {
    v4 = v1 + 32;
    v5 = v2 + 32;
    do
    {
      v4 += 8;
      v5 += 8;
      sub_1DD71698C();
      if ((v6 & 1) == 0)
      {
        break;
      }

      --v0;
    }

    while (v0);
  }
}

void sub_1DD71698C()
{
  sub_1DD6E8860();
  if (v8 && v0 && v1 != v2)
  {
    v3 = 0;
    v25 = v1 + 32;
    v4 = v2 + 32;
    while (v3 != v0)
    {
      v5 = *(v25 + 8 * v3);
      v6 = *(v4 + 8 * v3);
      v7 = *(v5 + 16);
      if (v7 != *(v6 + 16))
      {
        return;
      }

      if (v7)
      {
        v8 = v5 == v6;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v9 = 0;
        while (v7)
        {
          v10 = *(v5 + v9 + 48);
          v12 = *(v5 + v9 + 56);
          v11 = *(v5 + v9 + 64);
          v13 = *(v5 + v9 + 72);
          v14 = *(v6 + v9 + 48);
          v16 = *(v6 + v9 + 56);
          v15 = *(v6 + v9 + 64);
          v17 = *(v6 + v9 + 72);
          if (*(v5 + v9 + 32) == *(v6 + v9 + 32) && *(v5 + v9 + 40) == *(v6 + v9 + 40))
          {
            if (v10 != v14 || v12 != v16 || v11 != v15 || v13 != v17)
            {
              return;
            }
          }

          else
          {
            if ((sub_1DD875A30() & 1) == 0)
            {
              return;
            }

            v19 = v10 == v14 && v12 == v16;
            v20 = v19 && v11 == v15;
            if (!v20 || v13 != v17)
            {
              return;
            }
          }

          v9 += 48;
          if (!--v7)
          {
            goto LABEL_42;
          }
        }

        __break(1u);
        break;
      }

LABEL_42:
      if (++v3 == v0)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1DD716AF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (v4)
    {
      sub_1DD6E1F34();
      if (v5 != v6)
      {
        v7 = 0;
        do
        {
          v8 = *(v3 + v7 + 48);
          v10 = *(v3 + v7 + 56);
          v9 = *(v3 + v7 + 64);
          v11 = *(v3 + v7 + 72);
          v12 = *(v2 + v7 + 48);
          v14 = *(v2 + v7 + 56);
          v13 = *(v2 + v7 + 64);
          v15 = *(v2 + v7 + 72);
          if (*(v3 + v7 + 32) == *(v2 + v7 + 32) && *(v3 + v7 + 40) == *(v2 + v7 + 40))
          {
            if (v8 != v12 || v10 != v14 || v9 != v13 || v11 != v15)
            {
              return;
            }
          }

          else
          {
            if ((sub_1DD875A30() & 1) == 0)
            {
              return;
            }

            v17 = v8 == v12 && v10 == v14;
            v18 = v17 && v9 == v13;
            if (!v18 || v11 != v15)
            {
              return;
            }
          }

          v7 += 48;
          --v4;
        }

        while (v4);
      }
    }
  }
}

void sub_1DD716BF4()
{
  sub_1DD6FF8A8();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16))
  {
    if (v2)
    {
      v3 = v1;
      v4 = v0;
      if (v0 != v1)
      {
        sub_1DD718FBC();
        v5 = (v4 + 40);
        v6 = (v3 + 40);
        do
        {
          v7 = *(v5 - 1);
          v8 = *(v6 - 1);
          v9 = *v6;
          if (*v5)
          {
            sub_1DD719000(v7);
            sub_1DD719000(v8);
            sub_1DD719000(v7);
            v10 = v7;
          }

          else
          {
            sub_1DD719000(v8);
            sub_1DD719000(v7);
            v10 = sub_1DD874670();
          }

          sub_1DD719000(v8);
          if (v9)
          {
            v11 = v8;
          }

          else
          {
            v11 = sub_1DD874670();
            sub_1DD71900C(v8);
          }

          v12 = sub_1DD8755A0();

          sub_1DD71900C(v8);
          sub_1DD71900C(v7);
          if ((v12 & 1) == 0)
          {
            break;
          }

          v5 += 16;
          v6 += 16;
          sub_1DD6E6314();
        }

        while (!v13);
      }
    }
  }

  sub_1DD6E58C4();
}

void sub_1DD716D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagePayload.ExternalAgentOutcome(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16) && v11 && a1 != a2)
  {
    v12 = 0;
    v22[1] = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    while (1)
    {
      sub_1DD7191C0();
      if (v12 == v11)
      {
        break;
      }

      sub_1DD7191C0();
      static StatementOutcome.== infix(_:_:)();
      if ((v13 & 1) == 0 || (v14 = *(v4 + 20), v15 = *&v10[v14], v16 = *&v6[v14], v17 = *(v15 + 16), v17 != *(v16 + 16)))
      {
LABEL_23:
        sub_1DD719218(v6, type metadata accessor for MessagePayload.ExternalAgentOutcome);
        sub_1DD719218(v10, type metadata accessor for MessagePayload.ExternalAgentOutcome);
        return;
      }

      if (v17)
      {
        v18 = v15 == v16;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        v19 = (v15 + 40);
        v20 = (v16 + 40);
        while (v17)
        {
          v21 = *(v19 - 1) == *(v20 - 1) && *v19 == *v20;
          if (!v21 && (sub_1DD875A30() & 1) == 0)
          {
            goto LABEL_23;
          }

          v19 += 2;
          v20 += 2;
          if (!--v17)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        break;
      }

LABEL_20:
      ++v12;
      sub_1DD719218(v6, type metadata accessor for MessagePayload.ExternalAgentOutcome);
      sub_1DD719218(v10, type metadata accessor for MessagePayload.ExternalAgentOutcome);
      if (v12 == v11)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1DD71705C()
{
  sub_1DD6DEB38();
  v3 = sub_1DD6F09D0();
  type metadata accessor for ResponseGenerationOverrides_Rule(v3);
  sub_1DD6E046C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEC0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6EED34();
  if (v9 && v2 && v1 != v0)
  {
    sub_1DD6DE1EC();
    v11 = v1 + v10;
    v12 = v0 + v10;
    v14 = *(v13 + 72);
    while (1)
    {
      sub_1DD6E0F70();
      sub_1DD7191C0();
      sub_1DD7191C0();
      sub_1DD713F30();
      if ((v15 & 1) == 0)
      {
        break;
      }

      sub_1DD713F30();
      if ((v16 & 1) == 0)
      {
        break;
      }

      sub_1DD713F30();
      if ((v17 & 1) == 0)
      {
        break;
      }

      sub_1DD713F30();
      if ((v18 & 1) == 0)
      {
        break;
      }

      sub_1DD874910();
      sub_1DD6E1274();
      v20 = sub_1DD7190C8(&qword_1ECD0E2C8, v19, MEMORY[0x1E69AAC10]);
      v21 = sub_1DD7192BC(v20);
      sub_1DD719218(v7, type metadata accessor for ResponseGenerationOverrides_Rule);
      v22 = sub_1DD6FAA88();
      sub_1DD719218(v22, v23);
      if (v21)
      {
        v12 += v14;
        v11 += v14;
        sub_1DD6E6314();
        if (!v9)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    sub_1DD719218(v7, type metadata accessor for ResponseGenerationOverrides_Rule);
    v24 = sub_1DD6DEA04();
    sub_1DD719218(v24, v25);
  }

LABEL_16:
  sub_1DD6FE01C();
  sub_1DD6DFED0();
}

uint64_t sub_1DD7172B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E69467369 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001DD8B47C0 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD7173D4(unsigned __int8 a1)
{
  sub_1DD875B20();
  MEMORY[0x1E12B5570](a1);
  return sub_1DD875B60();
}

uint64_t sub_1DD71741C(char a1)
{
  if (!a1)
  {
    return 0x6C616E69467369;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x656D6F6374756FLL;
}

uint64_t sub_1DD717478(uint64_t a1)
{
  v2 = *v1;
  sub_1DD875B20();
  MEMORY[0x1E12B5570](v2);
  return sub_1DD875B60();
}

uint64_t sub_1DD7174C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7172B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7174EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD7173CC();
  *a1 = result;
  return result;
}

uint64_t sub_1DD717514(uint64_t a1)
{
  v2 = sub_1DD717DE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD717550(uint64_t a1)
{
  v2 = sub_1DD717DE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriXResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  v26 = v25;
  sub_1DD710A9C(&qword_1ECD0E180, &qword_1DD876ED8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  v28 = *(v23 + 24);
  sub_1DD6DF224(v26, v26[3]);
  sub_1DD717DE0();
  sub_1DD875BB0();
  sub_1DD875980();
  if (!v24)
  {
    sub_1DD6E5EF8();
    sub_1DD711154(v29, v30, v28, v31);
    sub_1DD717E34();
    sub_1DD8759D0();
    sub_1DD6DE1D4();
    sub_1DD711154(v32, v33, v34, v35);
    sub_1DD710A9C(&qword_1ECD0E198, &qword_1DD876EE0);
    sub_1DD717F24(&qword_1ECD0E1A0, &qword_1EE0180C8, &protocol conformance descriptor for MessagePayload.ExternalAgentOutcome, MEMORY[0x1E69E6300]);
    sub_1DD8759D0();
  }

  v36 = sub_1DD6DEA04();
  v37(v36);
  sub_1DD6E0C78();
}

void SiriXResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1DD6DED2C();
  v26 = v25;
  v28 = v27;
  v29 = sub_1DD710A9C(&qword_1ECD0E1A8, &qword_1DD876EE8);
  sub_1DD6DDEAC();
  v31 = v30;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v41 - v33;
  sub_1DD6DF224(v26, v26[3]);
  sub_1DD717DE0();
  sub_1DD875B90();
  if (v24)
  {
    sub_1DD6E1EC8(v26);
  }

  else
  {
    LOBYTE(v42) = 0;
    v35 = sub_1DD875880();
    sub_1DD717ED0();
    sub_1DD8758D0();
    v36 = v42;
    v41 = v43;
    v45 = v44;
    sub_1DD710A9C(&qword_1ECD0E198, &qword_1DD876EE0);
    sub_1DD717F24(&qword_1ECD0E1B8, &qword_1EE0180C0, &protocol conformance descriptor for MessagePayload.ExternalAgentOutcome, MEMORY[0x1E69E6330]);
    sub_1DD8758D0();
    (*(v31 + 8))(v34, v29);
    v38 = v41;
    v37 = v42;
    *v28 = v35 & 1;
    *(v28 + 8) = v36;
    *(v28 + 16) = v38;
    *(v28 + 24) = v45;
    *(v28 + 32) = v37;
    sub_1DD6E5EF8();
    sub_1DD711154(v36, v38, v45, v39);

    sub_1DD6E1EC8(v26);
    sub_1DD6DE1D4();
    sub_1DD711154(v36, v38, v45, v40);
  }

  sub_1DD6E0C78();
}

void sub_1DD717A88(uint64_t *__return_ptr a1@<X8>, char *__s1@<X0>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v17 = *MEMORY[0x1E69E9840];
  switch(a5 >> 62)
  {
    case 1uLL:
      v10 = a4 >> 32;
      if (a4 >> 32 < a4)
      {
        __break(1u);
      }

      v9 = a4;
      goto LABEL_9;
    case 2uLL:
      v9 = *(a4 + 16);
      v10 = *(a4 + 24);
LABEL_9:
      v8 = sub_1DD717BF4(v9, v10, a5 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v8 = 1;
LABEL_10:
        *a1 = v8 & 1;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a4;
      v12 = a5;
      v13 = BYTE2(a5);
      v14 = BYTE3(a5);
      v15 = BYTE4(a5);
      v16 = BYTE5(a5);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v8 = memcmp(__s1, &__s2, BYTE6(a5)) == 0;
      goto LABEL_10;
  }
}

char *sub_1DD717BF4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1DD874640();
  v8 = result;
  if (result)
  {
    result = sub_1DD874660();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1DD874650();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

void sub_1DD717CAC(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
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

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1DD6E0D14();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1DD717CE4()
{
  result = qword_1ECD0E160;
  if (!qword_1ECD0E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E160);
  }

  return result;
}

unint64_t sub_1DD717D38()
{
  result = qword_1ECD0F4C0;
  if (!qword_1ECD0F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F4C0);
  }

  return result;
}

unint64_t sub_1DD717D8C()
{
  result = qword_1ECD0E170;
  if (!qword_1ECD0E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E170);
  }

  return result;
}

unint64_t sub_1DD717DE0()
{
  result = qword_1ECD0E188;
  if (!qword_1ECD0E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E188);
  }

  return result;
}

unint64_t sub_1DD717E34()
{
  result = qword_1ECD0E190;
  if (!qword_1ECD0E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E190);
  }

  return result;
}

uint64_t sub_1DD717E88(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1DD717ED0()
{
  result = qword_1ECD0E1B0;
  if (!qword_1ECD0E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1B0);
  }

  return result;
}

uint64_t sub_1DD717F24(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DD717E88(&qword_1ECD0E198, &qword_1DD876EE0);
    sub_1DD7190C8(a2, type metadata accessor for MessagePayload.ExternalAgentOutcome, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD717FC0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1DD717FF0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD718004(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1DD718044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1DD718098(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD7180AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FB && *(a1 + 17))
    {
      v2 = *a1 + 1018;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 60) & 3 | (4 * *(a1 + 16))) ^ 0x3FF;
      if (v2 >= 0x3FA)
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

uint64_t sub_1DD7180F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FA)
  {
    *(result + 16) = 0;
    *result = a2 - 1019;
    *(result + 8) = 0;
    if (a3 >= 0x3FB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1DD718158(uint64_t result, char a2)
{
  *(result + 8) = *(result + 8) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 16) = (a2 & 4) != 0;
  return result;
}

uint64_t sub_1DD718180(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
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

uint64_t sub_1DD7181CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriXResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SiriXResponse.SiriXOutputCommand.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriXResponse.SiriXOutputCommand.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DD7184C4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD718574()
{
  result = qword_1ECD0E1C0;
  if (!qword_1ECD0E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1C0);
  }

  return result;
}

unint64_t sub_1DD7185CC()
{
  result = qword_1ECD0E1C8;
  if (!qword_1ECD0E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1C8);
  }

  return result;
}

unint64_t sub_1DD718624()
{
  result = qword_1ECD0E1D0;
  if (!qword_1ECD0E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1D0);
  }

  return result;
}

unint64_t sub_1DD71867C()
{
  result = qword_1ECD0E1D8;
  if (!qword_1ECD0E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1D8);
  }

  return result;
}

unint64_t sub_1DD7186D4()
{
  result = qword_1ECD0E1E0;
  if (!qword_1ECD0E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1E0);
  }

  return result;
}

unint64_t sub_1DD71872C()
{
  result = qword_1ECD0E1E8;
  if (!qword_1ECD0E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1E8);
  }

  return result;
}

unint64_t sub_1DD718784()
{
  result = qword_1ECD0E1F0;
  if (!qword_1ECD0E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1F0);
  }

  return result;
}

unint64_t sub_1DD7187DC()
{
  result = qword_1ECD0E1F8;
  if (!qword_1ECD0E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E1F8);
  }

  return result;
}

unint64_t sub_1DD718834()
{
  result = qword_1ECD0E200;
  if (!qword_1ECD0E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E200);
  }

  return result;
}

unint64_t sub_1DD71888C()
{
  result = qword_1ECD0E208;
  if (!qword_1ECD0E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E208);
  }

  return result;
}

unint64_t sub_1DD7188E4()
{
  result = qword_1ECD0E210;
  if (!qword_1ECD0E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E210);
  }

  return result;
}

unint64_t sub_1DD71893C()
{
  result = qword_1ECD0E218;
  if (!qword_1ECD0E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E218);
  }

  return result;
}

unint64_t sub_1DD718994()
{
  result = qword_1ECD0E220;
  if (!qword_1ECD0E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E220);
  }

  return result;
}

unint64_t sub_1DD7189EC()
{
  result = qword_1ECD0E228;
  if (!qword_1ECD0E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E228);
  }

  return result;
}

unint64_t sub_1DD718A44()
{
  result = qword_1ECD0E230;
  if (!qword_1ECD0E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E230);
  }

  return result;
}

unint64_t sub_1DD718A9C()
{
  result = qword_1ECD0E238;
  if (!qword_1ECD0E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E238);
  }

  return result;
}

unint64_t sub_1DD718AF4()
{
  result = qword_1ECD0E240;
  if (!qword_1ECD0E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E240);
  }

  return result;
}

unint64_t sub_1DD718B4C()
{
  result = qword_1ECD0E248;
  if (!qword_1ECD0E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E248);
  }

  return result;
}

unint64_t sub_1DD718BA4()
{
  result = qword_1ECD0E250;
  if (!qword_1ECD0E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E250);
  }

  return result;
}

unint64_t sub_1DD718BFC()
{
  result = qword_1ECD0E258;
  if (!qword_1ECD0E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E258);
  }

  return result;
}

unint64_t sub_1DD718C54()
{
  result = qword_1ECD0E260;
  if (!qword_1ECD0E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E260);
  }

  return result;
}

unint64_t sub_1DD718CAC()
{
  result = qword_1ECD0E268;
  if (!qword_1ECD0E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E268);
  }

  return result;
}

unint64_t sub_1DD718D04()
{
  result = qword_1ECD0E270;
  if (!qword_1ECD0E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E270);
  }

  return result;
}

unint64_t sub_1DD718D5C()
{
  result = qword_1ECD0E278;
  if (!qword_1ECD0E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E278);
  }

  return result;
}

unint64_t sub_1DD718DB4()
{
  result = qword_1ECD0E280;
  if (!qword_1ECD0E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E280);
  }

  return result;
}

unint64_t sub_1DD718E0C()
{
  result = qword_1ECD0E288;
  if (!qword_1ECD0E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E288);
  }

  return result;
}

unint64_t sub_1DD718E64()
{
  result = qword_1ECD0E290;
  if (!qword_1ECD0E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E290);
  }

  return result;
}

uint64_t sub_1DD718EB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1DD718F34(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD718F6C(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD718FBC()
{
  result = qword_1ECD0E2A8;
  if (!qword_1ECD0E2A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECD0E2A8);
  }

  return result;
}

uint64_t sub_1DD7190C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD719110()
{
  sub_1DD6E1F34();
  sub_1DD710A9C(v1, v2);
  sub_1DD6DE1C4();
  v3 = sub_1DD6DDEFC();
  v4(v3);
  return v0;
}

uint64_t sub_1DD719168()
{
  sub_1DD6E1F34();
  v1(0);
  sub_1DD6DE1C4();
  v2 = sub_1DD6DDEFC();
  v3(v2);
  return v0;
}

uint64_t sub_1DD7191C0()
{
  sub_1DD6E1F34();
  v1(0);
  sub_1DD6DE1C4();
  v2 = sub_1DD6DDEFC();
  v3(v2);
  return v0;
}

uint64_t sub_1DD719218(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1DD6DE1C4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD719298(uint64_t a1, uint64_t a2)
{

  return sub_1DD875910();
}

uint64_t sub_1DD7192BC(uint64_t a1)
{

  return sub_1DD8750F0();
}

uint64_t AssetInfo.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AssetInfo.metadata.getter()
{
  type metadata accessor for AssetInfo(0);
}

void sub_1DD719340(uint64_t a1)
{
  sub_1DD719488(319, &qword_1EE015D98, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    sub_1DD719424(319);
    if (v2 <= 0x3F)
    {
      sub_1DD719488(319, &qword_1EE0139A8, sub_1DD7194DC);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD719424(uint64_t a1)
{
  if (!qword_1EE013A50)
  {
    sub_1DD717E88(&qword_1ECD0E310, &unk_1DD878260);
    v1 = sub_1DD8755C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE013A50);
    }
  }
}

void sub_1DD719488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DD8755C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DD7194DC()
{
  result = qword_1EE0139B0;
  if (!qword_1EE0139B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0139B0);
  }

  return result;
}

uint64_t sub_1DD719568(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = sub_1DD874ED0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD874BF0();
  v9 = sub_1DD874EC0();
  v10 = sub_1DD875500();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DD6DC000, v9, v10, a4, v11, 2u);
    MEMORY[0x1E12B5DE0](v11, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1DD7196CC()
{
  sub_1DD719E9C();
  v0 = sub_1DD7197D4(0xD000000000000039, 0x80000001DD8B47E0);
  if (v0)
  {
    v1 = v0;
    v2 = [v0 bundlePath];
    v3 = sub_1DD875140();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  qword_1EE015AB8 = v3;
  unk_1EE015AC0 = v5;
}

uint64_t static AssetsManager.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE015AB0 != -1)
  {
    swift_once();
  }

  v2 = unk_1EE015AC0;
  *a1 = qword_1EE015AB8;
  a1[1] = v2;
}

id sub_1DD7197D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD875110();

  v3 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v3;
}

uint64_t AssetsManager.info(for:locale:in:)(char *a1)
{
  sub_1DD874830();
  sub_1DD719D30();
  sub_1DD8755E0();

  AssetsManager.info(for:locale:in:)();
}

unint64_t sub_1DD71992C()
{
  result = qword_1EE015DA0;
  if (!qword_1EE015DA0)
  {
    sub_1DD874740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015DA0);
  }

  return result;
}

uint64_t sub_1DD719984(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DD7199D0(a1, a2);
  sub_1DD719AE8(&unk_1F58CDDB8);
  return v3;
}

uint64_t sub_1DD7199D0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1DD875200())
  {
    result = sub_1DD719BCC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1DD8756A0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1DD875750();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DD719AE8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1DD719C3C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1DD719BCC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD710A9C(&qword_1ECD0E320, &unk_1DD8782D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1DD719C3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DD710A9C(&qword_1ECD0E320, &unk_1DD8782D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1DD719D30()
{
  result = qword_1EE013A60;
  if (!qword_1EE013A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE013A60);
  }

  return result;
}

uint64_t sub_1DD719D84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD719DE8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD719E3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1DD719E9C()
{
  result = qword_1EE013988;
  if (!qword_1EE013988)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE013988);
  }

  return result;
}

void AssetFolderName.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      return;
    default:
      sub_1DD6E20F0();
      break;
  }
}

IntelligenceFlow::IntelligenceEngineAsset_optional __swiftcall IntelligenceEngineAsset.init(rawValue:)(Swift::String rawValue)
{
  sub_1DD6DF280();
  sub_1DD8757F0();
  result.value = sub_1DD6E5F10();
  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_1DD71A154(void *a1@<X8>)
{
  IntelligenceEngineAsset.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

IntelligenceFlow::AssetFolderName_optional __swiftcall AssetFolderName.init(rawValue:)(Swift::String rawValue)
{
  sub_1DD6DF280();
  sub_1DD8757F0();
  result.value = sub_1DD6E5F10();
  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_1DD71A1F8(void *a1@<X8>)
{
  AssetFolderName.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

IntelligenceFlow::AssetsUsageKey_optional __swiftcall AssetsUsageKey.init(rawValue:)(Swift::String rawValue)
{
  sub_1DD6DF280();
  sub_1DD8757F0();
  result.value = sub_1DD6E5F10();
  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t AssetsUsageKey.rawValue.getter()
{
  result = 0x75676E616C2E6561;
  switch(*v0)
  {
    case 1:
      result = 0x75676E616C2E6669;
      break;
    case 2:
      result = 0x75676E616C2E6772;
      break;
    case 3:
      result = 0x75676E616C2E6C6ELL;
      break;
    case 4:
      result = 0x73697373612E6C6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD71A314@<X0>(uint64_t *a1@<X8>)
{
  result = AssetsUsageKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

IntelligenceFlow::IntelligenceEngineAssetSet_optional __swiftcall IntelligenceEngineAssetSet.init(rawValue:)(Swift::String rawValue)
{
  sub_1DD6DF280();
  sub_1DD8757F0();
  result.value = sub_1DD6E5F10();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_1DD71A3B8(void *a1@<X8>)
{
  IntelligenceEngineAssetSet.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1DD71A3E4()
{
  result = qword_1ECD0E330;
  if (!qword_1ECD0E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E330);
  }

  return result;
}

unint64_t sub_1DD71A43C()
{
  result = qword_1ECD0E338;
  if (!qword_1ECD0E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E338);
  }

  return result;
}

unint64_t sub_1DD71A494()
{
  result = qword_1ECD0E340;
  if (!qword_1ECD0E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E340);
  }

  return result;
}

unint64_t sub_1DD71A4EC()
{
  result = qword_1ECD0E348;
  if (!qword_1ECD0E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E348);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceEngineAsset(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AssetFolderName(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AssetsUsageKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for IntelligenceEngineAssetSet(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AssetUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD71A93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DD6FB688(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_1DD710A9C(&qword_1ECD0E350, &qword_1DD8AF8B0);
    sub_1DD6DE1C4();
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = sub_1DD6E07CC();
    v15 = v10;
  }

  else
  {
    sub_1DD710A9C(&qword_1ECD0E350, &qword_1DD8AF8B0);
    v12 = sub_1DD6E51C8();
  }

  return sub_1DD6E5E68(v12, v13, v14, v15);
}

uint64_t sub_1DD71AA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DD6FB688(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_1DD874FA0();
    sub_1DD6DE1C4();
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = sub_1DD6E07CC();
    v15 = v10;
  }

  else
  {
    sub_1DD874FA0();
    v12 = sub_1DD6E51C8();
  }

  return sub_1DD6E5E68(v12, v13, v14, v15);
}

uint64_t sub_1DD71AAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DD6FB688(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for ClientAction(0);
    sub_1DD6DE1C4();
    sub_1DD71AB3C(v9 + *(v11 + 72) * v8, a4);
    v12 = sub_1DD6E07CC();
    v15 = v10;
  }

  else
  {
    type metadata accessor for ClientAction(0);
    v12 = sub_1DD6E51C8();
  }

  return sub_1DD6E5E68(v12, v13, v14, v15);
}

uint64_t sub_1DD71AB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD71ABA0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t IntelligenceFlowAssetsClient.__allocating_init(_:for:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = swift_allocObject();
  IntelligenceFlowAssetsClient.init(_:for:)(a1, a2, a3);
  return v6;
}

uint64_t IntelligenceFlowAssetsClient.init(_:for:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v121 = a2;
  v114 = a1;
  sub_1DD874ED0();
  sub_1DD6DDEAC();
  v124 = v5;
  v125 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6E09E0();
  v115 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v105 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v105 - v11;
  v13 = sub_1DD710A9C(&qword_1ECD0E358, &unk_1DD878670);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v105 - v14;
  v16 = sub_1DD874890();
  sub_1DD6DDEAC();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v120 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v105 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v105 - v26;
  LOBYTE(aBlock[0]) = *a3;
  v126 = sub_1DD71B66C(aBlock);
  v28 = type metadata accessor for SessionConfiguration(0);
  sub_1DD6FA7F8(&a3[*(v28 + 32)], v15);
  v29 = type metadata accessor for LocaleSettings(0);
  if (sub_1DD6E5ED0(v15, 1, v29) == 1)
  {
    v30 = v113;
    v31 = v124;

    sub_1DD6FC560(v15, &qword_1ECD0E358, &unk_1DD878670);
    sub_1DD874BF0();
    v32 = sub_1DD874EC0();
    v33 = sub_1DD8754E0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DD6DC000, v32, v33, "Locale information missing from session configuration.", v34, 2u);
      sub_1DD6DE474();
    }

    swift_unknownObjectRelease();

    sub_1DD6E04A8();
    sub_1DD6EEE50(a3, v35);
    (*(v31 + 8))(v12, v125);
    v36 = MEMORY[0x1E69E7CC8];
    result = v30;
LABEL_52:
    *(result + 16) = v36;
  }

  else
  {
    v108 = v9;
    v109 = a3;
    v38 = *(v29 + 20);
    v123 = v18;
    v39 = *(v18 + 16);
    v39(v24, &v15[v38], v16);
    sub_1DD6EEE50(v15, type metadata accessor for LocaleSettings);
    v40 = v18 + 32;
    v41 = *(v18 + 32);
    v42 = v27;
    v122 = v27;
    v41(v27, v24, v16);
    v43 = swift_allocObject();
    *(v43 + 24) = v121;
    swift_unknownObjectWeakInit();
    v44 = v120;
    v39(v120, v42, v16);
    v45 = (*(v40 + 48) + 24) & ~*(v40 + 48);
    v46 = swift_allocObject();
    v47 = v126;
    *(v46 + 16) = v126;
    v41((v46 + v45), v44, v16);
    *(v46 + ((v20 + v45 + 7) & 0xFFFFFFFFFFFFFFF8)) = v43;
    v48 = v47 + 64;
    sub_1DD6E51DC();
    v51 = v50 & v49;
    v53 = (v52 + 63) >> 6;
    v120 = v128;
    v121 = v46;
    v117 = v124 + 8;

    v54 = 0;
    v110 = MEMORY[0x1E69E7CC8];
    v112 = "anguage";
    *&v55 = 136315138;
    v111 = v55;
    v118 = "com.apple.if.planner.overrides";
    v119 = "com.apple.if.planner";
    v56 = v115;
    v116 = v16;
    v58 = v122;
    v57 = v123;
    if (v51)
    {
      goto LABEL_10;
    }

LABEL_6:
    while (1)
    {
      v59 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v59 >= v53)
      {
        swift_unknownObjectRelease();

        sub_1DD6E04A8();
        sub_1DD6EEE50(v109, v104);
        (*(v57 + 8))(v58, v16);

        result = v113;
        v36 = v110;
        goto LABEL_52;
      }

      v51 = *(v48 + 8 * v59);
      ++v54;
      if (v51)
      {
        v54 = v59;
        while (1)
        {
LABEL_10:
          v60 = *(*(v47 + 48) + (__clz(__rbit64(v51)) | (v54 << 6)));
          if (qword_1EE015AB0 != -1)
          {
            sub_1DD6E12C0();
            swift_once();
          }

          v61 = [objc_opt_self() sharedManager];
          LODWORD(v124) = v60;
          if (v60)
          {
            sub_1DD6ED538();
          }

          else
          {
            sub_1DD6E20F8();
          }

          v51 &= v51 - 1;
          v62 = sub_1DD875110();

          v128[2] = sub_1DD71C8E8;
          v128[3] = v121;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          v128[0] = sub_1DD71ABA0;
          v128[1] = &unk_1F58CF1D0;
          v63 = _Block_copy(aBlock);

          v64 = [v61 observeAssetSet:v62 queue:0 handler:v63];
          _Block_release(v63);

          if (v64)
          {
            v77 = v108;
            sub_1DD874BF0();
            v78 = sub_1DD874EC0();
            v79 = sub_1DD875500();
            v80 = os_log_type_enabled(v78, v79);
            v81 = v110;
            if (v80)
            {
              v82 = swift_slowAlloc();
              v106 = swift_slowAlloc();
              aBlock[0] = v106;
              v107 = v82;
              *v82 = v111;
              if (v124)
              {
                sub_1DD6ED538();
                if (v85 == 1)
                {
                  v86 = v83;
                }

                else
                {
                  v86 = v84;
                }

                if (v85 == 1)
                {
                  v87 = v119;
                }

                else
                {
                  v87 = v118;
                }
              }

              else
              {
                v86 = sub_1DD6E20F8();
                v87 = *(v90 - 256);
              }

              v91 = sub_1DD6FD650(v86, v87 | 0x8000000000000000, aBlock);

              v92 = v107;
              *(v107 + 1) = v91;
              _os_log_impl(&dword_1DD6DC000, v78, v79, "Registered asset observer for asset set: %s", v92, 0xCu);
              sub_1DD6E1EC8(v106);
              sub_1DD6DE474();
              sub_1DD6DE474();

              sub_1DD6DE244();
              v89 = v108;
            }

            else
            {

              sub_1DD6DE244();
              v89 = v77;
            }

            v88(v89, v125);
            swift_unknownObjectRetain();
            swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v81;
            v93 = sub_1DD71C4F8(v124);
            if (__OFADD__(*(v81 + 16), (v94 & 1) == 0))
            {
              goto LABEL_54;
            }

            v95 = v93;
            v96 = v94;
            sub_1DD710A9C(&qword_1ECD0E360, &qword_1DD878680);
            if (sub_1DD875770())
            {
              v97 = v124;
              v98 = sub_1DD71C4F8(v124);
              v56 = v115;
              if ((v96 & 1) != (v99 & 1))
              {
                goto LABEL_56;
              }

              v95 = v98;
            }

            else
            {
              v56 = v115;
              v97 = v124;
            }

            v100 = aBlock[0];
            v110 = aBlock[0];
            if (v96)
            {
              *(*(aBlock[0] + 56) + 8 * v95) = v64;
              swift_unknownObjectRelease();
            }

            else
            {
              *(aBlock[0] + 8 * (v95 >> 6) + 64) |= 1 << v95;
              *(v100[6] + v95) = v97;
              *(v100[7] + 8 * v95) = v64;
              v101 = v100[2];
              v102 = __OFADD__(v101, 1);
              v103 = v101 + 1;
              if (v102)
              {
                goto LABEL_55;
              }

              v100[2] = v103;
            }

            swift_unknownObjectRelease();
          }

          else
          {
            sub_1DD874BF0();
            v65 = sub_1DD874EC0();
            v66 = sub_1DD8754E0();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              v68 = swift_slowAlloc();
              aBlock[0] = v68;
              *v67 = v111;
              if (v124)
              {
                sub_1DD6ED538();
                if (v71 == 1)
                {
                  v72 = v69;
                }

                else
                {
                  v72 = v70;
                }

                if (v71 == 1)
                {
                  v73 = v119;
                }

                else
                {
                  v73 = v118;
                }
              }

              else
              {
                v72 = sub_1DD6E20F8();
                v73 = *(v75 - 256);
              }

              v76 = sub_1DD6FD650(v72, v73 | 0x8000000000000000, aBlock);

              *(v67 + 4) = v76;
              _os_log_impl(&dword_1DD6DC000, v65, v66, "Unable to register asset observer for asset set: %s", v67, 0xCu);
              sub_1DD6E1EC8(v68);
              sub_1DD6DE474();
              sub_1DD6DE474();

              sub_1DD6DE244();
              v56 = v115;
            }

            else
            {

              sub_1DD6DE244();
            }

            v74(v56, v125);
          }

          v16 = v116;
          v58 = v122;
          v57 = v123;
          v47 = v126;
          if (!v51)
          {
            goto LABEL_6;
          }
        }
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    result = sub_1DD875A80();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD71B66C(unsigned __int8 *a1)
{
  sub_1DD710A9C(&qword_1ECD0E370, &qword_1DD8786C8);
  sub_1DD71CA0C();

  return sub_1DD875080();
}

uint64_t sub_1DD71B6F0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v5 = sub_1DD874890();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = sub_1DD874ED0();
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  type metadata accessor for IntelligenceFlowAssetsClient();
  sub_1DD71BBD0(a1, a2);
  v18 = (v6 + 16);
  if (v19)
  {
    sub_1DD874BF0();
    (*v18)(v11, a2, v5);
    v20 = sub_1DD874EC0();
    v21 = sub_1DD875500();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v48[0] = v23;
      *v22 = 136315138;
      v24 = MEMORY[0x1E12B4290]();
      v44 = a2;
      v26 = v25;
      (*(v6 + 8))(v11, v5);
      v27 = sub_1DD6FD650(v24, v26, v48);
      a2 = v44;

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1DD6DC000, v20, v21, "All required IF assets are available for : %s", v22, 0xCu);
      sub_1DD6E1EC8(v23);
      MEMORY[0x1E12B5DE0](v23, -1, -1);
      MEMORY[0x1E12B5DE0](v22, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v11, v5);
    }

    (*(v45 + 8))(v17, v46);
    v36 = v47;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v38 = *(v36 + 24);
      ObjectType = swift_getObjectType();
      (*(v38 + 8))(a2, ObjectType, v38);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1DD874BF0();
    (*v18)(v8, a2, v5);
    v28 = sub_1DD874EC0();
    v29 = sub_1DD875500();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v48[0] = v31;
      *v30 = 136315138;
      v32 = MEMORY[0x1E12B4290]();
      v44 = a2;
      v34 = v33;
      (*(v6 + 8))(v8, v5);
      v35 = sub_1DD6FD650(v32, v34, v48);
      a2 = v44;

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1DD6DC000, v28, v29, "Not all required IF assets are available for : %s", v30, 0xCu);
      sub_1DD6E1EC8(v31);
      MEMORY[0x1E12B5DE0](v31, -1, -1);
      MEMORY[0x1E12B5DE0](v30, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    (*(v45 + 8))(v14, v46);
    v40 = v47;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v41 = *(v40 + 24);
      v42 = swift_getObjectType();
      (*(v41 + 16))(a2, v42, v41);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1DD71BBD0(void *a1, uint64_t a2)
{
  v86 = a2;
  sub_1DD874890();
  sub_1DD6DDEAC();
  v71 = v4;
  v72 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DDEE8();
  v76 = v5;
  v70 = sub_1DD874ED0();
  sub_1DD6DDEAC();
  v69 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDEE8();
  v73 = v8;
  v87 = type metadata accessor for AssetInfo(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E09E0();
  v78 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v66 - v12;
  v13 = sub_1DD710A9C(&qword_1ECD0E318, &qword_1DD8786C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1DD6E09E0();
  v80 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v66 - v19;
  v21 = a1 + 8;
  sub_1DD6E51DC();
  v24 = v23 & v22;
  v26 = (v25 + 63) >> 6;

  v27 = v24;
  v28 = 0;
  v77 = a1;
  v85 = v20;
  v79 = v17;
  v68 = a1 + 8;
  v67 = v26;
  do
  {
LABEL_2:
    if (!v27)
    {
      while (1)
      {
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v29 >= v26)
        {

          return;
        }

        v27 = v21[v29];
        ++v28;
        if (v27)
        {
          v28 = v29;
          goto LABEL_7;
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

LABEL_7:
    if (!a1[2])
    {
      goto LABEL_38;
    }

    v30 = v27;
    v31 = sub_1DD71C4F8(*(a1[6] + (__clz(__rbit64(v27)) | (v28 << 6))));
    if ((v32 & 1) == 0)
    {
      goto LABEL_39;
    }

    v27 = (v30 - 1) & v30;
    v33 = *(a1[7] + 8 * v31);
    v84 = *(v33 + 16);
  }

  while (!v84);
  v74 = v28;
  v75 = (v30 - 1) & v30;
  v34 = qword_1EE015AB0;

  if (v34 != -1)
  {
    sub_1DD6E12C0();
    swift_once();
  }

  v35 = 0;
  v36 = unk_1EE015AC0;
  v82 = v33;
  v83 = qword_1EE015AB8;
  while (1)
  {
    if (v35 >= *(v33 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    v37 = *(v33 + v35 + 32);
    v38 = sub_1DD874830();
    v40 = v39;
    v41 = v83;
    v90 = v83;
    v91 = v36;
    v89 = v37;
    AssetsManager.sideloadedAsset(for:locale:in:)();
    sub_1DD6F3068(v17);
    if (v42)
    {
      sub_1DD6FC560(v17, &qword_1ECD0E318, &qword_1DD8786C0);
      v90 = v41;
      v91 = v36;
      v89 = v37;
      v43 = v80;
      AssetsManager.sideloadedAsset(for:locale:in:)();
      sub_1DD6F3068(v43);
      if (v42)
      {
        sub_1DD6FC560(v43, &qword_1ECD0E318, &qword_1DD8786C0);
        v90 = v41;
        v91 = v36;
        v89 = v37;
        v88[1] = 0x2010100010101uLL >> (8 * v37);
        v88[0] = v37;
        static AssetUtils.getUsages(for:locale:)(v88, v38, v40);
        v45 = v85;
        AssetsManager.uafAsset(for:set:usages:)();
      }

      else
      {

        v46 = v78;
        sub_1DD719D84(v43, v78);
        v45 = v85;
        sub_1DD719D84(v46, v85);
        sub_1DD6DDF20();
      }

      v17 = v79;
      v33 = v82;
    }

    else
    {

      v44 = v81;
      sub_1DD719D84(v17, v81);
      v45 = v85;
      sub_1DD719D84(v44, v85);
      sub_1DD6DDF20();
    }

    sub_1DD6F3068(v45);
    if (v42)
    {
      break;
    }

    ++v35;
    sub_1DD6FC560(v45, &qword_1ECD0E318, &qword_1DD8786C0);
    if (v84 == v35)
    {

      a1 = v77;
      v21 = v68;
      v26 = v67;
      v28 = v74;
      v27 = v75;
      goto LABEL_2;
    }
  }

  v47 = v37;

  sub_1DD874BF0();
  v49 = v71;
  v48 = v72;
  v50 = v76;
  (*(v71 + 16))(v76, v86, v72);
  v51 = sub_1DD874EC0();
  v52 = sub_1DD875500();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = 0xD00000000000001ELL;
    v54 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v54 = 136315394;
    v55 = "ceFlow-3505.5.1\n";
    switch(v47)
    {
      case 1:
        v55 = "com.apple.if.planner_overrides";
        v53 = 0xD00000000000002CLL;
        break;
      case 2:
        v55 = "nner.tool_retrieval.denylist";
        v53 = 0xD000000000000027;
        break;
      case 3:
        v55 = "nner.nlrouter.overrides";
        v53 = 0xD000000000000028;
        break;
      case 4:
        v55 = "nner.tool_retrieval.base";
        v53 = 0xD000000000000030;
        break;
      case 5:
        v55 = "neration.catalog";
        v53 = 0xD000000000000032;
        break;
      case 6:
        v55 = "neration.overrides";
        v53 = 0xD000000000000020;
        break;
      case 7:
        v55 = "l.data_detectors";
        v53 = 0xD00000000000002FLL;
        break;
      default:
        break;
    }

    v58 = sub_1DD6FD650(v53, v55 | 0x8000000000000000, &v90);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    v59 = v76;
    v60 = sub_1DD874830();
    v62 = v61;
    (*(v49 + 8))(v59, v48);
    v63 = sub_1DD6FD650(v60, v62, &v90);

    *(v54 + 14) = v63;
    _os_log_impl(&dword_1DD6DC000, v51, v52, "Asset %s is not available for locale %s", v54, 0x16u);
    swift_arrayDestroy();
    sub_1DD6DE474();
    sub_1DD6DE474();

    v64 = sub_1DD6E5F28();
    v65(v64);
    v45 = v85;
  }

  else
  {

    (*(v49 + 8))(v50, v48);
    v56 = sub_1DD6E5F28();
    v57(v56);
  }

  sub_1DD6FC560(v45, &qword_1ECD0E318, &qword_1DD8786C0);
}

void IntelligenceFlowAssetsClient.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_1DD6E51DC();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v5;
LABEL_8:
    v5 = (v9 - 1) & v9;
    v11 = *(v1 + 16);
    if (*(v11 + 16))
    {
      v12 = *(*(v2 + 48) + (__clz(__rbit64(v9)) | (v8 << 6)));

      v13 = sub_1DD71C4F8(v12);
      if (v14)
      {
        v15 = *(*(v11 + 56) + 8 * v13);
        swift_unknownObjectRetain();

        if (qword_1EE015AB0 != -1)
        {
          sub_1DD6E12C0();
          swift_once();
        }

        v16 = [objc_opt_self() sharedManager];
        [v16 removeObserver_];
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v9 = *(v2 + 64 + 8 * v10);
    ++v8;
    if (v9)
    {
      v8 = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t IntelligenceFlowAssetsClient.__deallocating_deinit()
{
  IntelligenceFlowAssetsClient.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

unint64_t sub_1DD71C4F8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1DD76033C(*(v1 + 40), a1);

  return sub_1DD71C5C0(v2, v3);
}

unint64_t sub_1DD71C53C(uint64_t a1)
{
  sub_1DD874820();
  sub_1DD71C9C8(&qword_1EE015D90, MEMORY[0x1E69695B8]);
  v2 = sub_1DD8750B0();

  return sub_1DD71C740(a1, v2);
}

unint64_t sub_1DD71C5C0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = 0xD00000000000001ELL;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v6 = "com.apple.if.planner";
      }

      else
      {
        v5 = 0xD00000000000001CLL;
        v6 = "com.apple.if.planner.overrides";
      }

      v7 = *(*(v2 + 48) + v4) ? v5 : 0xD000000000000014;
      v8 = *(*(v2 + 48) + v4) ? v6 : "anguage";
      if (a1)
      {
        v9 = a1 == 1 ? 0xD00000000000001ELL : 0xD00000000000001CLL;
        v10 = a1 == 1 ? "com.apple.if.planner" : "com.apple.if.planner.overrides";
      }

      else
      {
        v9 = 0xD000000000000014;
        v10 = "anguage";
      }

      if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v12 = sub_1DD875A30();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1DD71C740(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1DD874820();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4, v6);
    sub_1DD71C9C8(&qword_1ECD0E368, MEMORY[0x1E69695C8]);
    v10 = sub_1DD8750F0();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1DD71C8E8()
{
  v1 = *(sub_1DD874890() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DD71B6F0(v3, v0 + v2, v4);
}

uint64_t sub_1DD71C9C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DD874820();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD71CA0C()
{
  result = qword_1ECD0E378[0];
  if (!qword_1ECD0E378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECD0E378);
  }

  return result;
}

uint64_t sub_1DD71CA94(char a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

double sub_1DD71CAD4()
{
  swift_beginAccess();

  return result;
}

uint64_t BreakpointManager.__allocating_init(getBreakpointIdentifier:)()
{
  v0 = sub_1DD6ED54C();
  BreakpointManager.init(getBreakpointIdentifier:)();
  return v0;
}

{
  v0 = sub_1DD6ED54C();
  BreakpointManager.init(getBreakpointIdentifier:)();
  return v0;
}

uint64_t BreakpointManager.init(getBreakpointIdentifier:)()
{
  sub_1DD6E51F8();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  sub_1DD6E09F4();
  sub_1DD875300();
  if (sub_1DD875330())
  {
    v3 = sub_1DD6DDEDC();
    v6 = sub_1DD71D568(v3, v4, v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + 120) = v6;
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return v1;
}

{
  sub_1DD6E51F8();
  v5 = v4;
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  v6 = *(v3 + 80);
  sub_1DD6E09F4();
  sub_1DD875300();
  if (sub_1DD875330())
  {
    v7 = sub_1DD6DDEDC();
    v10 = sub_1DD71D568(v7, v8, v9);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + 120) = v10;
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = *(v5 + 88);
  v11[4] = v2;
  v11[5] = v0;
  *(v1 + 128) = sub_1DD71D91C;
  *(v1 + 136) = v11;
  return v1;
}

uint64_t sub_1DD71CD20(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v8 = type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BreakpointManager.EventAwaitingResponse(0, a4, a5, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  (*(v13 + 16))(&v20 - v15, a1, v12, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1DD875300();
    if (sub_1DD875330())
    {
      v18 = sub_1DD71D568(v17, a4, a5);
    }

    else
    {

      v18 = MEMORY[0x1E69E7CD0];
    }

    (*(v13 + 8))(v16, v12);
  }

  else
  {
    sub_1DD71DEFC(v16, v10);
    v18 = v21(v10);
    sub_1DD71DF60(v10);
  }

  return v18;
}

uint64_t sub_1DD71CF54(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, double a4, uint64_t a5)
{
  type metadata accessor for BreakpointManager.EventAwaitingResponse(0, *(*v5 + 80), *(*v5 + 88), a5);
  sub_1DD6DF290();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1DD71D954(a1, &v15 - v9, a2);
  sub_1DD6DDEDC();
  swift_storeEnumTagMultiPayload();
  v11 = sub_1DD71D070(v10);
  v12 = sub_1DD6DDEDC();
  v13(v12);
  return v11 & 1;
}

uint64_t sub_1DD71D070(uint64_t a1)
{
  v3 = *v1;
  if (sub_1DD71CA60())
  {
    v4 = 1;
  }

  else
  {
    v5 = (v1[16])(a1);
    v6 = sub_1DD71CAD4();
    MEMORY[0x1E12B4E60](v5, v7, *(v3 + 80), *(v3 + 88), v6);

    v8 = sub_1DD875460();

    v4 = v8 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD71D160()
{
  sub_1DD6E2108();
  v1 = *(v0 + 80);
  sub_1DD6DF290();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  (*(v3 + 16))(v6, v8);
  swift_beginAccess();
  sub_1DD6E2108();
  sub_1DD875480();
  sub_1DD6DDEDC();
  sub_1DD875440();
  (*(v3 + 8))(v10, v1);
  return swift_endAccess();
}

uint64_t sub_1DD71D2B8(uint64_t a1)
{
  sub_1DD6E2108();
  sub_1DD6E09F4();
  v1 = sub_1DD8755C0();
  sub_1DD6DF290();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  swift_beginAccess();
  sub_1DD6E2108();
  sub_1DD6E09F4();
  sub_1DD875480();
  sub_1DD875450();
  (*(v3 + 8))(v6, v1);
  return swift_endAccess();
}

uint64_t BreakpointManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BreakpointManager.__deallocating_deinit()
{
  BreakpointManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DD71D460(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DD71D480, v3, 0);
}

uint64_t sub_1DD71D480(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1DD71CF1C(*(v5 + 16), a1, a3, a4, a5);
  v7 = *(v5 + 8);
  v8 = v6 & 1;

  return v7(v8);
}

uint64_t sub_1DD71D4E4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DD71D504, v3, 0);
}

uint64_t sub_1DD71D504(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1DD71CF38(*(v5 + 16), a1, a3, a4, a5);
  v7 = *(v5 + 8);
  v8 = v6 & 1;

  return v7(v8);
}

uint64_t sub_1DD71D568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  if (sub_1DD875330())
  {
    sub_1DD875690();
    v14 = sub_1DD875680();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CD0];
  }

  v36 = sub_1DD875330();
  if (v36)
  {
    v33 = v7;
    v34 = v5;
    v15 = 0;
    v41 = (v6 + 16);
    v42 = v14 + 56;
    v38 = (v6 + 32);
    v40 = v6 + 8;
    v35 = v13;
    while (1)
    {
      v16 = sub_1DD875320();
      sub_1DD8752F0();
      if (v16)
      {
        v17 = *(v6 + 16);
        result = (v17)(v13, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, a2);
      }

      else
      {
        v39 = v15;
        result = sub_1DD875710();
        if (v33 != 8)
        {
          goto LABEL_23;
        }

        v44 = result;
        v17 = *v41;
        (*v41)(v13, &v44, a2);
        result = swift_unknownObjectRelease();
        v15 = v39;
      }

      v39 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v37 = *v38;
      v37(v43, v13, a2);
      v19 = sub_1DD8750B0();
      v20 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v21 = v19 & v20;
        v22 = (v19 & v20) >> 6;
        v23 = *(v42 + 8 * v22);
        v24 = 1 << (v19 & v20);
        if ((v24 & v23) == 0)
        {
          break;
        }

        v25 = v14;
        v17(v8, (*(v14 + 48) + *(v6 + 72) * v21), a2);
        v26 = a3;
        v27 = sub_1DD8750F0();
        v28 = *(v6 + 8);
        v28(v8, a2);
        if (v27)
        {
          v28(v43, a2);
          a3 = v26;
          v13 = v35;
          v14 = v25;
          v15 = v39;
          goto LABEL_16;
        }

        v19 = v21 + 1;
        a3 = v26;
        v14 = v25;
      }

      v29 = v43;
      *(v42 + 8 * v22) = v24 | v23;
      result = (v37)(*(v14 + 48) + *(v6 + 72) * v21, v29, a2);
      v30 = *(v14 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      v13 = v35;
      v15 = v39;
      if (v31)
      {
        goto LABEL_22;
      }

      *(v14 + 16) = v32;
LABEL_16:
      v5 = v34;
      if (v15 == v36)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v14;
  }

  return result;
}

uint64_t sub_1DD71D954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of BreakpointPredicate.shouldBreak(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD6E07DC(a1, a2, a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v5 = sub_1DD6E12D4(v4);

  return v6(v5);
}

{
  sub_1DD6E07DC(a1, a2, a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v5 = sub_1DD6E12D4(v4);

  return v6(v5);
}

uint64_t sub_1DD71DBCC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of BreakpointManager.__allocating_init(getBreakpointIdentifier:)()
{
  return (*(v0 + 176))();
}

{
  return (*(v0 + 184))();
}

uint64_t dispatch thunk of BreakpointManager.shouldBreak(on:)()
{
  return (*(*v0 + 208))();
}

{
  return (*(*v0 + 216))();
}

uint64_t sub_1DD71DE88(uint64_t a1)
{
  result = type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SessionServerDebuggerEvent.InjectionRequest(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD71DEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD71DF60(uint64_t a1)
{
  v2 = type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SessionDebuggerSubscriptionEvent.DebuggerEvent.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DD874820();
  sub_1DD6DE1C4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t SessionDebuggerSubscriptionEvent.DebuggerEvent.eventId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(0) + 20);
  sub_1DD874820();
  sub_1DD6DE1C4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t SessionDebuggerSubscriptionEvent.DebuggerEvent.DebuggerPaused.pendingTransactions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SessionDebuggerSubscriptionEvent.DebuggerEvent.DebuggerPaused.pendingInjectionRequests.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SessionDebuggerSubscriptionEvent.DebuggerEvent.DebuggerPaused.debugCommandHandler.setter(__int128 *a1)
{
  sub_1DD6E1EC8((v1 + 16));

  return sub_1DD6DF5E4(a1, v1 + 16);
}

uint64_t SessionDebuggerEventsSubscription.Iterator.next()(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  v3 = sub_1DD710A9C(&qword_1ECD0E480, &qword_1DD8787F8);
  sub_1DD6DEA10(v3);
  *(v2 + 80) = sub_1DD6DEB50();
  v4 = type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(0);
  *(v2 + 88) = v4;
  sub_1DD6DEA10(v4);
  *(v2 + 96) = sub_1DD6DEB50();
  v5 = sub_1DD874820();
  *(v2 + 104) = v5;
  *(v2 + 112) = *(v5 - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  v6 = type metadata accessor for SessionServerDebuggerEvent(0);
  sub_1DD6DEA10(v6);
  *(v2 + 136) = sub_1DD6DEB50();
  v7 = type metadata accessor for MessagePayload(0);
  *(v2 + 144) = v7;
  sub_1DD6DEA10(v7);
  *(v2 + 152) = sub_1DD6DEB50();
  v8 = sub_1DD710A9C(&qword_1ECD0E488, &qword_1DD878800);
  sub_1DD6DEA10(v8);
  *(v2 + 160) = sub_1DD6DEB50();
  v9 = type metadata accessor for SessionServerMessage(0);
  *(v2 + 168) = v9;
  sub_1DD6DEA10(v9);
  *(v2 + 176) = sub_1DD6DEB50();
  v10 = type metadata accessor for SessionDebuggerEventsSubscription.Iterator(0);
  *(v2 + 184) = v10;
  *(v2 + 232) = *(v10 + 24);
  v11 = swift_task_alloc();
  *(v2 + 192) = v11;
  sub_1DD710A9C(&qword_1ECD0E490, &qword_1DD878808);
  *v11 = v2;
  v12 = sub_1DD6E04C0();

  return MEMORY[0x1EEE6DB98](v12);
}

uint64_t sub_1DD71E448()
{
  sub_1DD6DDF4C();
  sub_1DD6DF09C();
  v2 = *v1;
  sub_1DD6E04EC();
  *v3 = v2;
  *(v4 + 200) = v0;

  if (v0)
  {
    v5 = sub_1DD71EA18;
  }

  else
  {
    v5 = sub_1DD71E54C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

unint64_t sub_1DD71E54C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  if (sub_1DD6E5ED0(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 64);
    sub_1DD6FC560(v1, &qword_1ECD0E488, &qword_1DD878800);
    v4 = type metadata accessor for SessionDebuggerSubscriptionEvent(0);
    sub_1DD6E5E68(v3, 1, 1, v4);
    goto LABEL_8;
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  sub_1DD71EF1C(v1, v5);
  sub_1DD71EEC0(v5 + *(v2 + 32), v6);
  if (swift_getEnumCaseMultiPayload() != 40)
  {
    v16 = *(v0 + 152);
    v17 = *(v0 + 64);
    sub_1DD71EEC0(*(v0 + 176), v17);
    v18 = type metadata accessor for SessionDebuggerSubscriptionEvent(0);
    swift_storeEnumTagMultiPayload();
    sub_1DD6E5E68(v17, 0, 1, v18);
    sub_1DD6E5A64(v16, type metadata accessor for MessagePayload);
    sub_1DD6E12F0();
LABEL_8:
    sub_1DD6DE250();

    sub_1DD6DDF40();
    sub_1DD6ED434();

    __asm { BRAA            X1, X16 }
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 72);
  sub_1DD71EF1C(*(v0 + 152), *(v0 + 136));
  v9 = *(v7 + 28);
  v10 = *(v8 + v9);
  if (*(v10 + 16))
  {
    v11 = *(v0 + 112);
    v12 = sub_1DD71C53C(*(v0 + 176));
    v13 = *(v11 + 16);
    if (v14)
    {
      v15 = *(*(v10 + 56) + 8 * v12);

      goto LABEL_13;
    }
  }

  else
  {
    v13 = *(*(v0 + 112) + 16);
  }

  v21 = *(v0 + 128);
  v22 = *(v0 + 72);
  v13(v21, *(v0 + 176), *(v0 + 104));
  sub_1DD6E0F0C(v22 + 8, v0 + 16);
  type metadata accessor for SessionDebugger(0);
  swift_allocObject();

  v15 = sub_1DD720098(v23, v21, (v0 + 16));
LABEL_13:
  *(v0 + 208) = v15;
  v24 = *(v0 + 120);
  v44 = v13;
  v13(v24, *(v0 + 176), *(v0 + 104));

  swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v8 + v9);
  *(v0 + 56) = v25;
  result = sub_1DD71C53C(v24);
  if (__OFADD__(*(v25 + 16), (v27 & 1) == 0))
  {
    __break(1u);
    goto LABEL_28;
  }

  v28 = result;
  v29 = v27;
  sub_1DD710A9C(&qword_1ECD0E498, &qword_1DD878810);
  if (sub_1DD875770())
  {
    v30 = sub_1DD71C53C(*(v0 + 120));
    if ((v29 & 1) != (v31 & 1))
    {
      sub_1DD6ED434();

      return sub_1DD875A80();
    }

    v28 = v30;
  }

  v45 = v9;
  v33 = *(v0 + 56);
  v35 = *(v0 + 112);
  v34 = *(v0 + 120);
  v36 = *(v0 + 104);
  if ((v29 & 1) == 0)
  {
    v33[(v28 >> 6) + 8] |= 1 << v28;
    v44(v33[6] + *(v35 + 72) * v28, v34, v36);
    *(v33[7] + 8 * v28) = v15;
    result = (*(v35 + 8))(v34, v36);
    v37 = v33[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (!v38)
    {
      v33[2] = v39;
      goto LABEL_24;
    }

LABEL_28:
    __break(1u);
    return result;
  }

  *(v33[7] + 8 * v28) = v15;

  (*(v35 + 8))(v34, v36);
LABEL_24:
  *(v8 + v45) = v33;
  v40 = swift_task_alloc();
  *(v0 + 216) = v40;
  *v40 = v0;
  v40[1] = sub_1DD71EAC4;
  sub_1DD6ED434();

  return sub_1DD720168(v41, v42);
}

uint64_t sub_1DD71EA18()
{
  sub_1DD6E69B8();

  sub_1DD6DDF40();

  return v0();
}

uint64_t sub_1DD71EAC4()
{
  sub_1DD6DDF4C();
  sub_1DD6DF09C();
  v2 = *v1;
  sub_1DD6E04EC();
  *v3 = v2;
  *(v4 + 224) = v0;

  if (v0)
  {
    v5 = sub_1DD71EDB4;
  }

  else
  {
    v5 = sub_1DD71EBC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD71EBC8()
{
  v1 = v0[17];
  v3 = v0[10];
  v2 = v0[11];

  sub_1DD6E0A00();
  sub_1DD6E5A64(v1, v4);
  if (sub_1DD6E5ED0(v3, 1, v2) == 1)
  {
    sub_1DD6FC560(v0[10], &qword_1ECD0E480, &qword_1DD8787F8);
    sub_1DD6E12F0();
    v5 = swift_task_alloc();
    v0[24] = v5;
    sub_1DD710A9C(&qword_1ECD0E490, &qword_1DD878808);
    *v5 = v0;
    v6 = sub_1DD6E04C0();

    return MEMORY[0x1EEE6DB98](v6);
  }

  else
  {
    v7 = v0[12];
    v8 = v0[8];
    sub_1DD71EF1C(v0[10], v7);
    sub_1DD71EF1C(v7, v8);
    v9 = type metadata accessor for SessionDebuggerSubscriptionEvent(0);
    swift_storeEnumTagMultiPayload();
    sub_1DD6E5E68(v8, 0, 1, v9);
    sub_1DD6E12F0();
    sub_1DD6DE250();

    sub_1DD6DDF40();

    return v10();
  }
}

uint64_t sub_1DD71EDB4()
{
  v1 = *(v0 + 136);

  sub_1DD6E0A00();
  sub_1DD6E5A64(v1, v2);
  sub_1DD6E12F0();
  sub_1DD6E69B8();

  sub_1DD6DDF40();

  return v3();
}

uint64_t sub_1DD71EEC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD6E0D28();
  v5(v4);
  sub_1DD6DE1C4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1DD71EF1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD6E0D28();
  v5(v4);
  sub_1DD6DE1C4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1DD71EF78()
{
  sub_1DD6DDF4C();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = sub_1DD6E04FC(v2);
  *v3 = v4;
  v3[1] = sub_1DD6FA5C4;

  return SessionDebuggerEventsSubscription.Iterator.next()(v1);
}

uint64_t sub_1DD71F008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1DD71F0D4;

  return (sub_1DD85FE94)(a1, a2, a3);
}

uint64_t sub_1DD71F0D4()
{
  sub_1DD6DF09C();
  v3 = v2;
  v4 = *v1;
  sub_1DD6E04EC();
  *v5 = v4;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1DD71F1E8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  sub_1DD6DF5E4(a2, v3 + 24);
  *(v3 + 64) = a3;
  return v3;
}

uint64_t sub_1DD71F224@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1DD6E0F0C(v1 + 24, (a1 + 1));
  v4 = type metadata accessor for SessionDebuggerEventsSubscription.Iterator(0);

  sub_1DD710A9C(&qword_1ECD0E4A0, qword_1DD878818);
  sub_1DD8753D0();
  v5 = *(v4 + 28);
  sub_1DD874820();
  v6 = sub_1DD6E0D28();
  type metadata accessor for SessionDebugger(v6);
  sub_1DD71F404(&qword_1EE015D90, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  result = sub_1DD875080();
  *(a1 + v5) = result;
  *a1 = v3;
  return result;
}

void *SessionDebuggerEventsSubscription.deinit()
{

  sub_1DD6E1EC8((v0 + 24));

  return v0;
}

uint64_t SessionDebuggerEventsSubscription.__deallocating_deinit()
{
  SessionDebuggerEventsSubscription.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1DD71F378@<X0>(void *a1@<X8>)
{
  sub_1DD71F224(a1);
}

uint64_t sub_1DD71F404(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD71F44C(uint64_t a1)
{
  result = type metadata accessor for SessionServerMessage(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD71F4E8(uint64_t a1)
{
  result = sub_1DD874820();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent.Payload(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD71F56C(uint64_t a1)
{
  result = type metadata accessor for SessionServerDebuggerEvent.CurrentTranscript(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_1DD71F5D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DD71F5F4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DD71F634(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of DebugCommandHandling.continue()()
{
  sub_1DD6E48E0();
  sub_1DD6DE498(v0, v1);
  sub_1DD6E5228();
  v2 = swift_task_alloc();
  v3 = sub_1DD6E04FC(v2);
  *v3 = v4;
  v5 = sub_1DD6E5210(v3);

  return v6(v5);
}

uint64_t dispatch thunk of DebugCommandHandling.requestCurrentTranscript()()
{
  sub_1DD6E48E0();
  sub_1DD6DE498(v0, v1);
  sub_1DD6E5228();
  v2 = swift_task_alloc();
  v3 = sub_1DD6E04FC(v2);
  *v3 = v4;
  v5 = sub_1DD6E5210(v3);

  return v6(v5);
}

uint64_t dispatch thunk of DebugCommandHandling.terminate()()
{
  sub_1DD6E48E0();
  sub_1DD6DE498(v0, v1);
  sub_1DD6E5228();
  v2 = swift_task_alloc();
  v3 = sub_1DD6E04FC(v2);
  *v3 = v4;
  v5 = sub_1DD6E5210(v3);

  return v6(v5);
}

uint64_t dispatch thunk of DebugCommandHandling.return(injectionResponseValues:)()
{
  sub_1DD6E48E0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v10 = (*(v0 + 32) + **(v0 + 32));
  v6 = swift_task_alloc();
  v7 = sub_1DD6E04FC(v6);
  *v7 = v8;
  v7[1] = sub_1DD71FCC8;

  return v10(v5, v3, v1);
}

void sub_1DD71FB08(uint64_t a1)
{
  type metadata accessor for SessionClient();
  if (v1 <= 0x3F)
  {
    sub_1DD71FBBC();
    if (v2 <= 0x3F)
    {
      type metadata accessor for EventsSubscription.Iterator(319);
      if (v3 <= 0x3F)
      {
        sub_1DD71FC18(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1DD71FBBC()
{
  result = qword_1ECD0E4F0;
  if (!qword_1ECD0E4F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECD0E4F0);
  }

  return result;
}

void sub_1DD71FC18(uint64_t a1)
{
  if (!qword_1ECD0E4F8)
  {
    sub_1DD874820();
    type metadata accessor for SessionDebugger(255);
    sub_1DD71F404(&qword_1EE015D90, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1DD875090();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECD0E4F8);
    }
  }
}

uint64_t sub_1DD71FCD4()
{
  v1 = type metadata accessor for SessionServerDebuggerEvent.InjectionRequest(0);
  v2 = sub_1DD6DEA1C(v1);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DE4A8();
  v7 = (v6 - v5);
  v8 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_inProgressSpans;
  sub_1DD6E64F4(v0 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_inProgressSpans, v26);
  v9 = *(v0 + v8);
  if (*(v9 + 16))
  {
    v10 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests;
    sub_1DD6E64F4(v0 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests, v25);
    v11 = *(v0 + v10);
    v12 = *(v11 + 16);
    if (v12)
    {
      v24 = MEMORY[0x1E69E7CC0];

      sub_1DD76C464(0, v12, 0);
      v13 = v24;
      v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v15 = *(v4 + 72);
      do
      {
        sub_1DD6DE278();
        sub_1DD722E6C(v14, v7, v16);
        v17 = *v7;
        sub_1DD6E1318();
        sub_1DD722F80(v7, v18);
        v20 = *(v24 + 16);
        v19 = *(v24 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1DD76C464((v19 > 1), v20 + 1, 1);
        }

        *(v24 + 16) = v20 + 1;
        *(v24 + 8 * v20 + 32) = v17;
        v14 += v15;
        --v12;
      }

      while (v12);
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
    }

    v22 = sub_1DD71FEC4(v13);
    v21 = sub_1DD71FF58(v9, v22);
  }

  else
  {
    v21 = 1;
  }

  return v21 & 1;
}

uint64_t sub_1DD71FEC4(uint64_t a1)
{
  v2 = MEMORY[0x1E12B4E70](*(a1 + 16), MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1DD722708(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

uint64_t sub_1DD71FF58(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
LABEL_7:
  if (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = *(*(v3 + 48) + 8 * (v9 | (v4 << 6)));
    result = sub_1DD875B10();
    v13 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v14 = result & v13;
      if (((*(a2 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
      {
        return 0;
      }

      result = v14 + 1;
      if (*(*(a2 + 48) + 8 * v14) == v12)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 56 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD720098(uint64_t a1, uint64_t a2, __int128 *a3)
{
  swift_defaultActor_initialize();
  *(v3 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_shouldPauseWhenSpansAreAwaitingResponse) = 0;
  *(v3 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_inProgressSpans) = MEMORY[0x1E69E7CD0];
  v7 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedTransactions) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests) = v7;
  *(v3 + 112) = a1;
  v8 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_sessionId;
  sub_1DD874820();
  sub_1DD6DE1C4();
  (*(v9 + 32))(v3 + v8, a2);
  sub_1DD71FCCC(a3, v3 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_breakpointPredicate);
  return v3;
}

uint64_t sub_1DD720168(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for SessionServerDebuggerEvent.InjectionRequest(0);
  sub_1DD6DEA1C(v4);
  v3[26] = v5;
  v3[27] = sub_1DD6DEB50();
  v6 = type metadata accessor for SessionServerDebuggerEvent.CurrentTranscript(0);
  sub_1DD6DEA10(v6);
  v3[28] = sub_1DD6DEB50();
  v7 = type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady(0);
  sub_1DD6DEA1C(v7);
  v3[29] = v8;
  v3[30] = sub_1DD6DEB50();
  v9 = type metadata accessor for SessionServerDebuggerEvent.Payload(0);
  v3[31] = v9;
  sub_1DD6DEA10(v9);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v10 = type metadata accessor for SessionServerDebuggerEvent.RequestFailed(0);
  v3[34] = v10;
  sub_1DD6DEA10(v10);
  v3[35] = sub_1DD6DEB50();
  v11 = sub_1DD6ED450();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DD7202D4()
{
  v55 = v0;
  v1 = v0[33];
  sub_1DD6E5F40();
  sub_1DD722E6C(v2, v1, v3);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v4 = v0[34];
    v5 = v0[35];
    sub_1DD722ECC(v0[33], v5, type metadata accessor for SessionServerDebuggerEvent.RequestFailed);
    v6 = *(v5 + *(v4 + 20));
    sub_1DD722F2C();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
    sub_1DD722F80(v5, type metadata accessor for SessionServerDebuggerEvent.RequestFailed);

    sub_1DD6DDF40();
  }

  else
  {
    v9 = v0[32];
    v10 = v0[24];
    sub_1DD6E0D34(v0[33]);
    sub_1DD6E5F40();
    sub_1DD722E6C(v10, v9, v11);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v12 = v0[30];
        v13 = v0[25];
        sub_1DD6E69E0();
        sub_1DD722ECC(v14, v12, v15);
        v16 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedTransactions;
        sub_1DD6DEB68(v13 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedTransactions, (v0 + 20));
        sub_1DD8647C8();
        v17 = sub_1DD6E5D70();
        sub_1DD864854(v17);
        sub_1DD6FC3DC();
        sub_1DD6DE4B8();
        sub_1DD722E6C(v12, v18, v19);
        *(v13 + v16) = v13 + v16;
        swift_endAccess();
        sub_1DD6DF224((v13 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_breakpointPredicate), *(v13 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_breakpointPredicate + 24));
        v20 = swift_task_alloc();
        v0[36] = v20;
        *v20 = v0;
        v20[1] = sub_1DD7209F4;
        v21 = sub_1DD6E7118(v0[30]);

        return v22(v21);
      case 3u:
        v35 = *v0[32];
        sub_1DD6DEB68(v0[25] + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_inProgressSpans, (v0 + 17));
        sub_1DD722708(v54, v35);
        swift_endAccess();

        goto LABEL_12;
      case 4u:
        v23 = v0[25];
        v24 = *v0[32];
        sub_1DD6DEB68(v23 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_inProgressSpans, (v0 + 8));
        sub_1DD722C08(v24);
        swift_endAccess();

        if (*(v23 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_shouldPauseWhenSpansAreAwaitingResponse) != 1 || (sub_1DD71FCD4() & 1) == 0)
        {
          goto LABEL_12;
        }

        v25 = v0[25];
        v26 = v0[23];
        v27 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_sessionId;
        sub_1DD874820();
        sub_1DD6DE1C4();
        (*(v28 + 16))(v26, v25 + v27);
        v29 = type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(0);
        _s16IntelligenceFlow15SessionClientIDVACycfC_0();
        v30 = (v26 + *(v29 + 24));
        v31 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedTransactions;
        sub_1DD6E64F4(v25 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedTransactions, (v0 + 11));
        v32 = *(v25 + v31);
        v33 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests;
        sub_1DD6E64F4(v25 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests, (v0 + 14));
        v34 = *(v25 + v33);
        v30[5] = type metadata accessor for SessionDebugger(0);
        v30[6] = &off_1F58CF3E8;
        v30[1] = v34;
        v30[2] = v25;
        *v30 = v32;
        type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent.Payload(0);
        swift_storeEnumTagMultiPayload();
        sub_1DD6E5E68(v26, 0, 1, v29);

        break;
      case 6u:
        v40 = v0[28];
        v41 = v0[25];
        v42 = v0[23];
        sub_1DD722ECC(v0[32], v40, type metadata accessor for SessionServerDebuggerEvent.CurrentTranscript);
        v43 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_sessionId;
        sub_1DD874820();
        sub_1DD6DE1C4();
        (*(v44 + 16))(v42, v41 + v43);
        v45 = type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(0);
        _s16IntelligenceFlow15SessionClientIDVACycfC_0();
        sub_1DD722ECC(v40, v42 + *(v45 + 24), type metadata accessor for SessionServerDebuggerEvent.CurrentTranscript);
        type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent.Payload(0);
        swift_storeEnumTagMultiPayload();
        v36 = v42;
        v37 = 0;
        v38 = 1;
        v39 = v45;
        goto LABEL_14;
      case 0xBu:
        v47 = v0[27];
        v48 = v0[25];
        sub_1DD722ECC(v0[32], v47, type metadata accessor for SessionServerDebuggerEvent.InjectionRequest);
        v49 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests;
        v0[37] = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests;
        sub_1DD6DEB68(v48 + v49, (v0 + 2));
        sub_1DD8647B0();
        v50 = sub_1DD6E5D70();
        sub_1DD86483C(v50);
        sub_1DD6FC3DC();
        sub_1DD6DE278();
        sub_1DD722E6C(v47, v51, v52);
        *(v48 + v49) = v48 + v49;
        swift_endAccess();
        sub_1DD6DF224((v48 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_breakpointPredicate), *(v48 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_breakpointPredicate + 24));
        v53 = swift_task_alloc();
        v0[38] = v53;
        *v53 = v0;
        v53[1] = sub_1DD720C68;
        v21 = sub_1DD6E7118(v0[27]);

        return v22(v21);
      default:
        sub_1DD6E0D34(v0[32]);
LABEL_12:
        type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(0);
        v36 = sub_1DD6F3088();
LABEL_14:
        sub_1DD6E5E68(v36, v37, v38, v39);
        break;
    }

    sub_1DD6E48EC();

    sub_1DD6DDF40();
  }

  return v8();
}

uint64_t sub_1DD7209F4()
{
  sub_1DD6E07F0();
  *v2 = v1;
  v3 = *v0;
  sub_1DD6E07F0();
  *v4 = v3;
  *(v6 + 312) = v5;

  v7 = sub_1DD6ED450();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD720AFC()
{
  v1 = &qword_1ECD0E000;
  if (*(v0 + 312) == 1)
  {
    sub_1DD6EE1FC(&qword_1ECD0E000);
  }

  if (*(*(v0 + 200) + v1[162]))
  {
    sub_1DD6ED570();
    sub_1DD722F80(v2, v3);
  }

  else
  {
    sub_1DD874820();
    sub_1DD722428();
    v4 = sub_1DD875080();
    sub_1DD721430(v4);
    sub_1DD6ED570();
    sub_1DD722F80(v5, v6);
  }

  type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(0);
  v7 = sub_1DD6F3088();
  sub_1DD6E5E68(v7, v8, v9, v10);
  sub_1DD6E48EC();

  sub_1DD6DDF40();

  return v11();
}

uint64_t sub_1DD720C68()
{
  sub_1DD6E07F0();
  *v2 = v1;
  v3 = *v0;
  sub_1DD6E07F0();
  *v4 = v3;
  *(v6 + 313) = v5;

  v7 = sub_1DD6ED450();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD720D70()
{
  v1 = &qword_1ECD0E000;
  if (*(v0 + 313) == 1)
  {
    sub_1DD6EE1FC(&qword_1ECD0E000);
  }

  v2 = *(v0 + 200);
  v3 = v1[162];
  if ((*(v2 + v3) & 1) != 0 || (sub_1DD874820(), sub_1DD722428(), v20 = sub_1DD875080(), sub_1DD721430(v20), , *(v2 + v3) == 1)) && (sub_1DD71FCD4())
  {
    v4 = *(v0 + 296);
    v5 = *(v0 + 216);
    v6 = *(v0 + 200);
    v7 = *(v0 + 184);
    v8 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_sessionId;
    sub_1DD874820();
    sub_1DD6DE1C4();
    (*(v9 + 16))(v7, v6 + v8);
    v10 = type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(0);
    _s16IntelligenceFlow15SessionClientIDVACycfC_0();
    v11 = (v7 + *(v10 + 24));
    v12 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedTransactions;
    sub_1DD6E64F4(v6 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedTransactions, v0 + 40);
    v13 = *(v6 + v12);
    v14 = *(v6 + v4);
    v11[5] = type metadata accessor for SessionDebugger(0);
    v11[6] = &off_1F58CF3E8;
    v11[2] = v6;

    sub_1DD6E1318();
    sub_1DD722F80(v5, v15);
    *v11 = v13;
    v11[1] = v14;
    type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent.Payload(0);
    swift_storeEnumTagMultiPayload();
    v16 = v7;
    v17 = 0;
    v18 = 1;
    v19 = v10;
  }

  else
  {
    sub_1DD6E1318();
    sub_1DD722F80(v21, v22);
    type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(0);
    v16 = sub_1DD6F3088();
  }

  sub_1DD6E5E68(v16, v17, v18, v19);
  sub_1DD6E48EC();

  sub_1DD6DDF40();

  return v23();
}

uint64_t sub_1DD720FF0()
{
  sub_1DD874820();
  sub_1DD722428();
  v1 = sub_1DD875080();
  *(v0 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_shouldPauseWhenSpansAreAwaitingResponse) = 0;
  sub_1DD721430(v1);
}

uint64_t sub_1DD721088()
{
  type metadata accessor for MessagePayload(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DE4A8();
  v6 = v5 - v4;
  v7 = sub_1DD874820();
  sub_1DD6DDEAC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE4A8();
  v13 = v12 - v11;
  v14 = type metadata accessor for SessionClientMessage(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE4A8();
  sub_1DD6E1F40();
  v16 = sub_1DD722FD8();
  v2(v16);
  _s16IntelligenceFlow15SessionClientIDVACycfC_0();
  type metadata accessor for SessionClientDebuggerEvent.Payload(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  (v2)(v1, v13, v7);
  sub_1DD6E5238();
  sub_1DD722ECC(v6, v1 + v17, v18);
  (*(v9 + 8))(v13, v7);
  sub_1DD6E6C28(*(v15 + 28));
  if (!v0)
  {
  }

  sub_1DD6DF2A0();
  return sub_1DD722F80(v1, v19);
}

uint64_t sub_1DD721260()
{
  type metadata accessor for MessagePayload(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DE4A8();
  v6 = v5 - v4;
  v7 = sub_1DD874820();
  sub_1DD6DDEAC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE4A8();
  v13 = v12 - v11;
  v14 = type metadata accessor for SessionClientMessage(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE4A8();
  sub_1DD6E1F40();
  v16 = sub_1DD722FD8();
  v2(v16);
  type metadata accessor for SessionClientDebuggerEvent.Payload(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  (v2)(v1, v13, v7);
  sub_1DD6E5238();
  sub_1DD722ECC(v6, v1 + v17, v18);
  (*(v9 + 8))(v13, v7);
  sub_1DD6E6C28(*(v15 + 28));
  if (!v0)
  {
  }

  sub_1DD6DF2A0();
  return sub_1DD722F80(v1, v19);
}

void sub_1DD721430(uint64_t a1)
{
  v3 = v2;
  v119 = a1;
  v141 = type metadata accessor for SessionClientDebuggerEvent.Payload(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v7 = sub_1DD6ED230(v6 - v5);
  v138 = type metadata accessor for SessionServerDebuggerEvent.InjectionRequest(v7);
  sub_1DD6DDEAC();
  v118 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E09E0();
  v136 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E8870();
  v137 = v12;
  v13 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  v14 = sub_1DD6DEA10(v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = sub_1DD6ED230(&v112 - v15);
  v140 = type metadata accessor for MessagePayload(v16);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E09E0();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6E8870();
  sub_1DD6ED230(v19);
  v148 = sub_1DD874820();
  sub_1DD6DDEAC();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6E09E0();
  v135 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v134 = &v112 - v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6E8870();
  v147 = v28;
  v139 = type metadata accessor for SessionClientMessage(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6E09E0();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v112 - v31;
  v131 = type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady(0);
  sub_1DD6DDEAC();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6E09E0();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6E8870();
  v129 = v37;
  v38 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedTransactions;
  swift_beginAccess();
  v114 = v38;
  v39 = *(v1 + v38);
  v40 = *(v39 + 16);
  v142 = v1;
  v127 = v40;
  if (v40)
  {
    v124 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_sessionId;
    v123 = *(v1 + 112);
    v122 = v39 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v146 = (v21 + 16);
    v113 = v21;
    v121 = (v21 + 8);

    v42 = 0;
    v125 = v32;
    v120 = v34;
    *&v126 = v41;
    while (1)
    {
      if (v42 >= *(v41 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_1DD6DE4B8();
      v43 = v129;
      sub_1DD722E6C(v44, v129, v45);
      v145 = *v146;
      v46 = v1 + v124;
      v47 = v148;
      v145(v147, v46, v148);
      v48 = v128;
      _s16IntelligenceFlow15SessionClientIDVACycfC_0();
      sub_1DD6E69E0();
      v49 = v130;
      sub_1DD722ECC(v43, v130, v50);
      v51 = *v49;
      v144 = v49[1];
      v52 = v131;
      v53 = v132;
      sub_1DD722348(v49 + *(v131 + 24), v132);
      v54 = *(v52 + 32);
      v55 = (v49 + *(v52 + 28));
      v56 = v55[1];
      v143 = *v55;
      v57 = *(v49 + v54);

      sub_1DD6ED570();
      sub_1DD722F80(v49, v58);
      v59 = type metadata accessor for SessionClientDebuggerEvent.PostDeferredTransaction(0);
      v149 = v3;
      v60 = v59[7];
      sub_1DD6E5E68(v48 + v60, 1, 1, v47);
      *(v48 + v59[5]) = v51;
      *(v48 + v59[6]) = v144;
      v61 = v53;
      v62 = v125;
      sub_1DD7223B8(v61, v48 + v60);
      v63 = (v48 + v59[8]);
      *v63 = v143;
      v63[1] = v56;
      *(v48 + v59[9]) = v57;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v64 = v147;
      v145(v62, v147, v47);
      v65 = v139;
      sub_1DD6E5238();
      sub_1DD722ECC(v48, v62 + v66, v67);
      (*v121)(v64, v47);
      v68 = (v62 + *(v65 + 20));
      *v68 = 0;
      v68[1] = 0xE000000000000000;
      v69 = v149;
      sub_1DD6FE380(v62);
      v3 = v69;
      if (v69)
      {
        break;
      }

      v42 = (v42 + 1);
      sub_1DD6DF2A0();
      sub_1DD722F80(v62, v70);
      v1 = v142;
      v41 = v126;
      if (v127 == v42)
      {

        v21 = v113;
        goto LABEL_7;
      }
    }

    sub_1DD6DF2A0();
    sub_1DD722F80(v62, v106);
    v107 = v142;
    v108 = MEMORY[0x1E69E7CC0];
    *(v142 + v114) = MEMORY[0x1E69E7CC0];

    v109 = (v107 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests);
    swift_beginAccess();
LABEL_20:
    *v109 = v108;
    goto LABEL_21;
  }

LABEL_7:
  v71 = (v1 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests);
  swift_beginAccess();
  v72 = *v71;
  v73 = v119;
  v143 = *(*v71 + 16);
  if (!v143)
  {
LABEL_17:
    v105 = MEMORY[0x1E69E7CC0];
    *(v1 + v114) = MEMORY[0x1E69E7CC0];

    *v71 = v105;
LABEL_21:

    return;
  }

  v125 = v71;
  v131 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_sessionId;
  v74 = *(v118 + 80);
  v130 = *(v1 + 112);
  v129 = v72 + ((v74 + 32) & ~v74);
  v147 = (v21 + 16);
  v128 = (v21 + 8);
  v127 = (v21 + 32);

  v76 = 0;
  v126 = xmmword_1DD878A20;
  v132 = v75;
  v77 = v136;
  while (v76 < *(v75 + 16))
  {
    v78 = v137;
    sub_1DD722E6C(v129 + *(v118 + 72) * v76, v137, type metadata accessor for SessionServerDebuggerEvent.InjectionRequest);
    v79 = *v147;
    v80 = v1 + v131;
    v81 = v148;
    (*v147)(v133, v80, v148);
    _s16IntelligenceFlow15SessionClientIDVACycfC_0();
    sub_1DD722E6C(v78, v136, type metadata accessor for SessionServerDebuggerEvent.InjectionRequest);
    v82 = v135;
    v79(v135, v78 + *(v138 + 36), v81);
    v83 = *(v73 + 16);
    v149 = v3;
    v144 = v76;
    if (v83 && (v84 = sub_1DD71C53C(v82), (v85 & 1) != 0))
    {
      v86 = *(v73 + 56) + 16 * v84;
      v87 = *(v86 + 8);
      v145 = *v86;
      sub_1DD710E74(v145, v87);
    }

    else
    {
      v145 = 0;
      v87 = 0xF000000000000000;
    }

    v146 = *v128;
    v88 = v148;
    v146(v135, v148);
    v89 = *(v138 + 36);
    v90 = type metadata accessor for SessionClientDebuggerEvent.InjectionResponse(0);
    v91 = v117;
    v79(v117 + *(v90 + 20), v77 + v89, v88);
    sub_1DD6E1318();
    sub_1DD722F80(v77, v92);
    v93 = v91 + *(v90 + 24);
    *v93 = v126;
    (*v127)(v91, v134, v88);
    sub_1DD70104C(*v93, *(v93 + 8));
    *v93 = v145;
    *(v93 + 8) = v87;
    swift_storeEnumTagMultiPayload();
    v94 = v116;
    sub_1DD722ECC(v91, v116, type metadata accessor for SessionClientDebuggerEvent.Payload);
    swift_storeEnumTagMultiPayload();
    v95 = v115;
    v96 = v133;
    v79(v115, v133, v88);
    v97 = v139;
    sub_1DD6E5238();
    sub_1DD722ECC(v94, v95 + v98, v99);
    v146(v96, v88);
    v100 = v95;
    v101 = (v95 + *(v97 + 20));
    *v101 = 0;
    v101[1] = 0xE000000000000000;
    v102 = v149;
    sub_1DD6FE380(v95);
    v3 = v102;
    if (v102)
    {

      sub_1DD6DF2A0();
      sub_1DD722F80(v100, v110);
      sub_1DD6E1318();
      sub_1DD722F80(v137, v111);
      v108 = MEMORY[0x1E69E7CC0];
      *(v142 + v114) = MEMORY[0x1E69E7CC0];

      v109 = v125;
      goto LABEL_20;
    }

    v76 = v144 + 1;

    sub_1DD6DF2A0();
    sub_1DD722F80(v100, v103);
    sub_1DD6E1318();
    sub_1DD722F80(v137, v104);
    v1 = v142;
    v73 = v119;
    v75 = v132;
    if (v143 == v76)
    {

      v71 = v125;
      goto LABEL_17;
    }
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1DD721EDC()
{

  v1 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_sessionId;
  sub_1DD874820();
  sub_1DD6DE1C4();
  (*(v2 + 8))(v0 + v1);
  sub_1DD6E1EC8((v0 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_breakpointPredicate));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DD721F84()
{
  sub_1DD721EDC();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for SessionDebugger(uint64_t a1)
{
  result = qword_1ECD0E530;
  if (!qword_1ECD0E530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD722004(uint64_t a1)
{
  result = sub_1DD874820();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD7220F8()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1DD722118, v2, 0);
}

uint64_t sub_1DD722118()
{
  sub_1DD6E1F54();
  sub_1DD720FF0();
  sub_1DD6DDF40();

  return v0();
}

uint64_t sub_1DD72218C()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1DD7221AC, v2, 0);
}