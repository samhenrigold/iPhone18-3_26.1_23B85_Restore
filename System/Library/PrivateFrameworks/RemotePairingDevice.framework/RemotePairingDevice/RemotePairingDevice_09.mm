unint64_t sub_262021030(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6C65646F6DLL;
      break;
    case 3:
      result = 1684628597;
      break;
    case 4:
      result = 1684628325;
      break;
    case 5:
      result = 0x564B656369766564;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_262021100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262020DF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262021128(uint64_t a1)
{
  v2 = sub_262024A38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262021164(uint64_t a1)
{
  v2 = sub_262024A38();

  return MEMORY[0x2821FE720](a1, v2);
}

void PeerDeviceInfo.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA878, &qword_262045D90);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_37();
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v8 = v4[3];
  v9 = v4;
  v11 = v10;
  OUTLINED_FUNCTION_42_0(v9, v8);
  sub_262024A38();
  OUTLINED_FUNCTION_81_1();
  sub_26203AE5C();
  OUTLINED_FUNCTION_55_3();
  sub_26203AAAC();
  if (!v1)
  {
    OUTLINED_FUNCTION_72_3(1);
    OUTLINED_FUNCTION_59_3();
    sub_26203AAFC();
    OUTLINED_FUNCTION_72_3(2);
    OUTLINED_FUNCTION_59_3();
    sub_26203AAFC();
    OUTLINED_FUNCTION_72_3(3);
    OUTLINED_FUNCTION_59_3();
    sub_26203AAFC();
    OUTLINED_FUNCTION_72_3(4);
    OUTLINED_FUNCTION_59_3();
    sub_26203AAEC();
    sub_261F81D84(v12, v13);
    sub_261FC7838();
    OUTLINED_FUNCTION_63_3();
    sub_26203AADC();
    sub_261F6ADEC(v12, v13);
    sub_26203AABC();
  }

  (*(v6 + 8))(v2, v11);
  OUTLINED_FUNCTION_38_0();
}

void PeerDeviceInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_98_1();
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA880, &qword_262045D98);
  OUTLINED_FUNCTION_0();
  v31 = v30;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_42_0(v24, v24[3]);
  sub_262024A38();
  OUTLINED_FUNCTION_77_1();
  sub_26203AE3C();
  if (v26)
  {
    OUTLINED_FUNCTION_99_1();
    __swift_destroy_boxed_opaque_existential_0Tm(v24);

    if (v25)
    {

      if (!v27)
      {
LABEL_5:
        if (!v31)
        {
LABEL_7:
          sub_261F6ADEC(v29, 0xF000000000000000);
          goto LABEL_8;
        }

LABEL_6:

        goto LABEL_7;
      }
    }

    else if (!v27)
    {
      goto LABEL_5;
    }

    if (!v31)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_12_13();
  v33 = sub_26203A99C();
  v35 = v34;
  OUTLINED_FUNCTION_12_13();
  v50 = sub_26203A9EC();
  v53 = v36;
  OUTLINED_FUNCTION_12_13();
  v49 = sub_26203A9EC();
  v52 = v37;
  OUTLINED_FUNCTION_12_13();
  v48 = sub_26203A9EC();
  v51 = v38;
  LOBYTE(v55) = 4;
  OUTLINED_FUNCTION_12_13();
  v47 = sub_26203A9DC();
  v68 = v39 & 1;
  sub_261FCA870();
  OUTLINED_FUNCTION_43_4();
  sub_26203A9CC();
  v46 = v33;
  v45 = v29;
  v41 = v55;
  v40 = v56;
  sub_261F6ADEC(0, 0xF000000000000000);
  OUTLINED_FUNCTION_43_4();
  v42 = sub_26203A9AC();
  v43 = OUTLINED_FUNCTION_11_10();
  v44(v43);
  v54[0] = v46;
  v54[1] = v35;
  v54[2] = v50;
  v54[3] = v53;
  v54[4] = v49;
  v54[5] = v52;
  v54[6] = v48;
  v54[7] = v51;
  v54[8] = v47;
  LOBYTE(v54[9]) = v68;
  v54[10] = v55;
  v54[11] = v56;
  LOBYTE(v54[12]) = v42;
  memcpy(v45, v54, 0x61uLL);
  sub_261FBA7D0(v54, &v55);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  v55 = v46;
  v56 = v35;
  v57 = v50;
  v58 = v53;
  v59 = v49;
  v60 = v52;
  v61 = v48;
  v62 = v51;
  v63 = v47;
  v64 = v68;
  v65 = v41;
  v66 = v40;
  v67 = v42;
  sub_261FBA82C(&v55);
LABEL_8:
  OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_38_0();
}

uint64_t ListenerStartedResponse.deviceRawPublicKey.getter()
{
  v0 = OUTLINED_FUNCTION_47();
  sub_261F6B73C(v0, v1);
  return OUTLINED_FUNCTION_47();
}

uint64_t ListenerStartedResponse.init(port:deviceRawPublicKey:serviceName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_2620218D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953656688 && a2 == 0xE400000000000000;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000262052840 == a2;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61)
    {

      return 2;
    }

    else
    {
      v8 = sub_26203AC0C();

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

uint64_t sub_2620219EC(char a1)
{
  if (!a1)
  {
    return 1953656688;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x4E65636976726573;
}

uint64_t sub_262021A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2620218D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262021A78(uint64_t a1)
{
  v2 = sub_262024A8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262021AB4(uint64_t a1)
{
  v2 = sub_262024A8C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ListenerStartedResponse.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA888, &qword_262045DA0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_37();
  v7 = *(v0 + 16);
  v11 = *(v0 + 8);
  v8 = OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_42_0(v8, v9);
  sub_262024A8C();
  OUTLINED_FUNCTION_81_1();
  sub_26203AE5C();
  sub_26203AB6C();
  if (!v1)
  {
    OUTLINED_FUNCTION_51_3();
    sub_261F6B73C(v10, v7);
    sub_261FC7838();
    OUTLINED_FUNCTION_60_3();
    OUTLINED_FUNCTION_30_2();
    sub_26203AB3C();
    sub_261F6BFFC(v11, v7);
    OUTLINED_FUNCTION_72_3(2);
    OUTLINED_FUNCTION_30_6();
    OUTLINED_FUNCTION_30_2();
    sub_26203AAFC();
  }

  (*(v5 + 8))(v2, v3);
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_38_0();
}

void ListenerStartedResponse.init(from:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_98_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA898, &qword_262045DA8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_22_10();
  sub_262024A8C();
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_52_3();
  sub_26203AE3C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
  }

  else
  {
    LOBYTE(v16) = 0;
    OUTLINED_FUNCTION_46_2();
    v5 = sub_26203AA5C();
    OUTLINED_FUNCTION_51_3();
    sub_261FCA870();
    OUTLINED_FUNCTION_65_2();
    OUTLINED_FUNCTION_6_15();
    sub_26203AA2C();
    OUTLINED_FUNCTION_46_2();
    v6 = sub_26203A9EC();
    v8 = v7;
    v15 = v6;
    v9 = OUTLINED_FUNCTION_100();
    v10(v9);
    *v3 = v5;
    *(v3 + 8) = v16;
    *(v3 + 16) = v17;
    *(v3 + 24) = v15;
    *(v3 + 32) = v8;
    v11 = OUTLINED_FUNCTION_11_0();
    sub_261F6B73C(v11, v12);

    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v13 = OUTLINED_FUNCTION_11_0();
    sub_261F6BFFC(v13, v14);
  }

  OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_38_0();
}

uint64_t StreamEncryptedMessage.encryptedData.getter()
{
  v0 = OUTLINED_FUNCTION_47();
  sub_261F6B73C(v0, v1);
  return OUTLINED_FUNCTION_47();
}

uint64_t sub_262021EB0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26203AC0C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_262021F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262021EB0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_262021F84(uint64_t a1)
{
  v2 = sub_262024AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262021FC0(uint64_t a1)
{
  v2 = sub_262024AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void StreamEncryptedMessage.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA8A0, &qword_262045DB0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_0();
  v8 = *v0;
  v9 = v0[1];
  OUTLINED_FUNCTION_42_0(v3, v3[3]);
  v10 = OUTLINED_FUNCTION_126();
  sub_261F6B73C(v10, v11);
  sub_262024AE0();
  OUTLINED_FUNCTION_85_2();
  OUTLINED_FUNCTION_79_2();
  sub_26203AE5C();
  sub_261FC7838();
  sub_26203AB3C();
  sub_261F6BFFC(v8, v9);
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_38_0();
}

void StreamEncryptedMessage.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA8B0, &qword_262045DB8);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_22_10();
  sub_262024AE0();
  OUTLINED_FUNCTION_52_3();
  sub_26203AE3C();
  if (!v0)
  {
    sub_261FCA870();
    OUTLINED_FUNCTION_32_5();
    sub_26203AA2C();
    (*(v8 + 8))(v1, v6);
    *v5 = v10;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  OUTLINED_FUNCTION_38_0();
}

void PropertyListCodable.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v46 = v3;
  v47 = v0;
  v5 = v4;
  v7 = v6;
  v49[5] = *MEMORY[0x277D85DE8];
  sub_26203A6DC();
  OUTLINED_FUNCTION_0();
  v44 = v9;
  v45 = v8;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_16_0();
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PropertyListCodable(0, v5, v14, v15);
  OUTLINED_FUNCTION_0();
  v42 = v17;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14();
  v19 = OUTLINED_FUNCTION_126();
  __swift_project_boxed_opaque_existential_0Tm(v19, v20);
  v21 = v47;
  OUTLINED_FUNCTION_55_3();
  sub_26203AE2C();
  if (v21)
  {
    goto LABEL_10;
  }

  v39[0] = v1;
  v39[1] = v13;
  v40 = v16;
  v41 = v2;
  v47 = v7;
  OUTLINED_FUNCTION_26_8(v49);
  sub_261FCA870();
  sub_26203AC2C();
  v22 = objc_opt_self();
  OUTLINED_FUNCTION_94_0();
  v23 = sub_26203952C();
  v48 = 0;
  v24 = [v22 propertyListWithData:v23 options:0 format:0 error:&v48];

  v25 = v47;
  if (!v24)
  {
    v35 = v48;
    sub_2620393FC();

    goto LABEL_8;
  }

  v26 = v48;
  sub_26203A73C();
  swift_unknownObjectRelease();
  v27 = v41;
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v5);
    (*(v44 + 8))(v27, v45);
    v36 = sub_261F9D610();
    OUTLINED_FUNCTION_91_1(&type metadata for RemotePairingError, v36);
    sub_261F9BCE0();
    sub_26203ACEC();
LABEL_8:
    swift_willThrow();
    v37 = OUTLINED_FUNCTION_94_0();
    sub_261F6BFFC(v37, v38);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    v7 = v47;
LABEL_10:
    v34 = v7;
    goto LABEL_11;
  }

  v28 = OUTLINED_FUNCTION_94_0();
  sub_261F6BFFC(v28, v29);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v5);
  v30 = *(v43 + 32);
  v31 = OUTLINED_FUNCTION_30_6();
  v30(v31);
  v32 = v39[0];
  v33 = OUTLINED_FUNCTION_35_3();
  v30(v33);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  (*(v42 + 32))(v46, v32, v40);
  v34 = v25;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  OUTLINED_FUNCTION_38_0();
}

uint64_t PropertyListCodable.encode(to:)(void *a1, uint64_t a2)
{
  v11[5] = *MEMORY[0x277D85DE8];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  OUTLINED_FUNCTION_30_6();
  sub_26203AE4C();
  v2 = objc_opt_self();
  v10[0] = 0;
  v3 = [v2 dataWithPropertyList:sub_26203ABFC() format:200 options:0 error:v10];
  swift_unknownObjectRelease();
  v4 = v10[0];
  if (v3)
  {
    v5 = sub_26203954C();
    v7 = v6;

    v10[0] = v5;
    v10[1] = v7;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_261FC7838();
    sub_26203AC4C();
    sub_261F6BFFC(v5, v7);
  }

  else
  {
    v8 = v4;
    sub_2620393FC();

    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

RemotePairingDevice::PairingData::Kind_optional __swiftcall PairingData.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26203A96C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PairingData.Kind.rawValue.getter()
{
  result = 0xD000000000000013;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_262022990@<X0>(unint64_t *a1@<X8>)
{
  result = PairingData.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PairingData.data.getter()
{
  v0 = OUTLINED_FUNCTION_47();
  sub_261F6B73C(v0, v1);
  return OUTLINED_FUNCTION_47();
}

uint64_t PairingData.data.setter()
{
  OUTLINED_FUNCTION_93();
  result = sub_261F6BFFC(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t PairingData.sendingHost.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t PairingData.pairingOptions.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_262022C28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x77654E7472617473 && a2 == 0xEF6E6F6973736553;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1635017060 && a2 == 0xE400000000000000;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x48676E69646E6573 && a2 == 0xEB0000000074736FLL;
        if (v8 || (sub_26203AC0C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4F676E6972696170 && a2 == 0xEE00736E6F697470)
        {

          return 4;
        }

        else
        {
          v10 = sub_26203AC0C();

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

uint64_t sub_262022DE4(char a1)
{
  result = 0x77654E7472617473;
  switch(a1)
  {
    case 1:
      result = 1684957547;
      break;
    case 2:
      result = 1635017060;
      break;
    case 3:
      result = 0x48676E69646E6573;
      break;
    case 4:
      result = 0x4F676E6972696170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_262022E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262022C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262022EC0(uint64_t a1)
{
  v2 = sub_262024B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262022EFC(uint64_t a1)
{
  v2 = sub_262024B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

void PairingData.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA8B8, &qword_262045DC0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_37();
  v12 = *(v0 + 16);
  v13 = *(v0 + 8);
  OUTLINED_FUNCTION_26_8(v4);
  sub_262024B4C();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_52_3();
  sub_26203AE5C();
  OUTLINED_FUNCTION_30_2();
  sub_26203AB0C();
  if (!v1)
  {
    OUTLINED_FUNCTION_51_3();
    sub_262024BA0();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_30_2();
    sub_26203AB3C();
    OUTLINED_FUNCTION_62_3();
    sub_261F6B73C(v9, v12);
    sub_261FC7838();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_30_2();
    sub_26203AB3C();
    sub_261F6BFFC(v13, v12);
    OUTLINED_FUNCTION_72_3(3);
    OUTLINED_FUNCTION_30_2();
    sub_26203AAAC();

    v10 = OUTLINED_FUNCTION_56_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    sub_261F67F70(qword_28108C4E8, &qword_27FEFA8C0, &qword_262045DC8, &protocol conformance descriptor for PropertyListCodable<A>);
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_30_2();
    sub_26203AADC();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_38_0();
}

void PairingData.init(from:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_98_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA8C8, &qword_262045DD0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_22_10();
  sub_262024B4C();
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_52_3();
  sub_26203AE3C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
  }

  else
  {
    LOBYTE(v18) = 0;
    OUTLINED_FUNCTION_46_2();
    v5 = sub_26203A9FC();
    OUTLINED_FUNCTION_51_3();
    sub_262024BF4();
    OUTLINED_FUNCTION_65_2();
    OUTLINED_FUNCTION_3_21();
    sub_26203AA2C();
    OUTLINED_FUNCTION_62_3();
    sub_261FCA870();
    OUTLINED_FUNCTION_65_2();
    OUTLINED_FUNCTION_3_21();
    sub_26203AA2C();
    v20 = v5;
    v17 = v3;
    v6 = v18;
    LOBYTE(v18) = 3;
    OUTLINED_FUNCTION_46_2();
    v7 = sub_26203A99C();
    v9 = v8;
    v16 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA8C0, &qword_262045DC8);
    sub_261F67F70(&qword_28108C4E0, &qword_27FEFA8C0, &qword_262045DC8, &protocol conformance descriptor for PropertyListCodable<A>);
    OUTLINED_FUNCTION_65_2();
    OUTLINED_FUNCTION_46_2();
    sub_26203A9CC();
    v10 = OUTLINED_FUNCTION_35_3();
    v11(v10);

    *v17 = v20 & 1;
    *(v17 + 1) = 0;
    *(v17 + 8) = v6;
    *(v17 + 16) = v19;
    *(v17 + 24) = v16;
    *(v17 + 32) = v9;
    *(v17 + 40) = v18;
    v12 = OUTLINED_FUNCTION_55_3();
    sub_261F6B73C(v12, v13);

    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v14 = OUTLINED_FUNCTION_55_3();
    sub_261F6BFFC(v14, v15);
  }

  OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_262023494()
{
  result = qword_28108B740;
  if (!qword_28108B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B740);
  }

  return result;
}

unint64_t sub_2620234E8()
{
  result = qword_28108C0E8;
  if (!qword_28108C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C0E8);
  }

  return result;
}

unint64_t sub_26202353C()
{
  result = qword_28108B750;
  if (!qword_28108B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B750);
  }

  return result;
}

unint64_t sub_262023590()
{
  result = qword_28108C0D8;
  if (!qword_28108C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C0D8);
  }

  return result;
}

unint64_t sub_2620235E4()
{
  result = qword_28108B748;
  if (!qword_28108B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B748);
  }

  return result;
}

unint64_t sub_262023638()
{
  result = qword_28108C418;
  if (!qword_28108C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C418);
  }

  return result;
}

unint64_t sub_26202368C()
{
  result = qword_27FEFA5D0;
  if (!qword_27FEFA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA5D0);
  }

  return result;
}

unint64_t sub_2620236E0()
{
  result = qword_28108C430;
  if (!qword_28108C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C430);
  }

  return result;
}

unint64_t sub_262023734()
{
  result = qword_28108CE78;
  if (!qword_28108CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CE78);
  }

  return result;
}

unint64_t sub_262023788()
{
  result = qword_27FEFA5D8;
  if (!qword_27FEFA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA5D8);
  }

  return result;
}

unint64_t sub_2620237DC()
{
  result = qword_27FEFA5E0;
  if (!qword_27FEFA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA5E0);
  }

  return result;
}

unint64_t sub_262023830()
{
  result = qword_27FEFA5E8;
  if (!qword_27FEFA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA5E8);
  }

  return result;
}

unint64_t sub_262023884()
{
  result = qword_27FEFA5F0;
  if (!qword_27FEFA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA5F0);
  }

  return result;
}

unint64_t sub_2620238D8()
{
  result = qword_28108C3E0;
  if (!qword_28108C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C3E0);
  }

  return result;
}

unint64_t sub_26202392C()
{
  result = qword_27FEFA5F8;
  if (!qword_27FEFA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA5F8);
  }

  return result;
}

unint64_t sub_262023980()
{
  result = qword_28108C468;
  if (!qword_28108C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C468);
  }

  return result;
}

unint64_t sub_2620239D4()
{
  result = qword_28108CCE8;
  if (!qword_28108CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CCE8);
  }

  return result;
}

unint64_t sub_262023A28()
{
  result = qword_27FEFA650;
  if (!qword_27FEFA650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA650);
  }

  return result;
}

unint64_t sub_262023A7C()
{
  result = qword_28108CCE0;
  if (!qword_28108CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CCE0);
  }

  return result;
}

unint64_t sub_262023AD0()
{
  result = qword_28108C378;
  if (!qword_28108C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C378);
  }

  return result;
}

unint64_t sub_262023B24()
{
  result = qword_27FEFA690;
  if (!qword_27FEFA690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA690);
  }

  return result;
}

unint64_t sub_262023B78()
{
  result = qword_27FEFA698;
  if (!qword_27FEFA698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA698);
  }

  return result;
}

unint64_t sub_262023BCC()
{
  result = qword_27FEFA6A0;
  if (!qword_27FEFA6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA6A0);
  }

  return result;
}

unint64_t sub_262023C20()
{
  result = qword_28108C338;
  if (!qword_28108C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C338);
  }

  return result;
}

unint64_t sub_262023C74()
{
  result = qword_27FEFA6A8;
  if (!qword_27FEFA6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA6A8);
  }

  return result;
}

unint64_t sub_262023CC8()
{
  result = qword_27FEFA6C0;
  if (!qword_27FEFA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA6C0);
  }

  return result;
}

unint64_t sub_262023D1C()
{
  result = qword_27FEFA6C8;
  if (!qword_27FEFA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA6C8);
  }

  return result;
}

unint64_t sub_262023D70()
{
  result = qword_28108C350;
  if (!qword_28108C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C350);
  }

  return result;
}

unint64_t sub_262023DC4()
{
  result = qword_27FEFA6D0;
  if (!qword_27FEFA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA6D0);
  }

  return result;
}

unint64_t sub_262023E18()
{
  result = qword_28108C230;
  if (!qword_28108C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C230);
  }

  return result;
}

uint64_t sub_262023E6C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEFA6B0, &qword_262045C50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_262023EE4()
{
  result = qword_28108C570;
  if (!qword_28108C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C570);
  }

  return result;
}

unint64_t sub_262023F38()
{
  result = qword_28108C7B0;
  if (!qword_28108C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C7B0);
  }

  return result;
}

unint64_t sub_262023F8C()
{
  result = qword_28108C2E8;
  if (!qword_28108C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C2E8);
  }

  return result;
}

unint64_t sub_262023FE0()
{
  result = qword_27FEFA758;
  if (!qword_27FEFA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA758);
  }

  return result;
}

unint64_t sub_262024034()
{
  result = qword_27FEFA760;
  if (!qword_27FEFA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA760);
  }

  return result;
}

unint64_t sub_262024088()
{
  result = qword_27FEFA768;
  if (!qword_27FEFA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA768);
  }

  return result;
}

unint64_t sub_2620240DC()
{
  result = qword_27FEFA770;
  if (!qword_27FEFA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA770);
  }

  return result;
}

unint64_t sub_262024130()
{
  result = qword_27FEFA778;
  if (!qword_27FEFA778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA778);
  }

  return result;
}

unint64_t sub_262024184()
{
  result = qword_27FEFA780;
  if (!qword_27FEFA780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA780);
  }

  return result;
}

unint64_t sub_2620241D8()
{
  result = qword_28108C278;
  if (!qword_28108C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C278);
  }

  return result;
}

unint64_t sub_26202422C()
{
  result = qword_27FEFA788;
  if (!qword_27FEFA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA788);
  }

  return result;
}

unint64_t sub_262024280()
{
  result = qword_28108C2A0;
  if (!qword_28108C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C2A0);
  }

  return result;
}

unint64_t sub_2620242D4()
{
  result = qword_28108C660;
  if (!qword_28108C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C660);
  }

  return result;
}

unint64_t sub_262024334()
{
  result = qword_27FEFA7D8;
  if (!qword_27FEFA7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA7D8);
  }

  return result;
}

unint64_t sub_262024388()
{
  result = qword_27FEFA7E0;
  if (!qword_27FEFA7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA7E0);
  }

  return result;
}

unint64_t sub_2620243DC()
{
  result = qword_28108C4C8;
  if (!qword_28108C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C4C8);
  }

  return result;
}

unint64_t sub_262024430()
{
  result = qword_28108C480;
  if (!qword_28108C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C480);
  }

  return result;
}

unint64_t sub_262024484()
{
  result = qword_28108C260;
  if (!qword_28108C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C260);
  }

  return result;
}

unint64_t sub_2620244D8()
{
  result = qword_28108C498;
  if (!qword_28108C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C498);
  }

  return result;
}

unint64_t sub_26202452C()
{
  result = qword_27FEFA808;
  if (!qword_27FEFA808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA808);
  }

  return result;
}

unint64_t sub_262024580()
{
  result = qword_28108C4B0;
  if (!qword_28108C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C4B0);
  }

  return result;
}

unint64_t sub_2620245D4()
{
  result = qword_28108C3A8;
  if (!qword_28108C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C3A8);
  }

  return result;
}

unint64_t sub_262024628()
{
  result = qword_27FEFA830;
  if (!qword_27FEFA830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA830);
  }

  return result;
}

unint64_t sub_26202467C()
{
  result = qword_28108C310;
  if (!qword_28108C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C310);
  }

  return result;
}

unint64_t sub_2620246D0()
{
  result = qword_28108C3A0;
  if (!qword_28108C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C3A0);
  }

  return result;
}

unint64_t sub_262024724()
{
  result = qword_28108C7C8;
  if (!qword_28108C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C7C8);
  }

  return result;
}

unint64_t sub_262024778()
{
  result = qword_27FEFA840;
  if (!qword_27FEFA840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA840);
  }

  return result;
}

uint64_t sub_2620247CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_262024810()
{
  result = qword_28108C0F0;
  if (!qword_28108C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C0F0);
  }

  return result;
}

unint64_t sub_262024864()
{
  result = qword_28108C678[0];
  if (!qword_28108C678[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28108C678);
  }

  return result;
}

unint64_t sub_2620248B8()
{
  result = qword_28108C118;
  if (!qword_28108C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C118);
  }

  return result;
}

uint64_t sub_26202490C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9978, &qword_262045D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26202497C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9978, &qword_262045D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2620249E4()
{
  result = qword_27FEFA870;
  if (!qword_27FEFA870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA870);
  }

  return result;
}

unint64_t sub_262024A38()
{
  result = qword_28108CE90;
  if (!qword_28108CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CE90);
  }

  return result;
}

unint64_t sub_262024A8C()
{
  result = qword_27FEFA890;
  if (!qword_27FEFA890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA890);
  }

  return result;
}

unint64_t sub_262024AE0()
{
  result = qword_27FEFA8A8;
  if (!qword_27FEFA8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA8A8);
  }

  return result;
}

unint64_t sub_262024B4C()
{
  result = qword_28108CD18[0];
  if (!qword_28108CD18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28108CD18);
  }

  return result;
}

unint64_t sub_262024BA0()
{
  result = qword_28108CD00;
  if (!qword_28108CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CD00);
  }

  return result;
}

unint64_t sub_262024BF4()
{
  result = qword_28108CCF0;
  if (!qword_28108CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CCF0);
  }

  return result;
}

unint64_t sub_262024C4C()
{
  result = qword_27FEFA8D0;
  if (!qword_27FEFA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA8D0);
  }

  return result;
}

uint64_t sub_262024CA0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[146])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
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

uint64_t sub_262024CDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 146) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 146) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_262024D5C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 7 && *(a1 + 130))
    {
      v2 = *a1 + 6;
    }

    else
    {
      v2 = ((*(a1 + 128) >> 10) & 6 | (*(a1 + 128) >> 13) & 1) ^ 7;
      if (v2 >= 6)
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

uint64_t sub_262024DA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 7;
    if (a3 >= 7)
    {
      *(result + 130) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 130) = 0;
    }

    if (a2)
    {
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 128) = ((((-a2 >> 1) & 3) - 4 * a2) & 7) << 11;
    }
  }

  return result;
}

uint64_t sub_262024E54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1E && *(a1 + 130))
    {
      v2 = *a1 + 29;
    }

    else
    {
      v2 = ((*(a1 + 128) >> 9) & 0x1C | (*(a1 + 128) >> 14)) ^ 0x1F;
      if (v2 >= 0x1D)
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

uint64_t sub_262024EA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 130) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 130) = 0;
    }

    if (a2)
    {
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 128) = (((-a2 >> 2) & 7) - 8 * a2) << 11;
    }
  }

  return result;
}

uint64_t sub_262024F50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_262024F98(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 96) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 97) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 0;
      *(a1 + 72) = 2 * -a2;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      return result;
    }

    *(a1 + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26202501C(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    *(result + 72) = *(result + 72) & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 72) = 0xC000000000000000;
    *(result + 96) = 0;
  }

  return result;
}

uint64_t sub_262025070(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_262025090(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void *sub_2620250CC(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0x3000000000000000;
    result[2] = 0;
    result[3] = 0;
  }

  return result;
}

uint64_t sub_26202510C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 122))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 121);
      if (v3 <= 6)
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

uint64_t sub_26202514C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 122) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 122) = 0;
    }

    if (a2)
    {
      *(result + 121) = -a2;
    }
  }

  return result;
}

uint64_t sub_2620251B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    LOBYTE(a2) = 6;
    *(result + 120) = 0;
  }

  *(result + 121) = a2;
  return result;
}

uint64_t sub_262025218(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_262025258(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2620252C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26202532C(uint64_t a1, int a2)
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

uint64_t sub_26202536C(uint64_t result, int a2, int a3)
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

uint64_t sub_2620253C0(uint64_t a1, unsigned int a2)
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

uint64_t sub_26202540C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_262025464(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2620254D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_262025610(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_262025814(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_262025868(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PairingData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PeerDeviceInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_262025AB8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_93_0(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_93_0((*a1 | (v4 << 8)) - 4);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_93_0((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_93_0((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_93_0(v8);
}

_BYTE *sub_262025B3C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_92_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_90_1(result, v6);
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
          result = OUTLINED_FUNCTION_62(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ControlChannelMessage.Response.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ControlChannelMessage.Request.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ControlChannelMessage.Event.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ControlChannelMessage.Event.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2620260E4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_93_0(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_93_0((*a1 | (v4 << 8)) - 3);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_93_0((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_93_0((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_93_0(v8);
}

_BYTE *sub_262026168(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_92_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_90_1(result, v6);
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
          result = OUTLINED_FUNCTION_62(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_262026234(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_93_0(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_93_0((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_93_0((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_93_0((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_93_0(v8);
}

_BYTE *sub_2620262B8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_92_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_90_1(result, v6);
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
          result = OUTLINED_FUNCTION_62(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_262026394(_BYTE *result, int a2, int a3)
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

unint64_t sub_262026444()
{
  result = qword_27FEFA8D8;
  if (!qword_27FEFA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA8D8);
  }

  return result;
}

unint64_t sub_26202649C()
{
  result = qword_27FEFA8E0;
  if (!qword_27FEFA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA8E0);
  }

  return result;
}

unint64_t sub_2620264F4()
{
  result = qword_27FEFA8E8;
  if (!qword_27FEFA8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA8E8);
  }

  return result;
}

unint64_t sub_26202654C()
{
  result = qword_27FEFA8F0;
  if (!qword_27FEFA8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA8F0);
  }

  return result;
}

unint64_t sub_2620265A4()
{
  result = qword_27FEFA8F8;
  if (!qword_27FEFA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA8F8);
  }

  return result;
}

unint64_t sub_2620265FC()
{
  result = qword_27FEFA900;
  if (!qword_27FEFA900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA900);
  }

  return result;
}

unint64_t sub_262026654()
{
  result = qword_27FEFA908;
  if (!qword_27FEFA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA908);
  }

  return result;
}

unint64_t sub_2620266AC()
{
  result = qword_27FEFA910;
  if (!qword_27FEFA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA910);
  }

  return result;
}

unint64_t sub_262026704()
{
  result = qword_27FEFA918;
  if (!qword_27FEFA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA918);
  }

  return result;
}

unint64_t sub_26202675C()
{
  result = qword_27FEFA920;
  if (!qword_27FEFA920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA920);
  }

  return result;
}

unint64_t sub_2620267B4()
{
  result = qword_27FEFA928;
  if (!qword_27FEFA928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA928);
  }

  return result;
}

unint64_t sub_26202680C()
{
  result = qword_27FEFA930;
  if (!qword_27FEFA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA930);
  }

  return result;
}

unint64_t sub_262026864()
{
  result = qword_27FEFA938;
  if (!qword_27FEFA938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA938);
  }

  return result;
}

unint64_t sub_2620268BC()
{
  result = qword_27FEFA940;
  if (!qword_27FEFA940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA940);
  }

  return result;
}

unint64_t sub_262026914()
{
  result = qword_27FEFA948;
  if (!qword_27FEFA948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA948);
  }

  return result;
}

unint64_t sub_26202696C()
{
  result = qword_27FEFA950;
  if (!qword_27FEFA950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA950);
  }

  return result;
}

unint64_t sub_2620269C4()
{
  result = qword_27FEFA958;
  if (!qword_27FEFA958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA958);
  }

  return result;
}

unint64_t sub_262026A1C()
{
  result = qword_27FEFA960;
  if (!qword_27FEFA960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA960);
  }

  return result;
}

unint64_t sub_262026A74()
{
  result = qword_27FEFA968;
  if (!qword_27FEFA968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA968);
  }

  return result;
}

unint64_t sub_262026ACC()
{
  result = qword_27FEFA970;
  if (!qword_27FEFA970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA970);
  }

  return result;
}

unint64_t sub_262026B24()
{
  result = qword_27FEFA978;
  if (!qword_27FEFA978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA978);
  }

  return result;
}

unint64_t sub_262026B7C()
{
  result = qword_27FEFA980;
  if (!qword_27FEFA980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA980);
  }

  return result;
}

unint64_t sub_262026BD4()
{
  result = qword_27FEFA988;
  if (!qword_27FEFA988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA988);
  }

  return result;
}

unint64_t sub_262026C2C()
{
  result = qword_27FEFA990;
  if (!qword_27FEFA990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA990);
  }

  return result;
}

unint64_t sub_262026C84()
{
  result = qword_27FEFA998;
  if (!qword_27FEFA998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA998);
  }

  return result;
}

unint64_t sub_262026CDC()
{
  result = qword_27FEFA9A0;
  if (!qword_27FEFA9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA9A0);
  }

  return result;
}

unint64_t sub_262026D34()
{
  result = qword_27FEFA9A8;
  if (!qword_27FEFA9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA9A8);
  }

  return result;
}

unint64_t sub_262026D8C()
{
  result = qword_27FEFA9B0;
  if (!qword_27FEFA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA9B0);
  }

  return result;
}

unint64_t sub_262026DE4()
{
  result = qword_27FEFA9B8;
  if (!qword_27FEFA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA9B8);
  }

  return result;
}

unint64_t sub_262026E3C()
{
  result = qword_28108CD08;
  if (!qword_28108CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CD08);
  }

  return result;
}

unint64_t sub_262026E94()
{
  result = qword_28108CD10;
  if (!qword_28108CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CD10);
  }

  return result;
}

unint64_t sub_262026EEC()
{
  result = qword_27FEFA9C0;
  if (!qword_27FEFA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA9C0);
  }

  return result;
}

unint64_t sub_262026F44()
{
  result = qword_27FEFA9C8;
  if (!qword_27FEFA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA9C8);
  }

  return result;
}

unint64_t sub_262026F9C()
{
  result = qword_27FEFA9D0;
  if (!qword_27FEFA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA9D0);
  }

  return result;
}

unint64_t sub_262026FF4()
{
  result = qword_27FEFA9D8;
  if (!qword_27FEFA9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA9D8);
  }

  return result;
}

unint64_t sub_26202704C()
{
  result = qword_28108CE80;
  if (!qword_28108CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CE80);
  }

  return result;
}

unint64_t sub_2620270A4()
{
  result = qword_28108CE88;
  if (!qword_28108CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CE88);
  }

  return result;
}

unint64_t sub_2620270FC()
{
  result = qword_28108C668;
  if (!qword_28108C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C668);
  }

  return result;
}

unint64_t sub_262027154()
{
  result = qword_28108C670;
  if (!qword_28108C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C670);
  }

  return result;
}

unint64_t sub_2620271AC()
{
  result = qword_28108C7B8;
  if (!qword_28108C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C7B8);
  }

  return result;
}

unint64_t sub_262027204()
{
  result = qword_28108C7C0;
  if (!qword_28108C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C7C0);
  }

  return result;
}

unint64_t sub_26202725C()
{
  result = qword_28108C4A0;
  if (!qword_28108C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C4A0);
  }

  return result;
}

unint64_t sub_2620272B4()
{
  result = qword_28108C4A8;
  if (!qword_28108C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C4A8);
  }

  return result;
}

unint64_t sub_26202730C()
{
  result = qword_28108C488;
  if (!qword_28108C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C488);
  }

  return result;
}

unint64_t sub_262027364()
{
  result = qword_28108C490;
  if (!qword_28108C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C490);
  }

  return result;
}

unint64_t sub_2620273BC()
{
  result = qword_28108C470;
  if (!qword_28108C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C470);
  }

  return result;
}

unint64_t sub_262027414()
{
  result = qword_28108C478;
  if (!qword_28108C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C478);
  }

  return result;
}

unint64_t sub_26202746C()
{
  result = qword_28108C4B8;
  if (!qword_28108C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C4B8);
  }

  return result;
}

unint64_t sub_2620274C4()
{
  result = qword_28108C4C0;
  if (!qword_28108C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C4C0);
  }

  return result;
}

unint64_t sub_26202751C()
{
  result = qword_28108C290;
  if (!qword_28108C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C290);
  }

  return result;
}

unint64_t sub_262027574()
{
  result = qword_28108C298;
  if (!qword_28108C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C298);
  }

  return result;
}

unint64_t sub_2620275CC()
{
  result = qword_28108C2A8;
  if (!qword_28108C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C2A8);
  }

  return result;
}

unint64_t sub_262027624()
{
  result = qword_28108C2B0;
  if (!qword_28108C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C2B0);
  }

  return result;
}

unint64_t sub_26202767C()
{
  result = qword_28108C268;
  if (!qword_28108C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C268);
  }

  return result;
}

unint64_t sub_2620276D4()
{
  result = qword_28108C270;
  if (!qword_28108C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C270);
  }

  return result;
}

unint64_t sub_26202772C()
{
  result = qword_28108C300;
  if (!qword_28108C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C300);
  }

  return result;
}

unint64_t sub_262027784()
{
  result = qword_28108C308;
  if (!qword_28108C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C308);
  }

  return result;
}

unint64_t sub_2620277DC()
{
  result = qword_28108C2F0;
  if (!qword_28108C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C2F0);
  }

  return result;
}

unint64_t sub_262027834()
{
  result = qword_28108C2F8;
  if (!qword_28108C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C2F8);
  }

  return result;
}

unint64_t sub_26202788C()
{
  result = qword_28108C2C8;
  if (!qword_28108C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C2C8);
  }

  return result;
}

unint64_t sub_2620278E4()
{
  result = qword_28108C2D0;
  if (!qword_28108C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C2D0);
  }

  return result;
}

unint64_t sub_26202793C()
{
  result = qword_28108C2B8;
  if (!qword_28108C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C2B8);
  }

  return result;
}

unint64_t sub_262027994()
{
  result = qword_28108C2C0;
  if (!qword_28108C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C2C0);
  }

  return result;
}

unint64_t sub_2620279EC()
{
  result = qword_28108C280;
  if (!qword_28108C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C280);
  }

  return result;
}

unint64_t sub_262027A44()
{
  result = qword_28108C288;
  if (!qword_28108C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C288);
  }

  return result;
}

unint64_t sub_262027A9C()
{
  result = qword_28108C2D8;
  if (!qword_28108C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C2D8);
  }

  return result;
}

unint64_t sub_262027AF4()
{
  result = qword_28108C2E0;
  if (!qword_28108C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C2E0);
  }

  return result;
}

unint64_t sub_262027B4C()
{
  result = qword_28108C340;
  if (!qword_28108C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C340);
  }

  return result;
}

unint64_t sub_262027BA4()
{
  result = qword_28108C348;
  if (!qword_28108C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C348);
  }

  return result;
}

unint64_t sub_262027BFC()
{
  result = qword_28108C358;
  if (!qword_28108C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C358);
  }

  return result;
}

unint64_t sub_262027C54()
{
  result = qword_28108C360;
  if (!qword_28108C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C360);
  }

  return result;
}

unint64_t sub_262027CAC()
{
  result = qword_28108C328;
  if (!qword_28108C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C328);
  }

  return result;
}

unint64_t sub_262027D04()
{
  result = qword_28108C330;
  if (!qword_28108C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C330);
  }

  return result;
}

unint64_t sub_262027D5C()
{
  result = qword_28108C318;
  if (!qword_28108C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C318);
  }

  return result;
}

unint64_t sub_262027DB4()
{
  result = qword_28108C320;
  if (!qword_28108C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C320);
  }

  return result;
}

unint64_t sub_262027E0C()
{
  result = qword_28108C390;
  if (!qword_28108C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C390);
  }

  return result;
}

unint64_t sub_262027E64()
{
  result = qword_28108C398;
  if (!qword_28108C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C398);
  }

  return result;
}

unint64_t sub_262027EBC()
{
  result = qword_28108C380;
  if (!qword_28108C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C380);
  }

  return result;
}

unint64_t sub_262027F14()
{
  result = qword_28108C388;
  if (!qword_28108C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C388);
  }

  return result;
}

unint64_t sub_262027F6C()
{
  result = qword_28108C368;
  if (!qword_28108C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C368);
  }

  return result;
}

unint64_t sub_262027FC4()
{
  result = qword_28108C370;
  if (!qword_28108C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C370);
  }

  return result;
}

unint64_t sub_26202801C()
{
  result = qword_28108C458;
  if (!qword_28108C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C458);
  }

  return result;
}

unint64_t sub_262028074()
{
  result = qword_28108C460;
  if (!qword_28108C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C460);
  }

  return result;
}

unint64_t sub_2620280CC()
{
  result = qword_28108C448;
  if (!qword_28108C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C448);
  }

  return result;
}

unint64_t sub_262028124()
{
  result = qword_28108C450;
  if (!qword_28108C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C450);
  }

  return result;
}

unint64_t sub_26202817C()
{
  result = qword_28108C3D0;
  if (!qword_28108C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C3D0);
  }

  return result;
}

unint64_t sub_2620281D4()
{
  result = qword_28108C3D8;
  if (!qword_28108C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C3D8);
  }

  return result;
}

unint64_t sub_26202822C()
{
  result = qword_28108C3F8;
  if (!qword_28108C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C3F8);
  }

  return result;
}

unint64_t sub_262028284()
{
  result = qword_28108C400;
  if (!qword_28108C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C400);
  }

  return result;
}

unint64_t sub_2620282DC()
{
  result = qword_28108C3B0;
  if (!qword_28108C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C3B0);
  }

  return result;
}

unint64_t sub_262028334()
{
  result = qword_28108C3B8;
  if (!qword_28108C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C3B8);
  }

  return result;
}

unint64_t sub_26202838C()
{
  result = qword_28108C438;
  if (!qword_28108C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C438);
  }

  return result;
}

unint64_t sub_2620283E4()
{
  result = qword_28108C440;
  if (!qword_28108C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C440);
  }

  return result;
}

unint64_t sub_26202843C()
{
  result = qword_28108C3E8;
  if (!qword_28108C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C3E8);
  }

  return result;
}

unint64_t sub_262028494()
{
  result = qword_28108C3F0;
  if (!qword_28108C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C3F0);
  }

  return result;
}

unint64_t sub_2620284EC()
{
  result = qword_28108C420;
  if (!qword_28108C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C420);
  }

  return result;
}

unint64_t sub_262028544()
{
  result = qword_28108C428;
  if (!qword_28108C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C428);
  }

  return result;
}

unint64_t sub_26202859C()
{
  result = qword_28108C3C0;
  if (!qword_28108C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C3C0);
  }

  return result;
}

unint64_t sub_2620285F4()
{
  result = qword_28108C3C8;
  if (!qword_28108C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C3C8);
  }

  return result;
}

unint64_t sub_26202864C()
{
  result = qword_28108C408;
  if (!qword_28108C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C408);
  }

  return result;
}

unint64_t sub_2620286A4()
{
  result = qword_28108C410;
  if (!qword_28108C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C410);
  }

  return result;
}

unint64_t sub_2620286FC()
{
  result = qword_28108B730;
  if (!qword_28108B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B730);
  }

  return result;
}

unint64_t sub_262028754()
{
  result = qword_28108B738;
  if (!qword_28108B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B738);
  }

  return result;
}

unint64_t sub_2620287AC()
{
  result = qword_28108B758;
  if (!qword_28108B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B758);
  }

  return result;
}

unint64_t sub_262028804()
{
  result = qword_28108B760;
  if (!qword_28108B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B760);
  }

  return result;
}

unint64_t sub_26202885C()
{
  result = qword_28108B770;
  if (!qword_28108B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B770);
  }

  return result;
}

unint64_t sub_2620288B4()
{
  result = qword_28108B778;
  if (!qword_28108B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B778);
  }

  return result;
}

unint64_t sub_26202890C()
{
  result = qword_28108B788;
  if (!qword_28108B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B788);
  }

  return result;
}

unint64_t sub_262028964()
{
  result = qword_28108B790;
  if (!qword_28108B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B790);
  }

  return result;
}

unint64_t sub_2620289B8()
{
  result = qword_28108CCF8;
  if (!qword_28108CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CCF8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26203AA9C();
}

uint64_t OUTLINED_FUNCTION_58_2(unint64_t *a1)
{

  return sub_2620247CC(a1, &protocol conformance descriptor for ControlChannelConnectionWireProtocolVersion);
}

void *OUTLINED_FUNCTION_87_1()
{

  return memcpy((v1 - 216), (v0 + 368), 0x7AuLL);
}

void *sub_262028B90(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for RemoteUnlockKeypair();
  v8 = swift_allocObject();
  sub_26202950C();
  OUTLINED_FUNCTION_148();
  swift_beginAccess();
  v9 = v8[2];
  v10 = v8[3];
  v8[2] = a1;
  v8[3] = a2;

  sub_261F81D84(a1, a2);
  sub_261F6ADEC(v9, v10);
  sub_261F6ADEC(a1, a2);
  OUTLINED_FUNCTION_148();
  swift_beginAccess();
  v11 = v8[4];
  v12 = v8[5];
  v8[4] = a3;
  v8[5] = a4;
  sub_261F81D84(a3, a4);
  sub_261F6ADEC(v11, v12);

  sub_261F6ADEC(a3, a4);
  return v8;
}

char *sub_262028C80()
{
  v0 = swift_slowAlloc();
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, v0))
  {
    sub_261F9BCE0();
    OUTLINED_FUNCTION_0_32();
    sub_26203AD3C();
    OUTLINED_FUNCTION_12_14();
    v1 = " device with escrow bag.";
    v2 = sub_261F9D610();
    OUTLINED_FUNCTION_6(v2);
    OUTLINED_FUNCTION_2_25();
    sub_26203AD4C();
    swift_willThrow();
  }

  else
  {
    v1 = MEMORY[0x266721A00](v0, 32);
    v4 = v3;
    v5 = sub_26203952C();
    Escrow = MKBKeyBagCreateEscrow();

    if (Escrow || MKBKeyBagCopyData())
    {
      sub_261F9BCE0();
      OUTLINED_FUNCTION_7_12();
      OUTLINED_FUNCTION_0_32();
      sub_26203AD3C();
      OUTLINED_FUNCTION_12_14();
      v7 = sub_261F9D610();
      OUTLINED_FUNCTION_6(v7);
      OUTLINED_FUNCTION_2_25();
      sub_26203AD4C();
      swift_willThrow();
    }

    else
    {
      sub_261F9BCE0();
      OUTLINED_FUNCTION_0_32();
      sub_26203AD3C();
      OUTLINED_FUNCTION_12_14();
      v9 = sub_261F9D610();
      OUTLINED_FUNCTION_6(v9);
      OUTLINED_FUNCTION_2_25();
      sub_26203AD4C();
      swift_willThrow();
      MEMORY[0x266724180](v0, -1, -1);
    }

    sub_261F6BFFC(v1, v4);
  }

  return v1;
}

void sub_262028FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_26203952C();
  MKBKeyBagCreateWithData();

  sub_261F9BCE0();
  OUTLINED_FUNCTION_0_32();
  sub_26203AD3C();
  OUTLINED_FUNCTION_3_18();
  v5 = sub_261F9D610();
  OUTLINED_FUNCTION_6(v5);
  OUTLINED_FUNCTION_2_25();
  sub_26203AD4C();
  swift_willThrow();
}

char *sub_262029158()
{
  result = sub_262028C80();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26202919C()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_5_13();
  sub_26203AD3C();
  OUTLINED_FUNCTION_3_18();
  v0 = MEMORY[0x277D84F90];
  sub_261F9D4D8(MEMORY[0x277D84F90]);
  sub_261F9D4D8(v0);
  v1 = sub_261F9D610();
  OUTLINED_FUNCTION_6(v1);
  OUTLINED_FUNCTION_5_13();
  sub_26203AD2C();
  return swift_willThrow();
}

uint64_t sub_262029284()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_47();
  sub_261F81D84(v0, v1);
  return OUTLINED_FUNCTION_47();
}

uint64_t sub_2620292C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_261F6ADEC(v5, v6);
}

uint64_t sub_262029314(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_261F81D84(*a1, v6);
  return a5(v7, v6);
}

uint64_t sub_262029360()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_47();
  sub_261F81D84(v0, v1);
  return OUTLINED_FUNCTION_47();
}

uint64_t sub_2620293A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_261F6ADEC(v5, v6);
}

uint64_t sub_26202942C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return sub_261F79740(v1 + 48, a1);
}

uint64_t sub_262029470(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 48));
  sub_261F797BC(a1, v1 + 48);
  return swift_endAccess();
}

void *sub_26202950C()
{
  *(v0 + 1) = xmmword_26203F730;
  *(v0 + 2) = xmmword_26203F730;
  OUTLINED_FUNCTION_148();
  swift_beginAccess();
  v1 = v0[2];
  v2 = v0[3];
  *(v0 + 1) = xmmword_26203F730;
  sub_261F6ADEC(v1, v2);
  OUTLINED_FUNCTION_148();
  swift_beginAccess();
  v3 = v0[4];
  v4 = v0[5];
  *(v0 + 2) = xmmword_26203F730;
  sub_261F6ADEC(v3, v4);
  v5 = type metadata accessor for MobileKeybagProvider();
  v6 = swift_allocObject();
  v0[9] = v5;
  v0[10] = &off_287494008;
  v0[6] = v6;
  return v0;
}

uint64_t sub_2620295C4()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  v2 = *(v0 + 24);
  if (v2 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v5 = *(v1 + 16);
  sub_261F6B73C(v5, v2);
  result = MEMORY[0x266721A20](v5, v2);
  if ((result & 0x8000000000000000) == 0)
  {
    sub_2620394BC();
    sub_261F6BFFC(v5, v2);
    v2 = *(v1 + 24);
LABEL_4:
    v4 = *(v1 + 16);
    *(v1 + 16) = xmmword_26203F730;
    return sub_261F6ADEC(v4, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_26202966C()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  sub_261F79740((v0 + 6), v17);
  v2 = v18;
  v3 = v19;
  __swift_project_boxed_opaque_existential_0Tm(v17, v18);
  v4 = (*(v3 + 8))(v2, v3);
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  sub_261F6B73C(v9, v10);
  sub_261F6B73C(v11, v12);
  sub_261F6BFFC(v11, v12);
  OUTLINED_FUNCTION_148();
  swift_beginAccess();
  v13 = v0[2];
  v14 = v0[3];
  v0[2] = v9;
  v0[3] = v10;
  sub_261F6ADEC(v13, v14);
  sub_261F6BFFC(v9, v10);
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  v15 = v0[4];
  v16 = v0[5];
  v0[4] = v11;
  v0[5] = v12;
  return sub_261F6ADEC(v15, v16);
}

uint64_t sub_26202978C()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (v0[3] >> 60 == 15)
  {
    sub_261F9BCE0();
    OUTLINED_FUNCTION_0_32();
    sub_26203AD3C();
    v16[5] = v16[0];
    v16[6] = v16[1];
    v1 = sub_261F9D610();
    OUTLINED_FUNCTION_6(v1);
    OUTLINED_FUNCTION_2_25();
    sub_26203AD4C();
    return swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    v3 = v0[5];
    if (v3 >> 60 == 15)
    {
      v4 = OUTLINED_FUNCTION_8_13();
      sub_261F6B73C(v4, v5);
      sub_261F9BCE0();
      OUTLINED_FUNCTION_7_12();
      OUTLINED_FUNCTION_0_32();
      sub_26203AD3C();
      v6 = sub_261F9D610();
      OUTLINED_FUNCTION_6(v6);
      OUTLINED_FUNCTION_2_25();
      sub_26203AD4C();
      swift_willThrow();
      v7 = OUTLINED_FUNCTION_8_13();
      return sub_261F6ADEC(v7, v8);
    }

    else
    {
      v9 = v0[4];
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      sub_261F79740((v0 + 6), v16);
      v10 = v16[4];
      __swift_project_boxed_opaque_existential_0Tm(v16, v16[3]);
      v17 = *(v10 + 16);
      v11 = OUTLINED_FUNCTION_8_13();
      sub_261F81D84(v11, v12);
      sub_261F81D84(v9, v3);
      v13 = OUTLINED_FUNCTION_8_13();
      v17(v13);
      sub_261F6ADEC(v9, v3);
      v14 = OUTLINED_FUNCTION_8_13();
      sub_261F6ADEC(v14, v15);
      return __swift_destroy_boxed_opaque_existential_0Tm(v16);
    }
  }
}

uint64_t sub_2620299B8(uint64_t a1)
{
  sub_261F79740(a1, v3);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 48));
  sub_261F797BC(v3, v1 + 48);
  return swift_endAccess();
}

void *RemoteUnlockKeypair.deinit()
{
  sub_261F6ADEC(v0[2], v0[3]);
  sub_261F6ADEC(v0[4], v0[5]);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 6);
  return v0;
}

uint64_t RemoteUnlockKeypair.__deallocating_deinit()
{
  RemoteUnlockKeypair.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_262029D2C()
{
  OUTLINED_FUNCTION_17_12();
  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);
    v7[0] = *v3;
    v7[1] = v4;
    v7[2] = *(v3 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_261FA475C();

    *v0 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_34_7(v3);
    sub_26202CD88(v2, v1, v7);

    return OUTLINED_FUNCTION_34_7(v7);
  }

  return result;
}

uint64_t sub_262029DF0()
{
  OUTLINED_FUNCTION_17_12();
  if (*(v3 + 24))
  {
    sub_261F797BC(v3, v6);
    swift_isUniquelyReferenced_nonNull_native();
    v5 = *v0;
    sub_261FA4960();

    *v0 = v5;
  }

  else
  {
    OUTLINED_FUNCTION_34_7(v3);
    sub_26202CE60(v2, v1, v6);

    return OUTLINED_FUNCTION_34_7(v6);
  }

  return result;
}

uint64_t sub_262029EAC()
{
  OUTLINED_FUNCTION_17_12();
  if (v3)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v0;
    sub_261FA4860();

    *v0 = v8;
  }

  else
  {
    sub_261FA3868(v2, v1);
    if (v5)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_10_12();
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B8, &qword_2620447C0);
      OUTLINED_FUNCTION_14_13(v6);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA278, &unk_26204AE90);
      sub_26202D208();
      sub_26203A90C();

      *v0 = v7;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_26202A018(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA18, &qword_26204AE68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    sub_261F66E60(a1, &qword_27FEFAA18, &qword_26204AE68);
    sub_26202CF44(v8);
    v13 = sub_262039A7C();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_261F66E60(v8, &qword_27FEFAA18, &qword_26204AE68);
  }

  else
  {
    sub_261FA52A8(a1, v11);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_261FA4A68(v11, a2);
    *v3 = v17;
    v15 = sub_262039A7C();
    return (*(*(v15 - 8) + 8))(a2, v15);
  }
}

void *sub_26202A1F8()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  off_27FEFA9E0 = result;
  return result;
}

uint64_t sub_26202A2B0()
{
  v1 = *v0;
  sub_26203ADDC();
  MEMORY[0x266723290](v1);
  return sub_26203AE0C();
}

uint64_t BonjourBrowser.Change.advert.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BonjourBrowser.Change(0) + 20);

  return sub_261FEDDC4(v3, a1);
}

uint64_t type metadata accessor for BonjourBrowser.Change(uint64_t a1)
{
  result = qword_27FEFA9F8;
  if (!qword_27FEFA9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *BonjourBrowser.Change.resolvedPairing.getter()
{
  v1 = *(v0 + *(type metadata accessor for BonjourBrowser.Change(0) + 24));
  v2 = v1;
  return v1;
}

uint64_t BonjourBrowser.__allocating_init(service:includePeerToPeer:netLinkManager:pairingManager:mode:)(unsigned __int8 *a1, uint64_t a2, void *a3, void *a4, char *a5)
{
  v10 = swift_allocObject();
  BonjourBrowser.init(service:includePeerToPeer:netLinkManager:pairingManager:mode:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t BonjourBrowser.init(service:includePeerToPeer:netLinkManager:pairingManager:mode:)(unsigned __int8 *a1, uint64_t a2, void *a3, void *a4, char *a5)
{
  v6 = v5;
  v10 = 0x6E6E75742D70725FLL;
  v11 = sub_262039ECC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74();
  v17 = (v16 - v15);
  v18 = *a1;
  v25 = *a5;
  sub_262039A7C();
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
  sub_26202D1C0(&qword_27FEF9898, MEMORY[0x277CD8B10], MEMORY[0x277CD8B18]);
  *(v6 + 104) = sub_26203A0FC();
  sub_262039D1C();
  sub_262039CEC();
  sub_262039CBC();
  v19 = 0xEF7063745F2E6C65;
  switch(v18)
  {
    case 1:
      v10 = 0xD000000000000013;
      v19 = 0x800000026204C750;
      break;
    case 2:
      break;
    case 3:
      v19 = 0xEF7064755F2E6C65;
      break;
    case 4:
      OUTLINED_FUNCTION_23_7();
      v10 = v21 + 14;
      break;
    default:
      OUTLINED_FUNCTION_23_7();
      v10 = v20 + 15;
      break;
  }

  *v17 = v10;
  v17[1] = v19;
  v17[2] = 0;
  v17[3] = 0;
  (*(v13 + 104))(v17, *MEMORY[0x277CD9098], v11);
  sub_262039F8C();
  swift_allocObject();

  *(v6 + 16) = sub_262039EEC();
  *(v6 + 24) = v18;
  *(v6 + 32) = a3;
  sub_261F79740(a4, v6 + 40);
  *(v6 + 80) = v25;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = a3;

  sub_261F7D45C(sub_26202A7AC, v22);
  sub_262039EDC();

  __swift_destroy_boxed_opaque_existential_0Tm(a4);

  return v6;
}

uint64_t sub_26202A738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26202A9A0(a1, a2);
  }

  return result;
}

uint64_t sub_26202A7B4@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_26202A8B4();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_261FBD010;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_26202A824(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_261FBCFE8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_261F7D45C(v1, v2);
  return sub_26202A8FC(v4, v3);
}

uint64_t sub_26202A8B4()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_47();
  sub_261F7D45C(v0, v1);
  return OUTLINED_FUNCTION_47();
}

uint64_t sub_26202A8FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  v6 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return sub_261F665E4(v5, v6);
}

uint64_t sub_26202A9A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_262039F2C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74();
  v9 = v8 - v7;
  LOBYTE(v10) = sub_26203A47C();
  if (qword_27FEF8710 != -1)
  {
LABEL_21:
    OUTLINED_FUNCTION_11_11(&qword_27FEF8710);
  }

  v11 = off_27FEFA9E0;
  if (os_log_type_enabled(off_27FEFA9E0, v10))
  {
    v12 = 0x6E6E75742D70725FLL;
    v13 = OUTLINED_FUNCTION_27();
    v14 = OUTLINED_FUNCTION_31_7();
    v29 = v14;
    *v13 = 136446210;
    v15 = 0xEF7063745F2E6C65;
    v16 = v14;
    switch(*(v2 + 24))
    {
      case 1:
        v12 = 0xD000000000000013;
        v15 = 0x800000026204C750;
        break;
      case 2:
        break;
      case 3:
        v15 = 0xEF7064755F2E6C65;
        break;
      case 4:
        OUTLINED_FUNCTION_25_4();
        v12 = v18 + 14;
        break;
      default:
        OUTLINED_FUNCTION_25_4();
        v12 = v17 + 15;
        break;
    }

    v19 = sub_261F67FE4(v12, v15, &v29);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_261F5B000, v11, v10, "Received change notification from bonjour browser for type %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a2 + 56);
  v23 = (v20 + 63) >> 6;

  v10 = 0;
  if (v22)
  {
    while (1)
    {
      v24 = v10;
LABEL_17:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v26 = (*(v5 + 16))(v9, *(a2 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v3);
      sub_26202AC80(v26, v9);
      (*(v5 + 8))(v9, v3);
      if (!v22)
      {
        goto LABEL_13;
      }
    }
  }

  while (1)
  {
LABEL_13:
    v24 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v24 >= v23)
    {
    }

    v22 = *(a2 + 56 + 8 * v24);
    ++v10;
    if (v22)
    {
      v10 = v24;
      goto LABEL_17;
    }
  }
}

uint64_t sub_26202AC80(uint64_t a1, uint64_t a2)
{
  v292 = sub_26203A1FC();
  OUTLINED_FUNCTION_0();
  v291 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_74();
  v290 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA118, &qword_26204AE60);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_8_14(&v285 - v8);
  v297 = sub_26203965C();
  OUTLINED_FUNCTION_0();
  v295 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74();
  v13 = OUTLINED_FUNCTION_8_14(v12 - v11);
  v314 = type metadata accessor for DiscoveredBonjourAdvert(v13);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_88_1();
  v18 = OUTLINED_FUNCTION_8_14(v17);
  v301 = type metadata accessor for BonjourBrowser.Change(v18);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_8_14(v21 - v20);
  sub_262039A7C();
  OUTLINED_FUNCTION_0();
  v317 = v23;
  v318 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_88_1();
  v311 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA18, &qword_26204AE68);
  MEMORY[0x28223BE20](v26 - 8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_88_1();
  v303 = v29;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_8_14(v40);
  v41 = sub_262039F6C();
  OUTLINED_FUNCTION_0();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v46);
  v48 = &v285 - v47;
  v49 = sub_262039F2C();
  OUTLINED_FUNCTION_0();
  v51 = v50;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_0();
  v320 = v53;
  v55 = MEMORY[0x28223BE20](v54);
  v57 = &v285 - v56;
  MEMORY[0x28223BE20](v55);
  v59 = &v285 - v58;
  LODWORD(v324) = sub_26203A47C();
  if (qword_27FEF8710 != -1)
  {
    OUTLINED_FUNCTION_11_11(&qword_27FEF8710);
  }

  v60 = off_27FEFA9E0;
  v61 = *(v51 + 16);
  v321 = a2;
  v325 = v61;
  (v61)(v59, a2, v49);
  if (os_log_type_enabled(v60, v324))
  {
    v62 = OUTLINED_FUNCTION_27();
    v315 = v41;
    v63 = v62;
    v64 = OUTLINED_FUNCTION_31_7();
    v316 = v43;
    v65 = v64;
    v327 = v64;
    *v63 = 136315138;
    (v325)(v57, v59, v49);
    v66 = sub_26203A20C();
    v319 = v48;
    v68 = v67;
    v69 = *(v51 + 8);
    v69(v59, v49);
    v70 = sub_261F67FE4(v66, v68, &v327);
    v48 = v319;

    *(v63 + 4) = v70;
    v71 = v69;
    _os_log_impl(&dword_261F5B000, v60, v324, "Handling result change from bonjour browser: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v65);
    v43 = v316;
    OUTLINED_FUNCTION_1_0();
    v41 = v315;
    OUTLINED_FUNCTION_1_0();
  }

  else
  {
    v71 = *(v51 + 8);
    v71(v59, v49);
  }

  v72 = v320;
  (v325)(v320, v321, v49);
  v73 = (*(v51 + 88))(v72, v49);
  if (v73 == *MEMORY[0x277CD9130])
  {
    v74 = OUTLINED_FUNCTION_18_8();
    v75(v74);
    (*(v43 + 32))(v48, v72, v41);
  }

  else
  {
    if (v73 == *MEMORY[0x277CD9140])
    {
      v94 = OUTLINED_FUNCTION_18_8();
      v95(v94);
      v87 = v307;
      (*(v43 + 32))(v307, v72, v41);
      v96 = v311;
      sub_262039F4C();
      v97 = v323;
      OUTLINED_FUNCTION_20_9(v323 + 104);
      v98 = v303;
      sub_26202CF44(v303);
      (*(v317 + 8))(v96, v318);
      swift_endAccess();
      v99 = v322;
      if (__swift_getEnumTagSinglePayload(v98, 1, v322) == 1)
      {
        (*(v43 + 8))(v87, v41);
        return sub_261F66E60(v98, &qword_27FEFAA18, &qword_26204AE68);
      }

      v135 = v299;
      sub_261FA52A8(v98, v299);
      OUTLINED_FUNCTION_13_14(v97 + 88);
      v136 = *(v97 + 88);
      if (v136)
      {
        OUTLINED_FUNCTION_19_10();
        sub_26202D0F8(v137, v138);
        v139 = *(v87 + *(v99 + 48));

        v140 = v296;
        sub_26202D0F8(v135, v296);
        v141 = *(v140 + *(v99 + 48));
        v142 = v302;
        *v302 = 1;
        v143 = v301;
        sub_261FECF8C(v87, v142 + *(v301 + 20));
        *(v142 + *(v143 + 24)) = v141;
        OUTLINED_FUNCTION_0_33();
        sub_26202D168(v140, v144);
        v136(v142);
        v145 = OUTLINED_FUNCTION_47();
        sub_261F665E4(v145, v146);
        OUTLINED_FUNCTION_1_23();
        sub_26202D168(v142, v147);
        sub_261F66E60(v135, &qword_27FEF9890, &unk_26203F680);
        return (*(v43 + 8))(v307, v41);
      }

      sub_261F66E60(v135, &qword_27FEF9890, &unk_26203F680);
      return (*(v43 + 8))(v87, v41);
    }

    if (v73 != *MEMORY[0x277CD9138])
    {
      return (v71)(v72, v49);
    }

    v112 = OUTLINED_FUNCTION_18_8();
    v113(v112);
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA20, &unk_26204AE70);
    v115 = *(v114 + 64);
    (*(v43 + 32))(v48, v72 + *(v114 + 48), v41);
    sub_262039F1C();
    OUTLINED_FUNCTION_6_1();
    (*(v116 + 8))(v72 + v115);
    (*(v43 + 8))(v72, v41);
  }

  v76 = v313;
  sub_262039F4C();
  v77 = v323;
  swift_beginAccess();
  v78 = *(v77 + 104);

  v79 = v312;
  sub_261FA1C84(v78, v312);

  (*(v317 + 8))(v76, v318);
  v80 = v322;
  if (__swift_getEnumTagSinglePayload(v79, 1, v322) != 1)
  {
    v325 = v60;
    v315 = v41;
    v316 = v43;
    v101 = v310;
    sub_261FA52A8(v79, v310);
    OUTLINED_FUNCTION_31_8();
    v102 = v48;
    v103 = *(v49 + *(v80 + 48));
    OUTLINED_FUNCTION_19_10();
    sub_261FECF8C(v104, v105);
    v324 = v103;
    sub_26203215C();
    v106 = v311;
    v319 = v102;
    sub_262039F4C();
    v107 = *(v80 + 48);
    v108 = v308;
    sub_261FEDDC4(v60, v308);
    v321 = v103;
    *(v108 + v107) = v103;
    __swift_storeEnumTagSinglePayload(v108, 0, 1, v80);
    OUTLINED_FUNCTION_20_9(v77 + 104);
    sub_26202A018(v108, v106);
    swift_endAccess();
    static DiscoveredBonjourAdvert.== infix(_:_:)(v60, v101);
    if (v109)
    {

      sub_261F66E60(v101, &qword_27FEF9890, &unk_26203F680);
      (*(v316 + 8))(v319, v315);
      OUTLINED_FUNCTION_0_33();
      v111 = v60;
      return sub_26202D168(v111, v110);
    }

    v119 = v319;
    sub_26202D0F8(v101, v49);

    v120 = v314;
    v121 = *(*(v49 + *(v314 + 52)) + 16);
    OUTLINED_FUNCTION_0_33();
    sub_26202D168(v49, v122);
    v123 = v316;
    if (v121 && !*(*(v309 + *(v120 + 52)) + 16))
    {
      v162 = sub_26203A4AC();
      v163 = v310;
      OUTLINED_FUNCTION_19_10();
      sub_26202D0F8(v164, v165);
      v166 = v288;
      sub_26202D0F8(v163, v288);
      if (os_log_type_enabled(v325, v162))
      {
        v167 = swift_slowAlloc();
        v321 = swift_slowAlloc();
        v326 = v321;
        *v167 = 136315394;
        v168 = v286;
        sub_26202D0F8(v60, v286);
        v169 = *(v168 + *(v80 + 48));
        if (v169)
        {
          v170 = CUPairedPeer.udid.getter();
          v172 = v171;
        }

        else
        {
          v170 = 0;
          v172 = 0;
        }

        sub_26202D168(v168, type metadata accessor for DiscoveredBonjourAdvert);
        v327 = v170;
        v328 = v172;
        v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
        v260 = OUTLINED_FUNCTION_22_11(v259);
        v262 = v261;
        sub_261F66E60(v287, &qword_27FEF9890, &unk_26203F680);
        v263 = sub_261F67FE4(v260, v262, &v326);

        *(v167 + 4) = v263;
        *(v167 + 12) = 2080;
        v264 = v288;
        sub_26202D0F8(v288, v49);
        v80 = v322;

        OUTLINED_FUNCTION_12_15();
        v265 = v294;
        v266 = v297;
        v267(v294);
        sub_26202D168(v263, type metadata accessor for DiscoveredBonjourAdvert);
        OUTLINED_FUNCTION_4_16();
        sub_26202D1C0(v268, v269, MEMORY[0x277CC9628]);
        v270 = sub_26203ABAC();
        v272 = v271;
        v273 = *(v49 + 8);
        v49 += 8;
        v273(v265, v266);
        sub_261F66E60(v264, &qword_27FEF9890, &unk_26203F680);
        sub_261F67FE4(v270, v272, &v326);
        OUTLINED_FUNCTION_28_10();

        *(v167 + 14) = v265;
        OUTLINED_FUNCTION_30_9(&dword_261F5B000, v274, v275, "Discovered bonjour advert for device %s/%s went from valid -> invalid. Reporting as loss.");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();
        v247 = v315;
        v123 = v316;
        v119 = v319;
        v248 = v323;
        v163 = v310;
      }

      else
      {
        OUTLINED_FUNCTION_35_7(v166);
        OUTLINED_FUNCTION_35_7(v60);
        v247 = v315;
        v248 = v323;
      }

      OUTLINED_FUNCTION_13_14(v248 + 88);
      v276 = *(v248 + 88);
      if (v276)
      {
        OUTLINED_FUNCTION_31_8();
        v277 = *(v49 + *(v80 + 48));

        v278 = v296;
        sub_26202D0F8(v163, v296);
        v279 = *(v278 + *(v80 + 48));
        v280 = v302;
        *v302 = 1;
        v281 = v301;
        sub_261FECF8C(v49, v280 + *(v301 + 20));
        *(v280 + *(v281 + 24)) = v279;
        sub_26202D168(v278, type metadata accessor for DiscoveredBonjourAdvert);
        v276(v280);
        v282 = OUTLINED_FUNCTION_47();
        sub_261F665E4(v282, v283);

        OUTLINED_FUNCTION_1_23();
        sub_26202D168(v280, v284);
        sub_261F66E60(v163, &qword_27FEF9890, &unk_26203F680);
        (*(v123 + 8))(v319, v247);
        v111 = v309;
        v110 = type metadata accessor for DiscoveredBonjourAdvert;
      }

      else
      {

        sub_261F66E60(v163, &qword_27FEF9890, &unk_26203F680);
        (*(v123 + 8))(v119, v247);
        OUTLINED_FUNCTION_0_33();
        v111 = v309;
      }

      return sub_26202D168(v111, v110);
    }

    v124 = sub_26203A4AC();
    v125 = v310;
    OUTLINED_FUNCTION_19_10();
    sub_26202D0F8(v126, v127);
    v128 = v298;
    sub_26202D0F8(v125, v298);
    if (os_log_type_enabled(v325, v124))
    {
      v129 = swift_slowAlloc();
      v326 = swift_slowAlloc();
      *v129 = 136315394;
      v130 = v289;
      sub_26202D0F8(v60, v289);
      v131 = *(v130 + *(v80 + 48));
      if (v131)
      {
        v132 = CUPairedPeer.udid.getter();
        v134 = v133;
      }

      else
      {
        v132 = 0;
        v134 = 0;
      }

      sub_26202D168(v130, type metadata accessor for DiscoveredBonjourAdvert);
      v327 = v132;
      v328 = v134;
      v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
      v221 = OUTLINED_FUNCTION_22_11(v220);
      v223 = v222;
      sub_261F66E60(v300, &qword_27FEF9890, &unk_26203F680);
      v224 = sub_261F67FE4(v221, v223, &v326);

      *(v129 + 4) = v224;
      *(v129 + 12) = 2080;
      sub_26202D0F8(v128, v49);

      OUTLINED_FUNCTION_12_15();
      v60 = v128;
      v225 = v294;
      v226 = v297;
      v227(v294);
      sub_26202D168(v224, type metadata accessor for DiscoveredBonjourAdvert);
      OUTLINED_FUNCTION_4_16();
      sub_26202D1C0(v228, v229, MEMORY[0x277CC9628]);
      v230 = sub_26203ABAC();
      v232 = v231;
      (*(v49 + 8))(v225, v226);
      sub_261F66E60(v60, &qword_27FEF9890, &unk_26203F680);
      sub_261F67FE4(v230, v232, &v326);
      OUTLINED_FUNCTION_28_10();

      *(v129 + 14) = v230;
      OUTLINED_FUNCTION_30_9(&dword_261F5B000, v233, v234, "Discovered bonjour advert for device %s/%s was updated");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
      v123 = v316;
      v119 = v319;
    }

    else
    {
      OUTLINED_FUNCTION_35_7(v128);
      OUTLINED_FUNCTION_35_7(v60);
    }

    v235 = v323;
    OUTLINED_FUNCTION_13_14(v323 + 88);
    v236 = *(v235 + 88);
    v117 = v309;
    v237 = v324;
    if (v236)
    {
      OUTLINED_FUNCTION_26_9();
      v239 = *(v238 - 256);
      sub_261FEDDC4(v117, &v239[v240]);
      *v239 = 0;
      *&v239[SLODWORD(v60[3].isa)] = v321;
      v241 = v237;
      v242 = OUTLINED_FUNCTION_47();
      sub_261F7D45C(v242, v243);
      v236(v239);
      v244 = OUTLINED_FUNCTION_47();
      sub_261F665E4(v244, v245);

      OUTLINED_FUNCTION_1_23();
      sub_26202D168(v239, v246);
    }

    else
    {
    }

    sub_261F66E60(v310, &qword_27FEF9890, &unk_26203F680);
    (*(v123 + 8))(v119, v315);
LABEL_66:
    OUTLINED_FUNCTION_0_33();
    v111 = v117;
    return sub_26202D168(v111, v110);
  }

  sub_261F66E60(v79, &qword_27FEFAA18, &qword_26204AE68);
  v81 = v305;
  (*(v43 + 16))(v305, v48, v41);
  LOBYTE(v327) = *(v77 + 24);
  v82 = *(v77 + 32);
  v83 = v306;
  sub_262032640(v81, &v327, v82, v306);
  v84 = v314;
  if (__swift_getEnumTagSinglePayload(v83, 1, v314) == 1)
  {
    sub_261F66E60(v83, &qword_27FEFA118, &qword_26204AE60);
    v85 = sub_26203A48C();
    if (!os_log_type_enabled(v60, v85))
    {
      return (*(v43 + 8))(v48, v41);
    }

    v86 = v60;
    v87 = v48;
    v88 = 0x6E6E75742D70725FLL;
    v89 = OUTLINED_FUNCTION_27();
    v90 = OUTLINED_FUNCTION_31_7();
    v327 = v90;
    *v89 = 136315138;
    v91 = 0xEF7063745F2E6C65;
    v92 = v90;
    switch(*(v77 + 24))
    {
      case 1:
        v88 = 0xD000000000000013;
        v91 = 0x800000026204C750;
        break;
      case 2:
        break;
      case 3:
        v91 = 0xEF7064755F2E6C65;
        break;
      case 4:
        OUTLINED_FUNCTION_24_9();
        v88 = v249 + 14;
        break;
      default:
        OUTLINED_FUNCTION_24_9();
        v88 = v93 + 15;
        break;
    }

    v250 = sub_261F67FE4(v88, v91, &v327);

    *(v89 + 4) = v250;
    _os_log_impl(&dword_261F5B000, v86, v85, "Unable to parse bonjour advert of type %s", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v92);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
    return (*(v43 + 8))(v87, v41);
  }

  v117 = v304;
  sub_261FECF8C(v83, v304);
  if (*(v77 + 80) != ((*(v117 + *(v84 + 48)) & 1) == 0))
  {
    v118 = sub_26203A48C();
    sub_26203969C(v118, &dword_261F5B000, v60, "Ignoring advert which does not satisfy mode", 43, 2, MEMORY[0x277D84F90]);
    (*(v43 + 8))(v48, v41);
    goto LABEL_66;
  }

  v325 = v60;
  v319 = v48;
  v315 = v41;
  v316 = v43;
  sub_261F79740(v77 + 40, &v327);
  v148 = v329;
  v149 = v330;
  __swift_project_boxed_opaque_existential_0Tm(&v327, v329);
  v150 = (v117 + *(v84 + 28));
  v151 = *v150;
  v152 = v150[1];
  sub_26203960C();
  v153 = v290;
  sub_26203A1EC();
  v154 = sub_26203A1CC();
  v156 = v155;

  result = (*(v291 + 8))(v153, v292);
  if (v156 >> 60 != 15)
  {
    v157 = (*(v149 + 32))(v151, v152, v154, v156, 1, v148, v149);
    sub_261F6ADEC(v154, v156);
    __swift_destroy_boxed_opaque_existential_0Tm(&v327);
    if (v157)
    {
      v158 = v157;
      v159 = CUPairedPeer.udid.getter();
      v161 = v160;
    }

    else
    {
      v159 = 0;
      v161 = 0;
    }

    v173 = v314;
    v117 = v304;
    v174 = v293;
    v175 = sub_26203A4AC();
    sub_261FEDDC4(v117, v174);
    v176 = v325;
    if (os_log_type_enabled(v325, v175))
    {
      v177 = OUTLINED_FUNCTION_31_7();
      v326 = swift_slowAlloc();
      *v177 = 136446722;
      v178 = *(v314 + 24);
      OUTLINED_FUNCTION_4_16();
      sub_26202D1C0(v179, v180, MEMORY[0x277CC9628]);
      v181 = v174 + v178;
      sub_26203ABAC();
      OUTLINED_FUNCTION_28_10();
      v183 = v182;
      OUTLINED_FUNCTION_0_33();
      sub_26202D168(v184, v185);
      sub_261F67FE4(v181, v183, &v326);
      OUTLINED_FUNCTION_28_10();

      *(v177 + 4) = v181;
      *(v177 + 12) = 2082;
      v327 = v157;
      v186 = v157;
      v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA28, &unk_26204AE80);
      v188 = OUTLINED_FUNCTION_22_11(v187);
      v190 = sub_261F67FE4(v188, v189, &v326);

      *(v177 + 14) = v190;
      *(v177 + 22) = 2082;
      v117 = v304;
      v327 = v159;
      v328 = v161;

      v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
      v192 = OUTLINED_FUNCTION_22_11(v191);
      v194 = sub_261F67FE4(v192, v193, &v326);
      v173 = v314;

      *(v177 + 24) = v194;
      _os_log_impl(&dword_261F5B000, v176, v175, "Resolved bonjour advert %{public}s to identity %{public}s, udid %{public}s", v177, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    else
    {
      OUTLINED_FUNCTION_0_33();
      sub_26202D168(v174, v195);
    }

    v196 = v316;
    v197 = v322;
    v198 = v323;
    if (*(*(v117 + *(v173 + 52)) + 16))
    {

      v199 = v311;
      sub_262039F4C();
      v200 = *(v197 + 48);
      OUTLINED_FUNCTION_19_10();
      sub_261FEDDC4(v201, v202);
      *(v175 + v200) = v157;
      __swift_storeEnumTagSinglePayload(v175, 0, 1, v197);
      OUTLINED_FUNCTION_20_9(v198 + 104);
      v203 = v157;
      sub_26202A018(v175, v199);
      swift_endAccess();
      OUTLINED_FUNCTION_13_14(v198 + 88);
      v204 = *(v198 + 88);
      if (!v204)
      {

LABEL_65:
        (*(v196 + 8))(v319, v315);
        goto LABEL_66;
      }

      v205 = *(v198 + 96);
      OUTLINED_FUNCTION_26_9();
      v207 = *(v206 - 256);
      sub_261FEDDC4(v117, &v207[v208]);
      *v207 = 0;
      *&v207[*(v175 + 24)] = v157;
      v209 = v203;
      sub_261F7D45C(v204, v205);
      v204(v207);
      sub_261F665E4(v204, v205);

      OUTLINED_FUNCTION_1_23();
      v211 = v207;
    }

    else
    {
      v212 = sub_26203A4AC();
      v213 = v325;
      if (os_log_type_enabled(v325, v212))
      {
        v214 = OUTLINED_FUNCTION_27();
        v215 = OUTLINED_FUNCTION_31_7();
        v326 = v215;
        v327 = v159;
        *v214 = 136315138;
        v328 = v161;
        v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
        v217 = OUTLINED_FUNCTION_22_11(v216);
        v219 = sub_261F67FE4(v217, v218, &v326);

        *(v214 + 4) = v219;
        _os_log_impl(&dword_261F5B000, v213, v212, "Discovered bonjour advert for device %s but it is not visible through any valid interface. Treating as lost event.", v214, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v215);
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();
      }

      else
      {
      }

      OUTLINED_FUNCTION_13_14(v198 + 88);
      v251 = *(v198 + 88);
      if (!v251)
      {

        goto LABEL_65;
      }

      v252 = v301;
      v253 = v302;
      sub_261FEDDC4(v117, &v302[*(v301 + 20)]);
      *v253 = 1;
      *&v253[*(v252 + 24)] = v157;
      v254 = v157;
      v255 = OUTLINED_FUNCTION_29_10();
      sub_261F7D45C(v255, v256);
      v251(v253);
      v257 = OUTLINED_FUNCTION_29_10();
      sub_261F665E4(v257, v258);

      OUTLINED_FUNCTION_1_23();
      v211 = v253;
    }

    sub_26202D168(v211, v210);
    goto LABEL_65;
  }

  __break(1u);
  return result;
}

uint64_t sub_26202C798(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 88))
  {
    return sub_262039EFC();
  }

  result = sub_26203A91C();
  __break(1u);
  return result;
}

uint64_t BonjourBrowser.deinit()
{
  sub_262039F7C();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  sub_261F665E4(*(v0 + 88), *(v0 + 96));

  return v0;
}

uint64_t BonjourBrowser.__deallocating_deinit()
{
  BonjourBrowser.deinit();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

unint64_t sub_26202C8E4()
{
  result = qword_27FEFA9E8;
  if (!qword_27FEFA9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA9E8);
  }

  return result;
}

unint64_t sub_26202C93C()
{
  result = qword_27FEFA9F0;
  if (!qword_27FEFA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA9F0);
  }

  return result;
}

void sub_26202CACC(uint64_t a1)
{
  type metadata accessor for DiscoveredBonjourAdvert(319);
  if (v1 <= 0x3F)
  {
    sub_26202CB60(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26202CB60(uint64_t a1)
{
  if (!qword_27FEFAA08)
  {
    sub_261F9B6D0(255, &qword_27FEFAA10, 0x277D028D8);
    v1 = sub_26203A6DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27FEFAA08);
    }
  }
}

_BYTE *sub_26202CBC8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26202CCA4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_261FA3914(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E8, &qword_26203F6D0);
  sub_26203A8EC();
  v6 = *(*(v8 + 56) + 16 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF99C0, &qword_26203F7F8);
  sub_26203A90C();
  *v2 = v8;
  return v6;
}

double sub_26202CD88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_261FA3868(a1, a2);
  if (v8)
  {
    v9 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_12();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98A8, &unk_2620447A0);
    OUTLINED_FUNCTION_14_13(v10);
    OUTLINED_FUNCTION_32_6();
    v11 = (*(v6 + 56) + 48 * v9);
    v12 = v11[1];
    *a3 = *v11;
    a3[1] = v12;
    a3[2] = v11[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
    sub_26202D208();
    OUTLINED_FUNCTION_29_10();
    sub_26203A90C();
    *v4 = v6;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

double sub_26202CE60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_261FA3868(a1, a2);
  if (v8)
  {
    v9 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_12();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF98C0, &qword_26203F6A0);
    OUTLINED_FUNCTION_14_13(v10);
    OUTLINED_FUNCTION_32_6();
    sub_261F797BC((*(v6 + 56) + 40 * v9), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
    sub_26202D208();
    OUTLINED_FUNCTION_29_10();
    sub_26203A90C();
    *v4 = v6;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26202CF44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261FA3958();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9888, &qword_26203F678);
    sub_26203A8EC();
    v6 = *(v14 + 48);
    v7 = sub_262039A7C();
    (*(*(v7 - 8) + 8))(v6 + *(*(v7 - 8) + 72) * v5, v7);
    v8 = *(v14 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
    sub_261FA52A8(v8 + *(*(v9 - 8) + 72) * v5, a1);
    sub_26202D1C0(&qword_27FEF9898, MEMORY[0x277CD8B10], MEMORY[0x277CD8B18]);
    sub_26203A90C();
    *v1 = v14;
    v10 = a1;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
    v10 = a1;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_26202D0F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26202D168(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26202D1C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26202D208()
{
  result = qword_28108CBA0[0];
  if (!qword_28108CBA0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF98B0, &unk_26203F690);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28108CBA0);
  }

  return result;
}

void OUTLINED_FUNCTION_30_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 168);

  _os_log_impl(a1, v8, v4, a4, v5, 0x16u);
}

uint64_t sub_26202D2F4()
{
  sub_26203A53C();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_74();
  v1 = sub_262039FEC();
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_74();
  v2 = sub_26203A56C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_74();
  v8 = v7 - v6;
  sub_261F6935C();
  (*(v4 + 104))(v8, *MEMORY[0x277D85268], v2);
  sub_262039FCC();
  sub_262030710(&qword_28108CFB8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA0A0, &unk_262040360);
  sub_261FCB93C();
  sub_26203A75C();
  result = sub_26203A58C();
  qword_27FEFAA30 = result;
  return result;
}

id defaultPairingOperationQ.getter()
{
  if (qword_27FEF8718 != -1)
  {
    swift_once();
  }

  v1 = qword_27FEFAA30;

  return v1;
}

uint64_t AttemptPairingPinCommand.pinAttempt.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_26202D584(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D657474416E6970 && a2 == 0xEA00000000007470)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26203AC0C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26202D624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26202D584(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26202D650(uint64_t a1)
{
  v2 = sub_26202D7D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26202D68C(uint64_t a1)
{
  v2 = sub_26202D7D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void AttemptPairingPinCommand.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA38, &qword_26204AEA0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42_0(v2, v2[3]);
  sub_26202D7D8();
  sub_26203AE5C();
  sub_26203AAFC();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_26202D7D8()
{
  result = qword_27FEFAA40;
  if (!qword_27FEFAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAA40);
  }

  return result;
}

void AttemptPairingPinCommand.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA48, &qword_26204AEA8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42_0(v2, v2[3]);
  v6 = sub_26202D7D8();
  OUTLINED_FUNCTION_31(&type metadata for AttemptPairingPinCommand.CodingKeys, v7, v6);
  if (!v0)
  {
    OUTLINED_FUNCTION_52_0();
    v8 = sub_26203A9EC();
    v10 = v9;
    v11 = OUTLINED_FUNCTION_20_0();
    v12(v11);
    *v4 = v8;
    v4[1] = v10;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_38_0();
}

RemotePairingDevice::PairingChallengeEvent __swiftcall PairingChallengeEvent.init(lastAttemptIncorrect:throttleSeconds:)(Swift::Bool lastAttemptIncorrect, Swift::Int_optional throttleSeconds)
{
  *v2 = lastAttemptIncorrect;
  *(v2 + 8) = throttleSeconds.value;
  *(v2 + 16) = throttleSeconds.is_nil;
  result.throttleSeconds = throttleSeconds;
  result.lastAttemptIncorrect = lastAttemptIncorrect;
  return result;
}

uint64_t sub_26202D9A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000026204C5F0 == a2;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C74746F726874 && a2 == 0xEF73646E6F636553)
  {

    return 1;
  }

  else
  {
    v7 = sub_26203AC0C();

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

uint64_t sub_26202DA78(char a1)
{
  if (a1)
  {
    return 0x656C74746F726874;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_26202DAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26202D9A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26202DAF0(uint64_t a1)
{
  v2 = sub_26202DCC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26202DB2C(uint64_t a1)
{
  v2 = sub_26202DCC4();

  return MEMORY[0x2821FE720](a1, v2);
}

void PairingChallengeEvent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA50, &qword_26204AEB0);
  OUTLINED_FUNCTION_0();
  v29 = v28;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v30);
  v32 = v33 - v31;
  v33[1] = *(v23 + 8);
  OUTLINED_FUNCTION_42_0(v26, v26[3]);
  sub_26202DCC4();
  sub_26203AE5C();
  sub_26203AB0C();
  if (!v24)
  {
    sub_26203AACC();
  }

  (*(v29 + 8))(v32, v27);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_26202DCC4()
{
  result = qword_27FEFAA58;
  if (!qword_27FEFAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAA58);
  }

  return result;
}

void PairingChallengeEvent.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA60, &qword_26204AEB8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42_0(v2, v2[3]);
  v6 = sub_26202DCC4();
  OUTLINED_FUNCTION_31(&type metadata for PairingChallengeEvent.CodingKeys, v7, v6);
  if (!v0)
  {
    OUTLINED_FUNCTION_52_0();
    v8 = sub_26203A9FC();
    OUTLINED_FUNCTION_52_0();
    v9 = sub_26203A9BC();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_20_0();
    v13(v12);
    *v4 = v8 & 1;
    *(v4 + 8) = v9;
    *(v4 + 16) = v11 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_26202DE9C(uint64_t a1)
{
  v2 = sub_26202E014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26202DED8(uint64_t a1)
{
  v2 = sub_26202E014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CancelPairingCommand.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA68, &qword_26204AEC0);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  OUTLINED_FUNCTION_42_0(a1, a1[3]);
  sub_26202E014();
  sub_26203AE5C();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_26202E014()
{
  result = qword_27FEFAA70;
  if (!qword_27FEFAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAA70);
  }

  return result;
}

uint64_t sub_26202E0C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 2003789939 && a2 == 0xE400000000000000;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_26203AC0C();

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

uint64_t sub_26202E21C(char a1)
{
  result = 0x7974706D65;
  switch(a1)
  {
    case 1:
      result = 2003789939;
      break;
    case 2:
      result = 0x73736563637573;
      break;
    case 3:
      result = 0x6572756C696166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26202E294(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26203AC0C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26202E31C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235952 && a2 == 0xE300000000000000;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44676E69646E6573 && a2 == 0xED00006563697665)
  {

    return 1;
  }

  else
  {
    v7 = sub_26203AC0C();

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

uint64_t sub_26202E3EC(char a1)
{
  if (a1)
  {
    return 0x44676E69646E6573;
  }

  else
  {
    return 7235952;
  }
}

uint64_t sub_26202E430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26202E0C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26202E458(uint64_t a1)
{
  v2 = sub_26202ED18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26202E494(uint64_t a1)
{
  v2 = sub_26202ED18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26202E4D0(uint64_t a1)
{
  v2 = sub_26202EECC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26202E50C(uint64_t a1)
{
  v2 = sub_26202EECC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26202E54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26202E294(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26202E578(uint64_t a1)
{
  v2 = sub_26202EDD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26202E5B4(uint64_t a1)
{
  v2 = sub_26202EDD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26202E5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26202E31C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26202E620(uint64_t a1)
{
  v2 = sub_26202EE78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26202E65C(uint64_t a1)
{
  v2 = sub_26202EE78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26202E698(uint64_t a1)
{
  v2 = sub_26202EE24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26202E6D4(uint64_t a1)
{
  v2 = sub_26202EE24();

  return MEMORY[0x2821FE720](a1, v2);
}

void CodableDeviceInitiatedPairingBeaconingSessionEvent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_39();
  a25 = v28;
  a26 = v29;
  v101 = v27;
  v99 = v26;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA78, &qword_26204AEC8);
  OUTLINED_FUNCTION_0();
  v97 = v33;
  v98 = v32;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_44();
  v94 = v35;
  sub_2620397FC();
  OUTLINED_FUNCTION_0();
  v95 = v37;
  v96 = v36;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_74();
  v93 = v39 - v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA80, &qword_26204AED0);
  OUTLINED_FUNCTION_0();
  v88 = v41;
  v89 = v40;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_44();
  v87 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA88, &qword_26204AED8);
  OUTLINED_FUNCTION_0();
  v91 = v45;
  v92 = v44;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_44();
  v90 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA90, &qword_26204AEE0);
  OUTLINED_FUNCTION_0();
  v86 = v49;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v50);
  v52 = &v86 - v51;
  type metadata accessor for CodableDeviceInitiatedPairingBeaconingSessionEvent(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_74();
  v56 = v55 - v54;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAA98, &qword_26204AEE8);
  OUTLINED_FUNCTION_0();
  v100 = v58;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_42_0(v31, v31[3]);
  sub_26202ED18();
  sub_26203AE5C();
  sub_26202ED6C(v99, v56);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v80 = v95;
      v79 = v96;
      v81 = v93;
      (*(v95 + 32))(v93, v56, v96);
      a16 = 3;
      sub_26202EDD0();
      v82 = v94;
      sub_26203AA9C();
      OUTLINED_FUNCTION_3_22();
      sub_262030710(v83, v84, MEMORY[0x277D28130]);
      v85 = v98;
      sub_26203AB3C();
      (*(v97 + 8))(v82, v85);
      (*(v80 + 8))(v81, v79);
      v67 = OUTLINED_FUNCTION_12_16();
      v69 = v57;
      goto LABEL_9;
    case 2u:
      a11 = 0;
      v70 = sub_26202EECC();
      OUTLINED_FUNCTION_15_10(&type metadata for CodableDeviceInitiatedPairingBeaconingSessionEvent.EmptyCodingKeys, &a11, v71, v72, v70);
      (*(v86 + 8))(v52, v48);
      goto LABEL_7;
    case 3u:
      a15 = 2;
      v73 = sub_26202EE24();
      v74 = v87;
      OUTLINED_FUNCTION_15_10(&type metadata for CodableDeviceInitiatedPairingBeaconingSessionEvent.SuccessCodingKeys, &a15, v75, v76, v73);
      (*(v88 + 8))(v74, v89);
LABEL_7:
      v77 = OUTLINED_FUNCTION_12_16();
      v78(v77, v57);
      break;
    default:
      a14 = 1;
      v60 = sub_26202EE78();
      v61 = v90;
      v62 = v57;
      OUTLINED_FUNCTION_15_10(&type metadata for CodableDeviceInitiatedPairingBeaconingSessionEvent.ShowCodingKeys, &a14, v63, v64, v60);
      a13 = 0;
      v65 = v92;
      v66 = v101;
      sub_26203AAFC();

      if (!v66)
      {
        a12 = 1;
        sub_26203AAAC();
      }

      (*(v91 + 8))(v61, v65);
      v67 = OUTLINED_FUNCTION_12_16();
      v69 = v62;
LABEL_9:
      v68(v67, v69);
      break;
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t type metadata accessor for CodableDeviceInitiatedPairingBeaconingSessionEvent(uint64_t a1)
{
  result = qword_27FEFAB00;
  if (!qword_27FEFAB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26202ED18()
{
  result = qword_27FEFAAA0;
  if (!qword_27FEFAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAAA0);
  }

  return result;
}

uint64_t sub_26202ED6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodableDeviceInitiatedPairingBeaconingSessionEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26202EDD0()
{
  result = qword_27FEFAAA8;
  if (!qword_27FEFAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAAA8);
  }

  return result;
}

unint64_t sub_26202EE24()
{
  result = qword_27FEFAAB8;
  if (!qword_27FEFAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAAB8);
  }

  return result;
}

unint64_t sub_26202EE78()
{
  result = qword_27FEFAAC0;
  if (!qword_27FEFAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAAC0);
  }

  return result;
}

unint64_t sub_26202EECC()
{
  result = qword_27FEFAAC8;
  if (!qword_27FEFAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAAC8);
  }

  return result;
}

void CodableDeviceInitiatedPairingBeaconingSessionEvent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_39();
  a25 = v27;
  a26 = v28;
  v130 = v26;
  v30 = v29;
  v124 = v31;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAAD0, &qword_26204AEF0);
  OUTLINED_FUNCTION_0();
  v126 = v32;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_44();
  v125 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAAD8, &qword_26204AEF8);
  OUTLINED_FUNCTION_0();
  v117 = v36;
  v118 = v35;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_44();
  v122 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAAE0, &qword_26204AF00);
  OUTLINED_FUNCTION_0();
  v119 = v40;
  v120 = v39;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_44();
  v128 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAAE8, &qword_26204AF08);
  OUTLINED_FUNCTION_0();
  v115 = v44;
  v116 = v43;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_44();
  v121 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFAAF0, &unk_26204AF10);
  OUTLINED_FUNCTION_0();
  v127 = v48;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v49);
  v51 = v109 - v50;
  v52 = type metadata accessor for CodableDeviceInitiatedPairingBeaconingSessionEvent(0);
  OUTLINED_FUNCTION_6_1();
  v54 = MEMORY[0x28223BE20](v53);
  v56 = v109 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v54);
  v59 = (v109 - v58);
  MEMORY[0x28223BE20](v57);
  v61 = v109 - v60;
  v62 = v30[3];
  v129 = v30;
  OUTLINED_FUNCTION_42_0(v30, v62);
  sub_26202ED18();
  v63 = v130;
  sub_26203AE3C();
  if (v63)
  {
    goto LABEL_9;
  }

  v113 = v56;
  v111 = v59;
  v64 = v128;
  v130 = v61;
  sub_26203AA7C();
  sub_261F99084();
  if (v66 == v67 >> 1)
  {
LABEL_8:
    v82 = sub_26203A81C();
    swift_allocError();
    v84 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA260, &qword_26203CDB0);
    *v84 = v52;
    sub_26203A98C();
    sub_26203A80C();
    (*(*(v82 - 8) + 104))(v84, *MEMORY[0x277D84160], v82);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v127 + 8))(v51, v47);
LABEL_9:
    v85 = v129;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0Tm(v85);
    OUTLINED_FUNCTION_38_0();
    return;
  }

  v114 = v51;
  v112 = v47;
  v110 = 0;
  if (v66 < (v67 >> 1))
  {
    v68 = *(v65 + v66);
    sub_261F99070();
    v70 = v69;
    v72 = v71;
    swift_unknownObjectRelease();
    v73 = v125;
    v74 = v126;
    if (v70 == v72 >> 1)
    {
      v75 = v112;
      v109[1] = v52;
      v77 = v123;
      v76 = v124;
      switch(v68)
      {
        case 1:
          a14 = 1;
          sub_26202EE78();
          v95 = v64;
          OUTLINED_FUNCTION_4_17(&type metadata for CodableDeviceInitiatedPairingBeaconingSessionEvent.ShowCodingKeys, &a14);
          a13 = 0;
          v96 = v120;
          v97 = sub_26203A9EC();
          v99 = v98;
          a12 = 1;
          v100 = sub_26203A99C();
          v101 = v96;
          v102 = (v119 + 8);
          v103 = (v127 + 8);
          v110 = 0;
          v104 = v100;
          v106 = v105;
          swift_unknownObjectRelease();
          (*v102)(v95, v101);
          (*v103)(v114, v112);
          v107 = v111;
          *v111 = v97;
          v107[1] = v99;
          v107[2] = v104;
          v107[3] = v106;
          OUTLINED_FUNCTION_8_15();
          swift_storeEnumTagMultiPayload();
          v108 = v107;
          v81 = v130;
          sub_26202F7F8(v108, v130);
          v89 = v129;
          v76 = v124;
          goto LABEL_14;
        case 2:
          a15 = 2;
          sub_26202EE24();
          v86 = v122;
          OUTLINED_FUNCTION_4_17(&type metadata for CodableDeviceInitiatedPairingBeaconingSessionEvent.SuccessCodingKeys, &a15);
          swift_unknownObjectRelease();
          (*(v117 + 8))(v86, v118);
          v87 = OUTLINED_FUNCTION_5_14();
          v88(v87);
          v81 = v130;
          OUTLINED_FUNCTION_8_15();
          goto LABEL_12;
        case 3:
          a16 = 3;
          sub_26202EDD0();
          OUTLINED_FUNCTION_4_17(&type metadata for CodableDeviceInitiatedPairingBeaconingSessionEvent.FailureCodingKeys, &a16);
          sub_2620397FC();
          v90 = v73;
          OUTLINED_FUNCTION_3_22();
          sub_262030710(v91, v92, MEMORY[0x277D28138]);
          v93 = v113;
          sub_26203AA2C();
          v94 = v127;
          swift_unknownObjectRelease();
          (*(v74 + 8))(v90, v77);
          (*(v94 + 8))(v114, v75);
          swift_storeEnumTagMultiPayload();
          v81 = v130;
          sub_26202F7F8(v93, v130);
          goto LABEL_13;
        default:
          a11 = 0;
          sub_26202EECC();
          v78 = v121;
          OUTLINED_FUNCTION_4_17(&type metadata for CodableDeviceInitiatedPairingBeaconingSessionEvent.EmptyCodingKeys, &a11);
          swift_unknownObjectRelease();
          (*(v115 + 8))(v78, v116);
          v79 = OUTLINED_FUNCTION_5_14();
          v80(v79);
          v81 = v130;
          OUTLINED_FUNCTION_8_15();
LABEL_12:
          swift_storeEnumTagMultiPayload();
LABEL_13:
          v89 = v129;
LABEL_14:
          sub_26202F7F8(v81, v76);
          v85 = v89;
          break;
      }

      goto LABEL_10;
    }

    v47 = v112;
    v51 = v114;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_26202F7F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodableDeviceInitiatedPairingBeaconingSessionEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26202F8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice0B7OutcomeO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 2;
  }
}

uint64_t sub_26202F918(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >> 1 >= 0xFFF && *(a1 + 17))
    {
      v2 = *a1 + 8189;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 6) | (4 * ((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3 | (((*(a1 + 16) >> 1) & 0x1F) << 6)))) ^ 0x1FFF;
      if (v2 >= 0x1FFD)
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

uint64_t sub_26202F984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >> 1 > 0xFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 8190;
    *(result + 8) = 0;
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x7FF | ((-a2 & 0x1FFF) << 11);
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = (v3 >> 5) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_26202FA08(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 1 | (a2 << 6);
    *result &= 0xFFFFFFFFFFFFFF9uLL;
    *(result + 16) = v2;
  }

  else
  {
    *result = (a2 - 2) & 1 | (8 * ((a2 - 2) >> 1));
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PairingChallengeEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for PairingChallengeEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice0c9InitiatedB21BeaconingSessionEventO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_26202FB3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
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

uint64_t sub_26202FB7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26202FBC4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void sub_26202FBF0(uint64_t a1)
{
  sub_26202FC64(319);
  if (v1 <= 0x3F)
  {
    sub_26202FCDC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26202FC64(uint64_t a1)
{
  if (!qword_27FEFAB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF9A60, &unk_26203E650);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FEFAB10);
    }
  }
}

void sub_26202FCDC()
{
  if (!qword_27FEFAB18)
  {
    v0 = sub_2620397FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FEFAB18);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CodableDeviceInitiatedPairingBeaconingSessionEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26202FE50(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26202FF2C(_BYTE *result, int a2, int a3)
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

unint64_t sub_26202FFDC()
{
  result = qword_27FEFAB20;
  if (!qword_27FEFAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB20);
  }

  return result;
}

unint64_t sub_262030034()
{
  result = qword_27FEFAB28;
  if (!qword_27FEFAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB28);
  }

  return result;
}

unint64_t sub_26203008C()
{
  result = qword_27FEFAB30;
  if (!qword_27FEFAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB30);
  }

  return result;
}

unint64_t sub_2620300E4()
{
  result = qword_27FEFAB38;
  if (!qword_27FEFAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB38);
  }

  return result;
}

unint64_t sub_26203013C()
{
  result = qword_27FEFAB40;
  if (!qword_27FEFAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB40);
  }

  return result;
}

unint64_t sub_262030194()
{
  result = qword_27FEFAB48;
  if (!qword_27FEFAB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB48);
  }

  return result;
}

unint64_t sub_2620301EC()
{
  result = qword_27FEFAB50;
  if (!qword_27FEFAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB50);
  }

  return result;
}

unint64_t sub_262030244()
{
  result = qword_27FEFAB58;
  if (!qword_27FEFAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB58);
  }

  return result;
}

unint64_t sub_26203029C()
{
  result = qword_27FEFAB60;
  if (!qword_27FEFAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB60);
  }

  return result;
}

unint64_t sub_2620302F4()
{
  result = qword_27FEFAB68;
  if (!qword_27FEFAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB68);
  }

  return result;
}

unint64_t sub_26203034C()
{
  result = qword_27FEFAB70;
  if (!qword_27FEFAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB70);
  }

  return result;
}

unint64_t sub_2620303A4()
{
  result = qword_27FEFAB78;
  if (!qword_27FEFAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB78);
  }

  return result;
}

unint64_t sub_2620303FC()
{
  result = qword_27FEFAB80;
  if (!qword_27FEFAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB80);
  }

  return result;
}

unint64_t sub_262030454()
{
  result = qword_27FEFAB88;
  if (!qword_27FEFAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB88);
  }

  return result;
}

unint64_t sub_2620304AC()
{
  result = qword_27FEFAB90;
  if (!qword_27FEFAB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB90);
  }

  return result;
}

unint64_t sub_262030504()
{
  result = qword_27FEFAB98;
  if (!qword_27FEFAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAB98);
  }

  return result;
}

unint64_t sub_26203055C()
{
  result = qword_27FEFABA0;
  if (!qword_27FEFABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFABA0);
  }

  return result;
}

unint64_t sub_2620305B4()
{
  result = qword_27FEFABA8;
  if (!qword_27FEFABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFABA8);
  }

  return result;
}

unint64_t sub_26203060C()
{
  result = qword_27FEFABB0;
  if (!qword_27FEFABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFABB0);
  }

  return result;
}

unint64_t sub_262030664()
{
  result = qword_27FEFABB8;
  if (!qword_27FEFABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFABB8);
  }

  return result;
}

unint64_t sub_2620306BC()
{
  result = qword_27FEFABC0;
  if (!qword_27FEFABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFABC0);
  }

  return result;
}

uint64_t sub_262030710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_4_17(uint64_t a1, uint64_t a2)
{

  return sub_26203A97C();
}

uint64_t JSONDataBasedControlChannelTransport.startReceivingMessages(usingEventHandler:)()
{
  OUTLINED_FUNCTION_35_5();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_14_1();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v0;
  v5[4] = v4;
  v5[5] = v3;
  v5[6] = v2;

  sub_2620310EC();
}

uint64_t JSONDataBasedControlChannelTransport.send(message:invokingCompletionHandlerOn:completion:)(const void *a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_26203933C();
  swift_allocObject();
  v12 = sub_26203932C();
  memcpy(__dst, a1, 0x92uLL);
  sub_261FECEFC();
  sub_26203931C();

  v13 = OUTLINED_FUNCTION_122();
  if (MEMORY[0x266721A20](v13) >= 0x10000)
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_26203A7CC();

    __dst[0] = 0xD000000000000026;
    __dst[1] = 0x8000000262052C20;
    v14 = OUTLINED_FUNCTION_122();
    v33 = MEMORY[0x266721A20](v14);
    v15 = sub_26203ABAC();
    MEMORY[0x266722710](v15);

    MEMORY[0x266722710](0x736574796220, 0xE600000000000000);
    __dst[3] = MEMORY[0x277D837D0];
    LOBYTE(__dst[4]) = 1;
    sub_261F65C5C();
    v16 = swift_allocError();
    v18 = v17;
    *v17 = 3;
    LOBYTE(v33) = 3;
    v19 = ControlChannelConnectionError.Message.format(code:)(&v33);
    sub_261F65C08(__dst);
    *(v18 + 8) = v19;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 0u;
    *(v18 + 7) = 0;
    a3(v16);

    v20 = OUTLINED_FUNCTION_122();
    return sub_261F6BFFC(v20, v21);
  }

  if (qword_28108B5A0 != -1)
  {
    OUTLINED_FUNCTION_1_24(&qword_28108B5A0);
  }

  __dst[0] = qword_2810955A0;
  __dst[1] = *algn_2810955A8;
  sub_261F6B73C(qword_2810955A0, *algn_2810955A8);
  v22 = OUTLINED_FUNCTION_122();
  v23 = MEMORY[0x266721A20](v22);
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v23 >> 16))
  {
    sub_26200BB44(bswap32(v23) >> 16);
    result = MEMORY[0x266721A20](__dst[0], __dst[1]);
    v12 = result;
    if (qword_28108B5A8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_13:
  result = OUTLINED_FUNCTION_0_34(&qword_28108B5A8);
LABEL_8:
  v32 = a5;
  if (v12 == qword_2810955B0)
  {
    OUTLINED_FUNCTION_122();
    sub_26203958C();
    v25 = __dst[0];
    v26 = __dst[1];
    v27 = swift_allocObject();
    v27[2] = a2;
    v27[3] = a3;
    v27[4] = a4;
    v28 = *(a6 + 24);
    v29 = a2;

    v28(v25, v26, sub_2620319EC, v27, v32, a6);

    v30 = OUTLINED_FUNCTION_122();
    sub_261F6BFFC(v30, v31);
    v20 = v25;
    v21 = v26;
    return sub_261F6BFFC(v20, v21);
  }

  __break(1u);
  return result;
}

uint64_t sub_262030C44()
{
  sub_261FBD334();
  result = sub_26203A6BC();
  qword_28108B648 = result;
  return result;
}

uint64_t sub_262030CAC()
{
  if (qword_28108B5A0 != -1)
  {
    result = OUTLINED_FUNCTION_1_24(&qword_28108B5A0);
  }

  v0 = 0;
  switch(*algn_2810955A8 >> 62)
  {
    case 1:
      LODWORD(v0) = HIDWORD(qword_2810955A0) - qword_2810955A0;
      if (__OFSUB__(HIDWORD(qword_2810955A0), qword_2810955A0))
      {
        goto LABEL_11;
      }

      v0 = v0;
      goto LABEL_8;
    case 2:
      v2 = *(qword_2810955A0 + 16);
      v1 = *(qword_2810955A0 + 24);
      v3 = __OFSUB__(v1, v2);
      v0 = v1 - v2;
      if (!v3)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    case 3:
      goto LABEL_8;
    default:
      v0 = algn_2810955A8[6];
LABEL_8:
      v3 = __OFADD__(v0, 2);
      v4 = v0 + 2;
      if (v3)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
      }

      else
      {
        qword_2810955B0 = v4;
      }

      return result;
  }
}

uint64_t sub_262030D58()
{
  v0 = sub_26203A1FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26203A1EC();
  v4 = sub_26203A1CC();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_2810955A0 = v4;
    *algn_2810955A8 = v6;
  }

  return result;
}

uint64_t sub_262030E68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_262039FAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_262039FEC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  aBlock[4] = sub_261F9B62C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_14;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  sub_262039FCC();
  v19[1] = MEMORY[0x277D84F90];
  sub_261F9B65C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_2620310EC()
{
  OUTLINED_FUNCTION_35_5();
  if (qword_28108B5A8 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_28108B5A8);
  }

  v5 = qword_2810955B0;
  OUTLINED_FUNCTION_14_1();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v0;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v1;
  v7 = *(v0 + 16);

  swift_unknownObjectRetain();
  v7(v5, v5, sub_262031A90, v6, v2, v0);
}

uint64_t sub_2620311CC(id a1, unint64_t a2, char a3, void (*a4)(_BYTE *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1;
  if (a3)
  {
    v11 = a1;
LABEL_36:
    swift_willThrow();
    __src[0] = v10;
    sub_261FEDD8C(__src);
    memcpy(v35, __src, 0x93uLL);
    v34 = v10;
    a4(v35);

    memcpy(__dst, v35, 0x93uLL);
    return sub_262031A20(__dst);
  }

  if (qword_28108B5A0 != -1)
  {
    swift_once();
  }

  sub_26200F7A8();
  if ((v15 & 1) == 0)
  {
    v20 = 0x8000000262050E90;
    __dst[3] = MEMORY[0x277D837D0];
    v21 = 0xD00000000000001ALL;
LABEL_35:
    __dst[0] = v21;
    __dst[1] = v20;
    LOBYTE(__dst[4]) = 1;
    sub_261F65C5C();
    v10 = swift_allocError();
    v32 = v31;
    *v31 = 2;
    LOBYTE(__src[0]) = 2;
    v33 = ControlChannelConnectionError.Message.format(code:)(__src);
    sub_261F65C08(__dst);
    *(v32 + 8) = v33;
    *(v32 + 24) = 0u;
    *(v32 + 40) = 0u;
    *(v32 + 7) = 0;
    goto LABEL_36;
  }

  result = MEMORY[0x266721A20](qword_2810955A0, *algn_2810955A8);
  v17 = a2 >> 62;
  v18 = 0;
  v19 = v10;
  switch(a2 >> 62)
  {
    case 1uLL:
      v18 = v10;
      break;
    case 2uLL:
      v18 = *(v10 + 16);
      break;
    default:
      break;
  }

  v22 = __OFADD__(v18, result);
  v23 = v18 + result;
  if (v22)
  {
    __break(1u);
    goto LABEL_38;
  }

  v24 = v23 + 2;
  if (__OFADD__(v23, 2))
  {
LABEL_38:
    __break(1u);
    return result;
  }

  switch(v17)
  {
    case 1:
      goto LABEL_16;
    case 2:
      v19 = *(v10 + 16);
LABEL_16:
      if (v23 < v19)
      {
        goto LABEL_34;
      }

      if (v17 == 2)
      {
        v25 = *(v10 + 24);
      }

      else
      {
        v25 = v10 >> 32;
      }

      break;
    case 3:
      if (v23 < 0)
      {
        goto LABEL_34;
      }

      if (v24 > 0 || __OFSUB__(v23, v24))
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    default:
      if (v23 < 0)
      {
        goto LABEL_34;
      }

      v25 = BYTE6(a2);
      break;
  }

  if (v23 >= v24 || v25 < v24)
  {
LABEL_34:
    v20 = 0x8000000262050EB0;
    __dst[3] = MEMORY[0x277D837D0];
    v21 = 0xD00000000000001CLL;
    goto LABEL_35;
  }

LABEL_25:
  v27 = sub_261F6BE04(v10, a2, result);
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  v29 = *(a8 + 16);

  v29(v27, v27, sub_261FEDD98, v28, a7, a8);
}

uint64_t sub_262031514(void *__src, uint64_t a2, char a3, void (*a4)(uint64_t *))
{
  if (a3)
  {
    *__dst = __src;
    v6 = sub_261FEDD8C(__dst);
    OUTLINED_FUNCTION_3_23(v6, v7, v8, v9, v10, v11, v12, v13, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14], v24[15], v24[16], v24[17], v24[18], v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v25[13], v25[14], v25[15], v25[16], v25[17], v25[18], __dst[0]);
    v14 = __src;
    a4(v25);
  }

  else
  {
    sub_26203930C();
    swift_allocObject();
    sub_2620392FC();
    sub_261FECEA8();
    sub_2620392EC();
    memcpy(v24, __srca, 0x92uLL);
    memcpy(__dst, __srca, 0x92uLL);
    v15 = sub_262031A88(__dst);
    OUTLINED_FUNCTION_3_23(v15, v16, v17, v18, v19, v20, v21, v22, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14], v24[15], v24[16], v24[17], v24[18], v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v25[13], v25[14], v25[15], v25[16], v25[17], v25[18], __dst[0]);
    sub_261FBCBCC(v24, v27);
    a4(v25);

    sub_261FBCC40(v24);
  }

  memcpy(v27, v25, 0x93uLL);
  return sub_262031A20(v27);
}

uint64_t sub_26203168C(void *__src, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy(__dst, __src, sizeof(__dst));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    memcpy(v34, __src, 0x93uLL);
    if (sub_261F65308(v34) == 1)
    {
      nullsub_1();
      v13 = *v12;
      v14 = sub_26203A48C();
      if (qword_28108B640 != -1)
      {
        swift_once();
      }

      v15 = qword_28108B648;
      if (os_log_type_enabled(qword_28108B648, v14))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v33[0] = v17;
        *v16 = 136446466;
        v32[0] = v11;
        v18 = (*(*(a6 + 8) + 8))(a5);
        v20 = sub_261F67FE4(v18, v19, v33);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        __srca[0] = v13;
        memcpy(v32, __dst, 0x93uLL);
        nullsub_1();
        v22 = *v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        v23 = sub_26203A20C();
        v25 = sub_261F67FE4(v23, v24, v33);

        *(v16 + 14) = v25;
        _os_log_impl(&dword_261F5B000, v15, v14, "%{public}s: received error reading message: %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266724180](v17, -1, -1);
        MEMORY[0x266724180](v16, -1, -1);
      }

      __srca[0] = v13;
      sub_261F65314(__srca);
      memcpy(v30, __srca, 0x92uLL);
      memcpy(v32, __dst, 0x93uLL);
      nullsub_1();
      v27 = *v26;
      a3(v30);
      swift_unknownObjectRelease();
      memcpy(v33, v30, 0x92uLL);
      return sub_261F6A760(v33);
    }

    else
    {
      nullsub_1();
      memcpy(__srca, v28, 0x92uLL);
      sub_261FEDDA4(__srca);
      memcpy(v30, __srca, 0x92uLL);
      memcpy(v32, __src, 0x93uLL);
      nullsub_1();
      sub_261FBCBCC(v29, v33);
      a3(v30);
      memcpy(v33, v30, 0x92uLL);
      sub_261F6A760(v33);
      JSONDataBasedControlChannelTransport.startReceivingMessages(usingEventHandler:)();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_262031A20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA170, &qword_262043EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262031AA4(uint64_t a1)
{
  sub_261F9EF94(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  if (swift_dynamicCast())
  {
    return v2[4];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_262031B08(uint64_t a1)
{
  sub_261F9EF94(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  if (swift_dynamicCast())
  {
    return v2[39];
  }

  else
  {
    return 2;
  }
}

uint64_t sub_262031B84(uint64_t a1, uint64_t a2)
{
  sub_261F9EF94(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  v2 = swift_dynamicCast();
  v3 = v5[4];
  if (!v2)
  {
    return 0;
  }

  return v3;
}

double sub_262031BF4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_261F9EF94(a1, &v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *a2 = xmmword_26203F730;
  }

  return result;
}

unint64_t sub_262031C8C(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v15 = v22 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                break;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                break;
              }

              v10 = __CFADD__(10 * v7, v16);
              v7 = 10 * v7 + v16;
              if (v10)
              {
                break;
              }

              ++v15;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v18 = v22;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = __CFADD__(10 * v7, v19);
            v7 = 10 * v7 + v19;
            if (v10)
            {
              break;
            }

            ++v18;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v22 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = 10 * v7 >= v12;
            v7 = 10 * v7 - v12;
            if (!v10)
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_26203A82C();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v7, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v10 = __CFADD__(10 * v7, v14);
                v7 = 10 * v7 + v14;
                if (v10)
                {
                  goto LABEL_63;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v17 = *result - 48;
              if (v17 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = __CFADD__(10 * v7, v17);
              v7 = 10 * v7 + v17;
              if (v10)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = 10 * v7 >= v9;
              v7 = 10 * v7 - v9;
              if (!v10)
              {
                goto LABEL_63;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v20 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v7 = sub_261FE415C(result, a2, 10);
  v20 = v21;
LABEL_65:

  if (v20)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t DiscoveredBonjourAdvert.debugDescription.getter()
{
  v1 = v0;
  sub_26203A7CC();
  MEMORY[0x266722710](1029990716, 0xE400000000000000);
  v2 = type metadata accessor for DiscoveredBonjourAdvert(0);
  sub_26203965C();
  sub_262034470();
  v3 = sub_26203ABAC();
  MEMORY[0x266722710](v3);

  v4 = MEMORY[0x266722710](0x636976726573202CLL, 0xEA00000000003D65);
  OUTLINED_FUNCTION_17_13(v4, v5, &type metadata for BonjourService, v6);
  v7 = MEMORY[0x266722710](0x3D7367616C66202CLL, 0xE800000000000000);
  OUTLINED_FUNCTION_17_13(v7, v8, &type metadata for BonjourAdvertFlags, v9);
  MEMORY[0x266722710](0xD000000000000012, 0x8000000262052C50);
  v10 = *(v0 + *(v2 + 52));
  v11 = sub_262039B3C();
  v12 = MEMORY[0x266722880](v10, v11);
  MEMORY[0x266722710](v12);

  MEMORY[0x266722710](0xD000000000000015, 0x8000000262052C70);
  v13 = MEMORY[0x266722880](*(v1 + *(v2 + 60)), v11);
  MEMORY[0x266722710](v13);

  MEMORY[0x266722710](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_26203215C()
{
  v1 = v0;
  v2 = sub_262039B3C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v68 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v62 = v60 - v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v60 - v10;
  v12 = sub_262039F0C();
  v13 = *(v12 + 16);
  if (!v13)
  {

    v54 = MEMORY[0x277D84F90];
    v55 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v61 = v0;
  v15 = *(v4 + 16);
  v14 = v4 + 16;
  v70 = v15;
  v16 = (*(v14 + 64) + 32) & ~*(v14 + 64);
  v60[1] = v12;
  v67 = v16;
  v17 = v12 + v16;
  v65 = (v14 + 16);
  v66 = (v14 - 8);
  v18 = *(v14 + 56);
  v63 = MEMORY[0x277D84F90];
  v64 = v18;
  v69 = MEMORY[0x277D84F90];
  do
  {
    v70(v11, v17, v2);
    if (qword_27FEF8528 != -1)
    {
      OUTLINED_FUNCTION_6_16();
      swift_once();
    }

    swift_beginAccess();
    v19 = byte_27FEF8F41;
    if (byte_27FEF8F40)
    {
      v20 = qword_27FEF85D0;

      v21 = &qword_27FEF9130;
      if (v20 != -1)
      {
        OUTLINED_FUNCTION_7_13();
        swift_once();
        v21 = &qword_27FEF9130;
      }
    }

    else
    {
      v22 = qword_28108CE68;

      v21 = &qword_28108CE70;
      if (v22 != -1)
      {
        OUTLINED_FUNCTION_5_15();
        swift_once();
        v21 = &qword_28108CE70;
      }
    }

    v23 = *v21;
    OUTLINED_FUNCTION_47();
    v24 = sub_26203A18C();
    v25 = [v23 valueForKey_];

    if (v25)
    {
      sub_26203A73C();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    v71 = v74;
    v72 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
    if (swift_dynamicCast())
    {
      v26 = v73;
    }

    else
    {
      v26 = 2;
      v73 = 2;
    }

    if (v26 == 2)
    {
      if (v19)
      {
        goto LABEL_25;
      }
    }

    else if (v26)
    {
      goto LABEL_25;
    }

    v27 = sub_262039B2C();
    if (!InterfaceIndexCorrespondsToAppleNCMInterface(v27))
    {
LABEL_25:
      OUTLINED_FUNCTION_16_14();
      v34();
      v29 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = OUTLINED_FUNCTION_8_16();
        sub_261FB9DC0(v38, v39, v40, v29);
        v29 = v41;
      }

      v31 = *(v29 + 16);
      v35 = *(v29 + 24);
      v32 = v31 + 1;
      if (v31 >= v35 >> 1)
      {
        v42 = OUTLINED_FUNCTION_4_18(v35);
        sub_261FB9DC0(v42, v43, v44, v29);
        v29 = v45;
        v33 = v68;
        v69 = v45;
      }

      else
      {
        v69 = v29;
        v33 = v68;
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_16_14();
    v28();
    v29 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = OUTLINED_FUNCTION_8_16();
      sub_261FB9DC0(v46, v47, v48, v29);
      v29 = v49;
    }

    v31 = *(v29 + 16);
    v30 = *(v29 + 24);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v50 = OUTLINED_FUNCTION_4_18(v30);
      sub_261FB9DC0(v50, v51, v52, v29);
      v29 = v53;
      v33 = v62;
      v63 = v53;
    }

    else
    {
      v63 = v29;
      v33 = v62;
    }

LABEL_29:
    (*v66)(v11, v2);
    *(v29 + 16) = v32;
    v36 = v29 + v67;
    v37 = v64;
    (*v65)(v36 + v31 * v64, v33, v2);
    v17 += v37;
    --v13;
  }

  while (v13);

  v1 = v61;
  v54 = v69;
  v55 = v63;
LABEL_34:
  v56 = type metadata accessor for DiscoveredBonjourAdvert(0);
  v57 = *(v56 + 52);

  *(v1 + v57) = v54;
  v58 = *(v56 + 60);

  *(v1 + v58) = v55;
  return result;
}

uint64_t sub_262032640@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v171 = a3;
  v174 = a4;
  sub_262039B3C();
  OUTLINED_FUNCTION_0();
  v175 = v6;
  v176 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v178 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v170 = v153 - v10;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v179 = v153 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF99D0, &qword_26203F800);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v153 - v14;
  v16 = sub_26203965C();
  OUTLINED_FUNCTION_0();
  v177 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74();
  v164 = v20 - v19;
  sub_262039F3C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_74();
  v24 = v23 - v22;
  v25 = sub_262039B5C();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_74();
  v31 = v30 - v29;
  v172 = type metadata accessor for DiscoveredBonjourAdvert(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_74();
  v163 = v34 - v33;
  v162 = *a2;
  v173 = a1;
  sub_262039F5C();
  v35 = OUTLINED_FUNCTION_122();
  if (v36(v35) != *MEMORY[0x277CD9160])
  {
    v40 = OUTLINED_FUNCTION_122();
    v41(v40);
    v42 = sub_26203A48C();
    if (qword_27FEF8728 != -1)
    {
      OUTLINED_FUNCTION_0_35(&qword_27FEF8728);
    }

    sub_26203969C(v42, &dword_261F5B000, qword_27FEFABC8, "Ignoring bonjour advert without TXT record", 42, 2, MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_20_10();
    sub_262039F6C();
    OUTLINED_FUNCTION_6_1();
    (*(v43 + 8))(v173);
    goto LABEL_22;
  }

  v37 = OUTLINED_FUNCTION_122();
  v38(v37);
  (*(v27 + 32))(v31, v24, v25);
  sub_262039B6C();
  v165 = v31;
  if (!v39)
  {
    v44 = sub_262039B4C();
    sub_261FA1C38(0x696669746E656469, 0xEA00000000007265, v44);
    v46 = v45;

    v47 = v174;
    if (!v46)
    {
LABEL_29:
      v85 = sub_26203A48C();
      if (qword_27FEF8728 != -1)
      {
        OUTLINED_FUNCTION_0_35(&qword_27FEF8728);
      }

      sub_26203969C(v85, &dword_261F5B000, qword_27FEFABC8, "Ignoring bonjour advert without expected TXT record keys", 56, 2, MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_20_10();
      sub_262039F6C();
      OUTLINED_FUNCTION_6_1();
      (*(v86 + 8))(v173);
      (*(v27 + 8))(v165, v25);
      v71 = v172;
      goto LABEL_24;
    }
  }

  v48 = v25;
  v49 = v16;
  sub_262039B6C();
  if (v50)
  {
    goto LABEL_11;
  }

  v159 = v27;
  v160 = v25;
  v51 = sub_262039B4C();
  sub_261FA1C38(0x67615468747561, 0xE700000000000000, v51);
  v53 = v52;

  if (!v53)
  {

    v47 = v174;
    v25 = v160;
    v27 = v159;
    goto LABEL_29;
  }

  v48 = v160;
  v27 = v159;
LABEL_11:
  OUTLINED_FUNCTION_122();
  sub_2620395FC();
  v54 = v49;
  if (__swift_getEnumTagSinglePayload(v15, 1, v49) == 1)
  {

    sub_2620346EC(v15);
    v55 = sub_26203A48C();
    if (qword_27FEF8728 != -1)
    {
      OUTLINED_FUNCTION_0_35(&qword_27FEF8728);
    }

    v56 = qword_27FEFABC8;
    if (os_log_type_enabled(qword_27FEFABC8, v55))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v183 = v58;
      *v57 = 136446210;
      v59 = OUTLINED_FUNCTION_122();
      v62 = sub_261F67FE4(v59, v60, v61);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_261F5B000, v56, v55, "Unable to turn identifier %{public}s into UUID object", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    else
    {
    }

    OUTLINED_FUNCTION_20_10();
    sub_262039F6C();
    OUTLINED_FUNCTION_6_1();
    (*(v74 + 8))(v173);
    (*(v27 + 8))(v165, v48);
LABEL_22:
    v71 = v172;
LABEL_23:
    v47 = v174;
LABEL_24:
    v75 = v47;
    v76 = 1;
    v77 = v71;
    return __swift_storeEnumTagSinglePayload(v75, v76, 1, v77);
  }

  v63 = v177;
  v64 = v177 + 32;
  v65 = *(v177 + 32);
  v66 = v164;
  v158 = v54;
  v65(v164, v15, v54);
  v67 = sub_26203949C();
  v69 = v68;

  if (v69 >> 60 == 15)
  {
    v70 = sub_26203A48C();
    v71 = v172;
    v72 = v165;
    if (qword_27FEF8728 != -1)
    {
      OUTLINED_FUNCTION_0_35(&qword_27FEF8728);
    }

    sub_26203969C(v70, &dword_261F5B000, qword_27FEFABC8, "Ignoring bonjour advert with invalid TXT record values", 54, 2, MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_20_10();
    sub_262039F6C();
    OUTLINED_FUNCTION_6_1();
    (*(v73 + 8))(v173);
    (*(v63 + 8))(v66, v158);
    (*(v27 + 8))(v72, v48);
    goto LABEL_23;
  }

  v154 = v69;
  v155 = v67;
  v156 = v65;
  v157 = v64;
  v160 = v48;
  v79 = v165;
  sub_262039B6C();
  v80 = v172;
  if (v81)
  {
    type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    v82 = OUTLINED_FUNCTION_47();
    v84 = ControlChannelConnectionWireProtocolVersion.__allocating_init(_:)(v82, v83);
  }

  else
  {
    v84 = 0;
  }

  v87 = v176;
  v88 = v163;
  v89 = v174;
  *(v163 + v80[8]) = v84;
  sub_262039B6C();
  if (v90)
  {
    type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    v91 = OUTLINED_FUNCTION_47();
    v93 = ControlChannelConnectionWireProtocolVersion.__allocating_init(_:)(v91, v92);
  }

  else
  {
    v93 = 0;
  }

  *(v88 + v80[9]) = v93;
  v94 = sub_262039B6C();
  v159 = v27;
  if (v95)
  {
    v96 = sub_262031C8C(v94, v95);
    if (v97)
    {
      v98 = 0;
    }

    else
    {
      v98 = v96;
    }
  }

  else
  {
    v98 = 0;
  }

  *(v88 + v80[12]) = v98;
  v99 = sub_262039B6C();
  v100 = (v88 + v80[11]);
  *v100 = v99;
  v100[1] = v101;
  v102 = sub_262039B6C();
  v103 = (v88 + v80[10]);
  *v103 = v102;
  v103[1] = v104;
  v105 = sub_262039F0C();
  v106 = *(v105 + 16);
  if (v106)
  {
    v108 = *(v87 + 16);
    v107 = v87 + 16;
    v177 = v108;
    v109 = (*(v107 + 64) + 32) & ~*(v107 + 64);
    v153[1] = v105;
    v169 = v109;
    v110 = v105 + v109;
    v168 = (v107 - 8);
    v167 = (v107 + 16);
    v111 = MEMORY[0x277D84F90];
    v166 = *(v107 + 56);
    v161 = MEMORY[0x277D84F90];
    v176 = v107;
    v112 = v175;
    v113 = v179;
    while (1)
    {
      (v177)(v113, v110, v112);
      if (qword_27FEF8528 != -1)
      {
        OUTLINED_FUNCTION_6_16();
        swift_once();
      }

      swift_beginAccess();
      v114 = byte_27FEF8F41;
      if (byte_27FEF8F40)
      {
        v115 = qword_27FEF85D0;

        v116 = &qword_27FEF9130;
        if (v115 != -1)
        {
          OUTLINED_FUNCTION_7_13();
          swift_once();
          v116 = &qword_27FEF9130;
        }
      }

      else
      {
        v117 = qword_28108CE68;

        v116 = &qword_28108CE70;
        if (v117 != -1)
        {
          OUTLINED_FUNCTION_5_15();
          swift_once();
          v116 = &qword_28108CE70;
        }
      }

      v118 = *v116;
      v119 = sub_26203A18C();
      v120 = [v118 valueForKey_];

      if (v120)
      {
        sub_26203A73C();
        swift_unknownObjectRelease();
      }

      else
      {
        v183 = 0u;
        v184 = 0u;
      }

      v121 = v179;
      v180 = v183;
      v181 = v184;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
      if (swift_dynamicCast())
      {
        v122 = v182;
      }

      else
      {
        v122 = 2;
        v182 = 2;
      }

      if (v122 == 2)
      {
        if (v114)
        {
          goto LABEL_65;
        }
      }

      else if (v122)
      {
        goto LABEL_65;
      }

      v123 = sub_262039B2C();
      if (InterfaceIndexCorrespondsToAppleNCMInterface(v123))
      {
        (v177)(v170, v121, v112);
        v124 = v161;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = OUTLINED_FUNCTION_8_16();
          sub_261FB9DC0(v139, v140, v141, v124);
          v124 = v142;
        }

        v126 = *(v124 + 16);
        v125 = *(v124 + 24);
        v127 = v126 + 1;
        if (v126 >= v125 >> 1)
        {
          v143 = OUTLINED_FUNCTION_4_18(v125);
          sub_261FB9DC0(v143, v144, v145, v124);
          v124 = v146;
          v128 = v170;
          v161 = v146;
        }

        else
        {
          v161 = v124;
          v128 = v170;
        }

        goto LABEL_69;
      }

LABEL_65:
      (v177)(v178, v121, v112);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v131 = OUTLINED_FUNCTION_8_16();
        sub_261FB9DC0(v131, v132, v133, v111);
        v111 = v134;
      }

      v126 = *(v111 + 16);
      v129 = *(v111 + 24);
      v127 = v126 + 1;
      if (v126 >= v129 >> 1)
      {
        v135 = OUTLINED_FUNCTION_4_18(v129);
        sub_261FB9DC0(v135, v136, v137, v111);
        v124 = v138;
        v128 = v178;
        v111 = v138;
      }

      else
      {
        v124 = v111;
        v128 = v178;
      }

LABEL_69:
      v113 = v179;
      v112 = v175;
      (*v168)(v179, v175);
      *(v124 + 16) = v127;
      v130 = v166;
      (*v167)(v124 + v169 + v126 * v166, v128, v112);
      v110 += v130;
      if (!--v106)
      {

        v89 = v174;
        v80 = v172;
        v79 = v165;
        v66 = v164;
        v147 = v161;
        goto LABEL_74;
      }
    }
  }

  v111 = MEMORY[0x277D84F90];
  v147 = MEMORY[0x277D84F90];
LABEL_74:
  v148 = v163;
  v149 = v173;
  sub_262039F4C();
  sub_262039F6C();
  OUTLINED_FUNCTION_6_1();
  (*(v150 + 8))(v149);
  (*(v159 + 8))(v79, v160);
  *(v148 + v80[5]) = v162;
  v156(v148 + v80[6], v66, v158);
  v151 = (v148 + v80[7]);
  v152 = v154;
  *v151 = v155;
  v151[1] = v152;
  *(v148 + v80[13]) = v111;
  *(v148 + v80[15]) = v147;
  *(v148 + v80[14]) = v171;
  sub_261FECF8C(v148, v89);
  v75 = v89;
  v76 = 0;
  v77 = v80;
  return __swift_storeEnumTagSinglePayload(v75, v76, 1, v77);
}

uint64_t sub_2620334F4()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEFABC8 = result;
  return result;
}

uint64_t DiscoveredBonjourAdvert.endpoint.getter()
{
  OUTLINED_FUNCTION_14_14();
  sub_262039A7C();
  OUTLINED_FUNCTION_6_1();
  v0 = OUTLINED_FUNCTION_47();

  return v1(v0);
}

uint64_t DiscoveredBonjourAdvert.service.getter()
{
  v2 = OUTLINED_FUNCTION_14_14();
  result = type metadata accessor for DiscoveredBonjourAdvert(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t DiscoveredBonjourAdvert.identifier.getter()
{
  v2 = OUTLINED_FUNCTION_14_14();
  v3 = *(type metadata accessor for DiscoveredBonjourAdvert(v2) + 24);
  sub_26203965C();
  OUTLINED_FUNCTION_6_1();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t DiscoveredBonjourAdvert.authTag.getter()
{
  type metadata accessor for DiscoveredBonjourAdvert(0);
  v0 = OUTLINED_FUNCTION_47();
  sub_261F6B73C(v0, v1);
  return OUTLINED_FUNCTION_47();
}

void *DiscoveredBonjourAdvert.wireProtocolVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for DiscoveredBonjourAdvert(0) + 32));
  v2 = v1;
  return v1;
}

void *DiscoveredBonjourAdvert.minimumSupportedWireProtocolVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for DiscoveredBonjourAdvert(0) + 36));
  v2 = v1;
  return v1;
}

uint64_t DiscoveredBonjourAdvert.userAssignedName.getter()
{
  type metadata accessor for DiscoveredBonjourAdvert(0);

  return OUTLINED_FUNCTION_47();
}

uint64_t DiscoveredBonjourAdvert.model.getter()
{
  type metadata accessor for DiscoveredBonjourAdvert(0);

  return OUTLINED_FUNCTION_47();
}

uint64_t DiscoveredBonjourAdvert.flags.getter()
{
  v2 = OUTLINED_FUNCTION_14_14();
  result = type metadata accessor for DiscoveredBonjourAdvert(v2);
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t DiscoveredBonjourAdvert.validInterfaces.getter()
{
  type metadata accessor for DiscoveredBonjourAdvert(0);
}

uint64_t DiscoveredBonjourAdvert.validInterfaces.setter()
{
  v2 = *(OUTLINED_FUNCTION_19_11() + 52);

  *(v1 + v2) = v0;
  return result;
}

id DiscoveredBonjourAdvert.netLinkManager.getter()
{
  v1 = *(v0 + *(type metadata accessor for DiscoveredBonjourAdvert(0) + 56));

  return v1;
}

uint64_t DiscoveredBonjourAdvert.prohibitedInterfaces.getter()
{
  type metadata accessor for DiscoveredBonjourAdvert(0);
}

uint64_t DiscoveredBonjourAdvert.prohibitedInterfaces.setter()
{
  v2 = *(OUTLINED_FUNCTION_19_11() + 60);

  *(v1 + v2) = v0;
  return result;
}

void static DiscoveredBonjourAdvert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x266721EE0]() & 1) == 0)
  {
    return;
  }

  v4 = type metadata accessor for DiscoveredBonjourAdvert(0);
  if ((sub_261FA6014(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0 || (sub_26203962C() & 1) == 0 || (MEMORY[0x2667219E0](*(a1 + v4[7]), *(a1 + v4[7] + 8), *(a2 + v4[7]), *(a2 + v4[7] + 8)) & 1) == 0)
  {
    return;
  }

  v5 = v4[8];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (!v7)
    {
      return;
    }

    type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    v8 = v7;
    v9 = v6;
    v10 = sub_26203A69C();

    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  else if (v7)
  {
    return;
  }

  v11 = v4[9];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12)
  {
    if (!v13)
    {
      return;
    }

    type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    v14 = v13;
    v15 = v12;
    v16 = sub_26203A69C();

    if ((v16 & 1) == 0)
    {
      return;
    }
  }

  else if (v13)
  {
    return;
  }

  OUTLINED_FUNCTION_11_12();
  if (v17)
  {
    if (!v18)
    {
      return;
    }

    v21 = *v19 == *v20 && v17 == v18;
    if (!v21 && (sub_26203AC0C() & 1) == 0)
    {
      return;
    }
  }

  else if (v18)
  {
    return;
  }

  OUTLINED_FUNCTION_11_12();
  if (v22)
  {
    if (!v23)
    {
      return;
    }

    v26 = *v24 == *v25 && v22 == v23;
    if (!v26 && (sub_26203AC0C() & 1) == 0)
    {
      return;
    }
  }

  else if (v23)
  {
    return;
  }

  if (*(a1 + v4[12]) == *(a2 + v4[12]))
  {
    sub_261FC62C4();
    if (v27)
    {
      sub_261F9B6D0(0, &unk_27FEF9878, 0x277D82BB8);
      if (sub_26203A69C())
      {

        sub_261FC62C4();
      }
    }
  }
}

void DiscoveredBonjourAdvert.createTransport(withTargetQueue:)(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = 0xD000000000000015;
  v5 = type metadata accessor for DiscoveredBonjourAdvert(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA118, &qword_26204AE60);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v56 - v11;
  v63 = sub_262039A7C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74();
  v62 = v16 - v15;
  v17 = sub_262039B3C();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_74();
  v23 = v22 - v21;
  sub_262039D8C();
  swift_allocObject();
  v24 = sub_262039D7C();
  v65 = v5;
  v25 = *(v2 + *(v5 + 20));
  v60 = v9;
  v61 = a1;
  v58 = v13;
  if (!v25 || v25 == 4)
  {
    goto LABEL_6;
  }

  if (v25 != 1)
  {
    v68[1] = 0;
    v68[2] = 0xE000000000000000;
    sub_26203A7CC();
    MEMORY[0x266722710](0xD000000000000015, 0x8000000262052CD0);
    v67 = v25;
    sub_26203A8CC();
    sub_26203A91C();
    __break(1u);
    return;
  }

  if (*(v2 + *(v65 + 48)))
  {
LABEL_6:
    sub_262039D2C();
    sub_262039D3C();
    sub_262039D4C();
    sub_262039D5C();
    v64 = 0;
  }

  else
  {
    v64 = *(v2 + *(v65 + 56));
    v26 = v64;
  }

  sub_262039D6C();
  sub_262039D1C();

  v59 = v24;
  v27 = MEMORY[0x2667221A0](0, v24);
  v28 = v65;

  sub_262039CDC();
  v66 = v27;
  sub_262039D0C();
  v29 = 0;
  v30 = *(v28 + 52);
  v57 = v2;
  v31 = *(v2 + v30);
  v32 = *(v31 + 16);
  v33 = v19 + 16;
  v34 = (v19 + 8);
  while (v32 != v29)
  {
    if (v29 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    (*(v19 + 16))(v23, v31 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v29, v17);
    if (sub_262039B0C() == 0x306C647761 && v35 == 0xE500000000000000)
    {

      (*v34)(v23, v17);
LABEL_17:
      sub_262039CBC();
      break;
    }

    ++v29;
    v4 = sub_26203AC0C();

    (*v34)(v23, v17);
    if (v4)
    {
      goto LABEL_17;
    }
  }

  v31 = v57;
  v29 = *(v58 + 16);
  (v29)(v62, v57, v63);
  sub_262039CAC();
  swift_allocObject();

  v33 = sub_262039C0C();
  v37 = v56;
  sub_261FEDDC4(v31, v56);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v65);
  v19 = type metadata accessor for NWConnectionControlChannelTransport(0);
  swift_allocObject();

  v4 = NWConnectionControlChannelTransport.init(connection:bonjourEndpoint:netLinkManager:)(v38, v37, v64);
  v39 = (v4 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_interfaceIsProhibitedPredicate);
  swift_beginAccess();
  v40 = *v39;
  v41 = v39[1];
  *v39 = sub_262034264;
  v39[1] = 0;
  sub_261F665E4(v40, v41);
  LODWORD(v65) = sub_26203A4AC();
  if (qword_27FEF8728 == -1)
  {
    goto LABEL_19;
  }

LABEL_24:
  OUTLINED_FUNCTION_0_35(&qword_27FEF8728);
LABEL_19:
  v42 = qword_27FEFABC8;
  v43 = v31;
  v44 = v60;
  sub_261FEDDC4(v43, v60);
  if (os_log_type_enabled(v42, v65))
  {
    v45 = swift_slowAlloc();
    v58 = v33;
    v46 = v45;
    v47 = swift_slowAlloc();
    v57 = v29;
    v68[0] = v47;
    *v46 = 136446466;
    swift_beginAccess();
    v49 = *(v4 + 16);
    v48 = *(v4 + 24);

    v50 = sub_261F67FE4(v49, v48, v68);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    v57(v62, v44, v63);
    v51 = sub_26203A20C();
    v53 = v52;
    sub_261FEDE28(v44);
    v54 = sub_261F67FE4(v51, v53, v68);

    *(v46 + 14) = v54;
    _os_log_impl(&dword_261F5B000, v42, v65, "Created control channel transport %{public}s from bonjour advert: %s", v46, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  else
  {
    sub_261FEDE28(v44);
  }

  v55 = v61;
  v61[3] = v19;
  v55[4] = &protocol witness table for NWConnectionControlChannelTransport;

  *v55 = v4;
}

BOOL sub_262034264()
{
  if (qword_27FEF8528 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27FEF8F30;
  v1 = *algn_27FEF8F38;
  v2 = byte_27FEF8F40;
  if (byte_27FEF8F41)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_261F83BA8(v0, v1, v3 | v2);

  result = 0;
  if ((v4 & 1) == 0)
  {
    v6 = sub_262039B2C();
    return InterfaceIndexCorrespondsToAppleNCMInterface(v6);
  }

  return result;
}

uint64_t DiscoveredBonjourAdvert.endpointIdentifier.getter()
{
  BYTE8(v3) = 0;
  *&v3 = *(v0 + *(type metadata accessor for DiscoveredBonjourAdvert(0) + 20));
  sub_26203A8CC();
  MEMORY[0x266722710](45, 0xE100000000000000);
  sub_26203965C();
  sub_262034470();
  v1 = sub_26203ABAC();
  MEMORY[0x266722710](v1);

  return *(&v3 + 1);
}

uint64_t type metadata accessor for DiscoveredBonjourAdvert(uint64_t a1)
{
  result = qword_27FEFABD0;
  if (!qword_27FEFABD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_262034470()
{
  result = qword_28108CF40;
  if (!qword_28108CF40)
  {
    sub_26203965C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CF40);
  }

  return result;
}

uint64_t sub_2620344F0(uint64_t a1)
{
  v1 = sub_262039A7C();
  if (v2 <= 0x3F)
  {
    v1 = sub_26203965C();
    if (v3 <= 0x3F)
    {
      sub_262034688(319, &qword_27FEFABE0, type metadata accessor for ControlChannelConnectionWireProtocolVersion, MEMORY[0x277D83D88]);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_261F971AC();
        v1 = v6;
        if (v7 <= 0x3F)
        {
          sub_262034688(319, &qword_27FEFABE8, MEMORY[0x277CD8CF0], MEMORY[0x277D83940]);
          v1 = v8;
          if (v9 <= 0x3F)
          {
            v10 = sub_261F9B6D0(319, &unk_27FEFABF0, 0x277D028C0);
            if (v11 > 0x3F)
            {
              return v10;
            }

            else
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_262034688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2620346EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF99D0, &qword_26203F800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262034790()
{
  sub_262039FAC();
  sub_261F9B65C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  return sub_26203A75C();
}

uint64_t sub_262034818()
{
  sub_261FBD334();
  result = sub_26203A6BC();
  qword_27FEFAC00 = result;
  return result;
}

id sub_262034878()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  qword_27FEFAC18 = result;
  return result;
}

uint64_t sub_2620348AC()
{
  if (qword_27FEF8738 != -1)
  {
    swift_once();
  }

  v0 = qword_27FEFAC18;
  [qword_27FEFAC18 lock];
  v1 = qword_27FEFAC08;
  if (qword_27FEFAC08)
  {
    v2 = qword_27FEFAC10;
    v3 = swift_slowAlloc();
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0u;
    *(v3 + 48) = 0u;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    [v0 unlock];
    return v3;
  }

  else
  {
    result = sub_26203A91C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2620349B4()
{
  if (qword_27FEF8738 != -1)
  {
    swift_once();
  }

  v0 = qword_27FEFAC18;
  [qword_27FEFAC18 lock];
  v1 = qword_27FEFAC08;
  if (!qword_27FEFAC08)
  {
    v1 = swift_slowAlloc();
    *v1 = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0;
    v2 = swift_slowAlloc();
    bzero(v2, 0x110uLL);
    sub_262034AF0(0xD000000000000016, 0x8000000262052FD0, v1);
    *(v1 + 32) = 0x100000002;
    v2[8] = sub_262034B9C;
    v2[9] = sub_262034E98;
    qword_27FEFAC08 = v1;
    qword_27FEFAC10 = v2;
    nw_protocol_register();
  }

  [v0 unlock];
  return v1;
}

void *sub_262034AF0(uint64_t a1, uint64_t a2, char *__dst)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *__source = a1;
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
      v4 = __source;
      return strlcpy(__dst, v4, 0x20uLL);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return strlcpy(__dst, v4, 0x20uLL);
    }
  }

  result = sub_26203A7BC();
  if (!v3)
  {
    return v8;
  }

  return result;
}

uint64_t sub_262034BA0(uint64_t a1)
{
  v2 = sub_262039FAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_262039FEC();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = *(a1 + 40);
  if (!v11)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v12 = v11[2];

  if (v12)
  {
    v17 = v3;
    v18 = v6;
    v13 = v11[3];
    v16 = v11[14];
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    aBlock[4] = sub_261FBD060;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_261F78F64;
    aBlock[3] = &block_descriptor_65;
    v15 = _Block_copy(aBlock);
    sub_261F9904C(v12, v13);

    sub_262039FCC();
    v19 = MEMORY[0x277D84F90];
    sub_261F9B65C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F98F68();
    sub_26203A75C();
    MEMORY[0x266722A20](0, v10, v5, v15);
    _Block_release(v15);
    sub_261F99050(v12, v13);
    (*(v17 + 8))(v5, v2);
    (*(v7 + 8))(v10, v18);
  }

  else
  {
  }
}

uint64_t sub_262034E9C(uint64_t a1)
{
  v2 = sub_262039FAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_262039FEC();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = *(a1 + 40);
  if (!v11)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v12 = v11[4];

  if (v12)
  {
    v17 = v3;
    v18 = v6;
    v13 = v11[5];
    v16 = v11[14];
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    aBlock[4] = sub_261FBD554;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_261F78F64;
    aBlock[3] = &block_descriptor_59;
    v15 = _Block_copy(aBlock);
    sub_261F9904C(v12, v13);

    sub_262039FCC();
    v19 = MEMORY[0x277D84F90];
    sub_261F9B65C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F98F68();
    sub_26203A75C();
    MEMORY[0x266722A20](0, v10, v5, v15);
    _Block_release(v15);
    sub_261F99050(v12, v13);
    (*(v17 + 8))(v5, v2);
    (*(v7 + 8))(v10, v18);
  }

  else
  {
  }
}

uint64_t sub_262035198()
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = 30;
  result = MEMORY[0x266721A00](&v2, 4);
  qword_27FF07DF8 = result;
  unk_27FF07E00 = v1;
  return result;
}

uint64_t sub_262035200()
{
  if (qword_27FEF8740 != -1)
  {
    result = swift_once();
  }

  v0 = 0;
  switch(unk_27FF07E00 >> 62)
  {
    case 1:
      LODWORD(v0) = HIDWORD(qword_27FF07DF8) - qword_27FF07DF8;
      if (!__OFSUB__(HIDWORD(qword_27FF07DF8), qword_27FF07DF8))
      {
        v0 = v0;
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_10;
    case 2:
      v2 = *(qword_27FF07DF8 + 16);
      v1 = *(qword_27FF07DF8 + 24);
      v3 = __OFSUB__(v1, v2);
      v0 = v1 - v2;
      if (!v3)
      {
        goto LABEL_8;
      }

LABEL_10:
      __break(1u);
      break;
    case 3:
      goto LABEL_8;
    default:
      v0 = unk_27FF07E06;
LABEL_8:
      qword_27FF07E08 = v0;
      break;
  }

  return result;
}

uint64_t sub_2620352B0()
{
  if (qword_27FEF8748 != -1)
  {
    result = swift_once();
  }

  if (qword_27FF07E08 < 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(qword_27FF07E08))
  {
    dword_27FF07E10 = qword_27FF07E08;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26203531C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 104) = a4;
  *(v6 + 112) = a2;
  *(v6 + 96) = a3;
  v11 = OBJC_IVAR____TtC19RemotePairingDevice38SkywalkVirtualInterfaceNetworkProtocol_deferredCleanupTimeoutInterval;
  v12 = sub_262039F9C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v6 + v11, a6, v12);
  *(v6 + 56) = a1;
  v14 = a2;

  swift_unknownObjectRetain();
  sub_2620349B4();
  result = nw_protocol_create();
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v6 + 48) = result;
  *(v6 + 88) = a5;
  *(result + 40) = v6;
  swift_unknownObjectRetain();

  result = nw_channel_get_protocol_handler();
  if (!result)
  {
    (*(v13 + 8))(a6, v12);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return v6;
  }

  v16 = result;
  v17 = *(result + 24);
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = *v17;
  if (*v17)
  {

    v18(v16, *(v6 + 48));

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v13 + 8))(a6, v12);
    return v6;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2620354D8@<X0>(uint64_t *a1@<X8>)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = *v1;
  OUTLINED_FUNCTION_46();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  nw_frame_array_init();
  v10 = *(v1[6] + 32);
  if (!v10)
  {
    goto LABEL_14;
  }

  v9 = *(v10 + 24);
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v9 + 80);
  if (!v9)
  {
LABEL_16:
    __break(1u);
    if (!(v7 ^ v8 | v6))
    {
      __break(1u);
    }

    *(v2 + 16) = v9;

    __break(1u);
    return result;
  }

  v11 = (v9)();
  v12 = v11;
  v17 = 0;
  if (v11)
  {
    v2 = sub_26203A3FC();
    *(v2 + 16) = v12;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v16 = 0;
  v18[0] = v2 + 32;
  v18[1] = v12;
  sub_2620356AC(v18, &v16, v5 + 16, &v17, v4);
  v9 = v16;
  v8 = __OFSUB__(v16, v12);
  v6 = v16 == v12;
  v7 = v16 - v12 < 0;
  if (v16 > v12)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 16) = v16;
  OUTLINED_FUNCTION_46();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v5;
  v14 = v1[8];
  v8 = __OFADD__(v14, 1);
  v9 = v14 + 1;
  v6 = v9 == 0;
  v7 = v9 < 0;
  if (v8)
  {
    goto LABEL_13;
  }

  v1[8] = v9;
  *a1 = v2;
  a1[1] = sub_262036CE0;
  a1[2] = v13;
}

uint64_t *sub_2620356AC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*result)
  {
    v12 = *result;
    v8 = swift_allocObject();
    v8[2] = a4;
    v8[3] = &v12;
    v8[4] = a2;
    v8[5] = a5;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_262036CF0;
    *(v9 + 24) = v8;
    aBlock[4] = sub_262036D70;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2620359C4;
    aBlock[3] = &block_descriptor_53;
    v10 = _Block_copy(aBlock);

    nw_frame_array_foreach();
    _Block_release(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2620357E0(uint64_t a1, unsigned int *a2, uint64_t **a3, void *a4)
{
  v7 = sub_26203946C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = nw_frame_unclaimed_bytes();
  v12 = result;
  v13 = *a2;
  if (qword_27FEF8750 != -1)
  {
    result = swift_once();
  }

  if (v13 < dword_27FF07E10)
  {
    return 1;
  }

  v14 = *a2;
  v15 = *a2 - dword_27FF07E10;
  if (v14 < dword_27FF07E10)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  if (qword_27FEF8748 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v16 = qword_27FF07E08;
  (*(v8 + 104))(v10, *MEMORY[0x277CC92A8], v7);
  result = MEMORY[0x266721930](v12 + v16, v15, v10);
  v17 = *a3;
  *v17 = result;
  v17[1] = v18;
  *a3 += 2;
  if (!__OFADD__(*a4, 1))
  {
    ++*a4;
    return 1;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2620359C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v4 = v3(a2);
  swift_unknownObjectRelease();
  return v4 & 1;
}

void sub_262035A14(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v6[4] = sub_262036CE8;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_261F78F64;
  v6[3] = &block_descriptor_40;
  v5 = _Block_copy(v6);

  nw_queue_context_async_if_needed();
  _Block_release(v5);
}

uint64_t sub_262035B00(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12[4] = sub_2620359A4;
  v12[5] = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2620359C4;
  v12[3] = &block_descriptor_43;
  v4 = _Block_copy(v12);

  swift_beginAccess();
  nw_frame_array_foreach();
  swift_endAccess();
  _Block_release(v4);
  v5 = *(a1 + 64);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(a1 + 64) = v7;
  if (*(a1 + 72) != 1 || v7)
  {
    goto LABEL_10;
  }

  v2 = sub_26203A4AC();
  if (qword_27FEF8730 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v8 = qword_27FEFAC00;
    if (os_log_type_enabled(qword_27FEFAC00, v2))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_261F67FE4(*(a1 + 96), *(a1 + 104), v12);
      _os_log_impl(&dword_261F5B000, v8, v2, "Executing deferred destroyProtocol for interface %{public}s as last outstanding frames are cleaned up", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x266724180](v10, -1, -1);
      MEMORY[0x266724180](v9, -1, -1);
    }

    *(a1 + 72) = 0;
    if (*(a1 + 80))
    {

      sub_26203A05C();
    }

    *(a1 + 80) = 0;

    v2 = a1;
    sub_262036230(0);
LABEL_10:
    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
  }

  return result;
}

uint64_t sub_262035D44(uint64_t a1)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *v1;
  v17[1] = 0;
  v17[2] = 0;
  nw_frame_array_init();
  v5 = v1[6];
  result = *(v5 + 32);
  if (result)
  {
    v7 = *(result + 24);
    if (v7)
    {
      v8 = *(v7 + 88);
      if (v8)
      {
        if (HIDWORD(v2))
        {
          __break(1u);
        }

        v8();
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  v17[0] = 0;
  v16 = 0;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = v17;
  v9[4] = &v16;
  v9[5] = v1;
  v9[6] = v4;
  OUTLINED_FUNCTION_46();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_262036CA4;
  *(v10 + 24) = v9;
  aBlock[4] = sub_262036CB4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2620359C4;
  aBlock[3] = &block_descriptor_28_0;
  v11 = _Block_copy(aBlock);

  nw_frame_array_foreach();
  _Block_release(v11);
  if (nw_frame_array_is_empty())
  {
LABEL_12:
    v14 = v17[0];

    return v14;
  }

  result = *(v5 + 32);
  if (!result)
  {
    goto LABEL_18;
  }

  v12 = *(result + 24);
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = *(v12 + 96);
  if (v13)
  {
    v13();
    goto LABEL_12;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_262035F6C(uint64_t a1, uint64_t a2, unint64_t *a3, unsigned int *a4, uint64_t a5)
{
  v11 = *a3;
  if ((*a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = *(a2 + 16);
  if (v11 >= v10)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  v9 = a4;
  v5 = a3;
  v12 = a2 + 16 * v11;
  v7 = *(v12 + 32);
  v8 = *(v12 + 40);
  sub_261F6B73C(v7, v8);
  if (!nw_frame_unclaimed_bytes())
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = MEMORY[0x266721A20](v7, v8);
  if (qword_27FEF8748 != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v13 = __OFADD__(v6, qword_27FF07E08);
  v14 = v6 + qword_27FF07E08;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v14 <= *v9)
  {
    if (qword_27FEF8740 == -1)
    {
LABEL_8:
      sub_2620395BC();
      MEMORY[0x266721A20](v7, v8);
      sub_2620395BC();
      if (v14 < 0)
      {
        __break(1u);
      }

      else
      {
        nw_frame_claim();
        nw_frame_collapse();
        nw_frame_unclaim();
        sub_261F6BFFC(v7, v8);
        v15 = *v5 + 1;
        if (!__OFADD__(*v5, 1))
        {
          *v5 = v15;
          return v15 < v10;
        }
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_15:
    swift_once();
    goto LABEL_8;
  }

LABEL_19:
  sub_26203A7CC();
  MEMORY[0x266722710](0xD000000000000033, 0x8000000262052F70);
  v17 = sub_26203ABAC();
  MEMORY[0x266722710](v17);

  MEMORY[0x266722710](0xD000000000000017, 0x8000000262052FB0);
  v18 = sub_26203ABAC();
  MEMORY[0x266722710](v18);

  result = sub_26203A91C();
  __break(1u);
  return result;
}

uint64_t sub_262036230(char a1)
{
  v2 = v1;
  v4 = sub_26203A03C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - v9;
  v11 = sub_262039FAC();
  MEMORY[0x28223BE20](v11);
  if ((a1 & 1) != 0 || !*(v1 + 64))
  {
    v20 = sub_26203A4AC();
    if (qword_27FEF8730 != -1)
    {
      OUTLINED_FUNCTION_0_36(&qword_27FEF8730);
    }

    v21 = qword_27FEFAC00;
    if (os_log_type_enabled(qword_27FEFAC00, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_261F67FE4(v2[12], v2[13], aBlock);
      _os_log_impl(&dword_261F5B000, v21, v20, "destroyProtocol invoked for interface %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

    v24 = v2[6];
    v25 = *(v24 + 32);
    if (v25)
    {
      v26 = *(v25 + 24);
      if (v26)
      {
        v27 = *(v26 + 8);
        if (v27)
        {
          v27();
          nw_channel_close();
          if (*(v24 + 40))
          {

            OUTLINED_FUNCTION_26();

LABEL_23:
            JUMPOUT(0x266724180);
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v12 = sub_26203A4AC();
  if (qword_27FEF8730 != -1)
  {
    OUTLINED_FUNCTION_0_36(&qword_27FEF8730);
  }

  v13 = qword_27FEFAC00;
  if (os_log_type_enabled(qword_27FEFAC00, v12))
  {

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28[0] = v5;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_261F67FE4(*(v1 + 96), *(v1 + 104), aBlock);
    *(v14 + 12) = 2048;
    *(v14 + 14) = *(v1 + 64);

    _os_log_impl(&dword_261F5B000, v13, v12, "Deferring destroyProtocol for interface %{public}s until %ld packet groups are cleaned up", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    v5 = v28[0];
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  *(v1 + 72) = 1;
  aBlock[4] = sub_262036C94;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_15;
  _Block_copy(aBlock);
  v28[1] = MEMORY[0x277D84F90];
  sub_261F9B65C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  sub_26203A06C();
  swift_allocObject();
  v17 = sub_26203A04C();

  *(v1 + 80) = v17;

  sub_26203A02C();
  MEMORY[0x266722530](v8, v1 + OBJC_IVAR____TtC19RemotePairingDevice38SkywalkVirtualInterfaceNetworkProtocol_deferredCleanupTimeoutInterval);
  v18 = *(v5 + 8);
  v18(v8, v4);
  sub_26203A55C();

  return (v18)(v10, v4);
}

void sub_26203670C(uint64_t a1)
{
  v2[4] = sub_262036C9C;
  v2[5] = a1;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_261F78F64;
  v2[3] = &block_descriptor_22_0;
  v1 = _Block_copy(v2);

  nw_queue_context_async_if_needed();
  _Block_release(v1);
}

uint64_t sub_2620367CC(uint64_t result)
{
  if (*(result + 72) == 1)
  {
    v8[7] = v1;
    v8[8] = v2;
    v3 = result;
    v4 = sub_26203A49C();
    if (qword_27FEF8730 != -1)
    {
      swift_once();
    }

    v5 = qword_27FEFAC00;
    if (os_log_type_enabled(qword_27FEFAC00, v4))
    {

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8[0] = v7;
      *v6 = 136446466;
      *(v6 + 4) = sub_261F67FE4(v3[12], v3[13], v8);
      *(v6 + 12) = 2048;
      *(v6 + 14) = v3[8];

      _os_log_impl(&dword_261F5B000, v5, v4, "Forcibly executing destroyProtocol for interface %{public}s since %ld packet groups were not cleaned up by timeout", v6, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x266724180](v7, -1, -1);
      MEMORY[0x266724180](v6, -1, -1);
    }

    return sub_262036230(1);
  }

  return result;
}

uint64_t *sub_262036918()
{
  v1 = sub_26203A4AC();
  if (qword_27FEF8730 != -1)
  {
    OUTLINED_FUNCTION_0_36(&qword_27FEF8730);
  }

  v2 = qword_27FEFAC00;
  if (os_log_type_enabled(qword_27FEFAC00, v1))
  {
    v3 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = sub_26203AE8C();
    v6 = sub_261F67FE4(v4, v5, &v10);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_261F67FE4(*(v0 + 96), *(v0 + 104), &v10);
    _os_log_impl(&dword_261F5B000, v2, v1, "%s.deinit invoked for interface %{public}s", v3, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  sub_261F99050(*(v0 + 16), *(v0 + 24));
  sub_261F99050(*(v0 + 32), *(v0 + 40));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v7 = OBJC_IVAR____TtC19RemotePairingDevice38SkywalkVirtualInterfaceNetworkProtocol_deferredCleanupTimeoutInterval;
  v8 = sub_262039F9C();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_262036AFC()
{
  sub_262036918();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SkywalkVirtualInterfaceNetworkProtocol(uint64_t a1)
{
  result = qword_27FEFAC28;
  if (!qword_27FEFAC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262036BA8(uint64_t a1)
{
  result = sub_262039F9C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

size_t sub_262036CFC@<X0>(char *__source@<X0>, size_t *a2@<X8>)
{
  result = strlcpy(*(v2 + 16), __source, 0x20uLL);
  *a2 = result;
  return result;
}

uint64_t RemoteUnlockDeviceKeyForTunnelRequest.tunnelDeviceName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_262036DA4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002620530B0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26203AC0C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_262036E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262036DA4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_262036E70(uint64_t a1)
{
  v2 = sub_262036FFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262036EAC(uint64_t a1)
{
  v2 = sub_262036FFC();

  return MEMORY[0x2821FE720](a1, v2);
}

void RemoteUnlockDeviceKeyForTunnelRequest.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFACA0, &qword_26204BCD0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  sub_262036FFC();
  sub_26203AE5C();
  sub_26203AAFC();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_262036FFC()
{
  result = qword_27FEFACA8;
  if (!qword_27FEFACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFACA8);
  }

  return result;
}

void RemoteUnlockDeviceKeyForTunnelRequest.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFACB0, &qword_26204BCD8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  v6 = sub_262036FFC();
  OUTLINED_FUNCTION_31(&type metadata for RemoteUnlockDeviceKeyForTunnelRequest.CodingKeys, v7, v6);
  if (!v0)
  {
    v8 = sub_26203A9EC();
    v10 = v9;
    v11 = OUTLINED_FUNCTION_20_0();
    v12(v11);
    *v4 = v8;
    v4[1] = v10;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_38_0();
}

uint64_t RemoteUnlockDeviceKeyForTunnelResponse.deviceKey.getter()
{
  v1 = *v0;
  sub_261F6B73C(*v0, *(v0 + 8));
  return v1;
}

uint64_t RemoteUnlockDeviceKeyForTunnelResponse.init(deviceKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2620371E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x654B656369766564 && a2 == 0xE900000000000079)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26203AC0C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_262037284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2620371E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2620372B0(uint64_t a1)
{
  v2 = sub_26203746C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2620372EC(uint64_t a1)
{
  v2 = sub_26203746C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RemoteUnlockDeviceKeyForTunnelResponse.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFACB8, &qword_26204BCE0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *v0;
  v10 = v0[1];
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  sub_261F6B73C(v9, v10);
  sub_26203746C();
  sub_26203AE5C();
  v11 = v9;
  v12 = v10;
  sub_261FC7838();
  sub_26203AB3C();
  sub_261F6BFFC(v11, v12);
  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_26203746C()
{
  result = qword_27FEFACC0;
  if (!qword_27FEFACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFACC0);
  }

  return result;
}

void RemoteUnlockDeviceKeyForTunnelResponse.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFACC8, &qword_26204BCE8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  v6 = sub_26203746C();
  OUTLINED_FUNCTION_31(&type metadata for RemoteUnlockDeviceKeyForTunnelResponse.CodingKeys, v7, v6);
  if (!v0)
  {
    sub_261FCA870();
    sub_26203AA2C();
    v8 = OUTLINED_FUNCTION_20_0();
    v9(v8);
    *v4 = v10;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_38_0();
}

id RemotePairingDeviceTunnelServiceConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemotePairingDeviceTunnelServiceConnection.init()()
{
  ObjectType = swift_getObjectType();
  sub_2620398EC();
  sub_2620398CC();
  sub_26203990C();
  *&v0[OBJC_IVAR____TtC19RemotePairingDevice42RemotePairingDeviceTunnelServiceConnection_connection] = swift_dynamicCastClassUnconditional();

  sub_26203975C();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t RemotePairingDeviceTunnelServiceConnection.copyRemoteUnlockDeviceKeyForTunnel(tunnelName:)(uint64_t a1, uint64_t a2)
{
  sub_262037818();
  sub_26203786C();
  sub_2620378C0();
  sub_262037914();
  sub_261F96884();

  sub_26203976C();

  if (!v2)
  {
    return v4;
  }

  return result;
}

unint64_t sub_262037818()
{
  result = qword_27FEFACD8;
  if (!qword_27FEFACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFACD8);
  }

  return result;
}

unint64_t sub_26203786C()
{
  result = qword_27FEFACE0;
  if (!qword_27FEFACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFACE0);
  }

  return result;
}

unint64_t sub_2620378C0()
{
  result = qword_27FEFACE8;
  if (!qword_27FEFACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFACE8);
  }

  return result;
}

unint64_t sub_262037914()
{
  result = qword_27FEFACF0;
  if (!qword_27FEFACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFACF0);
  }

  return result;
}

id RemotePairingDeviceTunnelServiceConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_262037AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

_BYTE *sub_262037B70(_BYTE *result, int a2, int a3)
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

unint64_t sub_262037C20()
{
  result = qword_27FEFACF8;
  if (!qword_27FEFACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFACF8);
  }

  return result;
}

unint64_t sub_262037C78()
{
  result = qword_27FEFAD00;
  if (!qword_27FEFAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAD00);
  }

  return result;
}

unint64_t sub_262037CD0()
{
  result = qword_27FEFAD08;
  if (!qword_27FEFAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAD08);
  }

  return result;
}

unint64_t sub_262037D28()
{
  result = qword_27FEFAD10;
  if (!qword_27FEFAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAD10);
  }

  return result;
}

unint64_t sub_262037D80()
{
  result = qword_27FEFAD18;
  if (!qword_27FEFAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFAD18);
  }

  return result;
}

unint64_t sub_262037DD8()
{
  result = qword_27FEFAD20[0];
  if (!qword_27FEFAD20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEFAD20);
  }

  return result;
}

uint64_t sub_262037E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OS_dispatch_io.write(content:completingOn:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v9 = sub_26203A01C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      v14 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      v13 = a1;
      goto LABEL_8;
    case 2uLL:
      v13 = *(a1 + 16);
      v14 = *(a1 + 24);
LABEL_8:
      sub_262038D2C(v13, v14);
      goto LABEL_9;
    case 3uLL:
      memset(v17, 0, 14);
      goto LABEL_5;
    default:
      v17[0] = a1;
      LOWORD(v17[1]) = a2;
      BYTE2(v17[1]) = BYTE2(a2);
      BYTE3(v17[1]) = BYTE3(a2);
      BYTE4(v17[1]) = BYTE4(a2);
      BYTE5(v17[1]) = BYTE5(a2);
LABEL_5:
      sub_262039FFC();
LABEL_9:
      v15 = swift_allocObject();
      *(v15 + 16) = a4;
      *(v15 + 24) = a5;

      sub_26203A51C();

      return (*(v10 + 8))(v12, v9);
  }
}

uint64_t OS_dispatch_io.read(minLength:maxLength:competingOn:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFADB0, &qword_26204C1C8);
  v7 = swift_allocBox();
  v9 = v8;
  v10 = sub_26203A01C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = a4;
  v11[4] = a5;

  sub_26203A4DC();
}

uint64_t sub_2620381C8()
{
  sub_261FBD334();
  result = sub_26203A6BC();
  qword_27FEFADA8 = result;
  return result;
}

void sub_26203822C(int a1, uint64_t a2, unsigned int a3, uint64_t a4, void (*a5)(void, void, void), uint64_t a6)
{
  v64 = a6;
  v65 = a3;
  v62 = a1;
  v67 = sub_2620392DC();
  v63 = *(v67 - 8);
  v8 = MEMORY[0x28223BE20](v67);
  v60 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v66 = &v59 - v11;
  MEMORY[0x28223BE20](v10);
  v69 = &v59 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFADB0, &qword_26204C1C8);
  v13 = MEMORY[0x28223BE20](v61);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v59 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v59 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v59 - v22;
  v24 = sub_26203A01C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_projectBox();
  sub_262038DD4(a2, v23);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v24);
  v68 = a5;
  if (EnumTagSinglePayload == 1)
  {
    sub_262038E44(v23);
LABEL_5:
    v32 = v66;
    v33 = v67;
    goto LABEL_9;
  }

  v30 = *(v25 + 32);
  v30(v27, v23, v24);
  swift_beginAccess();
  sub_262038DD4(v28, v21);
  v31 = __swift_getEnumTagSinglePayload(v21, 1, v24);
  sub_262038E44(v21);
  if (v31 == 1)
  {
    v30(v18, v27, v24);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v24);
    swift_beginAccess();
    sub_262038EF0(v18, v28);
    a5 = v68;
    goto LABEL_5;
  }

  swift_beginAccess();
  v34 = __swift_getEnumTagSinglePayload(v28, 1, v24);
  v32 = v66;
  v33 = v67;
  if (!v34)
  {
    sub_26203A00C();
  }

  swift_endAccess();
  (*(v25 + 8))(v27, v24);
  a5 = v68;
LABEL_9:
  v35 = v69;
  v36 = v65;
  if (v65)
  {
    v37 = sub_2620396AC();
    if ((v37 & 0x100000000) != 0)
    {
      v38 = 5;
    }

    else
    {
      v38 = v37;
    }

    LODWORD(v73[0]) = v38;
    sub_261F9D4D8(MEMORY[0x277D84F90]);
    sub_262038EAC(&qword_27FEF9920, MEMORY[0x277CC8650]);
    sub_2620393DC();
    v39 = sub_26203A48C();
    if (qword_27FEF8758 != -1)
    {
      swift_once();
    }

    v40 = qword_27FEFADA8;
    v41 = v63;
    (*(v63 + 16))(v32, v35, v33);
    if (os_log_type_enabled(v40, v39))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v73[0] = v43;
      *v42 = 67109378;
      *(v42 + 4) = v36;
      *(v42 + 8) = 2082;
      sub_262038EAC(&unk_27FEF9B80, MEMORY[0x277CC8660]);
      v44 = sub_26203ACCC();
      v45 = v32;
      v47 = v46;
      v48 = *(v41 + 8);
      v48(v45, v33);
      v49 = sub_261F67FE4(v44, v47, v73);

      *(v42 + 10) = v49;
      _os_log_impl(&dword_261F5B000, v40, v39, "Read error: %d, %{public}s", v42, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x266724180](v43, -1, -1);
      v50 = v42;
      v35 = v69;
      MEMORY[0x266724180](v50, -1, -1);
    }

    else
    {
      v48 = *(v41 + 8);
      v48(v32, v33);
    }

    v54 = sub_2620392CC();
    v68(v54, 0, 1);

    v48(v35, v33);
  }

  else if (v62)
  {
    swift_beginAccess();
    sub_262038DD4(v28, v15);
    v51 = sub_26203A6CC();
    sub_262038E44(v15);
    v72 = v51;
    if (swift_dynamicCast())
    {
      v52 = v70;
      v53 = v71;
      if (MEMORY[0x266721A20](v70, v71) >= 1)
      {
        sub_261F6B73C(v52, v53);
        a5(v52, v53, 0);
        sub_261F6BFFC(v52, v53);
        sub_261F6BFFC(v52, v53);
        return;
      }

      sub_261F6BFFC(v52, v53);
    }

    v55 = sub_26203A48C();
    if (qword_27FEF8758 != -1)
    {
      swift_once();
    }

    v56 = MEMORY[0x277D84F90];
    sub_26203969C(v55, &dword_261F5B000, qword_27FEFADA8, "Read done with no data, EOF", 27, 2, MEMORY[0x277D84F90]);
    LODWORD(v70) = 32;
    sub_261F9D4D8(v56);
    sub_262038EAC(&qword_27FEF9920, MEMORY[0x277CC8650]);
    v57 = v60;
    sub_2620393DC();
    v58 = sub_2620392CC();
    (*(v63 + 8))(v57, v33);
    a5(v58, 0, 1);
  }
}

uint64_t sub_2620389F0(char a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v7 = a3;
  v9 = sub_2620392DC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v11);
  v16 = &v31[-v15];
  if (v7)
  {
    v35 = a5;
    v17 = sub_2620396AC();
    if ((v17 & 0x100000000) != 0)
    {
      v18 = 5;
    }

    else
    {
      v18 = v17;
    }

    v37 = v18;
    sub_261F9D4D8(MEMORY[0x277D84F90]);
    sub_262038EAC(&qword_27FEF9920, MEMORY[0x277CC8650]);
    sub_2620393DC();
    v19 = sub_26203A48C();
    if (qword_27FEF8758 != -1)
    {
      swift_once();
    }

    v20 = qword_27FEFADA8;
    (*(v10 + 16))(v13, v16, v9);
    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v34 = a4;
      v22 = v21;
      v33 = swift_slowAlloc();
      v36 = v33;
      *v22 = 67109378;
      *(v22 + 4) = v7;
      *(v22 + 8) = 2082;
      sub_262038EAC(&unk_27FEF9B80, MEMORY[0x277CC8660]);
      v32 = v19;
      v23 = sub_26203ACCC();
      v25 = v24;
      v26 = *(v10 + 8);
      v26(v13, v9);
      v27 = sub_261F67FE4(v23, v25, &v36);

      *(v22 + 10) = v27;
      _os_log_impl(&dword_261F5B000, v20, v32, "Write error: %d, %{public}s", v22, 0x12u);
      v28 = v33;
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x266724180](v28, -1, -1);
      v29 = v22;
      a4 = v34;
      MEMORY[0x266724180](v29, -1, -1);
    }

    else
    {
      v26 = *(v10 + 8);
      v26(v13, v9);
    }

    v30 = sub_2620392CC();
    a4();

    return (v26)(v16, v9);
  }

  else if (a1)
  {
    return (a4)(0);
  }

  return result;
}

uint64_t sub_262038D2C(uint64_t a1, uint64_t a2)
{
  result = sub_26203937C();
  if (!result || (result = sub_2620393AC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26203939C();
      return sub_262039FFC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_262038DD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFADB0, &qword_26204C1C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262038E44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFADB0, &qword_26204C1C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262038EAC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2620392DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_262038EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFADB0, &qword_26204C1C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void InterfaceIndexCorrespondsToAppleNCMInterface_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_261F5B000, v0, OS_LOG_TYPE_DEBUG, "%s Trying to determine whether interface index %ld comes from NCM.", v1, 0x16u);
}

void InterfaceIndexCorrespondsToAppleNCMInterface_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_3();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&dword_261F5B000, v1, OS_LOG_TYPE_ERROR, "%s IOServiceGetMatchingServices failed for inteface name %s. Result: %d", v2, 0x1Cu);
}

void InterfaceIndexCorrespondsToAppleNCMInterface_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "ServiceHasAppleNCMParent";
  OUTLINED_FUNCTION_1_3(&dword_261F5B000, a2, a3, "%s Figuring out if service has NCM as parent.", a1);
}

void InterfaceIndexCorrespondsToAppleNCMInterface_cold_4(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "ServiceHasAppleNCMParent";
  OUTLINED_FUNCTION_1_3(&dword_261F5B000, a2, a3, "%s interface parent does have valid USB vendor ID property", a1);
}

void InterfaceIndexCorrespondsToAppleNCMInterface_cold_5(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "ServiceHasAppleNCMParent";
  OUTLINED_FUNCTION_1_3(&dword_261F5B000, a2, a3, "%s interface parent does not conform to AppleUSBNCMData", a1);
}

void InterfaceIndexCorrespondsToAppleNCMInterface_cold_6()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_261F5B000, v0, v1, "%s IOBSDNameMatching returned nil for inteface name %s.", v2, v3, v4, v5, v6);
}

void InterfaceIndexCorrespondsToAppleNCMInterface_cold_7()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_261F5B000, v0, v1, "%s Unable to look up name for interface index %ld.", v2, v3, v4, v5, v6);
}

void InterfaceIndexCorrespondsToAppleNCMInterface_cold_8()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_261F5B000, v0, v1, "%s Invalid interface index %ld.", v2, v3, v4, v5, v6);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}