uint64_t sub_2141B3034(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908AE0, &qword_2146F52F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214300338();

  sub_2146DAA28();
  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908928, &qword_2146F5230);
  sub_2142FF588();
  sub_2146DA388();

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_2141B31E4@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2141B320C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6472614368636972 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2141B329C(uint64_t a1)
{
  v2 = sub_21430038C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B32D8(uint64_t a1)
{
  v2 = sub_21430038C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B3314@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908AE8, &qword_2146F52F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430038C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908AF8, &qword_2146F5300);
    sub_2143003E0();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B3498(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B10, &qword_2146F5308);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143001B8(v7, v8);
  sub_21430038C();
  sub_2146DAA28();
  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908AF8, &qword_2146F5300);
  sub_2143004B8();
  sub_2146DA388();
  sub_2143002A4(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

__n128 SMSCTPartSMIL.init(with:orderedParts:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u64[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u64[0] = v3;
  a3[1].n128_u64[1] = a2;
  return result;
}

uint64_t sub_2141B3654()
{
  if (*v0)
  {
    return 0x506465726564726FLL;
  }

  else
  {
    return 0x42746E65746E6F63;
  }
}

uint64_t sub_2141B36A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x42746E65746E6F63 && a2 == 0xEB0000000079646FLL;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x506465726564726FLL && a2 == 0xEC00000073747261)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2141B3784(uint64_t a1)
{
  v2 = sub_214300590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B37C0(uint64_t a1)
{
  v2 = sub_214300590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SMSCTPartSMIL.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B28, &qword_2146F5310);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214300590();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
    v18 = 0;
    sub_2142E4F74();
    sub_2146DA1C8();
    v9 = v15;
    v10 = v16;
    v14 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B38, &qword_2146F5318);
    v18 = 1;
    sub_2143005E4();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v12 = v14;
    v11 = v15;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SMSCTPartSMIL.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B48, &qword_2146F5320);
  v12 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v11 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v11[0] = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214031CA0(v6, v7, v8);
  sub_214300590();
  sub_2146DAA28();
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
  sub_2142E5278();
  v9 = v11[1];
  sub_2146DA388();
  sub_214031CE0(v13, v14, v15);
  if (!v9)
  {
    v13 = v11[0];
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B38, &qword_2146F5318);
    sub_214300668();
    sub_2146DA388();
  }

  return (*(v12 + 8))(v5, v3);
}

uint64_t sub_2141B3C34()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x44746E65746E6F63;
  }
}

uint64_t sub_2141B3C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002147957E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2141B3D64(uint64_t a1)
{
  v2 = sub_2143006EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B3DA0(uint64_t a1)
{
  v2 = sub_2143006EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B3DDC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B58, &qword_2146F5328);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143006EC();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v13 = 0;
    sub_2142E1278();
    sub_2146DA1C8();
    v9 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v13 = 1;
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v12;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B3FEC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B68, &qword_2146F5330);
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v12 = v1[3];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FDCA18(v7, v8);
  sub_2143006EC();
  sub_2146DAA28();
  v15 = v7;
  v16 = v8;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  sub_2142E1CAC();
  sub_2146DA388();
  sub_213FDC6BC(v15, v16);
  if (!v2)
  {
    v15 = v13;
    v16 = v12;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
  }

  return (*(v14 + 8))(v6, v4);
}

BlastDoor::SMSParserPart __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SMSParserPart.init(with:attachmentParts:)(Swift::OpaquePointer with, Swift::OpaquePointer attachmentParts)
{
  v2->_rawValue = with._rawValue;
  v2[1]._rawValue = attachmentParts._rawValue;
  result.attachmentParts = attachmentParts;
  result.textParts = with;
  return result;
}

uint64_t sub_2141B4204()
{
  if (*v0)
  {
    return 0x656D686361747461;
  }

  else
  {
    return 0x7472615074786574;
  }
}

uint64_t sub_2141B4250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472615074786574 && a2 == 0xE900000000000073;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEF7374726150746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2141B433C(uint64_t a1)
{
  v2 = sub_214300740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B4378(uint64_t a1)
{
  v2 = sub_214300740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SMSParserPart.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B70, &qword_2146F5338);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214300740();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B80, &qword_2146F5340);
    v13 = 0;
    sub_214300794();
    sub_2146DA1C8();
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B90, &qword_2146F5348);
    v13 = 1;
    sub_214300818();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SMSParserPart.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908BA0, &qword_2146F5350);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214300740();

  sub_2146DAA28();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B80, &qword_2146F5340);
  sub_21430089C();
  sub_2146DA388();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B90, &qword_2146F5348);
    sub_214300920();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2141B47C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_2141B47D0()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x4C746E65746E6F63;
  }
}

uint64_t sub_2141B4810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4C746E65746E6F63 && a2 == 0xEF6E6F697461636FLL;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2141B48F4(uint64_t a1)
{
  v2 = sub_2143009A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B4930(uint64_t a1)
{
  v2 = sub_2143009A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B496C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908BB8, &qword_2146F5358);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143009A4();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = 0;
    v9 = sub_2146DA168();
    v11 = v10;
    v17 = v9;
    v18 = 1;
    v12 = sub_2146DA168();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B4B44(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908BC8, &qword_2146F5360);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143009A4();
  sub_2146DAA28();
  v12 = 0;
  v8 = v10[3];
  sub_2146DA328();
  if (!v8)
  {
    v11 = 1;
    sub_2146DA328();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2141B4D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4C746E65746E6F63 && a2 == 0xEF6E6F697461636FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2141B4DBC(uint64_t a1)
{
  v2 = sub_2143009F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B4DF8(uint64_t a1)
{
  v2 = sub_2143009F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B4E78@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v6)
  {
    v12 = v19;
    v13 = v20;
    v14 = sub_2146DA168();
    v16 = v15;
    (*(v12 + 8))(v11, v9);
    *v13 = v14;
    v13[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B503C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v13 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  v12 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13();
  sub_2146DAA28();
  sub_2146DA328();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2141B51E0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  v14 = *v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_2146DAA28();
  sub_2146DA328();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2141B5328(uint64_t a1)
{
  v2 = sub_214300A4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B5364(uint64_t a1)
{
  v2 = sub_214300A4C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 SMSMessage.init(with:filterSubCategory:carrierNameSupportsReportJunk:version:type:recipients:date:sender:iMessageCapability:serviceCenter:originatedDeviceNumber:originatedDeviceEmail:originatedDeviceSIM:subject:contentType:replaceMessage:countryCode:GUID:fallbackHash:items:trackMessage:sendEnabled:foundAppleGUID:groupID:originalGroupID:displayName:originatedDeviceUniqueID:smsFilteringSettings:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, __n128 *a48)
{
  *a9 = a1;
  v49 = *a3;
  *(a9 + 8) = a2 & 1;
  *(a9 + 9) = v49;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = *a8;
  v70 = *a48;
  v69 = a48[1].n128_u64[0];
  *(a9 + 56) = a10;
  v50 = type metadata accessor for SMSMessage(0);
  sub_21408AC04(a11, a9 + v50[10], &qword_27C913090, &unk_2146E9DB0);
  v51 = (a9 + v50[11]);
  *v51 = a12;
  v51[1] = a13;
  v52 = a9 + v50[12];
  *v52 = a14;
  *(v52 + 8) = a15 & 1;
  v53 = (a9 + v50[13]);
  *v53 = a16;
  v53[1] = a17;
  v54 = (a9 + v50[14]);
  *v54 = a18;
  v54[1] = a19;
  v55 = (a9 + v50[15]);
  *v55 = a20;
  v55[1] = a21;
  v56 = (a9 + v50[16]);
  *v56 = a22;
  v56[1] = a23;
  v57 = (a9 + v50[17]);
  *v57 = a24;
  v57[1] = a25;
  v58 = (a9 + v50[18]);
  *v58 = a26;
  v58[1] = a27;
  v59 = a9 + v50[19];
  *v59 = a28;
  *(v59 + 8) = a29 & 1;
  v60 = (a9 + v50[20]);
  *v60 = a30;
  v60[1] = a31;
  v61 = (a9 + v50[21]);
  *v61 = a32;
  v61[1] = a33;
  v62 = (a9 + v50[22]);
  *v62 = a34;
  v62[1] = a35;
  *(a9 + v50[23]) = a36;
  *(a9 + v50[24]) = a37;
  *(a9 + v50[25]) = a38;
  *(a9 + v50[26]) = a39;
  v63 = (a9 + v50[27]);
  *v63 = a40;
  v63[1] = a41;
  v64 = (a9 + v50[28]);
  *v64 = a42;
  v64[1] = a43;
  v65 = (a9 + v50[29]);
  *v65 = a44;
  v65[1] = a45;
  v66 = (a9 + v50[30]);
  *v66 = a46;
  v66[1] = a47;
  v67 = (a9 + v50[31]);
  v67[1].n128_u64[0] = v69;
  result = v70;
  *v67 = v70;
  return result;
}

unint64_t sub_2141B573C(char a1)
{
  result = 0x657461436D617073;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0x6E6F6973726576;
      break;
    case 4:
      result = 1701869940;
      break;
    case 5:
      result = 0x6E65697069636572;
      break;
    case 6:
      result = 1702125924;
      break;
    case 7:
      result = 0x7265646E6573;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x4365636976726573;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x7463656A627573;
      break;
    case 14:
      result = 0x54746E65746E6F63;
      break;
    case 15:
      result = 0x4D6563616C706572;
      break;
    case 16:
      result = 0x437972746E756F63;
      break;
    case 17:
      result = 1145656647;
      break;
    case 18:
      result = 0x6B6361626C6C6166;
      break;
    case 19:
      result = 0x736D657469;
      break;
    case 20:
      result = 0x73654D6B63617274;
      break;
    case 21:
      result = 0x62616E45646E6573;
      break;
    case 22:
      result = 0x707041646E756F66;
      break;
    case 23:
      result = 0x444970756F7267;
      break;
    case 24:
      result = 0x6C616E696769726FLL;
      break;
    case 25:
      result = 0x4E79616C70736964;
      break;
    case 26:
      result = 0xD000000000000018;
      break;
    case 27:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2141B5A98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214370BB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141B5AC0(uint64_t a1)
{
  v2 = sub_214300AA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B5AFC(uint64_t a1)
{
  v2 = sub_214300AA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SMSMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  MEMORY[0x28223BE20](v5);
  v7 = &v61 - v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C00, &qword_2146F5388);
  v8 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v10 = &v61 - v9;
  v11 = a1[3];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_214300AA0();
  *&v92 = v10;
  sub_2146DAA08();
  if (!v2)
  {
    v88 = a2;
    v89 = v7;
    v90 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v97 = 0;
    v12 = sub_2142E11FC();
    sub_2146DA1C8();
    v13 = v94;
    v14 = BYTE8(v94);
    v97 = 1;
    sub_214300AF4();
    sub_2146DA1C8();
    v87 = v12;
    v96 = v94;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v97 = 2;
    v16 = sub_2142E12FC();
    sub_2146DA1C8();
    *&v86 = v15;
    *(&v86 + 1) = v16;
    v84 = v14;
    v85 = v13;
    v18 = v94;
    LOBYTE(v94) = 3;
    v19 = sub_2146DA168();
    v21 = v20;
    v83 = v19;
    v97 = 4;
    sub_214300B48();
    sub_2146DA1C8();
    v82 = v21;
    LODWORD(v16) = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    v97 = 5;
    sub_2142E1548();
    sub_2146DA1C8();
    v80 = v16;
    v81 = *(&v18 + 1);
    v22 = v94;
    LOBYTE(v94) = 6;
    sub_2142EC0C4();
    sub_2146DA1C8();
    v79 = v22;
    v97 = 7;
    sub_2146DA1C8();
    v23 = v94;
    v97 = 8;
    sub_2146DA1C8();
    v78 = v94;
    v77 = BYTE8(v94);
    v97 = 9;
    sub_2146DA1C8();
    v76 = v94;
    v97 = 10;
    sub_2146DA1C8();
    v75 = v94;
    v97 = 11;
    sub_2146DA1C8();
    v74 = v94;
    v97 = 12;
    sub_2146DA1C8();
    v73 = v94;
    v97 = 13;
    sub_2146DA1C8();
    v24 = *(&v94 + 1);
    v72 = v94;
    v97 = 14;
    sub_2146DA1C8();
    v71 = v94;
    v97 = 15;
    sub_2146DA1C8();
    v25 = v94;
    v26 = BYTE8(v94);
    v97 = 16;
    sub_2146DA1C8();
    v27 = *(&v94 + 1);
    v87 = v94;
    v97 = 17;
    sub_2146DA1C8();
    v70 = v94;
    v97 = 18;
    sub_2146DA1C8();
    v69 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C10, &qword_2146F5390);
    v97 = 19;
    sub_214300B9C();
    sub_2146DA1C8();
    v68 = v94;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v97 = 20;
    v29 = sub_2142E1378();
    v67 = v28;
    v66 = v29;
    sub_2146DA1C8();
    v65 = v94;
    v97 = 21;
    sub_2146DA1C8();
    LODWORD(v67) = v94;
    LOBYTE(v94) = 22;
    LODWORD(v66) = sub_2146DA178();
    v97 = 23;
    sub_2146DA1C8();
    v64 = v94;
    v97 = 24;
    sub_2146DA1C8();
    v63 = v94;
    v97 = 25;
    sub_2146DA1C8();
    v62 = v94;
    v97 = 26;
    sub_2146DA1C8();
    v86 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C18, &qword_2146F5398);
    v97 = 27;
    sub_214300C20();
    sub_2146DA1C8();
    (*(v90 + 8))(v92, v91);
    v92 = v94;
    v91 = v95;
    v90 = type metadata accessor for SMSMessage(0);
    v30 = v88;
    sub_21408AC04(v89, v88 + *(v90 + 40), &qword_27C913090, &unk_2146E9DB0);
    *v30 = v85;
    *(v30 + 8) = v84;
    *(v30 + 9) = v96;
    v31 = v81;
    *(v30 + 16) = v18;
    *(v30 + 24) = v31;
    v32 = v82;
    *(v30 + 32) = v83;
    *(v30 + 40) = v32;
    *(v30 + 48) = v80;
    *(v30 + 56) = v79;
    v33 = v90;
    *(v30 + *(v90 + 44)) = v23;
    v34 = v30 + v33[12];
    *v34 = v78;
    *(v34 + 8) = v77;
    v35 = (v30 + v33[13]);
    v36 = *(&v76 + 1);
    *v35 = v76;
    v35[1] = v36;
    v37 = (v30 + v33[14]);
    v38 = *(&v75 + 1);
    *v37 = v75;
    v37[1] = v38;
    v39 = (v30 + v33[15]);
    v40 = *(&v74 + 1);
    *v39 = v74;
    v39[1] = v40;
    v41 = (v30 + v33[16]);
    v42 = *(&v73 + 1);
    *v41 = v73;
    v41[1] = v42;
    v43 = (v30 + v33[17]);
    *v43 = v72;
    v43[1] = v24;
    v44 = (v30 + v33[18]);
    v45 = *(&v71 + 1);
    *v44 = v71;
    v44[1] = v45;
    v46 = v30 + v33[19];
    *v46 = v25;
    *(v46 + 8) = v26;
    v47 = (v30 + v33[20]);
    *v47 = v87;
    v47[1] = v27;
    v48 = (v30 + v33[21]);
    v49 = *(&v70 + 1);
    *v48 = v70;
    v48[1] = v49;
    v50 = (v30 + v33[22]);
    v51 = *(&v69 + 1);
    *v50 = v69;
    v50[1] = v51;
    *(v30 + v33[23]) = v68;
    *(v30 + v33[24]) = v65;
    *(v30 + v33[25]) = v67;
    *(v30 + v33[26]) = v66 & 1;
    v52 = (v30 + v33[27]);
    v53 = *(&v64 + 1);
    *v52 = v64;
    v52[1] = v53;
    v54 = (v30 + v33[28]);
    v55 = *(&v63 + 1);
    *v54 = v63;
    v54[1] = v55;
    v56 = (v30 + v33[29]);
    v57 = *(&v62 + 1);
    *v56 = v62;
    v56[1] = v57;
    v58 = (v30 + v33[30]);
    v59 = *(&v86 + 1);
    *v58 = v86;
    v58[1] = v59;
    v60 = v30 + v33[31];
    *(v60 + 16) = v91;
    *v60 = v92;
  }

  return __swift_destroy_boxed_opaque_existential_1(v93);
}

uint64_t SMSMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C30, &qword_2146F53A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214300AA0();
  sub_2146DAA28();
  v9 = *(v3 + 8);
  *&v24 = *v3;
  BYTE8(v24) = v9;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2142E1C30();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = v6;
  LOBYTE(v24) = *(v3 + 9);
  v26 = 1;
  sub_214300CF8();
  sub_2146DA388();
  v24 = *(v3 + 16);
  v26 = 2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v23 = v5;
  sub_2146DA388();
  v22[2] = v12;
  LOBYTE(v24) = 3;
  sub_2146DA328();
  LOBYTE(v24) = *(v3 + 48);
  v26 = 4;
  sub_214300D4C();
  sub_2146DA388();
  *&v24 = *(v3 + 56);
  v26 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  sub_2140459AC();
  sub_2146DA388();
  v13 = type metadata accessor for SMSMessage(0);
  v22[1] = v13[10];
  LOBYTE(v24) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  sub_2142EC30C();
  sub_2146DA388();
  v24 = *(v3 + v13[11]);
  v26 = 7;
  sub_2146DA388();
  v14 = (v3 + v13[12]);
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 8);
  *&v24 = v15;
  BYTE8(v24) = v14;
  v26 = 8;
  sub_2146DA388();
  v24 = *(v3 + v13[13]);
  v26 = 9;
  sub_2146DA388();
  v24 = *(v3 + v13[14]);
  v26 = 10;
  sub_2146DA388();
  v24 = *(v3 + v13[15]);
  v26 = 11;
  sub_2146DA388();
  v24 = *(v3 + v13[16]);
  v26 = 12;
  sub_2146DA388();
  v24 = *(v3 + v13[17]);
  v26 = 13;
  sub_2146DA388();
  v24 = *(v3 + v13[18]);
  v26 = 14;
  sub_2146DA388();
  v16 = (v3 + v13[19]);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *&v24 = v17;
  BYTE8(v24) = v16;
  v26 = 15;
  sub_2146DA388();
  v24 = *(v3 + v13[20]);
  v26 = 16;
  sub_2146DA388();
  v24 = *(v3 + v13[21]);
  v26 = 17;
  sub_2146DA388();
  v24 = *(v3 + v13[22]);
  v26 = 18;
  sub_2146DA388();
  *&v24 = *(v3 + v13[23]);
  v26 = 19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C10, &qword_2146F5390);
  sub_214300DA0();
  sub_2146DA388();
  LOBYTE(v24) = *(v3 + v13[24]);
  v26 = 20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  sub_2146DA388();
  LOBYTE(v24) = *(v3 + v13[25]);
  v26 = 21;
  sub_2146DA388();
  LOBYTE(v24) = 22;
  sub_2146DA338();
  v24 = *(v3 + v13[27]);
  v26 = 23;
  sub_2146DA388();
  v24 = *(v3 + v13[28]);
  v26 = 24;
  sub_2146DA388();
  v24 = *(v3 + v13[29]);
  v26 = 25;
  sub_2146DA388();
  v24 = *(v3 + v13[30]);
  v26 = 26;
  sub_2146DA388();
  v18 = (v3 + v13[31]);
  v19 = v18[1];
  v20 = v18[2];
  *&v24 = *v18;
  *(&v24 + 1) = v19;
  v25 = v20;
  v26 = 27;
  sub_213FDC9D0(v24, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C18, &qword_2146F5398);
  sub_214300E24();
  v21 = v23;
  sub_2146DA388();
  sub_213FDC6D0(v24, *(&v24 + 1));
  return (*(v11 + 8))(v8, v21);
}

uint64_t sub_2141B769C@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void, void)@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_214055BB4(&v57);
  v13 = v57;
  v12 = v58;
  v15 = v59;
  v14 = v60;
  v16 = v61;
  sub_214055BE8(&v85);
  v54 = v85;
  v56 = v86;
  v52 = v87;
  v93 = v88;
  v55 = v89;
  sub_214055E2C(v83);
  v47 = v83[0];
  v49 = v83[1];
  v50 = v83[2];
  v51 = v83[3];
  v48 = v84;
  sub_214055FD8(v81);
  v40 = v81[1];
  v41 = v81[0];
  v45 = v81[2];
  v44 = v81[3];
  v37 = v82;
  v38 = v16;
  v85 = a2;
  v86 = a3;
  LOBYTE(v83[0]) = v16;
  v57 = 0xD000000000000027;
  v58 = 0x800000021478FA70;
  v59 = 0xD00000000000001CLL;
  v60 = 0x800000021478A360;

  sub_213FDC9D0(v15, v14);
  v53 = v12;
  v17 = v13(&v85, v83, &v57);
  if (v39)
  {

    v18 = v41;
    v19 = v12;
LABEL_6:

    sub_213FDC6D0(v15, v14);
    v23 = v37;
    v24 = v40;
    v25 = v52;
LABEL_7:
    v57 = a1;
    v58 = v13;
    v59 = v19;
    v60 = v15;
    v61 = v14;
    v62 = v38;
    *v63 = v92[0];
    *&v63[3] = *(v92 + 3);
    v64 = v54;
    v65 = v56;
    v66 = v25;
    v67 = v93;
    v68 = v55;
    *v69 = *v91;
    *&v69[3] = *&v91[3];
    v70 = v47;
    v71 = v49;
    v72 = v50;
    v73 = v51;
    v74 = v48;
    *&v75[3] = *&v90[3];
    *v75 = *v90;
    v76 = v18;
    v77 = v24;
    v78 = v45;
    v79 = v44;
    v80 = v23;
    return sub_2140598A0(&v57);
  }

  v20 = a3;
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000027;
    v22[1] = 0x800000021478FA70;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();

    v18 = v41;
    v19 = v12;
    goto LABEL_6;
  }

  sub_213FDC6D0(v15, v14);

  sub_213FDC6D0(v15, v14);
  v85 = a4;
  v86 = a5;
  LOBYTE(v83[0]) = v55;
  v57 = 0xD00000000000002ELL;
  v58 = 0x800000021478FAA0;
  v59 = 0xD00000000000001CLL;
  v60 = 0x800000021478A360;

  sub_213FDC9D0(v52, v93);
  v21 = v54(&v85, v83, &v57);
  v23 = v37;
  if ((v21 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD00000000000002ELL;
    v29[1] = 0x800000021478FAA0;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();

    v24 = v40;
    v18 = v41;

    v25 = v52;
    sub_213FDC6D0(v52, v93);
    v15 = a2;
    v14 = a3;
    v19 = v53;
    goto LABEL_7;
  }

  v27 = v93;
  sub_213FDC6D0(v52, v93);

  sub_213FDC6D0(v52, v27);
  v85 = a6;
  v86 = a7;
  LOBYTE(v83[0]) = v48;
  v57 = 0xD000000000000021;
  v58 = 0x800000021478FAD0;
  v59 = 0xD00000000000001CLL;
  v60 = 0x800000021478A360;

  sub_213FDC9D0(v50, v51);
  v28 = v47(&v85, v83, &v57);
  v24 = v40;
  v19 = v53;
  if ((v28 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000021;
    v31[1] = 0x800000021478FAD0;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    v18 = v41;

    sub_213FDC6D0(v50, v51);
    v15 = a2;
    v14 = v20;
    v25 = a4;
    v93 = a5;
    goto LABEL_7;
  }

  sub_213FDC6D0(v50, v51);

  sub_213FDC6D0(v50, v51);
  v85 = a8;
  v86 = a10;
  LOBYTE(v83[0]) = v37;
  v57 = 0xD000000000000026;
  v58 = 0x800000021478FB00;
  v59 = 0xD00000000000001CLL;
  v60 = 0x800000021478A360;

  sub_213FDC9D0(v45, v44);
  v30 = v41(&v85, v83, &v57);
  v18 = v41;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD000000000000026;
    v32[1] = 0x800000021478FB00;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v45, v44);
    v15 = a2;
    v14 = v20;
    v25 = a4;
    v93 = a5;
    v50 = a6;
    v51 = a7;
    goto LABEL_7;
  }

  sub_213FDC6D0(v45, v44);

  result = sub_213FDC6D0(v45, v44);
  *a9 = a1;
  *(a9 + 8) = v13;
  *(a9 + 16) = v53;
  *(a9 + 24) = a2;
  *(a9 + 32) = v20;
  *(a9 + 40) = v38;
  *(a9 + 41) = v92[0];
  *(a9 + 44) = *(v92 + 3);
  *(a9 + 48) = v54;
  *(a9 + 56) = v56;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = v55;
  *(a9 + 81) = *v91;
  *(a9 + 84) = *&v91[3];
  *(a9 + 88) = v47;
  *(a9 + 96) = v49;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 120) = v48;
  *(a9 + 124) = *&v90[3];
  *(a9 + 121) = *v90;
  *(a9 + 128) = v41;
  *(a9 + 136) = v40;
  *(a9 + 144) = a8;
  *(a9 + 152) = a10;
  *(a9 + 160) = v37;
  return result;
}

unint64_t sub_2141B7E9C()
{
  v1 = *v0;
  v2 = 0x7865646E69;
  v3 = 0xD000000000000015;
  v4 = 0x4C52556572616873;
  if (v1 != 3)
  {
    v4 = 0x7069636974726170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265766965636572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2141B7F50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214371458(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141B7F78(uint64_t a1)
{
  v2 = sub_214300EFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B7FB4(uint64_t a1)
{
  v2 = sub_214300EFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B7FF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C50, &qword_2146F53A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v64 - v7;
  v9 = a1[3];
  v145 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_214300EFC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v145);
  }

  v96 = v6;
  LOBYTE(v108) = 0;
  v95 = sub_2146DA1B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v97) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v12 = v108;
  v11 = v109;
  LOBYTE(v97) = 2;
  sub_2146DA1C8();
  v93 = v108;
  v94 = v11;
  v13 = v109;
  LOBYTE(v97) = 3;
  sub_2146DA1C8();
  v92 = v13;
  v14 = v108;
  v90 = v12;
  v91 = v109;
  v139 = 4;
  sub_2146DA1C8();
  v65 = v140;
  v66 = v14;
  v72 = v141;
  sub_214055BB4(&v108);
  v15 = v109;
  v89 = v108;
  v16 = v110;
  v17 = v111;
  v18 = v112;
  sub_214055BE8(&v97);
  v87 = *(&v97 + 1);
  v85 = v97;
  v83 = *(&v98 + 1);
  v88 = v98;
  v86 = v99;
  sub_214055E2C(&v134);
  v80 = v134;
  v81 = v135;
  v77 = v137;
  v78 = v136;
  v79 = v138;
  sub_214055FD8(v132);
  v73 = v132[0];
  v74 = v132[2];
  v75 = v132[3];
  v76 = v132[1];
  v70 = v18;
  v71 = v133;
  *&v97 = v90;
  *(&v97 + 1) = v94;
  LOBYTE(v134) = v18;
  v108 = 0xD000000000000027;
  v109 = 0x800000021478FA70;
  v67 = 0x800000021478FA70;
  v110 = 0xD00000000000001CLL;
  v111 = 0x800000021478A360;
  v82 = 0x800000021478A360;

  v68 = v17;
  v69 = v16;
  sub_213FDC9D0(v16, v17);
  v84 = v15;
  v19 = v89(&v97, &v134, &v108);
  v20 = v92;
  if (v19)
  {
    v22 = v68;
    v21 = v69;
    sub_213FDC6D0(v69, v68);
    v23 = v82;

    sub_213FDC6D0(v21, v22);
    *&v97 = v93;
    *(&v97 + 1) = v20;
    LOBYTE(v134) = v86;
    v108 = 0xD00000000000002ELL;
    v109 = 0x800000021478FAA0;
    v110 = 0xD00000000000001CLL;
    v111 = v23;

    sub_213FDC9D0(v88, v83);
    v24 = v85(&v97, &v134, &v108);
    if (v24)
    {
      v35 = v88;
      v36 = v83;
      sub_213FDC6D0(v88, v83);
      v37 = v82;

      sub_213FDC6D0(v35, v36);
      *&v97 = v66;
      *(&v97 + 1) = v91;
      LOBYTE(v134) = v79;
      v108 = 0xD000000000000021;
      v109 = 0x800000021478FAD0;
      v110 = 0xD00000000000001CLL;
      v111 = v37;

      sub_213FDC9D0(v78, v77);
      v38 = v80(&v97, &v134, &v108);
      if (v38)
      {
        v43 = v77;
        v42 = v78;
        sub_213FDC6D0(v78, v77);
        v44 = v82;

        sub_213FDC6D0(v42, v43);
        v134 = v65;
        v135 = v72;
        LOBYTE(v97) = v71;
        v108 = 0xD000000000000026;
        v109 = 0x800000021478FB00;
        v110 = 0xD00000000000001CLL;
        v111 = v44;

        sub_213FDC9D0(v74, v75);
        v45 = v73(&v134, &v97, &v108);
        if (v45)
        {
          v49 = v74;
          v48 = v75;
          sub_213FDC6D0(v74, v75);

          (*(v96 + 8))(v8, v5);
          v50 = v76;

          sub_213FDC6D0(v49, v48);
          v52 = v94;
          v51 = v95;
          *&v97 = v95;
          *(&v97 + 1) = v89;
          *&v98 = v84;
          *(&v98 + 1) = v90;
          *&v99 = v94;
          BYTE8(v99) = v70;
          *(&v99 + 9) = v144[0];
          HIDWORD(v99) = *(v144 + 3);
          *&v100 = v85;
          *(&v100 + 1) = v87;
          *&v101 = v93;
          *(&v101 + 1) = v92;
          LOBYTE(v102) = v86;
          *(&v102 + 1) = *v143;
          DWORD1(v102) = *&v143[3];
          *(&v102 + 1) = v80;
          *&v103 = v81;
          v53 = v66;
          *(&v103 + 1) = v66;
          *&v104 = v91;
          LOBYTE(v49) = v79;
          BYTE8(v104) = v79;
          *(&v104 + 9) = *v142;
          HIDWORD(v104) = *&v142[3];
          *&v105 = v73;
          *(&v105 + 1) = v50;
          *&v106 = v65;
          *(&v106 + 1) = v72;
          LOBYTE(v50) = v71;
          v107 = v71;
          v54 = v98;
          *a2 = v97;
          *(a2 + 16) = v54;
          v55 = v99;
          v56 = v100;
          v57 = v102;
          *(a2 + 64) = v101;
          *(a2 + 80) = v57;
          *(a2 + 32) = v55;
          *(a2 + 48) = v56;
          v58 = v103;
          v59 = v104;
          v60 = v105;
          v61 = v106;
          *(a2 + 160) = v50;
          *(a2 + 128) = v60;
          *(a2 + 144) = v61;
          *(a2 + 96) = v58;
          *(a2 + 112) = v59;
          sub_214059868(&v97, &v108);
          __swift_destroy_boxed_opaque_existential_1(v145);
          v108 = v51;
          v109 = v89;
          v110 = v84;
          v111 = v90;
          v112 = v52;
          v113 = v70;
          *v114 = v144[0];
          *&v114[3] = *(v144 + 3);
          v115 = v85;
          v116 = v87;
          v117 = v93;
          v118 = v92;
          v119 = v86;
          *v120 = *v143;
          *&v120[3] = *&v143[3];
          v121 = v80;
          v122 = v81;
          v123 = v53;
          v124 = v91;
          v125 = v49;
          *v126 = *v142;
          *&v126[3] = *&v142[3];
          v127 = v73;
          v128 = v76;
          v129 = v65;
          v130 = v72;
          v131 = v50;
          return sub_2140598A0(&v108);
        }

        sub_214031C4C();
        swift_allocError();
        *v62 = 0xD000000000000026;
        v62[1] = 0x800000021478FB00;
        v63 = v82;
        v62[2] = 0xD00000000000001CLL;
        v62[3] = v63;
        swift_willThrow();

        (*(v96 + 8))(v8, v5);

        sub_213FDC6D0(v74, v75);
        v30 = v90;
        v32 = v91;
        v31 = v94;
        v88 = v93;
        v34 = v92;
        v33 = v66;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v46 = 0xD000000000000021;
        v46[1] = 0x800000021478FAD0;
        v47 = v82;
        v46[2] = 0xD00000000000001CLL;
        v46[3] = v47;
        swift_willThrow();

        (*(v96 + 8))(v8, v5);

        v32 = v77;
        v33 = v78;
        sub_213FDC6D0(v78, v77);
        v30 = v90;
        v31 = v94;
        v88 = v93;
        v34 = v92;
      }

      v29 = v84;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v39 = 0xD00000000000002ELL;
      v39[1] = 0x800000021478FAA0;
      v40 = v82;
      v39[2] = 0xD00000000000001CLL;
      v39[3] = v40;
      swift_willThrow();

      v31 = v94;
      v41 = v96;

      (*(v41 + 8))(v8, v5);

      v34 = v83;
      sub_213FDC6D0(v88, v83);
      v30 = v90;
      v29 = v84;
      v32 = v77;
      v33 = v78;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v25 = v67;
    *v26 = 0xD000000000000027;
    v26[1] = v25;
    v27 = v82;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = v27;
    swift_willThrow();

    v28 = v96;

    (*(v28 + 8))(v8, v5);
    v29 = v84;

    v31 = v68;
    v30 = v69;
    sub_213FDC6D0(v69, v68);
    v32 = v77;
    v33 = v78;
    v34 = v83;
  }

  __swift_destroy_boxed_opaque_existential_1(v145);
  v108 = v95;
  v109 = v89;
  v110 = v29;
  v111 = v30;
  v112 = v31;
  v113 = v70;
  *v114 = v144[0];
  *&v114[3] = *(v144 + 3);
  v115 = v85;
  v116 = v87;
  v117 = v88;
  v118 = v34;
  v119 = v86;
  *v120 = *v143;
  *&v120[3] = *&v143[3];
  v121 = v80;
  v122 = v81;
  v123 = v33;
  v124 = v32;
  v125 = v79;
  *&v126[3] = *&v142[3];
  *v126 = *v142;
  v127 = v73;
  v128 = v76;
  v129 = v74;
  v130 = v75;
  v131 = v71;
  return sub_2140598A0(&v108);
}

uint64_t sub_2141B8BE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C60, &qword_2146F53B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[9];
  v23 = v1[8];
  v24 = v7;
  v10 = v1[13];
  v11 = v1[14];
  v20 = v9;
  v21 = v10;
  v12 = v1[19];
  v22 = v1[18];
  v18 = v12;
  v19 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214300EFC();
  sub_2146DAA28();
  LOBYTE(v26) = 0;
  v13 = v25;
  sub_2146DA378();
  if (v13)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = v23;
  if (v8 == 1 || (v26 = v24, v27 = v8, v28 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v16 = v4, v20 == 1 || (v26 = v15, v27 = v20, v28 = 2, sub_2146DA388(), v17 = v22, v19 == 1 || (v26 = v21, v27 = v19, v28 = 3, sub_2146DA388(), v18 == 1))))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v26 = v17;
    v27 = v18;
    v28 = 4;
    sub_2146DA388();
    return (*(v16 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_2141B8F00@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t (*a11)(void, void, void), uint64_t a12, uint64_t (*a13)(void, void, void), uint64_t a14, uint64_t (*a15)(void, void, void), uint64_t a16, uint64_t (*a17)(void, void, void), uint64_t a18, char *a19, uint64_t a20, char a21, uint64_t a22, char a23, char *a24, uint64_t (*a25)(void, void, void), uint64_t a26, char *a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41, char *a42, uint64_t a43, char a44, char *a45, uint64_t (*a46)(void, void, void), uint64_t a47, uint64_t (*a48)(void, void, void), uint64_t a49, char a50, uint64_t (*a51)(void, void, void))
{
  v96 = *a1;
  v97 = *a19;
  v100 = *a24;
  v105 = *a27;
  v107 = *a42;
  v108 = *a45;
  sub_2140568D4(&v143);
  v52 = v143;
  v53 = v144;
  v54 = *&v145;
  v55 = v146;
  v56 = v147;
  sub_214056908(&v252);
  v140 = v252;
  v141 = v253;
  v139 = v254;
  v142 = v255;
  v135 = v256;
  sub_214056944(v250);
  v133 = v250[0];
  v136 = v250[1];
  v138 = v250[2];
  v137 = v250[3];
  v134 = v251;
  sub_214056AF0(v248);
  v128 = v248[0];
  v130 = v248[1];
  v132 = v248[2];
  v131 = v248[3];
  v129 = v249;
  sub_214056B24(v246);
  v123 = v246[0];
  v127 = v246[2];
  v125 = v246[1];
  v126 = v246[3];
  v124 = v247;
  sub_214056CA8(v244);
  v113 = v244[0];
  v122 = v244[1];
  v121 = v244[2];
  v120 = v244[3];
  v114 = v245;
  sub_214056E04(v242);
  v115 = v242[0];
  v119 = v242[2];
  v117 = v242[1];
  v118 = v242[3];
  v116 = v243;
  sub_214056F60(v240);
  v109 = v240[0];
  v111 = v240[2];
  v112 = v240[1];
  v110 = v241;
  v266 = a21 & 1;
  v265 = a23 & 1;
  v264 = a29 & 1;
  v263 = a31 & 1;
  v262 = a33 & 1;
  v261 = a35 & 1;
  v260 = a37 & 1;
  v259 = a39 & 1;
  v258 = a41 & 1;
  v93 = v56;
  v257 = a44 & 1;
  v252 = a11;
  v253 = a12;
  LOBYTE(v250[0]) = v56;
  v143 = 0xD000000000000023;
  v144 = 0x800000021478FB30;
  v145 = -2.31584178e77;
  v146 = 0x800000021478A360;

  sub_213FDC9D0(v54, v55);
  v57 = v94;
  v95 = v52;
  v58 = v52(&v252, v250, &v143);
  if (v57)
  {

    v59 = v114;
    v60 = v113;
    v61 = v53;
LABEL_7:

    sub_213FDC6D0(v54, v55);
    v65 = v55;
    v66 = v54;
    v62 = v135;
    v67 = v120;
    v68 = v139;
    v70 = a39 & 1;
    v69 = a41 & 1;
LABEL_8:
    LOBYTE(v143) = v96;
    v144 = a2;
    v146 = a3;
    v147 = a4;
    v148 = a5;
    v149 = a6;
    v150 = a7;
    v151 = a8;
    v152 = v95;
    v153 = v61;
    v154 = v66;
    v155 = v65;
    v156 = v93;
    v158 = v140;
    v159 = v141;
    v160 = v68;
    v161 = v142;
    v162 = v62;
    v164 = v133;
    v165 = v136;
    v166 = v138;
    v167 = v137;
    v168 = v134;
    v170 = v128;
    v171 = v130;
    v172 = v132;
    v173 = v131;
    v174 = v129;
    v175 = v97;
    v178 = a20;
    v179 = a21 & 1;
    v181 = a22;
    v182 = a23 & 1;
    v183 = v100;
    v186 = v123;
    v187 = v125;
    v188 = v127;
    v189 = v126;
    v190 = v124;
    v191 = v105;
    v194 = a28;
    v195 = a29 & 1;
    v197 = a30;
    *&v163[3] = *&v288[3];
    *v163 = *v288;
    *&v169[3] = *&v287[3];
    *v169 = *v287;
    v176 = v285;
    *&v180[3] = *(v284 + 3);
    *v180 = v284[0];
    v184 = v282;
    v192 = v280;
    *v196 = v279[0];
    *v199 = v278[0];
    *(&v143 + 1) = v290[0];
    HIDWORD(v143) = *(v290 + 3);
    *&v157[3] = *&v289[3];
    *v157 = *v289;
    v177 = v286;
    v185 = v283;
    v193 = v281;
    *&v196[3] = *(v279 + 3);
    v198 = a31 & 1;
    *&v199[3] = *(v278 + 3);
    v145 = a10;
    v200 = a32;
    v201 = a33 & 1;
    *v202 = v277[0];
    *&v202[3] = *(v277 + 3);
    v203 = a34;
    v204 = a35 & 1;
    *v205 = v276[0];
    *&v205[3] = *(v276 + 3);
    v206 = a36;
    v207 = a37 & 1;
    *v208 = v275[0];
    *&v208[3] = *(v275 + 3);
    v209 = a38;
    v210 = v70;
    *v211 = v274[0];
    *&v211[3] = *(v274 + 3);
    v212 = a40;
    v213 = v69;
    v214 = v107;
    v215 = v272;
    v216 = v273;
    v217 = a43;
    v218 = a44 & 1;
    v219 = v108;
    v220 = v270;
    v221 = v271;
    v222 = v60;
    v223 = v122;
    v224 = v121;
    v225 = v67;
    v226 = v59;
    *v227 = *v269;
    *&v227[3] = *&v269[3];
    v228 = v115;
    v229 = v117;
    v230 = v119;
    v231 = v118;
    v232 = v116;
    v233 = a50;
    v234 = v267;
    v235 = v268;
    v236 = v109;
    v237 = v112;
    v238 = v111;
    v239 = v110;
    return sub_214300F50(&v143);
  }

  if ((v58 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v64 = 0xD000000000000023;
    v64[1] = 0x800000021478FB30;
    v64[2] = 0xD00000000000001CLL;
    v64[3] = 0x800000021478A360;
    swift_willThrow();

    v59 = v114;
    v60 = v113;
    v61 = v53;
    goto LABEL_7;
  }

  sub_213FDC6D0(v54, v55);

  v61 = v53;

  sub_213FDC6D0(v54, v55);
  v252 = a13;
  v253 = a14;
  v62 = v135;
  LOBYTE(v250[0]) = v135;
  v143 = 0xD00000000000002ALL;
  v144 = 0x800000021478FB60;
  v145 = -2.31584178e77;
  v146 = 0x800000021478A360;

  sub_213FDC9D0(v139, v142);
  v60 = v113;
  if ((v140(&v252, v250, &v143) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v72 = 0xD00000000000002ALL;
    v72[1] = 0x800000021478FB60;
    v72[2] = 0xD00000000000001CLL;
    v72[3] = 0x800000021478A360;
    swift_willThrow();

    v59 = v114;

    v68 = v139;
    sub_213FDC6D0(v139, v142);
    v66 = a11;
    v65 = a12;
    v70 = a39 & 1;
    v69 = a41 & 1;
    v67 = v120;
    goto LABEL_8;
  }

  sub_213FDC6D0(v139, v142);

  sub_213FDC6D0(v139, v142);
  v252 = a15;
  v253 = a16;
  LOBYTE(v250[0]) = v134;
  v143 = 0xD00000000000001DLL;
  v144 = 0x800000021478FB90;
  v145 = -2.31584178e77;
  v146 = 0x800000021478A360;

  sub_213FDC9D0(v138, v137);
  v63 = v133(&v252, v250, &v143);
  if ((v63 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v74 = 0xD00000000000001DLL;
    v74[1] = 0x800000021478FB90;
    v74[2] = 0xD00000000000001CLL;
    v74[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v138, v137);
    v66 = a11;
    v65 = a12;
    v68 = a13;
    v142 = a14;
LABEL_13:
    v70 = a39 & 1;
    v69 = a41 & 1;
    v62 = v135;
    v67 = v120;
    v59 = v114;
    goto LABEL_8;
  }

  sub_213FDC6D0(v138, v137);

  sub_213FDC6D0(v138, v137);
  v252 = a17;
  v253 = a18;
  LOBYTE(v250[0]) = v129;
  v143 = 0xD000000000000022;
  v144 = 0x800000021478FBB0;
  v145 = -2.31584178e77;
  v146 = 0x800000021478A360;

  sub_213FDC9D0(v132, v131);
  v73 = v128(&v252, v250, &v143);
  if ((v73 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v76 = 0xD000000000000022;
    v76[1] = 0x800000021478FBB0;
    v76[2] = 0xD00000000000001CLL;
    v76[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v132, v131);
    v66 = a11;
    v65 = a12;
    v142 = a14;
    v138 = a15;
    v137 = a16;
    v68 = a13;
    goto LABEL_13;
  }

  sub_213FDC6D0(v132, v131);

  sub_213FDC6D0(v132, v131);
  v252 = a25;
  v253 = a26;
  LOBYTE(v250[0]) = v124;
  v143 = 0xD00000000000002ELL;
  v144 = 0x800000021478FBE0;
  v145 = -2.31584178e77;
  v146 = 0x800000021478A360;

  sub_213FDC9D0(v127, v126);
  v75 = v123(&v252, v250, &v143);
  v59 = v114;
  if ((v75 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v78 = 0xD00000000000002ELL;
    v78[1] = 0x800000021478FBE0;
    v78[2] = 0xD00000000000001CLL;
    v78[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v127, v126);
    v65 = a12;
    v142 = a14;
    v66 = a11;
    v138 = a15;
    v137 = a16;
    v68 = a13;
    v132 = a17;
    v131 = a18;
    v70 = a39 & 1;
    v69 = a41 & 1;
    v62 = v135;
    v67 = v120;
    goto LABEL_8;
  }

  sub_213FDC6D0(v127, v126);

  sub_213FDC6D0(v127, v126);
  v252 = a46;
  v253 = a47;
  LOBYTE(v250[0]) = v114;
  v143 = 0xD000000000000023;
  v144 = 0x800000021478FC10;
  v145 = -2.31584178e77;
  v146 = 0x800000021478A360;

  sub_213FDC9D0(v121, v120);
  v77 = v113(&v252, v250, &v143);
  if ((v77 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v80 = 0xD000000000000023;
    v80[1] = 0x800000021478FC10;
    v80[2] = 0xD00000000000001CLL;
    v80[3] = 0x800000021478A360;
    swift_willThrow();

    v67 = v120;
    sub_213FDC6D0(v121, v120);
    v65 = a12;
    v68 = a13;
    v142 = a14;
    v66 = a11;
    v138 = a15;
    v137 = a16;
    v132 = a17;
    v131 = a18;
    v126 = a26;
    v127 = a25;
    v70 = a39 & 1;
    v69 = a41 & 1;
LABEL_23:
    v62 = v135;
    goto LABEL_8;
  }

  sub_213FDC6D0(v121, v120);

  sub_213FDC6D0(v121, v120);
  v252 = a48;
  v253 = a49;
  LOBYTE(v250[0]) = v116;
  v143 = 0xD000000000000025;
  v144 = 0x800000021478FC40;
  v145 = -2.31584178e77;
  v146 = 0x800000021478A360;

  sub_213FDC9D0(v119, v118);
  v79 = v115(&v252, v250, &v143);
  if ((v79 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v82 = 0xD000000000000025;
    v82[1] = 0x800000021478FC40;
    v82[2] = 0xD00000000000001CLL;
    v82[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v119, v118);
    v65 = a12;
    v68 = a13;
    v142 = a14;
    v66 = a11;
    v138 = a15;
    v137 = a16;
    v132 = a17;
    v131 = a18;
    v126 = a26;
    v127 = a25;
    v121 = a46;
    v67 = a47;
    v59 = v114;
    v60 = v113;
LABEL_27:
    v70 = a39 & 1;
    v69 = a41 & 1;
    v61 = v53;
    goto LABEL_23;
  }

  sub_213FDC6D0(v119, v118);

  sub_213FDC6D0(v119, v118);
  v252 = a51;
  LOBYTE(v250[0]) = v110;
  v143 = 0xD000000000000020;
  v144 = 0x800000021478FC70;
  v145 = -2.31584178e77;
  v146 = 0x800000021478A360;

  sub_213FBE134(v111);
  v81 = v109(&v252, v250, &v143);
  if ((v81 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v91 = 0xD000000000000020;
    v91[1] = 0x800000021478FC70;
    v91[2] = 0xD00000000000001CLL;
    v91[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB7170(v111);
    v65 = a12;
    v68 = a13;
    v142 = a14;
    v66 = a11;
    v138 = a15;
    v137 = a16;
    v132 = a17;
    v131 = a18;
    v126 = a26;
    v127 = a25;
    v121 = a46;
    v67 = a47;
    v60 = v113;
    v118 = a49;
    v119 = a48;
    v59 = v114;
    goto LABEL_27;
  }

  sub_213FB7170(v111);

  result = sub_213FB7170(v111);
  *a9 = v96;
  *(a9 + 8) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = v95;
  *(a9 + 80) = v53;
  *(a9 + 88) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = v93;
  *(a9 + 112) = v140;
  *(a9 + 120) = v141;
  *(a9 + 128) = a13;
  *(a9 + 136) = a14;
  *(a9 + 144) = v135;
  *(a9 + 152) = v133;
  *(a9 + 160) = v136;
  *(a9 + 168) = a15;
  *(a9 + 176) = a16;
  *(a9 + 184) = v134;
  *(a9 + 192) = v128;
  *(a9 + 200) = v130;
  *(a9 + 208) = a17;
  *(a9 + 216) = a18;
  *(a9 + 224) = v129;
  *(a9 + 225) = v97;
  *(a9 + 232) = a20;
  *(a9 + 240) = a21 & 1;
  *(a9 + 248) = a22;
  *(a9 + 256) = a23 & 1;
  *(a9 + 257) = v100;
  *(a9 + 264) = v123;
  *(a9 + 272) = v125;
  *(a9 + 280) = a25;
  *(a9 + 288) = a26;
  *(a9 + 296) = v124;
  *(a9 + 297) = v105;
  *(a9 + 304) = a28;
  *(a9 + 312) = a29 & 1;
  *(a9 + 320) = a30;
  *(a9 + 328) = a31 & 1;
  *(a9 + 258) = v282;
  *(a9 + 298) = v280;
  *(a9 + 316) = *(v279 + 3);
  *(a9 + 313) = v279[0];
  *(a9 + 332) = *(v278 + 3);
  *(a9 + 329) = v278[0];
  *(a9 + 1) = v290[0];
  *(a9 + 4) = *(v290 + 3);
  *(a9 + 108) = *&v289[3];
  *(a9 + 105) = *v289;
  *(a9 + 148) = *&v288[3];
  v83 = *&v287[3];
  *(a9 + 145) = *v288;
  *(a9 + 188) = v83;
  *(a9 + 185) = *v287;
  *(a9 + 230) = v286;
  *(a9 + 226) = v285;
  *(a9 + 244) = *(v284 + 3);
  *(a9 + 241) = v284[0];
  *(a9 + 262) = v283;
  *(a9 + 302) = v281;
  *(a9 + 16) = a10;
  *(a9 + 336) = a32;
  *(a9 + 344) = a33 & 1;
  *(a9 + 348) = *(v277 + 3);
  *(a9 + 345) = v277[0];
  *(a9 + 352) = a34;
  *(a9 + 360) = a35 & 1;
  v84 = v276[0];
  *(a9 + 364) = *(v276 + 3);
  *(a9 + 361) = v84;
  *(a9 + 368) = a36;
  *(a9 + 376) = a37 & 1;
  v85 = v275[0];
  *(a9 + 380) = *(v275 + 3);
  *(a9 + 377) = v85;
  *(a9 + 384) = a38;
  *(a9 + 392) = a39 & 1;
  v86 = v274[0];
  *(a9 + 396) = *(v274 + 3);
  *(a9 + 393) = v86;
  *(a9 + 400) = a40;
  *(a9 + 408) = a41 & 1;
  *(a9 + 409) = v107;
  v87 = v272;
  *(a9 + 414) = v273;
  *(a9 + 410) = v87;
  *(a9 + 416) = a43;
  *(a9 + 424) = a44 & 1;
  *(a9 + 425) = v108;
  v88 = v270;
  *(a9 + 430) = v271;
  *(a9 + 426) = v88;
  *(a9 + 432) = v113;
  *(a9 + 440) = v122;
  *(a9 + 448) = a46;
  *(a9 + 456) = a47;
  *(a9 + 464) = v114;
  v89 = *v269;
  *(a9 + 468) = *&v269[3];
  *(a9 + 465) = v89;
  *(a9 + 472) = v115;
  *(a9 + 480) = v117;
  *(a9 + 488) = a48;
  *(a9 + 496) = a49;
  *(a9 + 504) = v116;
  *(a9 + 505) = a50;
  v90 = v267;
  *(a9 + 510) = v268;
  *(a9 + 506) = v90;
  *(a9 + 512) = v109;
  *(a9 + 520) = v112;
  *(a9 + 528) = a51;
  *(a9 + 536) = v110;
  return result;
}

unint64_t sub_2141BA67C(char a1)
{
  result = 0x546567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x65746144646E6573;
      break;
    case 3:
      result = 0x496567617373656DLL;
      break;
    case 4:
      result = 0x496E6F6973736573;
      break;
    case 5:
      result = 0x547972616D6D7573;
      break;
    case 6:
      result = 0x7265766965636572;
      break;
    case 7:
      v3 = 5;
      goto LABEL_17;
    case 8:
      result = 0x4C52556572616873;
      break;
    case 9:
      result = 0x7069636974726170;
      break;
    case 10:
      result = 0x546E6F6973736573;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      v3 = 9;
LABEL_17:
      result = v3 | 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
      result = 0x5472656767697274;
      break;
    case 17:
      result = 0x656475746974616CLL;
      break;
    case 18:
      result = 0x64757469676E6F6CLL;
      break;
    case 19:
      result = 1668183400;
      break;
    case 20:
      result = 0x6564757469746C61;
      break;
    case 21:
      result = 1668183414;
      break;
    case 22:
      result = 0x6F4C664F656D6974;
      break;
    case 23:
      result = 0x636E657265666572;
      break;
    case 24:
      result = 0x6465657073;
      break;
    case 25:
      result = 0x5472656767697274;
      break;
    case 26:
      result = 0x6143797465666173;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 28:
      result = 0x697254534F537369;
      break;
    case 29:
      result = 0x65694670756F7267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2141BA9D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21437161C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141BAA0C(uint64_t a1)
{
  v2 = sub_214300FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141BAA48(uint64_t a1)
{
  v2 = sub_214300FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141BAA84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C68, &qword_2146F53B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v66 - v7;
  v9 = a1[3];
  v158 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_214300FA4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v158);
  }

  v10 = v6;
  v11 = a2;
  LOBYTE(v159[0]) = 0;
  sub_2140586B4();
  sub_2146DA1C8();
  v12 = v160;
  LOBYTE(v160) = 1;
  v157 = sub_2146DA1B8();
  LOBYTE(v160) = 2;
  sub_2146DA188();
  v14 = v13;
  LOBYTE(v160) = 3;
  v155 = sub_2146DA168();
  v156 = v16;
  LOBYTE(v160) = 4;
  v152 = sub_2146DA168();
  v154 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v159[0]) = 5;
  v153 = sub_2142E12FC();
  sub_2146DA1C8();
  v150 = v160;
  v151 = v161;
  LOBYTE(v159[0]) = 6;
  sub_2146DA1C8();
  v148 = v160;
  v149 = v161;
  LOBYTE(v159[0]) = 7;
  sub_2146DA1C8();
  v146 = v160;
  v147 = v161;
  LOBYTE(v159[0]) = 8;
  sub_2146DA1C8();
  v142 = v12;
  v143 = v160;
  v144 = v161;
  LOBYTE(v159[0]) = 9;
  v145 = v5;
  sub_2146DA1C8();
  v140 = v160;
  v141 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C78, &qword_2146F53C0);
  LOBYTE(v159[0]) = 10;
  sub_214300FF8();
  sub_2146DA1C8();
  v138 = v160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v159[0]) = 11;
  v139 = sub_2142E35EC();
  sub_2146DA1C8();
  v136 = v160;
  v137 = v161;
  LOBYTE(v159[0]) = 12;
  sub_2146DA1C8();
  v134 = v160;
  v135 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C88, &qword_2146F53C8);
  LOBYTE(v159[0]) = 13;
  sub_21430107C();
  sub_2146DA1C8();
  v133 = v160;
  LOBYTE(v159[0]) = 14;
  sub_2146DA1C8();
  v131 = v160;
  v132 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C98, &qword_2146F53D0);
  LOBYTE(v159[0]) = 15;
  sub_214301100();
  sub_2146DA1C8();
  v130 = v160;
  LOBYTE(v159[0]) = 16;
  sub_2146DA1C8();
  v128 = v160;
  v129 = v161;
  LOBYTE(v159[0]) = 17;
  sub_2146DA1C8();
  v126 = v160;
  v127 = v161;
  LOBYTE(v159[0]) = 18;
  sub_2146DA1C8();
  v124 = v160;
  v125 = v161;
  LOBYTE(v159[0]) = 19;
  sub_2146DA1C8();
  v122 = v160;
  v123 = v161;
  LOBYTE(v159[0]) = 20;
  sub_2146DA1C8();
  v120 = v160;
  v121 = v161;
  LOBYTE(v159[0]) = 21;
  sub_2146DA1C8();
  v118 = v160;
  v119 = v161;
  LOBYTE(v159[0]) = 22;
  sub_2146DA1C8();
  v116 = v160;
  v117 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908CA8, &qword_2146F53D8);
  LOBYTE(v159[0]) = 23;
  sub_214301184();
  sub_2146DA1C8();
  v115 = v160;
  LOBYTE(v159[0]) = 24;
  sub_2146DA1C8();
  v114 = v160;
  LODWORD(v139) = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908CB8, &qword_2146F53E0);
  LOBYTE(v159[0]) = 25;
  sub_214301208();
  sub_2146DA1C8();
  v113 = v160;
  LOBYTE(v159[0]) = 26;
  sub_2146DA1C8();
  v111 = v160;
  v112 = v161;
  LOBYTE(v159[0]) = 27;
  sub_2146DA1C8();
  v110 = v160;
  v153 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v159[0]) = 28;
  sub_2142E1378();
  sub_2146DA1C8();
  v109 = v160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908CC8, &qword_2146F53E8);
  v279 = 29;
  sub_21430128C();
  sub_2146DA1C8();
  v87 = v280;
  sub_2140568D4(&v160);
  v18 = v160;
  v19 = v161;
  v20 = v162;
  v21 = v163;
  v106 = v164;
  sub_214056908(v159);
  v99 = v159[0];
  v103 = v159[2];
  v101 = v159[1];
  v102 = v159[3];
  v100 = LOBYTE(v159[4]);
  sub_214056944(v267);
  v93 = v267[0];
  v97 = v267[2];
  v95 = v267[1];
  v96 = v267[3];
  v94 = v268;
  sub_214056AF0(v265);
  v88 = v265[0];
  v92 = v265[2];
  v90 = v265[1];
  v91 = v265[3];
  v89 = v266;
  sub_214056B24(v263);
  v69 = v263[0];
  v81 = v263[1];
  v85 = v263[3];
  v86 = v263[2];
  v70 = v264;
  sub_214056CA8(v261);
  v71 = v261[0];
  v82 = v261[1];
  v79 = v261[3];
  v80 = v261[2];
  v72 = v262;
  sub_214056E04(v259);
  v73 = v259[0];
  v83 = v259[1];
  v77 = v259[3];
  v78 = v259[2];
  v74 = v260;
  sub_214056F60(v257);
  v75 = v257[0];
  v84 = v257[1];
  v68 = v257[2];
  v76 = v258;
  v278 = v137;
  v277 = v135;
  v276 = v129;
  v275 = v127;
  v274 = v125;
  v273 = v123;
  v272 = v121;
  v271 = v119;
  v270 = v117;
  v269 = v139;
  v159[0] = v148;
  v159[1] = v149;
  LOBYTE(v267[0]) = v106;
  v160 = 0xD000000000000023;
  v98 = 0x800000021478FB30;
  v161 = 0x800000021478FB30;
  v162 = 0xD00000000000001CLL;
  v104 = 0x800000021478A360;
  v163 = 0x800000021478A360;

  v107 = v20;
  v108 = v21;
  sub_213FDC9D0(v20, v21);
  v105 = v19;
  v67 = v18;
  if (v18(v159, v267, &v160))
  {
    v23 = v107;
    v22 = v108;
    sub_213FDC6D0(v107, v108);
    v24 = v104;

    sub_213FDC6D0(v23, v22);
    v159[0] = v146;
    v159[1] = v147;
    LOBYTE(v267[0]) = v100;
    v160 = 0xD00000000000002ALL;
    v161 = 0x800000021478FB60;
    v162 = 0xD00000000000001CLL;
    v163 = v24;

    sub_213FDC9D0(v103, v102);
    if (v99(v159, v267, &v160))
    {
      v26 = v102;
      v25 = v103;
      sub_213FDC6D0(v103, v102);
      v27 = v104;

      sub_213FDC6D0(v25, v26);
      v159[0] = v143;
      v159[1] = v144;
      LOBYTE(v267[0]) = v94;
      v160 = 0xD00000000000001DLL;
      v161 = 0x800000021478FB90;
      v162 = 0xD00000000000001CLL;
      v163 = v27;

      sub_213FDC9D0(v97, v96);
      if (v93(v159, v267, &v160))
      {
        v29 = v96;
        v28 = v97;
        sub_213FDC6D0(v97, v96);
        v30 = v104;

        sub_213FDC6D0(v28, v29);
        v159[0] = v140;
        v159[1] = v141;
        LOBYTE(v267[0]) = v89;
        v160 = 0xD000000000000022;
        v161 = 0x800000021478FBB0;
        v162 = 0xD00000000000001CLL;
        v163 = v30;

        sub_213FDC9D0(v92, v91);
        if (v88(v159, v267, &v160))
        {
          v32 = v91;
          v31 = v92;
          sub_213FDC6D0(v92, v91);
          v33 = v104;

          sub_213FDC6D0(v31, v32);
          v159[0] = v131;
          v159[1] = v132;
          LOBYTE(v267[0]) = v70;
          v160 = 0xD00000000000002ELL;
          v161 = 0x800000021478FBE0;
          v162 = 0xD00000000000001CLL;
          v163 = v33;

          sub_213FDC9D0(v86, v85);
          if (v69(v159, v267, &v160))
          {
            v35 = v85;
            v34 = v86;
            sub_213FDC6D0(v86, v85);
            v36 = v104;

            sub_213FDC6D0(v34, v35);
            v159[0] = v111;
            v159[1] = v112;
            LOBYTE(v267[0]) = v72;
            v160 = 0xD000000000000023;
            v161 = 0x800000021478FC10;
            v162 = 0xD00000000000001CLL;
            v163 = v36;

            sub_213FDC9D0(v80, v79);
            if (v71(v159, v267, &v160))
            {
              v50 = v79;
              v49 = v80;
              sub_213FDC6D0(v80, v79);
              v51 = v104;

              sub_213FDC6D0(v49, v50);
              v159[0] = v110;
              v159[1] = v153;
              LOBYTE(v267[0]) = v74;
              v160 = 0xD000000000000025;
              v161 = 0x800000021478FC40;
              v162 = 0xD00000000000001CLL;
              v163 = v51;

              sub_213FDC9D0(v78, v77);
              if (v73(v159, v267, &v160))
              {
                v55 = v77;
                v54 = v78;
                sub_213FDC6D0(v78, v77);
                v56 = v104;

                sub_213FDC6D0(v54, v55);
                v267[0] = v87;
                LOBYTE(v159[0]) = v76;
                v160 = 0xD000000000000020;
                v161 = 0x800000021478FC70;
                v162 = 0xD00000000000001CLL;
                v163 = v56;

                sub_213FBE134(v68);
                if (v75(v267, v159, &v160))
                {
                  v59 = v68;
                  sub_213FB7170(v68);

                  (*(v10 + 8))(v8, v145);

                  sub_213FB7170(v59);
                  *(&v159[18] + 1) = *v302;
                  HIDWORD(v159[23]) = *&v301[3];
                  *(&v159[23] + 1) = *v301;
                  *(&v159[28] + 2) = v299;
                  HIDWORD(v159[30]) = *&v298[3];
                  *(&v159[30] + 1) = *v298;
                  *(&v159[32] + 2) = v296;
                  *(&v159[37] + 2) = v294;
                  *(&v159[39] + 1) = *v293;
                  *(&v159[41] + 1) = *v292;
                  *(&v159[43] + 1) = *v291;
                  *(&v159[45] + 1) = *v290;
                  *(&v159[47] + 1) = *v289;
                  *(&v159[49] + 1) = *v288;
                  *(&v159[51] + 2) = v286;
                  *(&v159[53] + 2) = v284;
                  *(&v159[58] + 1) = *v283;
                  *(&v159[63] + 2) = v281;
                  *(v159 + 1) = v304[0];
                  HIDWORD(v159[0]) = *(v304 + 3);
                  *(&v159[13] + 1) = *v303;
                  HIDWORD(v159[13]) = *&v303[3];
                  HIDWORD(v159[18]) = *&v302[3];
                  HIWORD(v159[28]) = v300;
                  HIWORD(v159[32]) = v297;
                  HIWORD(v159[37]) = v295;
                  HIDWORD(v159[39]) = *&v293[3];
                  HIDWORD(v159[41]) = *&v292[3];
                  HIDWORD(v159[43]) = *&v291[3];
                  HIDWORD(v159[45]) = *&v290[3];
                  HIDWORD(v159[47]) = *&v289[3];
                  HIDWORD(v159[49]) = *&v288[3];
                  HIWORD(v159[51]) = v287;
                  HIWORD(v159[53]) = v285;
                  HIDWORD(v159[58]) = *&v283[3];
                  HIWORD(v159[63]) = v282;
                  LOBYTE(v159[0]) = v142;
                  v60 = v157;
                  v159[1] = v157;
                  v159[2] = v14;
                  v159[3] = v155;
                  v159[4] = v156;
                  v159[5] = v152;
                  v159[6] = v154;
                  v159[7] = v150;
                  v159[8] = v151;
                  v159[9] = v67;
                  v159[10] = v105;
                  v159[11] = v148;
                  v61 = v149;
                  v159[12] = v149;
                  LOBYTE(v159[13]) = v106;
                  v159[14] = v99;
                  v159[15] = v101;
                  v159[16] = v146;
                  v159[17] = v147;
                  LOBYTE(v159[18]) = v100;
                  v159[19] = v93;
                  v159[20] = v95;
                  v159[21] = v143;
                  v159[22] = v144;
                  LOBYTE(v159[23]) = v94;
                  v159[24] = v88;
                  v159[25] = v90;
                  v159[26] = v140;
                  v159[27] = v141;
                  LOBYTE(v159[28]) = v89;
                  BYTE1(v159[28]) = v138;
                  v159[29] = v136;
                  LOBYTE(v159[30]) = v137;
                  v159[31] = v134;
                  LOBYTE(v159[32]) = v135;
                  BYTE1(v159[32]) = v133;
                  v159[33] = v69;
                  v159[34] = v81;
                  v62 = v131;
                  v159[35] = v131;
                  v63 = v132;
                  v159[36] = v132;
                  LOBYTE(v159[37]) = v70;
                  BYTE1(v159[37]) = v130;
                  v159[38] = v128;
                  LOBYTE(v159[39]) = v129;
                  v159[40] = v126;
                  LOBYTE(v159[41]) = v127;
                  v159[42] = v124;
                  LOBYTE(v159[43]) = v125;
                  v159[44] = v122;
                  LOBYTE(v159[45]) = v123;
                  v159[46] = v120;
                  LOBYTE(v159[47]) = v121;
                  v159[48] = v118;
                  LOBYTE(v159[49]) = v119;
                  v159[50] = v116;
                  LOBYTE(v159[51]) = v117;
                  BYTE1(v159[51]) = v115;
                  v159[52] = v114;
                  LOBYTE(v159[53]) = v139;
                  BYTE1(v159[53]) = v113;
                  v159[54] = v71;
                  v159[55] = v82;
                  v159[56] = v111;
                  v159[57] = v112;
                  LOBYTE(v159[58]) = v72;
                  v159[59] = v73;
                  v159[60] = v83;
                  v159[61] = v110;
                  v159[62] = v153;
                  LOBYTE(v159[63]) = v74;
                  BYTE1(v159[63]) = v109;
                  v159[64] = v75;
                  v159[65] = v84;
                  v159[66] = v87;
                  LOBYTE(v159[67]) = v76;
                  memcpy(v11, v159, 0x219uLL);
                  sub_214301394(v159, &v160);
                  __swift_destroy_boxed_opaque_existential_1(v158);
                  LOBYTE(v160) = v142;
                  v161 = v60;
                  v163 = v155;
                  v164 = v156;
                  v165 = v152;
                  v166 = v154;
                  v167 = v150;
                  v168 = v151;
                  v169 = v67;
                  v170 = v105;
                  v171 = v148;
                  v172 = v61;
                  v173 = v106;
                  v175 = v99;
                  v176 = v101;
                  v177 = v146;
                  v178 = v147;
                  v179 = v100;
                  v181 = v93;
                  v182 = v95;
                  v183 = v143;
                  v184 = v144;
                  v185 = v94;
                  v187 = v88;
                  v188 = v90;
                  v189 = v140;
                  v190 = v141;
                  v191 = v89;
                  v192 = v138;
                  v195 = v136;
                  v196 = v137;
                  v198 = v134;
                  v199 = v135;
                  v200 = v133;
                  v203 = v69;
                  v204 = v81;
                  v205 = v62;
                  v206 = v63;
                  v207 = v70;
                  v208 = v130;
                  v211 = v128;
                  v212 = v129;
                  v214 = v126;
                  v215 = v127;
                  v217 = v124;
                  *(&v160 + 1) = v304[0];
                  *v174 = *v303;
                  *v180 = *v302;
                  *&v186[3] = *&v301[3];
                  *v186 = *v301;
                  v193 = v299;
                  *&v197[3] = *&v298[3];
                  *v197 = *v298;
                  v201 = v296;
                  v209 = v294;
                  *v213 = *v293;
                  *v216 = *v292;
                  HIDWORD(v160) = *(v304 + 3);
                  v162 = v14;
                  *&v174[3] = *&v303[3];
                  *&v180[3] = *&v302[3];
                  v194 = v300;
                  v202 = v297;
                  v210 = v295;
                  *&v213[3] = *&v293[3];
                  *&v216[3] = *&v292[3];
                  v218 = v125;
                  *v219 = *v291;
                  *&v219[3] = *&v291[3];
                  v220 = v122;
                  v221 = v123;
                  *v222 = *v290;
                  *&v222[3] = *&v290[3];
                  v223 = v120;
                  v224 = v121;
                  *v225 = *v289;
                  *&v225[3] = *&v289[3];
                  v226 = v118;
                  v227 = v119;
                  *v228 = *v288;
                  *&v228[3] = *&v288[3];
                  v229 = v116;
                  v230 = v117;
                  v231 = v115;
                  v232 = v286;
                  v233 = v287;
                  v234 = v114;
                  v235 = v139;
                  v236 = v113;
                  v237 = v284;
                  v238 = v285;
                  v239 = v71;
                  v240 = v82;
                  v241 = v111;
                  v242 = v112;
                  v243 = v72;
                  *v244 = *v283;
                  *&v244[3] = *&v283[3];
                  v245 = v73;
                  v246 = v83;
                  v247 = v110;
                  v248 = v153;
                  v249 = v74;
                  v250 = v109;
                  v251 = v281;
                  v252 = v282;
                  v253 = v75;
                  v254 = v84;
                  v40 = v87;
                  goto LABEL_12;
                }

                sub_214031C4C();
                swift_allocError();
                *v64 = 0xD000000000000020;
                v64[1] = 0x800000021478FC70;
                v65 = v104;
                v64[2] = 0xD00000000000001CLL;
                v64[3] = v65;
                swift_willThrow();

                (*(v10 + 8))(v8, v145);

                sub_213FB7170(v68);
                v107 = v148;
                v108 = v149;
                v102 = v147;
                v103 = v146;
                v96 = v144;
                v97 = v143;
                v91 = v141;
                v92 = v140;
                v85 = v132;
                v86 = v131;
                v79 = v112;
                v80 = v111;
                v77 = v153;
                v78 = v110;
              }

              else
              {
                sub_214031C4C();
                swift_allocError();
                *v57 = 0xD000000000000025;
                v57[1] = 0x800000021478FC40;
                v58 = v104;
                v57[2] = 0xD00000000000001CLL;
                v57[3] = v58;
                swift_willThrow();

                (*(v10 + 8))(v8, v145);

                sub_213FDC6D0(v78, v77);
                v107 = v148;
                v108 = v149;
                v102 = v147;
                v103 = v146;
                v96 = v144;
                v97 = v143;
                v91 = v141;
                v92 = v140;
                v85 = v132;
                v86 = v131;
                v79 = v112;
                v80 = v111;
              }
            }

            else
            {
              sub_214031C4C();
              swift_allocError();
              *v52 = 0xD000000000000023;
              v52[1] = 0x800000021478FC10;
              v53 = v104;
              v52[2] = 0xD00000000000001CLL;
              v52[3] = v53;
              swift_willThrow();

              (*(v10 + 8))(v8, v145);

              sub_213FDC6D0(v80, v79);
              v107 = v148;
              v108 = v149;
              v102 = v147;
              v103 = v146;
              v96 = v144;
              v97 = v143;
              v91 = v141;
              v92 = v140;
              v85 = v132;
              v86 = v131;
            }
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v47 = 0xD00000000000002ELL;
            v47[1] = 0x800000021478FBE0;
            v48 = v104;
            v47[2] = 0xD00000000000001CLL;
            v47[3] = v48;
            swift_willThrow();

            (*(v10 + 8))(v8, v145);

            sub_213FDC6D0(v86, v85);
            v107 = v148;
            v108 = v149;
            v102 = v147;
            v103 = v146;
            v96 = v144;
            v97 = v143;
            v91 = v141;
            v92 = v140;
          }
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v45 = 0xD000000000000022;
          v45[1] = 0x800000021478FBB0;
          v46 = v104;
          v45[2] = 0xD00000000000001CLL;
          v45[3] = v46;
          swift_willThrow();

          (*(v10 + 8))(v8, v145);

          sub_213FDC6D0(v92, v91);
          v107 = v148;
          v108 = v149;
          v102 = v147;
          v103 = v146;
          v96 = v144;
          v97 = v143;
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v43 = 0xD00000000000001DLL;
        v43[1] = 0x800000021478FB90;
        v44 = v104;
        v43[2] = 0xD00000000000001CLL;
        v43[3] = v44;
        swift_willThrow();

        (*(v10 + 8))(v8, v145);

        sub_213FDC6D0(v97, v96);
        v107 = v148;
        v108 = v149;
        v102 = v147;
        v103 = v146;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v41 = 0xD00000000000002ALL;
      v41[1] = 0x800000021478FB60;
      v42 = v104;
      v41[2] = 0xD00000000000001CLL;
      v41[3] = v42;
      swift_willThrow();

      (*(v10 + 8))(v8, v145);

      sub_213FDC6D0(v103, v102);
      v107 = v148;
      v108 = v149;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v37 = v98;
    *v38 = 0xD000000000000023;
    v38[1] = v37;
    v39 = v104;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = v39;
    swift_willThrow();

    (*(v10 + 8))(v8, v145);

    sub_213FDC6D0(v107, v108);
  }

  __swift_destroy_boxed_opaque_existential_1(v158);
  LOBYTE(v160) = v142;
  v161 = v157;
  v163 = v155;
  v164 = v156;
  v165 = v152;
  v166 = v154;
  v167 = v150;
  v168 = v151;
  v169 = v67;
  v170 = v105;
  v171 = v107;
  v172 = v108;
  v173 = v106;
  v175 = v99;
  v176 = v101;
  v177 = v103;
  v178 = v102;
  v179 = v100;
  v181 = v93;
  v182 = v95;
  v183 = v97;
  v184 = v96;
  v185 = v94;
  v187 = v88;
  v188 = v90;
  v189 = v92;
  v190 = v91;
  v191 = v89;
  v192 = v138;
  v195 = v136;
  v196 = v137;
  v198 = v134;
  v199 = v135;
  v200 = v133;
  v203 = v69;
  v204 = v81;
  v205 = v86;
  v206 = v85;
  v207 = v70;
  v208 = v130;
  v211 = v128;
  v212 = v129;
  v214 = v126;
  v215 = v127;
  *(&v160 + 1) = v304[0];
  *&v174[3] = *&v303[3];
  *v174 = *v303;
  *&v180[3] = *&v302[3];
  *v180 = *v302;
  *&v186[3] = *&v301[3];
  *v186 = *v301;
  v193 = v299;
  *&v197[3] = *&v298[3];
  *v197 = *v298;
  v201 = v296;
  v209 = v294;
  *v213 = *v293;
  *v216 = *v292;
  HIDWORD(v160) = *(v304 + 3);
  v194 = v300;
  v202 = v297;
  v210 = v295;
  *&v213[3] = *&v293[3];
  *&v216[3] = *&v292[3];
  v162 = v14;
  v217 = v124;
  v218 = v125;
  *v219 = *v291;
  *&v219[3] = *&v291[3];
  v220 = v122;
  v221 = v123;
  *v222 = *v290;
  *&v222[3] = *&v290[3];
  v223 = v120;
  v224 = v121;
  *v225 = *v289;
  *&v225[3] = *&v289[3];
  v226 = v118;
  v227 = v119;
  *v228 = *v288;
  *&v228[3] = *&v288[3];
  v229 = v116;
  v230 = v117;
  v231 = v115;
  v232 = v286;
  v233 = v287;
  v234 = v114;
  v235 = v139;
  v236 = v113;
  v237 = v284;
  v238 = v285;
  v239 = v71;
  v240 = v82;
  v241 = v80;
  v242 = v79;
  v243 = v72;
  *v244 = *v283;
  *&v244[3] = *&v283[3];
  v245 = v73;
  v246 = v83;
  v247 = v78;
  v248 = v77;
  v249 = v74;
  v250 = v109;
  v251 = v281;
  v252 = v282;
  v253 = v75;
  v254 = v84;
  v40 = v68;
LABEL_12:
  v255 = v40;
  v256 = v76;
  return sub_214300F50(&v160);
}

uint64_t sub_2141BD00C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908CE8, &qword_2146F53F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 4);
  v73 = *(v1 + 3);
  v74 = v8;
  v10 = *(v1 + 6);
  v71 = *(v1 + 5);
  v72 = v9;
  v11 = *(v1 + 8);
  v69 = *(v1 + 7);
  v70 = v10;
  v12 = *(v1 + 12);
  v67 = *(v1 + 11);
  v68 = v11;
  v13 = *(v1 + 17);
  v65 = *(v1 + 16);
  v66 = v12;
  v14 = *(v1 + 22);
  v63 = *(v1 + 21);
  v64 = v13;
  v15 = *(v1 + 27);
  v61 = *(v1 + 26);
  v62 = v14;
  v60 = v15;
  LODWORD(v8) = v1[225];
  v57 = *(v1 + 29);
  v58 = v1[240];
  v59 = v8;
  v55 = *(v1 + 31);
  v56 = v1[256];
  v54 = v1[257];
  v16 = *(v1 + 36);
  v52 = *(v1 + 35);
  v53 = v16;
  v51 = v1[297];
  v49 = *(v1 + 38);
  v50 = v1[312];
  v28 = *(v1 + 40);
  v29 = v1[328];
  v30 = *(v1 + 42);
  v31 = v1[344];
  v32 = *(v1 + 44);
  v33 = v1[360];
  v34 = *(v1 + 46);
  v35 = v1[376];
  v36 = *(v1 + 48);
  v37 = v1[392];
  v38 = *(v1 + 50);
  v39 = v1[408];
  v40 = v1[409];
  v41 = *(v1 + 52);
  v42 = v1[424];
  v43 = v1[425];
  v17 = *(v1 + 57);
  v44 = *(v1 + 56);
  v45 = v17;
  v18 = *(v1 + 62);
  v46 = *(v1 + 61);
  v47 = v18;
  v48 = v1[505];
  v19 = *(v1 + 66);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214300FA4();
  sub_2146DAA28();
  LOBYTE(v76) = v7;
  v20 = v6;
  v78 = 0;
  sub_214058708();
  v21 = v75;
  sub_2146DA388();
  if (v21)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v23 = v69;
  v75 = v19;
  LOBYTE(v76) = 1;
  sub_2146DA378();
  LOBYTE(v76) = 2;
  sub_2146DA348();
  LOBYTE(v76) = 3;
  sub_2146DA328();
  LOBYTE(v76) = 4;
  sub_2146DA328();
  v76 = v23;
  v77 = v68;
  v78 = 5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v25 = sub_214045AC0();
  sub_2146DA388();
  v71 = v25;
  v72 = v24;
  v73 = v3;
  v74 = v20;
  if (v66 == 1 || (v76 = v67, v77 = v66, v78 = 6, sub_2146DA388(), v64 == 1) || (v76 = v65, v77 = v64, v78 = 7, sub_2146DA388(), v62 == 1) || (v76 = v63, v77 = v62, v78 = 8, sub_2146DA388(), v60 == 1) || (v76 = v61, v77 = v60, v78 = 9, sub_2146DA388(), LOBYTE(v76) = v59, v78 = 10, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C78, &qword_2146F53C0), sub_2143013F0(), sub_2146DA388(), v76 = v57, LOBYTE(v77) = v58, v78 = 11, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0), sub_2142E37F4(), sub_2146DA388(), v76 = v55, LOBYTE(v77) = v56, v78 = 12, sub_2146DA388(), LOBYTE(v76) = v54, v78 = 13, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C88, &qword_2146F53C8), sub_214301474(), sub_2146DA388(), v53 == 1) || (v76 = v52, v77 = v53, v78 = 14, sub_2146DA388(), LOBYTE(v76) = v51, v78 = 15, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C98, &qword_2146F53D0), sub_2143014F8(), sub_2146DA388(), v76 = v49, LOBYTE(v77) = v50, v78 = 16, sub_2146DA388(), v76 = v28, LOBYTE(v77) = v29, v78 = 17, sub_2146DA388(), v76 = v30, LOBYTE(v77) = v31, v78 = 18, sub_2146DA388(), v76 = v32, LOBYTE(v77) = v33, v78 = 19, sub_2146DA388(), v76 = v34, LOBYTE(v77) = v35, v78 = 20, sub_2146DA388(), v76 = v36, LOBYTE(v77) = v37, v78 = 21, sub_2146DA388(), v76 = v38, LOBYTE(v77) = v39, v78 = 22, sub_2146DA388(), LOBYTE(v76) = v40, v78 = 23, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908CA8, &qword_2146F53D8), sub_21430157C(), sub_2146DA388(), v76 = v41, LOBYTE(v77) = v42, v78 = 24, sub_2146DA388(), LOBYTE(v76) = v43, v78 = 25, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908CB8, &qword_2146F53E0), sub_214301600(), sub_2146DA388(), v45 == 1) || (v76 = v44, v77 = v45, v78 = 26, sub_2146DA388(), v47 == 1) || (v76 = v46, v77 = v47, v78 = 27, sub_2146DA388(), LOBYTE(v76) = v48, v78 = 28, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0), sub_2142E1D30(), sub_2146DA388(), v75 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v76 = v75;
    v78 = 29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908CC8, &qword_2146F53E8);
    sub_214301684();
    v27 = v73;
    v26 = v74;
    sub_2146DA388();
    return (*(v4 + 8))(v26, v27);
  }

  return result;
}

uint64_t sub_2141BDC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7865546E69616C70 && a2 == 0xEF736569646F4274)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2141BDC94(uint64_t a1)
{
  v2 = sub_21430178C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141BDCD0(uint64_t a1)
{
  v2 = sub_21430178C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141BDD0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D28, &qword_2146F5400);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430178C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2142E1548();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141BDE8C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D38, &qword_2146F5408);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430178C();

  sub_2146DAA28();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  sub_2140459AC();
  sub_2146DA388();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2141BE030@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_214328704(a1, a3, type metadata accessor for Metadata);
  result = type metadata accessor for ScheduledMessageUpdate(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_2141BE090()
{
  if (*v0)
  {
    return 0x656C756465686373;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_2141BE0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xED00006574617453)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2141BE1BC(uint64_t a1)
{
  v2 = sub_2143017E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141BE1F8(uint64_t a1)
{
  v2 = sub_2143017E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141BE234@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D40, &qword_2146F5410);
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143017E0();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v15;
    v19 = 0;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata, byte_2146FB080);
    v12 = v16;
    sub_2146DA1C8();
    v17 = 1;
    sub_21407BC6C();
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v12);
    v14 = v18;
    sub_214328704(v6, v11, type metadata accessor for Metadata);
    *(v11 + *(type metadata accessor for ScheduledMessageUpdate(0) + 20)) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141BE4D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D50, &qword_2146F5418);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143017E0();
  sub_2146DAA28();
  v10[15] = 0;
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for ScheduledMessageUpdate(0) + 20));
    v10[13] = 1;
    sub_21407BCC0();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2141BE6E8(uint64_t a1)
{
  v2 = sub_214301834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141BE724(uint64_t a1)
{
  v2 = sub_214301834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141BE760@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D58, &qword_2146F5420);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301834();
  sub_2146DAA08();
  if (!v2)
  {
    sub_214301888();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141BE8CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D70, &qword_2146F5428);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301834();
  sub_2146DAA28();
  v10 = v7;
  sub_2143018DC();
  sub_2146DA388();
  return (*(v4 + 8))(v6, v3);
}

uint64_t SharedETATrip.init(with:chunkIndexKey:chunkMessageIDKey:chunkGroupIDKey:chunkDataKey:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_214059900;
  *(v12 + 24) = 0;
  *(v11 + 32) = v12;
  sub_214042B80(v11, &v59);
  v14 = v59;
  v13 = v60;
  v15 = v62;
  v41 = v61;
  v16 = v63;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_214059900;
  *(v18 + 24) = 0;
  *(v17 + 32) = v18;
  sub_214042B80(v17, &v80);
  v50 = v81;
  v51 = v80;
  v42 = v82;
  v87 = v83;
  v52 = v84;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  *(v21 + 16) = 10000;
  *(v20 + 16) = sub_214301930;
  *(v20 + 24) = v21;
  *(v19 + 32) = v20;
  sub_214042CD0(v19, v78);
  v46 = v78[0];
  v58 = v78[2];
  v55 = v78[1];
  v56 = v78[3];
  v47 = v79;
  v80 = a3;
  v81 = a4;
  LOBYTE(v78[0]) = v16;
  v22 = v13;
  v59 = 0xD00000000000001FLL;
  v60 = 0x800000021478FCA0;
  v61 = 0xD00000000000001CLL;
  v62 = 0x800000021478A360;

  v23 = v14(&v80, v78, &v59);
  if (v43)
  {
    sub_213FB54FC(a7, a8);

    v24 = v52;
LABEL_6:
    v26 = v51;
    v29 = v47;

    v30 = v41;
    v25 = v50;
LABEL_7:
    v59 = a1;
    v60 = a2;
    v61 = v14;
    v62 = v22;
    v63 = v30;
    v64 = v15;
    v65 = v16;
    *v66 = v86[0];
    *&v66[3] = *(v86 + 3);
    v67 = v26;
    v68 = v25;
    v69 = v42;
    v70 = v87;
    v71 = v24;
    *&v72[3] = *&v85[3];
    *v72 = *v85;
    v73 = v46;
    v74 = v55;
    v75 = v58;
    v76 = v56;
    v77 = v29;
    return sub_214301940(&v59);
  }

  v37 = a3;
  v38 = a4;
  v44 = v13;
  if ((v23 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000001FLL;
    v28[1] = 0x800000021478FCA0;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB54FC(a7, a8);

    v24 = v52;
    goto LABEL_6;
  }

  v80 = a5;
  v81 = a6;
  v24 = v52;
  LOBYTE(v78[0]) = v52;
  v59 = 0xD00000000000001DLL;
  v60 = 0x800000021478FCC0;
  v61 = 0xD00000000000001CLL;
  v62 = 0x800000021478A360;

  v25 = v50;

  v26 = v51;
  v27 = v51(&v80, v78, &v59);
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD00000000000001DLL;
    v36[1] = 0x800000021478FCC0;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB54FC(a7, a8);

    v15 = v38;
    v29 = v47;

    v30 = v37;
    goto LABEL_7;
  }

  v87 = "SharedETATrip.chunkGroupIDKey";
  v59 = v46;
  v60 = v55;
  v61 = v58;
  v62 = v56;
  LOBYTE(v63) = v47;

  sub_213FDCA18(v58, v56);
  sub_214032024(a7, a8, 2, 0xD00000000000001ALL, 0x800000021478FCE0, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FB54FC(a7, a8);

  v32 = v59;
  v33 = v60;
  v34 = v61;
  v49 = v62;
  v35 = v63;

  result = sub_213FDC6BC(v58, v56);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v14;
  *(a9 + 24) = v44;
  *(a9 + 32) = v37;
  *(a9 + 40) = v38;
  *(a9 + 48) = v16;
  *(a9 + 56) = v51;
  *(a9 + 64) = v50;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = v52;
  *(a9 + 96) = v32;
  *(a9 + 104) = v33;
  *(a9 + 112) = v34;
  *(a9 + 120) = v49;
  *(a9 + 128) = v35;
  return result;
}

unint64_t sub_2141BF0C0()
{
  v1 = *v0;
  v2 = 0x6D754E6B6E756863;
  v3 = 0xD000000000000011;
  v4 = 0x6F72476B6E756863;
  if (v1 != 3)
  {
    v4 = 0x7461446B6E756863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646E496B6E756863;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2141BF18C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214371F6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141BF1B4(uint64_t a1)
{
  v2 = sub_214301994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141BF1F0(uint64_t a1)
{
  v2 = sub_214301994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SharedETATrip.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D80, &qword_2146F5430);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - v7;
  v9 = a1[3];
  v108 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_214301994();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v108);
  }

  LOBYTE(v82) = 0;
  v72 = sub_2146DA1B8();
  LOBYTE(v82) = 1;
  v71 = sub_2146DA1B8();
  LOBYTE(v82) = 2;
  v11 = sub_2146DA168();
  v13 = v12;
  v70 = v11;
  LOBYTE(v82) = 3;
  *(&v62 + 1) = sub_2146DA168();
  v69 = v14;
  v103 = 4;
  sub_21406116C();
  sub_2146DA1C8();
  v55 = v104;
  v56 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v15 = swift_allocObject();
  v67 = v13;
  v16 = v15;
  v63 = xmmword_2146E9BF0;
  *(v15 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_214059900;
  *(v17 + 24) = 0;
  *(v16 + 32) = v17;
  sub_214042B80(v16, &v82);
  v66 = v82;
  v68 = v83;
  v52 = v84;
  v64 = v85;
  v65 = v86;
  v18 = swift_allocObject();
  *(v18 + 16) = v63;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_214059900;
  *(v19 + 24) = 0;
  *(v18 + 32) = v19;
  sub_214042B80(v18, &v73);
  *&v62 = *(&v73 + 1);
  v59 = *(&v74 + 1);
  v53 = v74;
  v60 = v73;
  v61 = v75;
  v20 = swift_allocObject();
  *(v20 + 16) = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  *(v22 + 16) = 10000;
  *(v21 + 16) = sub_21438F460;
  *(v21 + 24) = v22;
  *(v20 + 32) = v21;
  sub_214042CD0(v20, &v99);
  v63 = v99;
  v57 = v100;
  v58 = v101;
  LODWORD(v54) = v102;
  *&v73 = v70;
  *(&v73 + 1) = v67;
  LOBYTE(v99) = v65;
  v82 = 0xD00000000000001FLL;
  v83 = 0x800000021478FCA0;
  v84 = 0xD00000000000001CLL;
  v85 = 0x800000021478A360;

  v23 = v66(&v73, &v99, &v82);
  if ((v23 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD00000000000001FLL;
    v26[1] = 0x800000021478FCA0;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB54FC(v55, v56);
    (*(v6 + 8))(v8, v5);
    v27 = v64;

    v28 = v68;

    v70 = v52;
    v30 = v57;
    v29 = v58;
    v31 = v59;
LABEL_8:
    v32 = v53;
    v33 = v54;
    goto LABEL_9;
  }

  v52 = 0;

  *&v73 = *(&v62 + 1);
  *(&v73 + 1) = v69;
  LOBYTE(v99) = v61;
  v82 = 0xD00000000000001DLL;
  v83 = 0x800000021478FCC0;
  v84 = 0xD00000000000001CLL;
  v85 = 0x800000021478A360;
  v64 = 0x800000021478A360;

  v24 = v52;
  v25 = v60(&v73, &v99, &v82);
  if (v24)
  {

LABEL_15:

    sub_213FB54FC(v55, v56);
    (*(v6 + 8))(v8, v5);
    v31 = v59;

    v27 = v67;
    v28 = v68;
    v30 = v57;
    v29 = v58;
    goto LABEL_8;
  }

  v52 = 0;
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD00000000000001DLL;
    v38[1] = 0x800000021478FCC0;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_15;
  }

  v99 = v63;
  v34 = v57;
  v35 = v58;
  v100 = v57;
  v101 = v58;
  v102 = v54;
  v64 = *(&v63 + 1);

  sub_213FDCA18(v34, v35);
  *&v63 = "SharedETATrip.chunkGroupIDKey";
  v36 = v55;
  v37 = v52;
  sub_214032024(v55, v56, 2, 0xD00000000000001ALL, 0x800000021478FCE0, 0xD00000000000001CLL, 0x800000021478A360);
  if (!v37)
  {

    sub_213FB54FC(v36, v56);
    (*(v6 + 8))(v8, v5);
    v39 = v99;
    v59 = v99;
    v40 = v100;
    v55 = *(&v99 + 1);
    v56 = v100;
    v54 = v101;
    LODWORD(v63) = v102;

    sub_213FDC6BC(v57, v58);
    v41 = v72;
    *&v73 = v72;
    *(&v73 + 1) = v71;
    *&v74 = v66;
    *(&v74 + 1) = v68;
    v42 = v70;
    *&v75 = v70;
    *(&v75 + 1) = v67;
    v43 = v65;
    LOBYTE(v76) = v65;
    *(&v76 + 1) = v107[0];
    DWORD1(v76) = *(v107 + 3);
    *(&v76 + 1) = v60;
    v77 = v62;
    *&v78 = v69;
    BYTE8(v78) = v61;
    *(&v78 + 9) = *v106;
    HIDWORD(v78) = *&v106[3];
    *&v79 = v39;
    v44 = v55;
    *(&v79 + 1) = v55;
    *&v80 = v40;
    v45 = v54;
    *(&v80 + 1) = v54;
    v81 = v63;
    v46 = v79;
    v47 = v80;
    *(a2 + 128) = v63;
    *(a2 + 96) = v46;
    *(a2 + 112) = v47;
    v48 = v73;
    v49 = v74;
    v50 = v78;
    *(a2 + 64) = v77;
    *(a2 + 80) = v50;
    v51 = v76;
    *(a2 + 32) = v75;
    *(a2 + 48) = v51;
    *a2 = v48;
    *(a2 + 16) = v49;
    sub_2143019E8(&v73, &v82);
    __swift_destroy_boxed_opaque_existential_1(v108);
    v82 = v41;
    v83 = v71;
    v84 = v66;
    v85 = v68;
    v86 = v42;
    v87 = v67;
    v88 = v43;
    *v89 = v107[0];
    *&v89[3] = *(v107 + 3);
    v90 = v60;
    v91 = v62;
    v92 = v69;
    v93 = v61;
    *v94 = *v106;
    *&v94[3] = *&v106[3];
    *&v95 = v59;
    *(&v95 + 1) = v44;
    v96 = v56;
    v97 = v45;
    v98 = v63;
    return sub_214301940(&v82);
  }

  sub_213FB54FC(v36, v56);
  (*(v6 + 8))(v8, v5);
  v63 = v99;
  v30 = v100;
  v29 = v101;
  v33 = v102;

  sub_213FDC6BC(v57, v58);
  v27 = v67;
  v28 = v68;
  v32 = *(&v62 + 1);
  v31 = v69;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v108);
  v82 = v72;
  v83 = v71;
  v84 = v66;
  v85 = v28;
  v86 = v70;
  v87 = v27;
  v88 = v65;
  *v89 = v107[0];
  *&v89[3] = *(v107 + 3);
  v90 = v60;
  *&v91 = v62;
  *(&v91 + 1) = v32;
  v92 = v31;
  v93 = v61;
  *v94 = *v106;
  *&v94[3] = *&v106[3];
  v95 = v63;
  v96 = v30;
  v97 = v29;
  v98 = v33;
  return sub_214301940(&v82);
}

uint64_t SharedETATrip.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D90, &qword_2146F5438);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - v5;
  v7 = v1[1];
  v8 = v1[5];
  v21 = v1[4];
  v22 = v7;
  v9 = v1[9];
  v19 = v1[10];
  v20 = v8;
  v10 = v1[14];
  v11 = v1[15];
  v17[1] = v9;
  v18 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301994();
  sub_2146DAA28();
  LOBYTE(v24) = 0;
  v12 = v23;
  sub_2146DA378();
  if (v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = v20;
  v14 = v18;
  v15 = v19;
  v23 = v11;
  LOBYTE(v24) = 1;
  sub_2146DA378();
  if (v13 && (LOBYTE(v24) = 2, , sub_2146DA328(), , v15) && (LOBYTE(v24) = 3, , sub_2146DA328(), , v23 >> 60 != 15))
  {
    v24 = v14;
    v25 = v23;
    v26 = 4;
    sub_21402D9F8(v14, v23);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v24, v25);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2141BFF5C@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t (*a11)(void, void, void), uint64_t a12, uint64_t (*a13)(void, void, void), uint64_t a14, uint64_t (*a15)(void, void, void), uint64_t a16, uint64_t (*a17)(void, void, void), uint64_t a18, uint64_t (*a19)(void, void, void), uint64_t a20, uint64_t a21, char a22, char a23, uint64_t (*a24)(void, void, void), uint64_t a25)
{
  sub_21448E838(&v126);
  v28 = v126;
  v29 = v127;
  v73 = v128;
  v30 = v129;
  v31 = v130;
  sub_21448E974(&v207);
  v122 = v207;
  v123 = v208;
  v125 = v209;
  v124 = v210;
  v94 = v211;
  sub_21448E9B0(v205);
  v116 = v205[0];
  v119 = v205[1];
  v120 = v205[3];
  v121 = v205[2];
  v117 = v206;
  sub_21448E9EC(v203);
  v110 = v203[0];
  v115 = v203[2];
  v113 = v203[1];
  v114 = v203[3];
  v111 = v204;
  sub_21448EA28(v201);
  v106 = v201[0];
  v108 = v201[1];
  v109 = v201[2];
  v74 = v201[3];
  v107 = v202;
  sub_21448EA64(v199);
  v99 = v199[0];
  v104 = v199[2];
  v102 = v199[1];
  v103 = v199[3];
  v96 = v200;
  sub_21448EAA0(v197);
  v97 = v197[0];
  v93 = v197[2];
  v100 = v197[1];
  v101 = v197[3];
  v98 = v198;
  sub_21448EBFC(v195);
  v92 = v195[1];
  v89 = v195[2];
  v90 = v195[0];
  v88 = v195[3];
  v91 = v196;
  sub_21448ED58(v193);
  v83 = v193[0];
  v87 = v193[2];
  v85 = v193[1];
  v86 = v193[3];
  v84 = v194;
  sub_21448EEAC(v191);
  v78 = v191[0];
  v80 = v191[2];
  v81 = v191[3];
  v82 = v191[1];
  v79 = v192;
  v77 = v31;
  v212 = a22 & 1;
  v207 = a1;
  v208 = a2;
  LOBYTE(v205[0]) = v31;
  v126 = 0xD000000000000025;
  v127 = 0x800000021478FD00;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  v95 = v29;
  v32 = v75;
  v76 = v28;
  v33 = v28(&v207, v205, &v126);
  if (v32)
  {

LABEL_6:

    v38 = v99;
    v34 = v95;
    v35 = v94;

    v39 = v30;
    v40 = v73;
    v41 = v96;
LABEL_7:
    v43 = v88;
    v42 = v89;
    v44 = v93;
    v45 = v74;
LABEL_8:
    v126 = v76;
    v127 = v34;
    v128 = v40;
    v129 = v39;
    v130 = v77;
    v133 = v122;
    v134 = v123;
    v135 = v125;
    v136 = v124;
    v137 = v35;
    v139 = v116;
    v140 = v119;
    v141 = v121;
    v142 = v120;
    v143 = v117;
    v145 = v110;
    v146 = v113;
    v147 = v115;
    v148 = v114;
    v149 = v111;
    v151 = v106;
    v152 = v108;
    v153 = v109;
    v154 = v45;
    *v131 = v223[0];
    *&v131[3] = *(v223 + 3);
    *v138 = *v222;
    *&v138[3] = *&v222[3];
    *&v144[3] = *&v221[3];
    *v144 = *v221;
    *v150 = *v220;
    *&v150[3] = *&v220[3];
    v132 = a10;
    v155 = v107;
    *&v156[3] = *&v219[3];
    *v156 = *v219;
    v157 = v38;
    v158 = v102;
    v159 = v104;
    v160 = v103;
    v161 = v41;
    *&v162[3] = *&v218[3];
    *v162 = *v218;
    v163 = v97;
    v164 = v100;
    v165 = v44;
    v166 = v101;
    v167 = v98;
    *v168 = *v217;
    *&v168[3] = *&v217[3];
    v169 = v90;
    v170 = v92;
    v171 = v42;
    v172 = v43;
    v173 = v91;
    *v174 = *v216;
    *&v174[3] = *&v216[3];
    v175 = v83;
    v176 = v85;
    v177 = v87;
    v178 = v86;
    v179 = v84;
    *v180 = *v215;
    *&v180[3] = *&v215[3];
    v181 = a21;
    v182 = a22 & 1;
    v183 = a23;
    v184 = v213;
    v185 = v214;
    v186 = v78;
    v187 = v82;
    v188 = v80;
    v189 = v81;
    v190 = v79;
    return sub_214301A44(&v126);
  }

  v68 = a2;
  v67 = a1;
  if ((v33 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD000000000000025;
    v37[1] = 0x800000021478FD00;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v34 = v29;

  v207 = a3;
  v208 = a4;
  v35 = v94;
  LOBYTE(v205[0]) = v94;
  v126 = 0xD000000000000028;
  v127 = 0x800000021478FD30;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  sub_213FDC9D0(v125, v124);
  v36 = v122(&v207, v205, &v126);
  v41 = v96;
  if ((v36 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD000000000000028;
    v48[1] = 0x800000021478FD30;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v99;

    sub_213FDC6D0(v125, v124);
    v39 = a2;
LABEL_12:
    v40 = a1;
    goto LABEL_7;
  }

  sub_213FDC6D0(v125, v124);

  sub_213FDC6D0(v125, v124);
  v207 = a5;
  v208 = a6;
  LOBYTE(v205[0]) = v117;
  v126 = 0xD000000000000028;
  v127 = 0x800000021478FD60;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  sub_213FDC9D0(v121, v120);
  v47 = v116(&v207, v205, &v126);
  if ((v47 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD000000000000028;
    v50[1] = 0x800000021478FD60;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v99;

    sub_213FDC6D0(v121, v120);
    v39 = a2;
    v125 = a3;
    v124 = a4;
    goto LABEL_12;
  }

  sub_213FDC6D0(v121, v120);

  sub_213FDC6D0(v121, v120);
  v207 = a7;
  v208 = a8;
  LOBYTE(v205[0]) = v111;
  v126 = 0xD000000000000025;
  v127 = 0x800000021478FD90;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  sub_213FDC9D0(v115, v114);
  v49 = v110(&v207, v205, &v126);
  if ((v49 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v52 = 0xD000000000000025;
    v52[1] = 0x800000021478FD90;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v99;

    sub_213FDC6D0(v115, v114);
    v39 = a2;
    v125 = a3;
    v124 = a4;
    v120 = a6;
    v121 = a5;
    goto LABEL_12;
  }

  sub_213FDC6D0(v115, v114);

  sub_213FDC6D0(v115, v114);
  v207 = a11;
  v208 = a12;
  LOBYTE(v205[0]) = v107;
  v126 = 0xD000000000000026;
  v127 = 0x800000021478FDC0;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  v45 = v74;
  sub_213FDC9D0(v109, v74);
  v51 = v106(&v207, v205, &v126);
  if ((v51 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v54 = 0xD000000000000026;
    v54[1] = 0x800000021478FDC0;
    v54[2] = 0xD00000000000001CLL;
    v54[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v99;

    sub_213FDC6D0(v109, v74);
    v39 = a2;
    v125 = a3;
    v124 = a4;
    v120 = a6;
    v121 = a5;
    v114 = a8;
    v115 = a7;
LABEL_22:
    v40 = a1;
    v43 = v88;
    v42 = v89;
    v44 = v93;
    goto LABEL_8;
  }

  sub_213FDC6D0(v109, v74);

  sub_213FDC6D0(v109, v74);
  v207 = a13;
  v208 = a14;
  LOBYTE(v205[0]) = v96;
  v126 = 0xD000000000000020;
  v127 = 0x800000021478FDF0;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  sub_213FDC9D0(v104, v103);
  v53 = v99(&v207, v205, &v126);
  if ((v53 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v56 = 0xD000000000000020;
    v56[1] = 0x800000021478FDF0;
    v56[2] = 0xD00000000000001CLL;
    v56[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v99;

    sub_213FDC6D0(v104, v103);
    v39 = a2;
    v125 = a3;
    v124 = a4;
    v120 = a6;
    v121 = a5;
    v114 = a8;
    v115 = a7;
    v109 = a11;
    v45 = a12;
    goto LABEL_22;
  }

  sub_213FDC6D0(v104, v103);

  sub_213FDC6D0(v104, v103);
  v207 = a15;
  v208 = a16;
  LOBYTE(v205[0]) = v98;
  v126 = 0xD000000000000028;
  v127 = 0x800000021478FE20;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  sub_213FDC9D0(v93, v101);
  if ((v97(&v207, v205, &v126) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v57 = 0xD000000000000028;
    v57[1] = 0x800000021478FE20;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = 0x800000021478A360;
    swift_willThrow();

    v44 = v93;
    sub_213FDC6D0(v93, v101);
    v39 = v68;
    v125 = a3;
    v45 = a12;
    v124 = a4;
    v120 = a6;
    v121 = a5;
    v114 = a8;
    v115 = a7;
    v109 = a11;
    v103 = a14;
    v104 = a13;
    v41 = v96;
    v38 = v99;
    v34 = v95;
    v35 = v94;
    v40 = a1;
    v43 = v88;
    v42 = v89;
    goto LABEL_8;
  }

  sub_213FDC6D0(v93, v101);

  sub_213FDC6D0(v93, v101);
  v207 = a17;
  v208 = a18;
  LOBYTE(v205[0]) = v91;
  v126 = 0xD000000000000026;
  v127 = 0x800000021478FE50;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  sub_213FDC9D0(v89, v88);
  if ((v90(&v207, v205, &v126) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD000000000000026;
    v58[1] = 0x800000021478FE50;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = 0x800000021478A360;
    swift_willThrow();

    v43 = v88;
    v42 = v89;
    sub_213FDC6D0(v89, v88);
    v39 = a2;
    v125 = a3;
    v45 = a12;
    v124 = a4;
    v120 = a6;
    v121 = a5;
    v114 = a8;
    v115 = a7;
    v109 = a11;
    v103 = a14;
    v104 = a13;
    v44 = a15;
    v101 = a16;
LABEL_30:
    v41 = v96;
    v38 = v99;
    v34 = v95;
    v35 = v94;
    v40 = v67;
    goto LABEL_8;
  }

  sub_213FDC6D0(v89, v88);

  sub_213FDC6D0(v89, v88);
  v207 = a19;
  v208 = a20;
  LOBYTE(v205[0]) = v84;
  v126 = 0xD00000000000002CLL;
  v127 = 0x800000021478FE80;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  sub_213FDC9D0(v87, v86);
  v55 = v83(&v207, v205, &v126);
  if ((v55 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v60 = 0xD00000000000002CLL;
    v60[1] = 0x800000021478FE80;
    v60[2] = 0xD00000000000001CLL;
    v60[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v87, v86);
    v39 = a2;
    v125 = a3;
    v45 = a12;
    v124 = a4;
    v120 = a6;
    v121 = a5;
    v114 = a8;
    v115 = a7;
    v109 = a11;
    v103 = a14;
    v104 = a13;
    v44 = a15;
    v101 = a16;
    v42 = a17;
    v43 = a18;
    goto LABEL_30;
  }

  sub_213FDC6D0(v87, v86);

  sub_213FDC6D0(v87, v86);
  v207 = a24;
  v208 = a25;
  LOBYTE(v205[0]) = v79;
  v126 = 0xD000000000000025;
  v127 = 0x800000021478FEB0;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  sub_213FDC9D0(v80, v81);
  v59 = v78(&v207, v205, &v126);
  if ((v59 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v66 = 0xD000000000000025;
    v66[1] = 0x800000021478FEB0;
    v66[2] = 0xD00000000000001CLL;
    v66[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v80, v81);
    v39 = a2;
    v125 = a3;
    v45 = a12;
    v124 = a4;
    v120 = a6;
    v121 = a5;
    v114 = a8;
    v115 = a7;
    v109 = a11;
    v103 = a14;
    v104 = a13;
    v44 = a15;
    v101 = a16;
    v42 = a17;
    v43 = a18;
    v86 = a20;
    v87 = a19;
    goto LABEL_30;
  }

  sub_213FDC6D0(v80, v81);

  result = sub_213FDC6D0(v80, v81);
  *a9 = v76;
  *(a9 + 8) = v29;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = v77;
  *(a9 + 48) = v122;
  *(a9 + 56) = v123;
  *(a9 + 64) = a3;
  *(a9 + 72) = a4;
  *(a9 + 80) = v94;
  *(a9 + 88) = v116;
  *(a9 + 96) = v119;
  *(a9 + 104) = a5;
  *(a9 + 112) = a6;
  *(a9 + 120) = v117;
  *(a9 + 128) = v110;
  *(a9 + 136) = v113;
  *(a9 + 144) = a7;
  *(a9 + 152) = a8;
  *(a9 + 160) = v111;
  *(a9 + 168) = v106;
  *(a9 + 176) = v108;
  *(a9 + 184) = a11;
  *(a9 + 192) = a12;
  *(a9 + 33) = v223[0];
  *(a9 + 36) = *(v223 + 3);
  *(a9 + 81) = *v222;
  *(a9 + 84) = *&v222[3];
  *(a9 + 124) = *&v221[3];
  *(a9 + 121) = *v221;
  *(a9 + 161) = *v220;
  *(a9 + 164) = *&v220[3];
  *(a9 + 40) = a10;
  *(a9 + 200) = v107;
  *(a9 + 204) = *&v219[3];
  *(a9 + 201) = *v219;
  *(a9 + 208) = v99;
  *(a9 + 216) = v102;
  *(a9 + 224) = a13;
  *(a9 + 232) = a14;
  *(a9 + 240) = v96;
  v61 = *v218;
  *(a9 + 244) = *&v218[3];
  *(a9 + 241) = v61;
  *(a9 + 248) = v97;
  *(a9 + 256) = v100;
  *(a9 + 264) = a15;
  *(a9 + 272) = a16;
  *(a9 + 280) = v98;
  v62 = *v217;
  *(a9 + 284) = *&v217[3];
  *(a9 + 281) = v62;
  *(a9 + 288) = v90;
  *(a9 + 296) = v92;
  *(a9 + 304) = a17;
  *(a9 + 312) = a18;
  *(a9 + 320) = v91;
  v63 = *v216;
  *(a9 + 324) = *&v216[3];
  *(a9 + 321) = v63;
  *(a9 + 328) = v83;
  *(a9 + 336) = v85;
  *(a9 + 344) = a19;
  *(a9 + 352) = a20;
  *(a9 + 360) = v84;
  v64 = *v215;
  *(a9 + 364) = *&v215[3];
  *(a9 + 361) = v64;
  *(a9 + 368) = a21;
  *(a9 + 376) = a22 & 1;
  *(a9 + 377) = a23;
  v65 = v213;
  *(a9 + 382) = v214;
  *(a9 + 378) = v65;
  *(a9 + 384) = v78;
  *(a9 + 392) = v82;
  *(a9 + 400) = a24;
  *(a9 + 408) = a25;
  *(a9 + 416) = v79;
  return result;
}

unint64_t sub_2141C1688(char a1)
{
  result = 0x546C656E6E616863;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
    case 3:
    case 7:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
    case 8:
    case 11:
      result = 0xD000000000000012;
      break;
    case 6:
      return result;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_2141C17E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214372140(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141C1810(uint64_t a1)
{
  v2 = sub_214301A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141C184C(uint64_t a1)
{
  v2 = sub_214301A98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141C1888@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D98, &qword_2146F5440);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v83 - v7;
  v9 = a1[3];
  v157 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_214301A98();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v157);
  }

  v156 = v6;
  v155 = a2;
  LOBYTE(v159) = 0;
  v10 = sub_2146DA168();
  v12 = v11;
  v154 = v10;
  LOBYTE(v159) = 1;
  sub_2146DA188();
  v153 = v12;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v158[0]) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v15 = v159;
  v16 = v160;
  LOBYTE(v158[0]) = 3;
  sub_2146DA1C8();
  v151 = v15;
  v17 = v159;
  v152 = v160;
  LOBYTE(v158[0]) = 4;
  sub_2146DA1C8();
  v149 = v17;
  v18 = v159;
  v150 = v160;
  LOBYTE(v158[0]) = 5;
  sub_2146DA1C8();
  v147 = v18;
  v19 = v159;
  v148 = v160;
  LOBYTE(v158[0]) = 6;
  sub_2146DA1C8();
  v145 = v159;
  v146 = v16;
  v21 = v160;
  LOBYTE(v158[0]) = 7;
  sub_2146DA1C8();
  v143 = v19;
  v144 = v21;
  v142 = v159;
  v22 = v160;
  LOBYTE(v158[0]) = 8;
  sub_2146DA1C8();
  v141 = v22;
  v23 = v159;
  v140 = v160;
  LOBYTE(v158[0]) = 9;
  v24 = v5;
  sub_2146DA1C8();
  v138 = v159;
  v139 = v160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v158[0]) = 10;
  sub_2142E35EC();
  sub_2146DA1C8();
  v136 = v159;
  v137 = v160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v158[0]) = 11;
  sub_2142E1378();
  sub_2146DA1C8();
  v135 = v159;
  v244 = 12;
  sub_2146DA1C8();
  v83 = v245;
  v85 = v246;
  sub_21448E838(&v159);
  v134 = v159;
  v25 = v160;
  v84 = v161;
  v26 = v162;
  v27 = v163;
  sub_21448E974(v158);
  v128 = v158[0];
  v129 = v158[1];
  v130 = v158[3];
  v131 = v158[2];
  v127 = LOBYTE(v158[4]);
  sub_21448E9B0(&v238);
  v122 = v238;
  v126 = v240;
  v124 = v239;
  v125 = v241;
  v123 = v242;
  sub_21448E9EC(v236);
  v117 = v236[0];
  v121 = v236[2];
  v119 = v236[1];
  v120 = v236[3];
  v118 = v237;
  sub_21448EA28(v234);
  v112 = v234[0];
  v116 = v234[2];
  v114 = v234[1];
  v115 = v234[3];
  v113 = v235;
  sub_21448EA64(v232);
  v107 = v232[0];
  v111 = v232[2];
  v109 = v232[1];
  v110 = v232[3];
  v108 = v233;
  sub_21448EAA0(v230);
  v102 = v230[0];
  v106 = v230[2];
  v104 = v230[1];
  v105 = v230[3];
  v103 = v231;
  sub_21448EBFC(v228);
  v97 = v228[0];
  v101 = v228[2];
  v99 = v228[1];
  v100 = v228[3];
  v98 = v229;
  sub_21448ED58(v226);
  v92 = v226[0];
  v95 = v226[2];
  v96 = v226[1];
  v94 = v226[3];
  v93 = v227;
  sub_21448EEAC(v224);
  v91 = v224[1];
  v87 = v224[2];
  v88 = v224[3];
  v89 = v224[0];
  v90 = v225;
  v243 = v137;
  v158[0] = v154;
  v158[1] = v153;
  v86 = v27;
  LOBYTE(v238) = v27;
  v159 = 0xD000000000000025;
  v160 = 0x800000021478FD00;
  v161 = 0xD00000000000001CLL;
  v132 = 0x800000021478A360;
  v162 = 0x800000021478A360;
  v28 = v26;

  v133 = v25;
  v29 = v134(v158, &v238, &v159);
  if (v29)
  {
    v30 = v132;

    v158[0] = v151;
    v158[1] = v146;
    LOBYTE(v238) = v127;
    v159 = 0xD000000000000028;
    v160 = 0x800000021478FD30;
    v161 = 0xD00000000000001CLL;
    v162 = v30;

    sub_213FDC9D0(v131, v130);
    if (v128(v158, &v238, &v159))
    {
      v32 = v130;
      v31 = v131;
      sub_213FDC6D0(v131, v130);
      v33 = v132;

      sub_213FDC6D0(v31, v32);
      v158[0] = v149;
      v158[1] = v152;
      LOBYTE(v238) = v123;
      v159 = 0xD000000000000028;
      v160 = 0x800000021478FD60;
      v161 = 0xD00000000000001CLL;
      v162 = v33;

      sub_213FDC9D0(v126, v125);
      if (v122(v158, &v238, &v159))
      {
        v35 = v125;
        v34 = v126;
        sub_213FDC6D0(v126, v125);
        v36 = v132;

        sub_213FDC6D0(v34, v35);
        v158[0] = v147;
        v158[1] = v150;
        LOBYTE(v238) = v118;
        v159 = 0xD000000000000025;
        v160 = 0x800000021478FD90;
        v161 = 0xD00000000000001CLL;
        v162 = v36;

        sub_213FDC9D0(v121, v120);
        if (v117(v158, &v238, &v159))
        {
          v38 = v120;
          v37 = v121;
          sub_213FDC6D0(v121, v120);
          v39 = v132;

          sub_213FDC6D0(v37, v38);
          v158[0] = v143;
          v158[1] = v148;
          LOBYTE(v238) = v113;
          v159 = 0xD000000000000026;
          v160 = 0x800000021478FDC0;
          v161 = 0xD00000000000001CLL;
          v162 = v39;

          sub_213FDC9D0(v116, v115);
          if (v112(v158, &v238, &v159))
          {
            v41 = v115;
            v40 = v116;
            sub_213FDC6D0(v116, v115);
            v42 = v132;

            sub_213FDC6D0(v40, v41);
            v158[0] = v145;
            v158[1] = v144;
            LOBYTE(v238) = v108;
            v159 = 0xD000000000000020;
            v160 = 0x800000021478FDF0;
            v161 = 0xD00000000000001CLL;
            v162 = v42;

            sub_213FDC9D0(v111, v110);
            if (v107(v158, &v238, &v159))
            {
              v44 = v110;
              v43 = v111;
              sub_213FDC6D0(v111, v110);
              v45 = v132;

              sub_213FDC6D0(v43, v44);
              v158[0] = v142;
              v158[1] = v141;
              LOBYTE(v238) = v103;
              v159 = 0xD000000000000028;
              v160 = 0x800000021478FE20;
              v161 = 0xD00000000000001CLL;
              v162 = v45;

              sub_213FDC9D0(v106, v105);
              if (v102(v158, &v238, &v159))
              {
                v47 = v105;
                v46 = v106;
                sub_213FDC6D0(v106, v105);
                v48 = v132;

                sub_213FDC6D0(v46, v47);
                v158[0] = v23;
                v158[1] = v140;
                LOBYTE(v238) = v98;
                v159 = 0xD000000000000026;
                v160 = 0x800000021478FE50;
                v161 = 0xD00000000000001CLL;
                v162 = v48;

                sub_213FDC9D0(v101, v100);
                if (v97(v158, &v238, &v159))
                {
                  v65 = v100;
                  v64 = v101;
                  sub_213FDC6D0(v101, v100);
                  v66 = v132;

                  sub_213FDC6D0(v64, v65);
                  v158[0] = v138;
                  v158[1] = v139;
                  LOBYTE(v238) = v93;
                  v159 = 0xD00000000000002CLL;
                  v160 = 0x800000021478FE80;
                  v161 = 0xD00000000000001CLL;
                  v162 = v66;

                  sub_213FDC9D0(v95, v94);
                  if (v92(v158, &v238, &v159))
                  {
                    v70 = v94;
                    v69 = v95;
                    sub_213FDC6D0(v95, v94);
                    v71 = v132;

                    sub_213FDC6D0(v69, v70);
                    v238 = v83;
                    v239 = v85;
                    LOBYTE(v158[0]) = v90;
                    v159 = 0xD000000000000025;
                    v160 = 0x800000021478FEB0;
                    v161 = 0xD00000000000001CLL;
                    v162 = v71;

                    sub_213FDC9D0(v87, v88);
                    if (v89(&v238, v158, &v159))
                    {
                      v74 = v87;
                      v75 = v88;
                      sub_213FDC6D0(v87, v88);

                      (*(v156 + 8))(v8, v24);

                      sub_213FDC6D0(v74, v75);
                      HIDWORD(v158[20]) = *&v254[3];
                      *(&v158[20] + 1) = *v254;
                      HIDWORD(v158[25]) = *&v253[3];
                      *(&v158[25] + 1) = *v253;
                      *(&v158[30] + 1) = *v252;
                      *(&v158[35] + 1) = *v251;
                      *(&v158[40] + 1) = *v250;
                      *(&v158[45] + 1) = *v249;
                      *(&v158[47] + 2) = v247;
                      *(&v158[4] + 1) = v257[0];
                      HIDWORD(v158[4]) = *(v257 + 3);
                      *(&v158[10] + 1) = *v256;
                      HIDWORD(v158[10]) = *&v256[3];
                      *(&v158[15] + 1) = *v255;
                      HIDWORD(v158[15]) = *&v255[3];
                      HIDWORD(v158[30]) = *&v252[3];
                      HIDWORD(v158[35]) = *&v251[3];
                      HIDWORD(v158[40]) = *&v250[3];
                      HIDWORD(v158[45]) = *&v249[3];
                      HIWORD(v158[47]) = v248;
                      v158[0] = v134;
                      v158[1] = v133;
                      v158[2] = v154;
                      v158[3] = v153;
                      LOBYTE(v158[4]) = v86;
                      v158[5] = v14;
                      v158[6] = v128;
                      v158[7] = v129;
                      v158[8] = v151;
                      v76 = v146;
                      v158[9] = v146;
                      v77 = v127;
                      LOBYTE(v158[10]) = v127;
                      v158[11] = v122;
                      v158[12] = v124;
                      v158[13] = v149;
                      v78 = v152;
                      v158[14] = v152;
                      LOBYTE(v158[15]) = v123;
                      v158[16] = v117;
                      v158[17] = v119;
                      v158[18] = v147;
                      v158[19] = v150;
                      LOBYTE(v158[20]) = v118;
                      v158[21] = v112;
                      v158[22] = v114;
                      v158[23] = v143;
                      v158[24] = v148;
                      v79 = v113;
                      LOBYTE(v158[25]) = v113;
                      v158[26] = v107;
                      v158[27] = v109;
                      v158[28] = v145;
                      v158[29] = v144;
                      LOBYTE(v158[30]) = v108;
                      v158[31] = v102;
                      v158[32] = v104;
                      v158[33] = v142;
                      v158[34] = v141;
                      LOBYTE(v158[35]) = v103;
                      v158[36] = v97;
                      v158[37] = v99;
                      v158[38] = v23;
                      v158[39] = v140;
                      LOBYTE(v158[40]) = v98;
                      v158[41] = v92;
                      v158[42] = v96;
                      v80 = v138;
                      v158[43] = v138;
                      v158[44] = v139;
                      LOBYTE(v158[45]) = v93;
                      v158[46] = v136;
                      LOBYTE(v158[47]) = v137;
                      BYTE1(v158[47]) = v135;
                      v158[48] = v89;
                      v158[49] = v91;
                      v158[50] = v83;
                      v158[51] = v85;
                      LOBYTE(v158[52]) = v90;
                      memcpy(v155, v158, 0x1A1uLL);
                      sub_214301AEC(v158, &v159);
                      __swift_destroy_boxed_opaque_existential_1(v157);
                      v159 = v134;
                      v160 = v133;
                      v161 = v154;
                      v162 = v153;
                      v163 = v86;
                      v166 = v128;
                      v167 = v129;
                      v168 = v151;
                      v169 = v76;
                      v170 = v77;
                      v172 = v122;
                      v173 = v124;
                      v174 = v149;
                      v175 = v78;
                      v176 = v123;
                      v178 = v117;
                      v179 = v119;
                      v180 = v147;
                      v181 = v150;
                      v182 = v118;
                      v184 = v112;
                      v185 = v114;
                      v186 = v143;
                      v187 = v148;
                      v188 = v79;
                      *v164 = v257[0];
                      *&v164[3] = *(v257 + 3);
                      *v171 = *v256;
                      *&v171[3] = *&v256[3];
                      *v177 = *v255;
                      *&v177[3] = *&v255[3];
                      *&v183[3] = *&v254[3];
                      *v183 = *v254;
                      *&v189[3] = *&v253[3];
                      *v189 = *v253;
                      v165 = v14;
                      v190 = v107;
                      v191 = v109;
                      v192 = v145;
                      v193 = v144;
                      v194 = v108;
                      *v195 = *v252;
                      *&v195[3] = *&v252[3];
                      v196 = v102;
                      v197 = v104;
                      v198 = v142;
                      v199 = v141;
                      v200 = v103;
                      *v201 = *v251;
                      *&v201[3] = *&v251[3];
                      v202 = v97;
                      v203 = v99;
                      v204 = v23;
                      v205 = v140;
                      v206 = v98;
                      *v207 = *v250;
                      *&v207[3] = *&v250[3];
                      v208 = v92;
                      v209 = v96;
                      v210 = v80;
                      v211 = v139;
                      v212 = v93;
                      *v213 = *v249;
                      *&v213[3] = *&v249[3];
                      v214 = v136;
                      v215 = v137;
                      v216 = v135;
                      v217 = v247;
                      v218 = v248;
                      v219 = v89;
                      v220 = v91;
                      v221 = v83;
                      v51 = v85;
                      goto LABEL_14;
                    }

                    sub_214031C4C();
                    swift_allocError();
                    *v81 = 0xD000000000000025;
                    v81[1] = 0x800000021478FEB0;
                    v82 = v132;
                    v81[2] = 0xD00000000000001CLL;
                    v81[3] = v82;
                    swift_willThrow();

                    (*(v156 + 8))(v8, v24);

                    sub_213FDC6D0(v87, v88);
                    v28 = v153;
                    v130 = v146;
                    v131 = v151;
                    v125 = v152;
                    v126 = v149;
                    v120 = v150;
                    v121 = v147;
                    v115 = v148;
                    v116 = v143;
                    v110 = v144;
                    v111 = v145;
                    v105 = v141;
                    v106 = v142;
                    v100 = v140;
                    v101 = v23;
                    v94 = v139;
                    v95 = v138;
                  }

                  else
                  {
                    sub_214031C4C();
                    swift_allocError();
                    *v72 = 0xD00000000000002CLL;
                    v72[1] = 0x800000021478FE80;
                    v73 = v132;
                    v72[2] = 0xD00000000000001CLL;
                    v72[3] = v73;
                    swift_willThrow();

                    (*(v156 + 8))(v8, v24);

                    sub_213FDC6D0(v95, v94);
                    v28 = v153;
                    v130 = v146;
                    v131 = v151;
                    v125 = v152;
                    v126 = v149;
                    v120 = v150;
                    v121 = v147;
                    v115 = v148;
                    v116 = v143;
                    v110 = v144;
                    v111 = v145;
                    v105 = v141;
                    v106 = v142;
                    v100 = v140;
                    v101 = v23;
                  }
                }

                else
                {
                  sub_214031C4C();
                  swift_allocError();
                  *v67 = 0xD000000000000026;
                  v67[1] = 0x800000021478FE50;
                  v68 = v132;
                  v67[2] = 0xD00000000000001CLL;
                  v67[3] = v68;
                  swift_willThrow();

                  (*(v156 + 8))(v8, v24);

                  sub_213FDC6D0(v101, v100);
                  v28 = v153;
                  v130 = v146;
                  v131 = v151;
                  v125 = v152;
                  v126 = v149;
                  v120 = v150;
                  v121 = v147;
                  v115 = v148;
                  v116 = v143;
                  v110 = v144;
                  v111 = v145;
                  v105 = v141;
                  v106 = v142;
                }
              }

              else
              {
                sub_214031C4C();
                swift_allocError();
                *v62 = 0xD000000000000028;
                v62[1] = 0x800000021478FE20;
                v63 = v132;
                v62[2] = 0xD00000000000001CLL;
                v62[3] = v63;
                swift_willThrow();

                (*(v156 + 8))(v8, v24);

                sub_213FDC6D0(v106, v105);
                v28 = v153;
                v130 = v146;
                v131 = v151;
                v125 = v152;
                v126 = v149;
                v120 = v150;
                v121 = v147;
                v115 = v148;
                v116 = v143;
                v110 = v144;
                v111 = v145;
              }
            }

            else
            {
              sub_214031C4C();
              swift_allocError();
              *v60 = 0xD000000000000020;
              v60[1] = 0x800000021478FDF0;
              v61 = v132;
              v60[2] = 0xD00000000000001CLL;
              v60[3] = v61;
              swift_willThrow();

              (*(v156 + 8))(v8, v24);

              sub_213FDC6D0(v111, v110);
              v28 = v153;
              v130 = v146;
              v131 = v151;
              v125 = v152;
              v126 = v149;
              v120 = v150;
              v121 = v147;
              v115 = v148;
              v116 = v143;
            }
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v58 = 0xD000000000000026;
            v58[1] = 0x800000021478FDC0;
            v59 = v132;
            v58[2] = 0xD00000000000001CLL;
            v58[3] = v59;
            swift_willThrow();

            (*(v156 + 8))(v8, v24);

            sub_213FDC6D0(v116, v115);
            v28 = v153;
            v130 = v146;
            v131 = v151;
            v125 = v152;
            v126 = v149;
            v120 = v150;
            v121 = v147;
          }
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v56 = 0xD000000000000025;
          v56[1] = 0x800000021478FD90;
          v57 = v132;
          v56[2] = 0xD00000000000001CLL;
          v56[3] = v57;
          swift_willThrow();

          (*(v156 + 8))(v8, v24);

          sub_213FDC6D0(v121, v120);
          v28 = v153;
          v130 = v146;
          v131 = v151;
          v125 = v152;
          v126 = v149;
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v54 = 0xD000000000000028;
        v54[1] = 0x800000021478FD60;
        v55 = v132;
        v54[2] = 0xD00000000000001CLL;
        v54[3] = v55;
        swift_willThrow();

        (*(v156 + 8))(v8, v24);

        sub_213FDC6D0(v126, v125);
        v28 = v153;
        v130 = v146;
        v131 = v151;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v52 = 0xD000000000000028;
      v52[1] = 0x800000021478FD30;
      v53 = v132;
      v52[2] = 0xD00000000000001CLL;
      v52[3] = v53;
      swift_willThrow();

      (*(v156 + 8))(v8, v24);

      sub_213FDC6D0(v131, v130);
      v28 = v153;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v49 = 0xD000000000000025;
    v49[1] = 0x800000021478FD00;
    v50 = v132;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = v50;
    swift_willThrow();

    (*(v156 + 8))(v8, v24);

    v154 = v84;
  }

  __swift_destroy_boxed_opaque_existential_1(v157);
  v159 = v134;
  v160 = v133;
  v161 = v154;
  v162 = v28;
  v163 = v86;
  v166 = v128;
  v167 = v129;
  v168 = v131;
  v169 = v130;
  v170 = v127;
  v172 = v122;
  v173 = v124;
  v174 = v126;
  v175 = v125;
  v176 = v123;
  v178 = v117;
  v179 = v119;
  v180 = v121;
  v181 = v120;
  v182 = v118;
  v184 = v112;
  v185 = v114;
  v186 = v116;
  v187 = v115;
  *v164 = v257[0];
  *&v164[3] = *(v257 + 3);
  *v171 = *v256;
  *&v171[3] = *&v256[3];
  *&v177[3] = *&v255[3];
  *v177 = *v255;
  *v183 = *v254;
  *&v183[3] = *&v254[3];
  v165 = v14;
  v188 = v113;
  *&v189[3] = *&v253[3];
  *v189 = *v253;
  v190 = v107;
  v191 = v109;
  v192 = v111;
  v193 = v110;
  v194 = v108;
  *&v195[3] = *&v252[3];
  *v195 = *v252;
  v196 = v102;
  v197 = v104;
  v198 = v106;
  v199 = v105;
  v200 = v103;
  *v201 = *v251;
  *&v201[3] = *&v251[3];
  v202 = v97;
  v203 = v99;
  v204 = v101;
  v205 = v100;
  v206 = v98;
  *v207 = *v250;
  *&v207[3] = *&v250[3];
  v208 = v92;
  v209 = v96;
  v210 = v95;
  v211 = v94;
  v212 = v93;
  *v213 = *v249;
  *&v213[3] = *&v249[3];
  v214 = v136;
  v215 = v137;
  v216 = v135;
  v217 = v247;
  v218 = v248;
  v219 = v89;
  v220 = v91;
  v51 = v88;
  v221 = v87;
LABEL_14:
  v222 = v51;
  v223 = v90;
  return sub_214301A44(&v159);
}

uint64_t sub_2141C387C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908DA8, &qword_2146F5448);
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = *(v1 + 24);
  v8 = *(v1 + 64);
  v38 = *(v1 + 72);
  v39 = v8;
  v9 = *(v1 + 104);
  v36 = *(v1 + 112);
  v37 = v9;
  v10 = *(v1 + 144);
  v34 = *(v1 + 152);
  v35 = v10;
  v11 = *(v1 + 184);
  v32 = *(v1 + 192);
  v33 = v11;
  v12 = *(v1 + 224);
  v30 = *(v1 + 232);
  v31 = v12;
  v13 = *(v1 + 264);
  v28 = *(v1 + 272);
  v29 = v13;
  v14 = *(v1 + 304);
  v26 = *(v1 + 312);
  v27 = v14;
  v15 = *(v1 + 344);
  v24 = *(v1 + 352);
  v25 = v15;
  v23 = *(v1 + 368);
  v22 = *(v1 + 376);
  v21 = *(v1 + 377);
  v16 = *(v1 + 408);
  v19 = *(v1 + 400);
  v20 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301A98();
  sub_2146DAA28();
  if (!v7)
  {
    goto LABEL_14;
  }

  LOBYTE(v42) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v40 + 8))(v6, v4);
  }

  LOBYTE(v42) = 1;
  sub_2146DA348();
  if (v38 == 1 || (v42 = v39, v43 = v38, v41 = 2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v36 == 1) || (v42 = v37, v43 = v36, v41 = 3, sub_2146DA388(), v34 == 1) || (v42 = v35, v43 = v34, v41 = 4, sub_2146DA388(), v32 == 1) || (v42 = v33, v43 = v32, v41 = 5, sub_2146DA388(), v30 == 1) || (v42 = v31, v43 = v30, v41 = 6, sub_2146DA388(), v28 == 1) || (v42 = v29, v43 = v28, v41 = 7, sub_2146DA388(), v26 == 1) || (v42 = v27, v43 = v26, v41 = 8, sub_2146DA388(), v24 == 1) || (v42 = v25, v43 = v24, v41 = 9, sub_2146DA388(), v42 = v23, LOBYTE(v43) = v22, v41 = 10, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0), sub_2142E37F4(), sub_2146DA388(), LOBYTE(v42) = v21, v41 = 11, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0), sub_2142E1D30(), sub_2146DA388(), v20 == 1))
  {
LABEL_14:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v42 = v19;
    v43 = v20;
    v41 = 12;
    sub_2146DA388();
    return (*(v40 + 8))(v6, v4);
  }

  return result;
}

double sub_2141C3E88@<D0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char *x0_0@<X0>, uint64_t a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13)
{
  v63 = a7;
  *(&v39 + 1) = a5;
  *&v39 = a4;
  v36 = *a1;
  v15 = *x0_0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  *(v16 + 32) = sub_2142E0AD0();
  sub_2140433DC(v16, &v53);
  v17 = *(a10 + 80);
  *&v41[71] = *(a10 + 64);
  *&v41[87] = v17;
  *&v41[103] = *(a10 + 96);
  *&v41[119] = *(a10 + 112);
  v18 = *(a10 + 16);
  *&v41[7] = *a10;
  *&v41[23] = v18;
  v19 = *(a10 + 48);
  *&v41[39] = *(a10 + 32);
  *&v41[55] = v19;
  v60 = *&v41[64];
  v61 = *&v41[80];
  *v62 = *&v41[96];
  *&v62[15] = *&v41[111];
  v56 = *v41;
  v57 = *&v41[16];
  v58 = *&v41[32];
  v59 = *&v41[48];
  v20 = a11[3];
  *&v62[95] = a11[4];
  v21 = a11[2];
  *&v62[79] = v20;
  *&v62[63] = v21;
  v22 = *a11;
  *&v62[47] = a11[1];
  *&v62[31] = v22;

  sub_2140325F8(a9, v15, 0xD000000000000030, 0x800000021478FEE0, 0xD00000000000001CLL, 0x800000021478A360);

  if (v35)
  {
    v23 = v54;
    v24 = v55;

    *v50 = *&v62[80];
    *&v41[56] = v53;
    v48 = *&v62[48];
    v49 = *&v62[64];
    *&v50[15] = *&v62[95];
    v44 = v61;
    v45 = *v62;
    v46 = *&v62[16];
    v47 = *&v62[32];
    *&v41[97] = v57;
    *&v41[113] = v58;
    v42 = v59;
    v43 = v60;
    v41[0] = v36;
    *&v41[8] = a2;
    *&v41[16] = a3;
    *&v41[24] = v39;
    *&v41[40] = a6;
    *&v41[48] = v63;
    *&v41[72] = v23;
    v41[80] = v24;
    *&v41[81] = v56;
    v51 = a12;
    v52 = a13;
    sub_214301B48(v41);
  }

  else
  {
    v26 = v54;
    v27 = v55;

    v28 = *&v62[64];
    *(a8 + 257) = *&v62[80];
    *(a8 + 56) = v53;
    v29 = *&v62[32];
    *(a8 + 225) = *&v62[48];
    *(a8 + 241) = v28;
    *(a8 + 272) = *&v62[95];
    v30 = v60;
    *(a8 + 161) = v61;
    v31 = *&v62[16];
    *(a8 + 177) = *v62;
    *(a8 + 193) = v31;
    *(a8 + 209) = v29;
    v32 = v56;
    *(a8 + 97) = v57;
    result = *&v58;
    v33 = v59;
    *(a8 + 113) = v58;
    *(a8 + 129) = v33;
    *(a8 + 145) = v30;
    *a8 = v36;
    *(a8 + 8) = a2;
    *(a8 + 16) = a3;
    *(a8 + 24) = v39;
    v34 = v63;
    *(a8 + 40) = a6;
    *(a8 + 48) = v34;
    *(a8 + 72) = v26;
    *(a8 + 80) = v27;
    *(a8 + 81) = v32;
    *(a8 + 288) = a12;
    *(a8 + 296) = a13;
  }

  return result;
}

uint64_t sub_2141C41EC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      v5 = 0xD00000000000001DLL;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000015;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x436567617373656DLL;
    v2 = 0xD000000000000012;
    if (a1 != 7)
    {
      v2 = 0x7865546E69616C70;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000032;
    if (a1 == 4)
    {
      v3 = 0xD000000000000021;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2141C433C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214372554(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141C4364(uint64_t a1)
{
  v2 = sub_214301B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141C43A0(uint64_t a1)
{
  v2 = sub_214301B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141C43DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v114 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908DB0, &qword_2146F5450);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v41 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301B9C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v9 = sub_2146DA9F8();
  if (qword_27C903238 != -1)
  {
    swift_once();
  }

  v10 = sub_2146DA008();
  v11 = __swift_project_value_buffer(v10, qword_27CA19EC8);
  v12 = v5;
  if (*(v9 + 16))
  {
    v13 = sub_21408C508(v11);
    v14 = v4;
    if (v15)
    {
      sub_2140537E4(*(v9 + 56) + 32 * v13, &v54);

      if (swift_dynamicCast())
      {
        v16 = v53[0];
      }

      else
      {
        v16 = 2;
      }
    }

    else
    {

      v16 = 2;
    }
  }

  else
  {

    v16 = 2;
    v14 = v4;
  }

  v17 = v7;
  LOBYTE(v53[0]) = 0;
  sub_214091744();
  sub_2146DA1C8();
  v18 = v54;
  LOBYTE(v54) = 1;
  v19 = sub_2146DA168();
  v22 = v21;
  v51 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v53[0]) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v50 = v22;
  v49 = v18;
  v23 = v54;
  v24 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  LOBYTE(v53[0]) = 3;
  sub_2142E50D0();
  sub_2146DA1C8();
  v47 = v23;
  v48 = v24;
  v26 = v54;
  v25 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v53[0]) = 4;
  sub_2142E15CC();
  sub_2146DA1C8();
  v45 = v26;
  v46 = v25;
  v27 = v54;
  v99 = 6;
  sub_214301BF0();
  sub_2146DA1C8();
  v28 = v50;
  v44 = v27;
  v95 = v104;
  v96 = v105;
  v97 = v106;
  v98 = v107;
  v91 = v100;
  v92 = v101;
  v93 = v102;
  v94 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
  v85 = 7;
  sub_2142ECFA4();
  sub_2146DA1C8();
  v82 = v88;
  v83 = v89;
  v84 = v90;
  v80 = v86;
  v81 = v87;
  v79 = 8;
  v29 = sub_2146DA168();
  v42 = v30;
  v43 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2146E9BF0;
  sub_214091538(&v91, &v54);
  sub_213FB2E54(&v80, &v54, &qword_27C904FD8, &qword_2146F0C50);
  *(v31 + 32) = sub_2142E0AD0();
  sub_2140433DC(v31, &v54);
  v32 = v55;
  *&v78[71] = v95;
  *&v78[87] = v96;
  *&v78[103] = v97;
  *&v78[119] = v98;
  *&v78[7] = v91;
  *&v78[23] = v92;
  *&v78[39] = v93;
  *&v78[55] = v94;
  v110 = v82;
  v111 = v83;
  v112 = v84;
  v108 = v80;
  v109 = v81;
  v74 = v54;
  v75 = v55;
  v76 = v56;
  v77 = v57;
  v41[3] = v56;

  v41[4] = v32;

  v41[1] = "BlastDoor/Untrusted.swift";
  v41[2] = "ion.serviceIdentifier";
  sub_2140325F8(v44, v16, 0xD000000000000030, 0x800000021478FEE0, 0xD00000000000001CLL, 0x800000021478A360);

  sub_214091594(&v91);
  sub_213FB2DF4(&v80, &qword_27C904FD8, &qword_2146F0C50);
  (*(v12 + 8))(v17, v14);
  v33 = v74;
  v44 = v74;
  v34 = v75;
  v35 = v76;
  v36 = v77;

  v37 = v49;
  LOBYTE(v53[0]) = v49;
  *(v53 + 1) = v113[0];
  DWORD1(v53[0]) = *(v113 + 3);
  *(&v53[0] + 1) = v51;
  *&v53[1] = v28;
  *(&v53[1] + 1) = v47;
  *&v53[2] = v48;
  v38 = v45;
  *(&v53[2] + 1) = v45;
  *&v53[3] = v46;
  *(&v53[3] + 1) = v33;
  *&v53[4] = v34;
  v39 = v34;
  *(&v53[4] + 1) = v35;
  LOBYTE(v53[5]) = v36;
  *(&v53[8] + 1) = *&v78[48];
  *(&v53[7] + 1) = *&v78[32];
  *(&v53[6] + 1) = *&v78[16];
  *(&v53[5] + 1) = *v78;
  v53[12] = *&v78[111];
  v53[13] = v108;
  *(&v53[11] + 1) = *&v78[96];
  *(&v53[10] + 1) = *&v78[80];
  *(&v53[9] + 1) = *&v78[64];
  v53[16] = v111;
  v53[17] = v112;
  v53[14] = v109;
  v53[15] = v110;
  v40 = v42;
  *&v53[18] = v43;
  *(&v53[18] + 1) = v42;
  memcpy(v114, v53, 0x130uLL);
  sub_214301C44(v53, &v54);
  __swift_destroy_boxed_opaque_existential_1(v52);
  LOBYTE(v54) = v37;
  *(&v54 + 1) = v113[0];
  HIDWORD(v54) = *(v113 + 3);
  v55 = v51;
  v56 = v28;
  v57 = v47;
  v58 = v48;
  v59 = v38;
  v60 = v46;
  v61 = v44;
  v62 = v39;
  v63 = v35;
  v64 = v36;
  v68 = *&v78[48];
  v67 = *&v78[32];
  v66 = *&v78[16];
  v65 = *v78;
  *&v71[15] = *&v78[111];
  *&v71[31] = v108;
  *v71 = *&v78[96];
  v70 = *&v78[80];
  v69 = *&v78[64];
  *&v71[79] = v111;
  *&v71[95] = v112;
  *&v71[47] = v109;
  *&v71[63] = v110;
  v72 = v43;
  v73 = v40;
  return sub_214301B48(&v54);
}

uint64_t sub_2141C4DFC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908DC0, &qword_2146F5458);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v31 = *(v1 + 2);
  v32 = v8;
  v9 = *(v1 + 3);
  v29 = *(v1 + 4);
  v30 = v9;
  v10 = *(v1 + 5);
  v27 = *(v1 + 6);
  v28 = v10;
  v25 = *(v1 + 9);
  v11 = *(v1 + 168);
  v56 = *(v1 + 152);
  v57 = v11;
  v58 = *(v1 + 184);
  v59 = *(v1 + 25);
  v12 = *(v1 + 104);
  v52 = *(v1 + 88);
  v53 = v12;
  v13 = *(v1 + 136);
  v54 = *(v1 + 120);
  v55 = v13;
  v14 = *(v1 + 16);
  v62 = *(v1 + 15);
  v63 = v14;
  v64 = *(v1 + 17);
  v15 = *(v1 + 14);
  v60 = *(v1 + 13);
  v61 = v15;
  v16 = *(v1 + 37);
  v26 = *(v1 + 36);
  v24 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301B9C();
  sub_2146DAA28();
  LOBYTE(v44) = v7;
  v17 = v6;
  LOBYTE(v41[0]) = 0;
  sub_214091798();
  v18 = v65;
  sub_2146DA388();
  if (v18)
  {
    return (*(v4 + 8))(v17, v3);
  }

  v20 = v29;
  v19 = v30;
  v21 = v27;
  v22 = v28;
  LOBYTE(v44) = 1;
  sub_2146DA328();
  *&v44 = v19;
  *(&v44 + 1) = v20;
  LOBYTE(v41[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  *&v44 = v22;
  *(&v44 + 1) = v21;
  LOBYTE(v41[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  sub_2146DA388();
  if (v25)
  {
    *&v44 = v25;
    LOBYTE(v41[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v48 = v56;
    v49 = v57;
    v50 = v58;
    v51 = v59;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v43 = 6;
    sub_214091538(&v52, v41);
    sub_214301CA0();
    sub_2146DA388();
    v41[4] = v48;
    v41[5] = v49;
    v41[6] = v50;
    v42 = v51;
    v41[0] = v44;
    v41[1] = v45;
    v41[2] = v46;
    v41[3] = v47;
    sub_214091594(v41);
    v38 = v62;
    v39 = v63;
    v40 = v64;
    v36 = v60;
    v37 = v61;
    v35 = 7;
    sub_213FB2E54(&v60, v34, &qword_27C904FD8, &qword_2146F0C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
    sub_2142ED0D0();
    sub_2146DA388();
    v34[2] = v38;
    v34[3] = v39;
    v34[4] = v40;
    v34[0] = v36;
    v34[1] = v37;
    sub_213FB2DF4(v34, &qword_27C904FD8, &qword_2146F0C50);
    v33 = 8;
    sub_2146DA328();
    return (*(v4 + 8))(v17, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 sub_2141C534C@<Q0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *a9 = *a1;
  *(a9 + 1) = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  v10 = *(a8 + 80);
  *(a9 + 112) = *(a8 + 64);
  *(a9 + 128) = v10;
  *(a9 + 144) = *(a8 + 96);
  *(a9 + 160) = *(a8 + 112);
  v11 = *(a8 + 16);
  *(a9 + 48) = *a8;
  *(a9 + 64) = v11;
  result = *(a8 + 32);
  v13 = *(a8 + 48);
  *(a9 + 80) = result;
  *(a9 + 96) = v13;
  *(a9 + 161) = a10;
  return result;
}

uint64_t sub_2141C5398()
{
  v1 = *v0;
  v2 = 0x657079546D657469;
  v3 = 0x6E6F4370756F7267;
  if (v1 != 5)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x506567617373656DLL;
  if (v1 == 3)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001BLL;
  if (v1 == 1)
  {
    v5 = 0x79546E6F69746361;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2141C5490@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214372844(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141C54B8(uint64_t a1)
{
  v2 = sub_214301CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141C54F4(uint64_t a1)
{
  v2 = sub_214301CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141C5530@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908DC8, &qword_2146F5460);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301CF4();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v23) = 0;
    sub_214301D48();
    sub_2146DA1C8();
    v9 = v32;
    LOBYTE(v32) = 1;
    v10 = sub_2146DA1F8();
    LOBYTE(v32) = 2;
    v40 = sub_2146DA228();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908DE0, &qword_2146F5468);
    LOBYTE(v23) = 3;
    sub_214301D9C();
    sub_2146DA1C8();
    v20 = *(&v32 + 1);
    v21 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v23) = 4;
    sub_2142E12FC();
    sub_2146DA1C8();
    v19 = v32;
    v31 = 5;
    sub_214301E18();
    sub_2146DA1C8();
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v23 = v32;
    v24 = v33;
    v30 = v39;
    v25 = v34;
    v26 = v35;
    v22 = 6;
    v12 = sub_2146DA1F8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 1) = v10;
    v13 = v21;
    *(a2 + 8) = v40;
    *(a2 + 16) = v13;
    v14 = v19;
    *(a2 + 24) = v20;
    *(a2 + 32) = __PAIR128__(*(&v19 + 1), v14);
    v15 = v28;
    *(a2 + 112) = v27;
    *(a2 + 128) = v15;
    *(a2 + 144) = v29;
    *(a2 + 160) = v30;
    v16 = v24;
    *(a2 + 48) = v23;
    *(a2 + 64) = v16;
    v17 = v26;
    *(a2 + 80) = v25;
    *(a2 + 96) = v17;
    *(a2 + 161) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141C595C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908DF8, &qword_2146F5470);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - v5;
  v7 = *v1;
  v24 = v1[1];
  v8 = *(v1 + 1);
  v22 = *(v1 + 2);
  v23 = v8;
  v9 = *(v1 + 3);
  v20 = *(v1 + 4);
  v21 = v9;
  v19 = *(v1 + 5);
  v10 = *(v1 + 8);
  v41 = *(v1 + 7);
  v42 = v10;
  v43 = *(v1 + 9);
  v44 = v1[160];
  v11 = *(v1 + 4);
  v37 = *(v1 + 3);
  v38 = v11;
  v12 = *(v1 + 6);
  v39 = *(v1 + 5);
  v40 = v12;
  v18[3] = v1[161];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301CF4();
  sub_2146DAA28();
  LOBYTE(v29) = v7;
  LOBYTE(v26[0]) = 0;
  sub_214301E6C();
  v13 = v45;
  sub_2146DA388();
  if (!v13)
  {
    v14 = v22;
    v16 = v20;
    v15 = v21;
    LOBYTE(v29) = 1;
    sub_2146DA3B8();
    LOBYTE(v29) = 2;
    sub_2146DA3E8();
    *&v29 = v14;
    *(&v29 + 1) = v15;
    LOBYTE(v26[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908DE0, &qword_2146F5468);
    sub_214301EC0();
    sub_2146DA388();
    *&v29 = v16;
    *(&v29 + 1) = v19;
    LOBYTE(v26[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v33 = v41;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v29 = v37;
    v30 = v38;
    v31 = v39;
    v32 = v40;
    v28 = 5;
    sub_2142F236C(&v37, v26);
    sub_214301F3C();
    sub_2146DA388();
    v26[4] = v33;
    v26[5] = v34;
    v26[6] = v35;
    v27 = v36;
    v26[0] = v29;
    v26[1] = v30;
    v26[2] = v31;
    v26[3] = v32;
    sub_2142F22C4(v26);
    v25 = 6;
    sub_2146DA3B8();
  }

  return (*(v4 + 8))(v6, v3);
}

double sub_2141C5D5C@<D0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char *x0_0@<X0>, uint64_t a9, __int128 *a10, uint64_t a11, uint64_t a12)
{
  v52 = a7;
  v26 = *a1;
  v15 = *x0_0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  *(v16 + 32) = sub_2142E0AD0();
  sub_2140433DC(v16, &v32);
  v17 = *a10;
  *&v51[23] = a10[1];
  v18 = a10[3];
  *&v51[39] = a10[2];
  *&v51[55] = v18;
  *&v51[71] = a10[4];
  *&v51[7] = v17;
  v48 = v32;
  v49 = v33;
  v50 = v34;

  sub_2140325F8(a9, v15, 0xD000000000000029, 0x800000021478FF20, 0xD00000000000001CLL, 0x800000021478A360);

  v19 = v49;
  v20 = v50;

  if (v13)
  {
    v38 = v48;
    v43 = *&v51[32];
    v44 = *&v51[48];
    *v45 = *&v51[64];
    v41 = *v51;
    LOBYTE(v32) = v26;
    *(&v32 + 1) = a2;
    v33 = a3;
    v34 = a4;
    v35 = a5;
    v36 = a6;
    v37 = v52;
    v39 = v19;
    v40 = v20;
    v42 = *&v51[16];
    *&v45[15] = *&v51[79];
    v46 = a11;
    v47 = a12;
    sub_214301F90(&v32);
  }

  else
  {
    *(a8 + 56) = v48;
    v22 = *&v51[48];
    *(a8 + 113) = *&v51[32];
    *(a8 + 129) = v22;
    *(a8 + 145) = *&v51[64];
    result = *v51;
    v23 = *&v51[16];
    *(a8 + 81) = *v51;
    *a8 = v26;
    *(a8 + 8) = a2;
    *(a8 + 16) = a3;
    *(a8 + 24) = a4;
    *(a8 + 32) = a5;
    v24 = v52;
    *(a8 + 40) = a6;
    *(a8 + 48) = v24;
    *(a8 + 72) = v19;
    *(a8 + 80) = v20;
    v25 = *&v51[79];
    *(a8 + 97) = v23;
    *(a8 + 160) = v25;
    *(a8 + 168) = a11;
    *(a8 + 176) = a12;
  }

  return result;
}

unint64_t sub_2141C6018()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v4 = 0x7865546E69616C70;
    if (v1 == 6)
    {
      v4 = 0xD000000000000012;
    }

    v5 = 0xD000000000000032;
    if (v1 == 4)
    {
      v5 = 0xD000000000000021;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = 0xD00000000000001DLL;
    }

    else
    {
      v2 = 0xD000000000000016;
    }

    if (*v0 <= 1u)
    {
      return 0xD000000000000015;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2141C6134@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214372AB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141C615C(uint64_t a1)
{
  v2 = sub_214301FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141C6198(uint64_t a1)
{
  v2 = sub_214301FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141C61D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E18, &qword_2146F5478);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v48 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301FE4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v58 = a1;
  v59 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_2146DA9F8();
  if (qword_27C903238 != -1)
  {
    swift_once();
  }

  v9 = sub_2146DA008();
  v10 = __swift_project_value_buffer(v9, qword_27CA19EC8);
  v11 = v4;
  if (*(v8 + 16))
  {
    v12 = sub_21408C508(v10);
    v13 = v7;
    if (v14)
    {
      sub_2140537E4(*(v8 + 56) + 32 * v12, &v67);

      if (swift_dynamicCast())
      {
        v15 = v60;
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {

      v15 = 2;
    }
  }

  else
  {

    v15 = 2;
    v13 = v7;
  }

  LOBYTE(v60) = 0;
  sub_214302038();
  sub_2146DA1C8();
  v57 = v67;
  LOBYTE(v67) = 1;
  v16 = sub_2146DA168();
  v18 = v17;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v60) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v56 = v19;
  v21 = v67;
  v20 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  LOBYTE(v60) = 3;
  sub_2142E50D0();
  sub_2146DA1C8();
  v54 = v21;
  v55 = v20;
  v23 = v67;
  v22 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v60) = 4;
  sub_2142E15CC();
  sub_2146DA1C8();
  v53 = v23;
  v24 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
  v96 = 6;
  sub_2142ECFA4();
  sub_2146DA1C8();
  v52 = v24;
  v93 = v97[2];
  v94 = v97[3];
  v95 = v97[4];
  v91 = v97[0];
  v92 = v97[1];
  v90 = 7;
  v49 = sub_2146DA168();
  v50 = v26;
  v51 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2146E9BF0;
  sub_213FB2E54(&v91, &v67, &qword_27C904FD8, &qword_2146F0C50);
  *(v27 + 32) = sub_2142E0AD0();
  sub_2140433DC(v27, &v67);
  *&v89[23] = v92;
  *&v89[39] = v93;
  *&v89[55] = v94;
  *&v89[71] = v95;
  v28 = v68;
  *&v89[7] = v91;
  v85 = v67;
  v86 = v68;
  v87 = v69;
  v88 = v70;
  v48[2] = v69;

  v48[1] = v28;

  v48[0] = "ationIdentifiers";
  sub_2140325F8(v52, v15, 0xD000000000000029, 0x800000021478FF20, 0xD00000000000001CLL, 0x800000021478A360);
  v29 = (v59 + 8);

  sub_213FB2DF4(&v91, &qword_27C904FD8, &qword_2146F0C50);
  (*v29)(v13, v11);
  v30 = v85;
  v31 = v86;
  v59 = v85;
  v52 = v86;
  v32 = v87;
  v48[0] = v87;
  v33 = v88;

  LOBYTE(v60) = v57;
  *(&v60 + 1) = v98[0];
  DWORD1(v60) = *(v98 + 3);
  v34 = v55;
  *(&v60 + 1) = v56;
  *&v61 = v18;
  v35 = v53;
  *(&v61 + 1) = v54;
  *&v62 = v55;
  *(&v62 + 1) = v53;
  *&v63 = v51;
  *(&v63 + 1) = v30;
  *&v64 = v31;
  *(&v64 + 1) = v32;
  LOBYTE(v32) = v33;
  LOBYTE(v65[0]) = v33;
  *(v65 + 1) = *v89;
  *(&v65[1] + 1) = *&v89[16];
  *&v65[5] = *&v89[79];
  *(&v65[4] + 1) = *&v89[64];
  *(&v65[3] + 1) = *&v89[48];
  *(&v65[2] + 1) = *&v89[32];
  v37 = v49;
  v36 = v50;
  *(&v65[5] + 1) = v49;
  v66 = v50;
  v38 = v60;
  v39 = v61;
  v40 = v63;
  v41 = v99;
  *(v99 + 32) = v62;
  *(v41 + 48) = v40;
  *v41 = v38;
  *(v41 + 16) = v39;
  v42 = v64;
  v43 = v65[0];
  v44 = v65[2];
  *(v41 + 96) = v65[1];
  *(v41 + 112) = v44;
  *(v41 + 64) = v42;
  *(v41 + 80) = v43;
  v45 = v65[3];
  v46 = v65[4];
  v47 = v65[5];
  *(v41 + 176) = v36;
  *(v41 + 144) = v46;
  *(v41 + 160) = v47;
  *(v41 + 128) = v45;
  sub_21430208C(&v60, &v67);
  __swift_destroy_boxed_opaque_existential_1(v58);
  LOBYTE(v67) = v57;
  *(&v67 + 1) = v98[0];
  HIDWORD(v67) = *(v98 + 3);
  v68 = v56;
  v69 = v18;
  v70 = v54;
  v71 = v34;
  v72 = v35;
  v73 = v51;
  v74 = v59;
  v75 = v52;
  v76 = v48[0];
  v77 = v32;
  v78 = *v89;
  v79 = *&v89[16];
  *&v82[15] = *&v89[79];
  v83 = v37;
  *v82 = *&v89[64];
  v81 = *&v89[48];
  v80 = *&v89[32];
  v84 = v36;
  return sub_214301F90(&v67);
}

uint64_t sub_2141C6B04(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E30, &qword_2146F5480);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v32 = *(v1 + 2);
  v33 = v8;
  v9 = *(v1 + 3);
  v30 = *(v1 + 4);
  v31 = v9;
  v10 = *(v1 + 5);
  v28 = *(v1 + 6);
  v29 = v10;
  v11 = *(v1 + 9);
  v12 = *(v1 + 104);
  v13 = *(v1 + 136);
  v44 = *(v1 + 120);
  v45 = v13;
  v46 = *(v1 + 152);
  v42 = *(v1 + 88);
  v43 = v12;
  v14 = *(v1 + 21);
  v15 = *(v1 + 22);
  v26 = v11;
  v27 = v14;
  v16 = a1[3];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_214301FE4();
  sub_2146DAA28();
  LOBYTE(v37) = v7;
  LOBYTE(v35[0]) = 0;
  sub_2143020E8();
  v20 = v47;
  sub_2146DA388();
  if (v20)
  {
    return (*(v4 + 8))(v6, v19);
  }

  v21 = v30;
  v22 = v31;
  v23 = v29;
  v47 = v15;
  LOBYTE(v37) = 1;
  sub_2146DA328();
  *&v37 = v22;
  *(&v37 + 1) = v21;
  LOBYTE(v35[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  *&v37 = v23;
  *(&v37 + 1) = v28;
  LOBYTE(v35[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  sub_2146DA388();
  if (v26)
  {
    *&v37 = v26;
    LOBYTE(v35[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v39 = v44;
    v40 = v45;
    v41 = v46;
    v37 = v42;
    v38 = v43;
    v36 = 6;
    sub_213FB2E54(&v42, v35, &qword_27C904FD8, &qword_2146F0C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
    sub_2142ED0D0();
    sub_2146DA388();
    v35[2] = v39;
    v35[3] = v40;
    v35[4] = v41;
    v35[0] = v37;
    v35[1] = v38;
    sub_213FB2DF4(v35, &qword_27C904FD8, &qword_2146F0C50);
    v34 = 7;
    sub_2146DA328();
    return (*(v4 + 8))(0, v19);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t RCSFileInfo.init(with:fileDisposition:fileSize:fileName:contentType:url:untilDate:playingLengthInSeconds:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, unsigned __int8 a12)
{
  v122 = a5;
  v126 = a8;
  v127 = a7;
  v110 = a6;
  v111 = a4;
  v146 = a3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  MEMORY[0x28223BE20](v108);
  v109 = (&v108 - v15);
  v120 = *a1;
  LODWORD(v119) = *a2;
  v118 = type metadata accessor for RCSFileInfo(0);
  v16 = *(v118 + 40);
  v17 = sub_2146D8B08();
  v124 = *(v17 - 8);
  v125 = a10;
  v18 = *(v124 + 16);
  v123 = v17;
  v18(a9 + v16, a10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v128 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2146ED240;
  *(v20 + 16) = sub_21438F468;
  *(v20 + 24) = v21;
  *(inited + 32) = v20;
  sub_21404328C(inited, &v142);
  v117 = v143;
  v115 = v145;
  LODWORD(v116) = v144;
  sub_214673030(&v138);
  v113 = v140;
  v114 = v139;
  v112 = v141;
  v22 = swift_initStackObject();
  *(v22 + 16) = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214064194;
  *(v23 + 24) = 0;
  *(v22 + 32) = v23;
  sub_214042B80(v22, &v134);
  v24 = v135;
  v25 = v136;
  v26 = v137;
  v27 = swift_initStackObject();
  *(v27 + 16) = v128;
  v28 = sub_214069764(&unk_282654B80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v29 = swift_allocObject();
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v29 + 16) = sub_21438F524;
  *(v29 + 24) = v30;
  *(v27 + 32) = v29;
  v31 = v118;
  v32 = *(v118 + 36);
  sub_214042F80(v27, (a9 + v32));
  sub_214673150(&v129);
  v33 = v130;
  v34 = v131;
  v35 = v132;
  v36 = v133;
  *a9 = v120;
  *(a9 + 1) = v119;
  *(a9 + 8) = v142;
  *(a9 + 24) = v117;
  v37 = v115;
  *(a9 + 32) = v116;
  *(a9 + 33) = v37;
  *(a9 + 40) = v138;
  v38 = v113;
  *(a9 + 56) = v114;
  *(a9 + 64) = v38;
  *(a9 + 72) = v112;
  *(a9 + 80) = v134;
  *(a9 + 96) = v24;
  *(a9 + 104) = v25;
  *(a9 + 112) = v26;
  v39 = a9 + *(v31 + 44);
  *v39 = v129;
  *(v39 + 16) = v33;
  *(v39 + 24) = v34;
  *(v39 + 25) = v35;
  *(v39 + 26) = v36;
  v41 = *(a9 + 8);
  v40 = *(a9 + 16);
  v119 = *(a9 + 24);
  v42 = *(a9 + 33);
  LOBYTE(v129) = *(a9 + 32);
  *&v134 = v146;
  v120 = v42;
  LOBYTE(v142) = v42;
  *&v138 = 0xD000000000000014;
  *(&v138 + 1) = 0x800000021478FF50;
  v139 = 0xD00000000000001CLL;
  v140 = 0x800000021478A360;

  v43 = v121;
  v44 = v41(&v134, &v142, &v138);
  *&v128 = v43;
  if (v43)
  {

    (*(v124 + 8))(v125, v123);
    v45 = sub_2146D8958();
    (*(*(v45 - 8) + 8))(v126, v45);

LABEL_7:
    v57 = v129;

    *(a9 + 8) = v41;
    *(a9 + 16) = v40;
    *(a9 + 24) = v119;
    *(a9 + 32) = v57;
    *(a9 + 33) = v120;
    return sub_21432887C(a9, type metadata accessor for RCSFileInfo);
  }

  v121 = 0xD000000000000014;
  v116 = v39;
  v117 = v32;
  v118 = 0x800000021478A360;
  if ((v44 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v55 = v121;
    v55[1] = 0x800000021478FF50;
    v55[2] = 0xD00000000000001CLL;
    v55[3] = v118;
    swift_willThrow();
    (*(v124 + 8))(v125, v123);
    v56 = sub_2146D8958();
    (*(*(v56 - 8) + 8))(v126, v56);
    goto LABEL_7;
  }

  v46 = v118;

  *(a9 + 8) = v41;
  *(a9 + 16) = v40;
  *(a9 + 24) = v146;
  *(a9 + 32) = 0;
  *(a9 + 33) = v120;
  v48 = *(a9 + 40);
  v47 = *(a9 + 48);
  v50 = *(a9 + 56);
  v49 = *(a9 + 64);
  v51 = *(a9 + 72);
  v52 = v122;
  *&v134 = v111;
  *(&v134 + 1) = v122;
  v120 = v51;
  LOBYTE(v129) = v51;
  *&v138 = v121;
  *(&v138 + 1) = 0x800000021478FF70;
  v139 = 0xD00000000000001CLL;
  v140 = v46;

  v119 = v49;
  sub_213FDC9D0(v50, v49);
  v53 = v128;
  v146 = v48;
  v54 = v48(&v134, &v129, &v138);
  *&v128 = v53;
  if (v53)
  {

LABEL_14:

    (*(v124 + 8))(v125, v123);
    v74 = sub_2146D8958();
    (*(*(v74 - 8) + 8))(v126, v74);
    v75 = *(a9 + 56);
    v76 = *(a9 + 64);

    sub_213FDC6D0(v75, v76);
    *(a9 + 40) = v146;
    *(a9 + 48) = v47;
    v77 = v119;
    *(a9 + 56) = v50;
    *(a9 + 64) = v77;
    *(a9 + 72) = v120;
    return sub_21432887C(a9, type metadata accessor for RCSFileInfo);
  }

  v59 = v127;
  if ((v54 & 1) == 0)
  {
    sub_214031C4C();
    v71 = swift_allocError();
    *v72 = v121;
    v72[1] = 0x800000021478FF70;
    v73 = v118;
    v72[2] = 0xD00000000000001CLL;
    v72[3] = v73;
    *&v128 = v71;
    swift_willThrow();
    goto LABEL_14;
  }

  sub_213FDC6D0(v50, v119);
  v60 = v118;

  v61 = v52;
  v62 = *(a9 + 56);
  v63 = *(a9 + 64);

  sub_213FDC6D0(v62, v63);
  *(a9 + 40) = v146;
  *(a9 + 48) = v47;
  v64 = v110;
  *(a9 + 56) = v111;
  *(a9 + 64) = v61;
  *(a9 + 72) = v120;
  v66 = *(a9 + 80);
  v65 = *(a9 + 88);
  v67 = *(a9 + 104);
  v122 = *(a9 + 96);
  v68 = *(a9 + 112);
  *&v134 = v64;
  *(&v134 + 1) = v59;
  LODWORD(v146) = v68;
  LOBYTE(v129) = v68;
  *&v138 = 0xD000000000000017;
  *(&v138 + 1) = 0x800000021478FF90;
  v139 = 0xD00000000000001CLL;
  v140 = v60;

  v69 = v128;
  v70 = v66(&v134, &v129, &v138);
  *&v128 = v69;
  if (v69)
  {

LABEL_20:

    (*(v124 + 8))(v125, v123);
    v89 = sub_2146D8958();
    (*(*(v89 - 8) + 8))(v126, v89);

    *(a9 + 80) = v66;
    *(a9 + 88) = v65;
    *(a9 + 96) = v122;
    *(a9 + 104) = v67;
    *(a9 + 112) = v146;
    return sub_21432887C(a9, type metadata accessor for RCSFileInfo);
  }

  if ((v70 & 1) == 0)
  {
    sub_214031C4C();
    v87 = swift_allocError();
    *v88 = 0xD000000000000017;
    v88[1] = 0x800000021478FF90;
    v88[2] = 0xD00000000000001CLL;
    v88[3] = v118;
    *&v128 = v87;
    swift_willThrow();
    goto LABEL_20;
  }

  v78 = v118;

  *(a9 + 80) = v66;
  *(a9 + 88) = v65;
  v79 = v109;
  v80 = v127;
  *(a9 + 96) = v110;
  *(a9 + 104) = v80;
  *(a9 + 112) = v146;
  sub_213FB2E54(a9 + v117, v79, &unk_27C9131D0, &qword_2146EAA70);
  v81 = v108;
  v82 = *v79;
  LOBYTE(v134) = *(v79 + *(v108 + 32));
  *&v138 = 0x49656C6946534352;
  *(&v138 + 1) = 0xEF6C72752E6F666ELL;
  v139 = 0xD00000000000001CLL;
  v140 = v78;
  v83 = v126;
  v84 = v128;
  v85 = v82(v126, &v134, &v138);
  *&v128 = v84;
  if (v84)
  {
    (*(v124 + 8))(v125, v123);
    v86 = sub_2146D8958();
    (*(*(v86 - 8) + 8))(v83, v86);

LABEL_25:
    sub_21402EDB8(v79, a9 + v117, &unk_27C9131D0, &qword_2146EAA70);
    return sub_21432887C(a9, type metadata accessor for RCSFileInfo);
  }

  if ((v85 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v101 = 0x49656C6946534352;
    v101[1] = 0xEF6C72752E6F666ELL;
    v101[2] = 0xD00000000000001CLL;
    v101[3] = v78;
    swift_willThrow();
    (*(v124 + 8))(v125, v123);
    v102 = sub_2146D8958();
    (*(*(v102 - 8) + 8))(v83, v102);
    goto LABEL_25;
  }

  LODWORD(v146) = a12;
  v127 = a11;

  v90 = *(v81 + 28);
  sub_213FB2DF4(v79 + v90, &unk_27C9131A0, &unk_2146E9D10);
  v91 = sub_2146D8958();
  v92 = v78;
  v93 = v79;
  v94 = *(v91 - 8);
  (*(v94 + 16))(v93 + v90, v83, v91);
  (*(v94 + 56))(v93 + v90, 0, 1, v91);
  sub_21402EDB8(v93, a9 + v117, &unk_27C9131D0, &qword_2146EAA70);
  v95 = v116;
  v97 = *v116;
  v96 = *(v116 + 8);
  v121 = *(v116 + 16);
  v120 = *(v116 + 24);
  v98 = *(v116 + 26);
  LOBYTE(v129) = *(v116 + 25);
  *&v134 = v127;
  BYTE8(v134) = v146 & 1;
  LODWORD(v122) = v98;
  LOBYTE(v142) = v98;
  *&v138 = 0xD000000000000022;
  *(&v138 + 1) = 0x800000021478FFB0;
  v139 = 0xD00000000000001CLL;
  v140 = v92;

  v99 = v128;
  *&v128 = v97;
  v100 = v97(&v134, &v142, &v138);
  if (v99)
  {
    (*(v124 + 8))(v125, v123);
    (*(v94 + 8))(v126, v91);
  }

  else
  {
    v103 = v146;
    if (v100)
    {

      (*(v124 + 8))(v125, v123);
      (*(v94 + 8))(v126, v91);

      v104 = v127;
      *v95 = v128;
      *(v95 + 8) = v96;
      *(v95 + 16) = v104;
      *(v95 + 24) = v103 & 1;
      *(v95 + 25) = 0;
      *(v95 + 26) = v122;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v105 = 0xD000000000000022;
    v105[1] = 0x800000021478FFB0;
    v106 = v118;
    v105[2] = 0xD00000000000001CLL;
    v105[3] = v106;
    swift_willThrow();
    (*(v124 + 8))(v125, v123);
    (*(v94 + 8))(v126, v91);
  }

  v107 = v129;

  *v95 = v128;
  *(v95 + 8) = v96;
  *(v95 + 16) = v121;
  *(v95 + 24) = v120;
  *(v95 + 25) = v107;
  *(v95 + 26) = v122;
  return sub_21432887C(a9, type metadata accessor for RCSFileInfo);
}

unint64_t sub_2141C7D24()
{
  v1 = *v0;
  v2 = 0x65707954656C6966;
  v3 = 0x7461446C69746E75;
  if (v1 != 6)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0x54746E65746E6F63;
  if (v1 != 4)
  {
    v4 = 7107189;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x657A6953656C6966;
  if (v1 != 2)
  {
    v5 = 0x656D614E656C6966;
  }

  if (*v0)
  {
    v2 = 0x70736944656C6966;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2141C7E34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214372D4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141C7E5C(uint64_t a1)
{
  v2 = sub_21430213C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141C7E98(uint64_t a1)
{
  v2 = sub_21430213C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RCSFileInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  MEMORY[0x28223BE20](v115);
  v116 = &v91[-v3];
  v120 = sub_2146D8B08();
  v117 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v119 = &v91[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v121 = sub_2146D8958();
  v118 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v6 = &v91[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E40, &qword_2146F5488);
  v122 = *(v7 - 8);
  v123 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v91[-v8];
  v10 = type metadata accessor for RCSFileInfo(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v91[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430213C();
  v13 = v141;
  sub_2146DAA08();
  if (v13)
  {
    v14 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  v113 = v6;
  v141 = a1;
  v15 = v122;
  v112 = v12;
  LOBYTE(v129) = 0;
  sub_214302190();
  sub_2146DA1C8();
  v16 = v133;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E58, &qword_2146F5490);
  LOBYTE(v129) = 1;
  sub_2143021E4();
  sub_2146DA1C8();
  LODWORD(v111) = v16;
  v17 = v133;
  LOBYTE(v133) = 2;
  v18 = sub_2146DA1A8();
  LODWORD(v109) = v17;
  v110 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v129) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v20 = *(&v133 + 1);
  v108 = v133;
  LOBYTE(v133) = 4;
  *&v106 = sub_2146DA168();
  *(&v106 + 1) = v21;
  v107 = v20;
  LOBYTE(v133) = 5;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_2146DA1C8();
  LOBYTE(v133) = 6;
  sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v129) = 7;
  sub_2142E11FC();
  sub_2146DA1C8();
  v93 = v133;
  v92 = BYTE8(v133);
  v98 = v10;
  (*(v117 + 16))(&v112[*(v10 + 40)], v119, v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v105 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2146ED240;
  *(v23 + 16) = sub_21438F468;
  *(v23 + 24) = v24;
  *(inited + 32) = v23;
  sub_21404328C(inited, &v137);
  v104 = v138;
  LODWORD(v103) = v139;
  LODWORD(v102) = v140;
  sub_214673030(&v133);
  v100 = v135;
  v101 = v134;
  v99 = v136;
  v25 = swift_initStackObject();
  *(v25 + 16) = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_214064194;
  *(v26 + 24) = 0;
  *(v25 + 32) = v26;
  sub_214042B80(v25, &v129);
  v96 = v131;
  v97 = v130;
  v95 = v132;
  v27 = swift_initStackObject();
  *(v27 + 16) = v105;
  v28 = sub_214069764(&unk_2826538B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v29 = swift_allocObject();
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v29 + 16) = sub_21438F524;
  *(v29 + 24) = v30;
  *(v27 + 32) = v29;
  v31 = v98;
  v94 = *(v98 + 36);
  v32 = v112;
  sub_214042F80(v27, &v112[v94]);
  sub_214673150(&v124);
  v33 = v125;
  v34 = v126;
  v35 = v127;
  v36 = v128;
  *v32 = v111;
  *(v32 + 1) = v109;
  *(v32 + 8) = v137;
  *(v32 + 24) = v104;
  *(v32 + 32) = v103;
  *(v32 + 33) = v102;
  *(v32 + 40) = v133;
  v37 = v100;
  *(v32 + 56) = v101;
  *(v32 + 64) = v37;
  *(v32 + 72) = v99;
  *(v32 + 80) = v129;
  v38 = v96;
  *(v32 + 96) = v97;
  *(v32 + 104) = v38;
  *(v32 + 112) = v95;
  v39 = v32 + *(v31 + 44);
  *v39 = v124;
  *(v39 + 16) = v33;
  *(v39 + 24) = v34;
  *(v39 + 25) = v35;
  v102 = v39;
  *(v39 + 26) = v36;
  v41 = *(v32 + 8);
  v40 = *(v32 + 16);
  v42 = *(v32 + 24);
  v43 = *(v32 + 33);
  LOBYTE(v124) = *(v32 + 32);
  *&v129 = v110;
  LODWORD(v111) = v43;
  LOBYTE(v137) = v43;
  v103 = 0xD000000000000014;
  v104 = v42;
  *&v133 = 0xD000000000000014;
  *(&v133 + 1) = 0x800000021478FF50;
  *&v105 = 0x800000021478FF50;
  v134 = 0xD00000000000001CLL;
  v135 = 0x800000021478A360;

  v109 = v41;
  v44 = v41(&v129, &v137, &v133);
  v45 = v105;
  v100 = v9;
  v101 = 0x800000021478A360;
  if (v44)
  {
    v46 = v101;

    v47 = v112;

    v48 = v110;
    *(v47 + 8) = v109;
    *(v47 + 16) = v40;
    *(v47 + 24) = v48;
    *(v47 + 32) = 0;
    *(v47 + 33) = v111;
    v50 = *(v47 + 40);
    v49 = *(v47 + 48);
    v51 = *(v47 + 56);
    v52 = *(v47 + 64);
    v53 = *(v47 + 72);
    *&v129 = v108;
    *(&v129 + 1) = v107;
    LODWORD(v110) = v53;
    LOBYTE(v124) = v53;
    *&v133 = v103;
    *(&v133 + 1) = 0x800000021478FF70;
    v134 = 0xD00000000000001CLL;
    v135 = v46;

    v109 = v51;
    *&v105 = v52;
    sub_213FDC9D0(v51, v52);
    v111 = v50;
    if (v50(&v129, &v124, &v133))
    {
      sub_213FDC6D0(v109, v105);
      v57 = v101;

      v58 = v112;
      v59 = *(v112 + 7);
      v60 = *(v112 + 8);

      sub_213FDC6D0(v59, v60);
      *(v58 + 40) = v111;
      *(v58 + 48) = v49;
      v61 = v107;
      *(v58 + 56) = v108;
      *(v58 + 64) = v61;
      *(v58 + 72) = v110;
      v63 = *(v58 + 80);
      v62 = *(v58 + 88);
      v64 = *(v58 + 104);
      v108 = *(v58 + 96);
      v109 = v64;
      v65 = *(v58 + 112);
      v129 = v106;
      LODWORD(v110) = v65;
      LOBYTE(v124) = v65;
      *&v133 = 0xD000000000000017;
      *(&v133 + 1) = 0x800000021478FF90;
      v134 = 0xD00000000000001CLL;
      v135 = v57;

      v111 = v63;
      if (v63(&v129, &v124, &v133))
      {
        v70 = v101;

        v71 = v112;

        *(v71 + 80) = v111;
        *(v71 + 88) = v62;
        v72 = *(&v106 + 1);
        *(v71 + 96) = v106;
        *(v71 + 104) = v72;
        *(v71 + 112) = v110;
        v73 = v116;
        sub_213FB2E54(v71 + v94, v116, &unk_27C9131D0, &qword_2146EAA70);
        v74 = *v73;
        LOBYTE(v129) = v73[*(v115 + 32)];
        *&v133 = 0x49656C6946534352;
        *(&v133 + 1) = 0xEF6C72752E6F666ELL;
        v134 = 0xD00000000000001CLL;
        v135 = v70;
        if (v74(v113, &v129, &v133))
        {
          v77 = v101;

          v78 = v116;
          v79 = *(v115 + 28);
          sub_213FB2DF4(&v116[v79], &unk_27C9131A0, &unk_2146E9D10);
          v80 = v118;
          v81 = v121;
          (*(v118 + 16))(&v78[v79], v113, v121);
          (*(v80 + 56))(&v78[v79], 0, 1, v81);
          sub_21402EDB8(v78, &v112[v94], &unk_27C9131D0, &qword_2146EAA70);
          v83 = *v102;
          v82 = *(v102 + 8);
          v115 = *(v102 + 16);
          LODWORD(v111) = *(v102 + 24);
          v84 = *(v102 + 26);
          LOBYTE(v124) = *(v102 + 25);
          *&v129 = v93;
          BYTE8(v129) = v92;
          LODWORD(v116) = v84;
          LOBYTE(v137) = v84;
          *&v133 = 0xD000000000000022;
          *(&v133 + 1) = 0x800000021478FFB0;
          v134 = 0xD00000000000001CLL;
          v135 = v77;

          if (v83(&v129, &v137, &v133))
          {

            (*(v117 + 8))(v119, v120);
            (*(v118 + 8))(v113, v121);
            (*(v15 + 8))(v100, v123);
            v86 = v102;

            *v86 = v83;
            *(v86 + 8) = v82;
            *(v86 + 16) = v93;
            *(v86 + 24) = v92;
            *(v86 + 25) = 0;
            *(v86 + 26) = v116;
            sub_214328704(v112, v114, type metadata accessor for RCSFileInfo);
            v14 = v141;
            return __swift_destroy_boxed_opaque_existential_1(v14);
          }

          sub_214031C4C();
          swift_allocError();
          *v87 = 0xD000000000000022;
          v87[1] = 0x800000021478FFB0;
          v88 = v101;
          v87[2] = 0xD00000000000001CLL;
          v87[3] = v88;
          swift_willThrow();
          (*(v117 + 8))(v119, v120);
          (*(v118 + 8))(v113, v121);
          (*(v15 + 8))(v100, v123);
          v89 = v124;
          v90 = v102;

          *v90 = v83;
          *(v90 + 8) = v82;
          *(v90 + 16) = v115;
          *(v90 + 24) = v111;
          *(v90 + 25) = v89;
          *(v90 + 26) = v116;
          v56 = v112;
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v85 = 0x49656C6946534352;
          v85[1] = 0xEF6C72752E6F666ELL;
          v85[2] = 0xD00000000000001CLL;
          v85[3] = v101;
          swift_willThrow();
          (*(v117 + 8))(v119, v120);
          (*(v118 + 8))(v113, v121);
          (*(v15 + 8))(v100, v123);
          v56 = v112;
          sub_21402EDB8(v116, &v112[v94], &unk_27C9131D0, &qword_2146EAA70);
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v75 = 0xD000000000000017;
        v75[1] = 0x800000021478FF90;
        v75[2] = 0xD00000000000001CLL;
        v75[3] = v101;
        swift_willThrow();

        (*(v117 + 8))(v119, v120);
        (*(v118 + 8))(v113, v121);
        (*(v15 + 8))(v100, v123);
        v56 = v112;

        *(v56 + 80) = v111;
        *(v56 + 88) = v62;
        v76 = v109;
        *(v56 + 96) = v108;
        *(v56 + 104) = v76;
        *(v56 + 112) = v110;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v66 = v103;
      v66[1] = 0x800000021478FF70;
      v66[2] = 0xD00000000000001CLL;
      v66[3] = v101;
      swift_willThrow();

      (*(v117 + 8))(v119, v120);
      (*(v118 + 8))(v113, v121);
      (*(v15 + 8))(v100, v123);
      v56 = v112;
      v67 = *(v112 + 7);
      v68 = *(v112 + 8);

      sub_213FDC6D0(v67, v68);
      *(v56 + 40) = v111;
      *(v56 + 48) = v49;
      v69 = v105;
      *(v56 + 56) = v109;
      *(v56 + 64) = v69;
      *(v56 + 72) = v110;
    }
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v54 = v103;
    v54[1] = v45;
    v54[2] = 0xD00000000000001CLL;
    v54[3] = v101;
    swift_willThrow();
    (*(v117 + 8))(v119, v120);
    (*(v118 + 8))(v113, v121);
    (*(v15 + 8))(v100, v123);
    v55 = v124;
    v56 = v112;

    *(v56 + 8) = v109;
    *(v56 + 16) = v40;
    *(v56 + 24) = v104;
    *(v56 + 32) = v55;
    *(v56 + 33) = v111;
  }

  __swift_destroy_boxed_opaque_existential_1(v141);
  return sub_21432887C(v56, type metadata accessor for RCSFileInfo);
}

uint64_t RCSFileInfo.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v29 - v5;
  v6 = sub_2146D8958();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E70, &qword_2146F5498);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430213C();
  sub_2146DAA28();
  LOBYTE(v35) = *v2;
  v37 = 0;
  sub_2143022BC();
  v13 = v34;
  sub_2146DA388();
  if (v13)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v34 = v8;
  v15 = v10;
  v16 = v33;
  LOBYTE(v35) = *(v2 + 1);
  v37 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E58, &qword_2146F5490);
  sub_214302310();
  sub_2146DA388();
  if ((*(v2 + 32) & 1) == 0)
  {
    LOBYTE(v35) = 2;
    sub_2146DA368();
    v17 = *(v2 + 64);
    if (v17 != 1)
    {
      v35 = *(v2 + 56);
      v36 = v17;
      v37 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v31 = v9;
      if (*(v2 + 104))
      {
        LOBYTE(v35) = 4;

        sub_2146DA328();

        v29 = type metadata accessor for RCSFileInfo(0);
        v30 = v2;
        v18 = v2 + *(v29 + 36);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
        v20 = v32;
        sub_213FB2E54(v18 + *(v19 + 28), v32, &unk_27C9131A0, &unk_2146E9D10);
        v21 = v16;
        if ((*(v16 + 48))(v20, 1, v6) == 1)
        {
          sub_213FB2DF4(v20, &unk_27C9131A0, &unk_2146E9D10);
        }

        else
        {
          v22 = *(v16 + 32);
          v23 = v34;
          v22(v34, v20, v6);
          LOBYTE(v35) = 5;
          sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
          v24 = v31;
          sub_2146DA388();
          (*(v21 + 8))(v23, v6);
          v25 = v29;
          LOBYTE(v35) = 6;
          sub_2146D8B08();
          sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
          v26 = v30;
          sub_2146DA388();
          v27 = v26 + *(v25 + 44);
          if ((*(v27 + 25) & 1) == 0)
          {
            v28 = *(v27 + 24);
            v35 = *(v27 + 16);
            LOBYTE(v36) = v28 & 1;
            v37 = 7;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
            sub_2142E1C30();
            sub_2146DA388();
            return (*(v15 + 8))(v12, v24);
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141C9844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2143287C0(a1, a5, type metadata accessor for RCSFileInfo);
  v8 = type metadata accessor for RCSFileTransferInfo(0);
  v23 = a2;
  sub_213FB2E54(a2, a5 + *(v8 + 20), &qword_27C908E90, &qword_2146F54A0);
  sub_21439DFD0(&v27);
  v10 = v27;
  v9 = v28;
  v11 = v29;
  v12 = v30;
  v13 = v31;
  v14 = a5 + *(v8 + 24);
  *v14 = v27;
  *(v14 + 8) = v9;
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  v26[0] = a3;
  v32 = v13;
  v33 = v13;
  v26[1] = a4;
  v27 = 0xD00000000000001FLL;
  v28 = 0x800000021478FFE0;
  v29 = 0xD00000000000001CLL;
  v30 = 0x800000021478A360;

  sub_213FDC9D0(v11, v12);
  v15 = v10(v26, &v33, &v27);
  if (v24)
  {
  }

  else
  {
    if (v15)
    {
      sub_213FDC6D0(v11, v12);

      sub_213FB2DF4(v23, &qword_27C908E90, &qword_2146F54A0);
      sub_21432887C(a1, type metadata accessor for RCSFileInfo);
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);

      result = sub_213FDC6D0(v16, v17);
      *v14 = v10;
      *(v14 + 8) = v9;
      *(v14 + 16) = a3;
      *(v14 + 24) = a4;
      *(v14 + 32) = v32;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD00000000000001FLL;
    v19[1] = 0x800000021478FFE0;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(v23, &qword_27C908E90, &qword_2146F54A0);
  sub_21432887C(a1, type metadata accessor for RCSFileInfo);
  v20 = *(v14 + 16);
  v21 = *(v14 + 24);

  sub_213FDC6D0(v20, v21);
  *v14 = v10;
  *(v14 + 8) = v9;
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = v32;
  return sub_21432887C(a5, type metadata accessor for RCSFileTransferInfo);
}

uint64_t sub_2141C9AF4()
{
  v1 = 0x69616E626D756874;
  if (*v0 != 1)
  {
    v1 = 0x49656C6946736C6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F666E49656C6966;
  }
}

uint64_t sub_2141C9B64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214372FFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141C9B8C(uint64_t a1)
{
  v2 = sub_2143023E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141C9BC8(uint64_t a1)
{
  v2 = sub_2143023E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141C9C04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E90, &qword_2146F54A0);
  MEMORY[0x28223BE20](v47);
  v4 = &v38 - v3;
  v49 = type metadata accessor for RCSFileInfo(0);
  MEMORY[0x28223BE20](v49);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E98, &qword_2146F54A8);
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for RCSFileTransferInfo(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2143023E8();
  v14 = v50;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v50 = v4;
  v45 = v12;
  v15 = v48;
  LOBYTE(v53) = 0;
  sub_214328930(&qword_27C908EA8, type metadata accessor for RCSFileInfo, protocol conformance descriptor for RCSFileInfo);
  sub_2146DA1C8();
  v16 = v7;
  LOBYTE(v53) = 1;
  sub_21430243C();
  v17 = v50;
  sub_2146DA1C8();
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v52[0]) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v43 = v6;
  v44 = v16;
  v47 = v53;
  v49 = v54;
  v20 = v45;
  sub_2143287C0(v6, v45, type metadata accessor for RCSFileInfo);
  sub_213FB2E54(v17, v20 + *(v10 + 20), &qword_27C908E90, &qword_2146F54A0);
  sub_21439DFD0(&v53);
  v22 = v53;
  v21 = v54;
  v23 = v55;
  v24 = v56;
  v25 = v57;
  v26 = v20 + *(v10 + 24);
  *v26 = v53;
  *(v26 + 8) = v21;
  *(v26 + 16) = v23;
  *(v26 + 24) = v24;
  *(v26 + 32) = v25;
  v52[0] = v47;
  v52[1] = v49;
  v58 = v25;
  v59 = v25;
  v53 = 0xD00000000000001FLL;
  v54 = 0x800000021478FFE0;
  v55 = 0xD00000000000001CLL;
  v56 = 0x800000021478A360;

  v40 = v24;
  v41 = v23;
  sub_213FDC9D0(v23, v24);
  v39 = v21;
  v42 = v22;
  v27 = v22(v52, &v59, &v53);
  v28 = v47;
  if (v27)
  {
    sub_213FDC6D0(v41, v40);

    sub_213FB2DF4(v50, &qword_27C908E90, &qword_2146F54A0);
    sub_21432887C(v43, type metadata accessor for RCSFileInfo);
    (*(v18 + 8))(v9, v44);
    v29 = *(v26 + 16);
    v30 = *(v26 + 24);

    sub_213FDC6D0(v29, v30);
    v31 = v39;
    *v26 = v42;
    *(v26 + 8) = v31;
    v32 = v49;
    *(v26 + 16) = v28;
    *(v26 + 24) = v32;
    *(v26 + 32) = v58;
    sub_214328704(v45, v46, type metadata accessor for RCSFileTransferInfo);
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  sub_214031C4C();
  swift_allocError();
  *v33 = 0xD00000000000001FLL;
  v33[1] = 0x800000021478FFE0;
  v33[2] = 0xD00000000000001CLL;
  v33[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v50, &qword_27C908E90, &qword_2146F54A0);
  sub_21432887C(v43, type metadata accessor for RCSFileInfo);
  (*(v18 + 8))(v9, v44);
  v34 = *(v26 + 16);
  v35 = *(v26 + 24);

  sub_213FDC6D0(v34, v35);
  v36 = v39;
  *v26 = v42;
  *(v26 + 8) = v36;
  v37 = v40;
  *(v26 + 16) = v41;
  *(v26 + 24) = v37;
  *(v26 + 32) = v58;
  __swift_destroy_boxed_opaque_existential_1(v51);
  return sub_21432887C(v45, type metadata accessor for RCSFileTransferInfo);
}

uint64_t sub_2141CA244(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908EB8, &qword_2146F54B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143023E8();
  sub_2146DAA28();
  LOBYTE(v14) = 0;
  type metadata accessor for RCSFileInfo(0);
  sub_214328930(&qword_27C908EC0, type metadata accessor for RCSFileInfo, protocol conformance descriptor for RCSFileInfo);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for RCSFileTransferInfo(0);
  LOBYTE(v14) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E90, &qword_2146F54A0);
  sub_2143024F0();
  sub_2146DA388();
  v10 = v3 + *(v9 + 24);
  v11 = *(v10 + 24);
  if (v11 != 1)
  {
    v14 = *(v10 + 16);
    v15 = v11;
    v13[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v6 + 8))(v8, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141CA540()
{
  if (*v0)
  {
    return 0x656D69746566696CLL;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_2141CA580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001ALL && 0x8000000214795B40 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656D69746566696CLL && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2141CA668(uint64_t a1)
{
  v2 = sub_2143025A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141CA6A4(uint64_t a1)
{
  v2 = sub_2143025A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141CA6E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v20 = a2;
  v4 = sub_2146D8B08();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908ED0, &qword_2146F54B8);
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143025A4();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v23 = 0;
    v11 = v21;
    v12 = sub_2146DA168();
    v14 = v13;
    v18 = v12;
    v22 = 1;
    sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v11);
    v15 = type metadata accessor for BootstrappingInfo(0);
    v16 = v20;
    (*(v19 + 32))(v20 + *(v15 + 20), v6, v4);
    *v16 = v18;
    v16[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141CA99C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908EE0, &qword_2146F54C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143025A4();
  sub_2146DAA28();
  v8[15] = 0;
  sub_2146DA328();
  if (!v1)
  {
    type metadata accessor for BootstrappingInfo(0);
    v8[14] = 1;
    sub_2146D8B08();
    sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_2141CAB84@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v17 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[2] = sub_213FDC8D0;
  v8[3] = 0;
  v8[4] = 1;
  v8[5] = sub_21403C354;
  v8[6] = 0;
  *(v7 + 16) = sub_21438F670;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042CD0(inited, &v14);
  v9 = v15;

  sub_213FDCA18(v9.n128_i64[0], v9.n128_u64[1]);
  sub_214032024(a1, a2, 2, 0xD000000000000013, 0x8000000214790000, 0xD00000000000001CLL, 0x800000021478A360);

  sub_213FDC6BC(v9.n128_i64[0], v9.n128_u64[1]);
  sub_213FB54FC(a1, a2);

  if (v3)
  {
    v10 = v15;

    sub_213FDC6BC(v10.n128_i64[0], v10.n128_u64[1]);
  }

  else
  {
    v12 = v16;
    result = v15;
    v13 = v17;
    *v17 = v14;
    v13[1] = result;
    v13[2].n128_u8[0] = v12;
  }

  return result;
}

uint64_t sub_2141CAD74(uint64_t a1)
{
  v2 = sub_2143025F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141CADB0(uint64_t a1)
{
  v2 = sub_2143025F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141CADEC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908EE8, &qword_2146F54C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143025F8();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21406116C();
    sub_2146DA1C8();
    v19[0] = a2;
    v10 = *(&v22 + 1);
    v25 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146E9BF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
    v12 = swift_allocObject();
    v13 = swift_allocObject();
    v13[2] = sub_213FDC8D0;
    v13[3] = 0;
    v13[4] = 1;
    v13[5] = sub_21403C354;
    v13[6] = 0;
    *(v12 + 16) = sub_21438F670;
    *(v12 + 24) = v13;
    *(inited + 32) = v12;
    sub_214042CD0(inited, &v22);
    v14 = v23;
    v20 = *(&v23 + 1);
    v21 = v23;
    v19[1] = "RCSFileTransferInfo.mlsFileInfo";
    v19[2] = *(&v22 + 1);

    sub_213FDCA18(v14, *(&v14 + 1));
    v15 = v25;
    sub_214032024(v25, v10, 2, 0xD000000000000013, 0x8000000214790000, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v15, v10);
    (*(v6 + 8))(v8, v5);

    sub_213FDC6BC(v21, v20);
    v16 = v24;
    v17 = v23;
    v18 = v19[0];
    *v19[0] = v22;
    *(v18 + 16) = v17;
    *(v18 + 32) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.init(with:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for CPIMMessage(0);
  return sub_214328704(a2, a3 + *(v5 + 20), type metadata accessor for CPIMMessage.Content);
}

uint64_t sub_2141CB200()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x73726564616568;
  }
}

uint64_t sub_2141CB234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73726564616568 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2141CB310(uint64_t a1)
{
  v2 = sub_21430264C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141CB34C(uint64_t a1)
{
  v2 = sub_21430264C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for CPIMMessage.Content(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F00, &qword_2146F54D8);
  v7 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430264C();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v6;
    v12 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F10, &qword_2146F54E0);
    v20 = 0;
    sub_2143026A0();
    v13 = v18;
    sub_2146DA1C8();
    v16 = v21;
    v19 = 1;
    sub_214328930(&qword_27C908F28, type metadata accessor for CPIMMessage.Content, protocol conformance descriptor for CPIMMessage.Content);
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v13);
    v14 = type metadata accessor for CPIMMessage(0);
    sub_214328704(v11, v12 + *(v14 + 20), type metadata accessor for CPIMMessage.Content);
    *v12 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F30, &qword_2146F54E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430264C();
  sub_2146DAA28();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F10, &qword_2146F54E0);
  sub_214302754();
  sub_2146DA388();
  if (!v2)
  {
    type metadata accessor for CPIMMessage(0);
    v10[6] = 1;
    type metadata accessor for CPIMMessage.Content(0);
    sub_214328930(&qword_27C908F48, type metadata accessor for CPIMMessage.Content, protocol conformance descriptor for CPIMMessage.Content);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2141CB848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v32 = a4;
  v7 = type metadata accessor for SwiftRegexValidator(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = a3[1];
  v35 = *a3;
  v36 = v15;
  v37 = a3[2];
  v38 = *(a3 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  sub_2146D8D98();
  (*(v12 + 32))(v10, v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v17 = swift_allocObject();
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_214328704(v10, v19 + v18, type metadata accessor for SwiftRegexValidator);
  *(v17 + 16) = sub_214302808;
  *(v17 + 24) = v19;
  *(inited + 32) = v17;
  sub_214042B80(inited, &v39);
  v21 = v39;
  v20 = v40;
  v22 = v42;
  v33 = v41;
  v23 = v43;
  v49[0] = a1;
  v49[1] = a2;
  v51 = v43;
  v39 = 0xD000000000000015;
  v40 = 0x8000000214790020;
  v41 = 0xD00000000000001CLL;
  v42 = 0x800000021478A360;

  v24 = v34;
  v25 = v21(v49, &v51, &v39);
  if (v24)
  {
  }

  else
  {
    v34 = a1;
    if (v25)
    {

      result = swift_bridgeObjectRelease_n();
      v27 = v32;
      *v32 = v21;
      v27[1] = v20;
      v28 = v35;
      v27[2] = v34;
      v27[3] = a2;
      *(v27 + 32) = v23;
      v30 = v36;
      v29 = v37;
      v27[5] = v28;
      v27[6] = v30;
      v27[7] = v29;
      *(v27 + 32) = v38;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000015;
    v31[1] = 0x8000000214790020;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();
  }

  v39 = v21;
  v40 = v20;
  v41 = v33;
  v42 = v22;
  v43 = v23;
  *v44 = *v50;
  *&v44[3] = *&v50[3];
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  return sub_21430280C(&v39);
}

uint64_t sub_2141CBC34()
{
  if (*v0)
  {
    return 0x74614470756F7267;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2141CBC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2141CBD44(uint64_t a1)
{
  v2 = sub_214302860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141CBD80(uint64_t a1)
{
  v2 = sub_214302860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141CBDBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for SwiftRegexValidator(0);
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v56 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F58, &qword_2146F54F8);
  v58 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214302860();
  v13 = v59;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v82);
  }

  v14 = v8;
  v54 = v4;
  v59 = v6;
  LOBYTE(v65) = 0;
  v15 = sub_2146DA168();
  v16 = v11;
  v18 = v17;
  v53 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F68, &qword_2146F5500);
  v76 = 1;
  sub_2143028B4();
  sub_2146DA1C8();
  v50 = v9;
  v20 = v77;
  v21 = v78;
  v22 = v79;
  v23 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v51 = v20;
  v49 = v21;
  v48 = v22;
  v52 = v23;
  sub_21430298C(v20, v21);
  sub_2146D8D98();
  v24 = v5;
  (*(v56 + 32))(v5, v14, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v25 = swift_allocObject();
  v26 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v27 = swift_allocObject();
  sub_214328704(v24, v27 + v26, type metadata accessor for SwiftRegexValidator);
  *(v25 + 16) = sub_21438F684;
  *(v25 + 24) = v27;
  v28 = inited;
  *(inited + 32) = v25;
  sub_214042B80(v28, &v65);
  v29 = v65;
  v30 = v66;
  v57 = v67;
  v31 = v68;
  v32 = v69;
  v75[0] = v53;
  v75[1] = v18;
  LOBYTE(v60) = v69;
  v65 = 0xD000000000000015;
  v66 = 0x8000000214790020;
  v67 = 0xD00000000000001CLL;
  v68 = 0x800000021478A360;

  v33 = v29(v75, &v60, &v65);
  LODWORD(v59) = v32;
  v56 = v18;
  if (v33)
  {

    v34 = v49;
    v35 = v48;
    v36 = v52;
    sub_21430299C(v51, v49);
    (*(v58 + 8))(v16, v50);

    *&v60 = v29;
    *(&v60 + 1) = v30;
    v37 = v53;
    *&v61 = v53;
    *(&v61 + 1) = v56;
    LOBYTE(v62) = v32;
    v38 = v51;
    *(&v62 + 1) = v51;
    *&v63 = v34;
    *(&v63 + 1) = v35;
    v64 = v36;
    v39 = v55;
    *(v55 + 64) = v36;
    v40 = v63;
    v39[2] = v62;
    v39[3] = v40;
    v41 = v61;
    *v39 = v60;
    v39[1] = v41;
    sub_2143029AC(&v60, &v65);
    __swift_destroy_boxed_opaque_existential_1(v82);
    v65 = v29;
    v66 = v30;
    v67 = v37;
    v68 = v56;
    v69 = v59;
    v71 = v38;
    v72 = v34;
    v73 = v35;
    v74 = v36;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000015;
    v42[1] = 0x8000000214790020;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();

    v43 = v51;
    v44 = v49;
    v45 = v48;
    sub_21430299C(v51, v49);
    (*(v58 + 8))(v16, v50);

    __swift_destroy_boxed_opaque_existential_1(v82);
    v65 = v29;
    v66 = v30;
    v67 = v57;
    v68 = v31;
    v69 = v59;
    *v70 = *v81;
    *&v70[3] = *&v81[3];
    v71 = v43;
    v72 = v44;
    v73 = v45;
    v74 = v52;
  }

  return sub_21430280C(&v65);
}

uint64_t sub_2141CC564(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F80, &qword_2146F5508);
  v13 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = *(v1 + 24);
  v8 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = v8;
  v10 = *(v1 + 56);
  v18 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214302860();
  sub_2146DAA28();
  if (v7)
  {
    LOBYTE(v14) = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v13 + 8))(v6, v4);
    }

    else
    {

      v14 = v12;
      v15 = v11;
      v16 = v10;
      v17 = v18;
      v19 = 1;
      sub_21430298C(v12, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F68, &qword_2146F5500);
      sub_214302A08();
      sub_2146DA388();
      sub_21430299C(v14, v15);
      return (*(v13 + 8))(v6, v4);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2141CC7F0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, _BYTE *a7@<X8>)
{
  v59 = a6;
  v10 = *a1;
  v11 = type metadata accessor for IMCompositionIndication(0);
  v49 = a2;
  sub_213FB2E54(a2, &a7[v11[5]], &qword_27C913090, &unk_2146E9DB0);
  sub_2146A89E8(&v55);
  v12 = v56;
  v13 = v57;
  v14 = v58;
  sub_2146A8B08(&v50);
  v15 = v51;
  v16 = v52;
  v17 = v53;
  v18 = v54;
  *a7 = v10;
  v19 = &a7[v11[6]];
  *v19 = v55;
  *(v19 + 2) = v12;
  *(v19 + 3) = v13;
  v19[32] = v14;
  v42 = a7;
  v20 = &a7[v11[7]];
  *v20 = v50;
  *(v20 + 2) = v15;
  v20[24] = v16;
  v20[25] = v17;
  v20[26] = v18;
  v22 = *v19;
  v21 = *(v19 + 1);
  v23 = *(v19 + 2);
  v24 = *(v19 + 3);
  LOBYTE(v15) = v19[32];
  *&v50 = a3;
  *(&v50 + 1) = a4;
  v47 = v15;
  v60 = v15;
  *&v55 = 0xD000000000000023;
  *(&v55 + 1) = 0x8000000214790040;
  v56 = 0xD00000000000001CLL;
  v57 = 0x800000021478A360;

  v44 = v23;
  sub_213FDC9D0(v23, v24);
  v25 = v45;
  v46 = v22;
  v26 = v22(&v50, &v60, &v55);
  if (v25)
  {

LABEL_6:
    sub_213FB2DF4(v49, &qword_27C913090, &unk_2146E9DB0);
    v36 = *(v19 + 2);
    v37 = *(v19 + 3);

    sub_213FDC6D0(v36, v37);
    *v19 = v22;
    *(v19 + 1) = v21;
    *(v19 + 2) = v44;
    *(v19 + 3) = v24;
    v19[32] = v47;
    return sub_21432887C(v42, type metadata accessor for IMCompositionIndication);
  }

  if ((v26 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD000000000000023;
    v35[1] = 0x8000000214790040;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v44, v24);

  v27 = *(v19 + 2);
  v28 = *(v19 + 3);

  sub_213FDC6D0(v27, v28);
  *v19 = v46;
  *(v19 + 1) = v21;
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  v19[32] = v47;
  v30 = *v20;
  v29 = *(v20 + 1);
  v48 = *(v20 + 2);
  v31 = v20[24];
  v32 = v20[25];
  v33 = v20[26];
  *&v50 = a5;
  BYTE8(v50) = v59 & 1;
  v60 = v33;
  *&v55 = 0xD000000000000027;
  *(&v55 + 1) = 0x8000000214790070;
  v56 = 0xD00000000000001CLL;
  v57 = 0x800000021478A360;

  v34 = v30(&v50, &v60, &v55);
  if ((v34 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000027;
    v40[1] = 0x8000000214790070;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v49, &qword_27C913090, &unk_2146E9DB0);

    *v20 = v30;
    *(v20 + 1) = v29;
    *(v20 + 2) = v48;
    v20[24] = v31;
    v20[25] = v32;
    v20[26] = v33;
    return sub_21432887C(v42, type metadata accessor for IMCompositionIndication);
  }

  sub_213FB2DF4(v49, &qword_27C913090, &unk_2146E9DB0);
  v39 = v59 & 1;

  *v20 = v30;
  *(v20 + 1) = v29;
  *(v20 + 2) = a5;
  v20[24] = v39;
  v20[25] = 0;
  v20[26] = v33;
  return result;
}

uint64_t sub_2141CCC18()
{
  v1 = 0x6574617473;
  v2 = 0x54746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x4968736572666572;
  }

  if (*v0)
  {
    v1 = 0x697463417473616CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2141CCCB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214373120(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141CCCD8(uint64_t a1)
{
  v2 = sub_214302AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141CCD14(uint64_t a1)
{
  v2 = sub_214302AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141CCD50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  MEMORY[0x28223BE20](v3);
  v5 = &v58 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F98, &qword_2146F5510);
  v69 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - v7;
  v9 = type metadata accessor for IMCompositionIndication(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214302AE0();
  v13 = v70;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v71);
  }

  v14 = v9;
  v70 = v5;
  v67 = v11;
  LOBYTE(v72) = 0;
  sub_214302B34();
  sub_2146DA1C8();
  v15 = v77;
  LOBYTE(v77) = 1;
  sub_2142EC0C4();
  v16 = v70;
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v72) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v17 = *(&v77 + 1);
  v66 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v72) = 3;
  sub_2142E11FC();
  sub_2146DA1C8();
  v64 = v6;
  v65 = v8;
  v60 = v77;
  v59 = BYTE8(v77);
  v19 = v67;
  sub_213FB2E54(v16, &v67[v14[5]], &qword_27C913090, &unk_2146E9DB0);
  sub_2146A89E8(&v77);
  v20 = v78;
  v21 = v79;
  LOBYTE(v16) = v80;
  sub_2146A8B08(&v72);
  v22 = v73;
  v23 = v74;
  v24 = v75;
  v25 = v76;
  *v19 = v15;
  v26 = &v19[v14[6]];
  *v26 = v77;
  *(v26 + 2) = v20;
  *(v26 + 3) = v21;
  v26[32] = v16;
  v27 = &v19[v14[7]];
  *v27 = v72;
  *(v27 + 2) = v22;
  v27[24] = v23;
  v27[25] = v24;
  v27[26] = v25;
  v28 = v17;
  v30 = *v26;
  v29 = *(v26 + 1);
  v31 = *(v26 + 2);
  v32 = *(v26 + 3);
  LODWORD(v22) = v26[32];
  *&v72 = v66;
  *(&v72 + 1) = v28;
  v81 = v22;
  v82 = v22;
  *&v77 = 0xD000000000000023;
  *(&v77 + 1) = 0x8000000214790040;
  v78 = 0xD00000000000001CLL;
  v79 = 0x800000021478A360;

  v61 = v32;
  v62 = v31;
  sub_213FDC9D0(v31, v32);
  v63 = v30;
  v33 = v30(&v72, &v82, &v77);
  v34 = v28;
  v58 = 0x800000021478A360;
  v35 = v60;
  if (v33)
  {
    sub_213FDC6D0(v62, v61);
    v36 = v58;

    v37 = *(v26 + 2);
    v38 = *(v26 + 3);

    sub_213FDC6D0(v37, v38);
    *v26 = v63;
    *(v26 + 1) = v29;
    *(v26 + 2) = v66;
    *(v26 + 3) = v34;
    v26[32] = v81;
    v40 = *v27;
    v39 = *(v27 + 1);
    v63 = *(v27 + 2);
    v81 = v27[24];
    LODWORD(v62) = v27[25];
    v41 = v27[26];
    v42 = v35;
    *&v72 = v35;
    BYTE8(v72) = v59;
    LODWORD(v66) = v41;
    v82 = v41;
    *&v77 = 0xD000000000000027;
    *(&v77 + 1) = 0x8000000214790070;
    v78 = 0xD00000000000001CLL;
    v79 = v36;

    v43 = v40(&v72, &v82, &v77);
    v44 = v69;
    v45 = v64;
    v55 = v65;
    if (v43)
    {

      sub_213FB2DF4(v70, &qword_27C913090, &unk_2146E9DB0);
      (*(v44 + 8))(v55, v45);

      *v27 = v40;
      *(v27 + 1) = v39;
      *(v27 + 2) = v42;
      v27[24] = v59;
      v27[25] = 0;
      v27[26] = v66;
      sub_214328704(v67, v68, type metadata accessor for IMCompositionIndication);
      return __swift_destroy_boxed_opaque_existential_1(v71);
    }

    sub_214031C4C();
    swift_allocError();
    *v56 = 0xD000000000000027;
    v56[1] = 0x8000000214790070;
    v57 = v58;
    v56[2] = 0xD00000000000001CLL;
    v56[3] = v57;
    swift_willThrow();
    sub_213FB2DF4(v70, &qword_27C913090, &unk_2146E9DB0);
    (*(v44 + 8))(v55, v45);

    *v27 = v40;
    *(v27 + 1) = v39;
    *(v27 + 2) = v63;
    v27[24] = v81;
    v27[25] = v62;
    v27[26] = v66;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD000000000000023;
    v46[1] = 0x8000000214790040;
    v47 = v58;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = v47;
    swift_willThrow();

    v48 = v69;
    v49 = v64;
    sub_213FB2DF4(v70, &qword_27C913090, &unk_2146E9DB0);
    (*(v48 + 8))(v65, v49);
    v50 = *(v26 + 2);
    v51 = *(v26 + 3);

    sub_213FDC6D0(v50, v51);
    v52 = v62;
    *v26 = v63;
    *(v26 + 1) = v29;
    v53 = v61;
    *(v26 + 2) = v52;
    *(v26 + 3) = v53;
    v26[32] = v81;
  }

  v54 = v67;
  __swift_destroy_boxed_opaque_existential_1(v71);
  return sub_21432887C(v54, type metadata accessor for IMCompositionIndication);
}

uint64_t sub_2141CD530(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908FB0, &qword_2146F5518);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214302AE0();
  sub_2146DAA28();
  LOBYTE(v16) = *v3;
  v18 = 0;
  sub_214302B88();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for IMCompositionIndication(0);
  LOBYTE(v16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  sub_2142EC30C();
  sub_2146DA388();
  v10 = &v3[*(v9 + 24)];
  v11 = *(v10 + 3);
  if (v11 != 1)
  {
    v16 = *(v10 + 2);
    v17 = v11;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v12 = &v3[*(v9 + 28)];
    if ((v12[25] & 1) == 0)
    {
      v13 = v12[24];
      v16 = *(v12 + 2);
      LOBYTE(v17) = v13 & 1;
      v18 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
      sub_2142E1C30();
      sub_2146DA388();
      return (*(v6 + 8))(v8, v5);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141CD82C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int16 *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a6;
  v13 = type metadata accessor for IMDispositionNotification(0);
  v14 = v13[5];
  v15 = sub_2146D8B08();
  v30 = *(v15 - 8);
  v31 = v15;
  (*(v30 + 16))(a7 + v14, a3);
  v32 = a4;
  sub_213FB2E54(a4, a7 + v13[6], &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(a5, a7 + v13[7], &unk_27C9131A0, &unk_2146E9D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2140676DC;
  *(v17 + 24) = 0;
  *(inited + 32) = v17;
  sub_214042B80(inited, &v34);
  v18 = v36;
  v19 = v35;
  *a7 = v34;
  *(a7 + 16) = v19;
  *(a7 + 32) = v18;
  *(a7 + v13[8]) = v12;
  v21 = *a7;
  v20 = *(a7 + 8);
  v22 = *(a7 + 24);
  v27 = *(a7 + 16);
  v23 = *(a7 + 32);
  v33[0] = a1;
  v33[1] = a2;
  v37 = v23;
  v38 = v23;
  *&v34 = 0xD000000000000023;
  *(&v34 + 1) = 0x80000002147900A0;
  *&v35 = 0xD00000000000001CLL;
  *(&v35 + 1) = 0x800000021478A360;

  v24 = v21(v33, &v38, &v34);
  if (v29)
  {
  }

  else
  {
    if (v24)
    {

      sub_213FB2DF4(a5, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v32, &unk_27C9131A0, &unk_2146E9D10);
      (*(v30 + 8))(a3, v31);

      *a7 = v21;
      *(a7 + 8) = v20;
      *(a7 + 16) = a1;
      *(a7 + 24) = a2;
      *(a7 + 32) = v37;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000023;
    v26[1] = 0x80000002147900A0;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(a5, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v32, &unk_27C9131A0, &unk_2146E9D10);
  (*(v30 + 8))(a3, v31);

  *a7 = v21;
  *(a7 + 8) = v20;
  *(a7 + 16) = v27;
  *(a7 + 24) = v22;
  *(a7 + 32) = v37;
  return sub_21432887C(a7, type metadata accessor for IMDispositionNotification);
}

uint64_t sub_2141CDBD8()
{
  v1 = *v0;
  v2 = 0x496567617373656DLL;
  v3 = 0x6E65697069636572;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x6163696669746F6ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D697465746164;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2141CDC8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214373294(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141CDCB4(uint64_t a1)
{
  v2 = sub_214302BDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141CDCF0(uint64_t a1)
{
  v2 = sub_214302BDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141CDD2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = MEMORY[0x28223BE20](v53);
  v50 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v51 = &v40 - v5;
  v6 = sub_2146D8B08();
  v52 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908FC0, &qword_2146F5520);
  v54 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = type metadata accessor for IMDispositionNotification(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_214302BDC();
  v16 = v55;
  sub_2146DAA08();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v46 = v12;
  v47 = v14;
  v48 = v8;
  v17 = v52;
  v55 = v6;
  LOBYTE(v58) = 0;
  v44 = sub_2146DA168();
  v45 = v18;
  LOBYTE(v58) = 1;
  sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v19 = v55;
  sub_2146DA1C8();
  LOBYTE(v58) = 2;
  sub_2142E27A8();
  sub_2146DA1C8();
  LOBYTE(v58) = 3;
  sub_2146DA1C8();
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908FD0, &qword_2146F5528);
  LOBYTE(v57[0]) = 4;
  sub_214302C30();
  sub_2146DA1C8();
  v22 = v58;
  v23 = v46;
  v24 = v47;
  (*(v20 + 16))(&v47[v46[5]], v48, v19);
  sub_213FB2E54(v51, v24 + v23[6], &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v50, v24 + v23[7], &unk_27C9131A0, &unk_2146E9D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_2140676DC;
  *(v26 + 24) = 0;
  *(inited + 32) = v26;
  sub_214042B80(inited, &v58);
  v27 = v60;
  v28 = v59;
  *v24 = v58;
  *(v24 + 16) = v28;
  *(v24 + 32) = v27;
  *(v24 + v23[8]) = v22;
  v29 = *v24;
  v30 = *(v24 + 8);
  v31 = *(v24 + 24);
  v41 = *(v24 + 16);
  v32 = *(v24 + 32);
  v57[0] = v44;
  v57[1] = v45;
  v61 = v32;
  *&v58 = 0xD000000000000023;
  *(&v58 + 1) = 0x80000002147900A0;
  v43 = 0x80000002147900A0;
  *&v59 = 0xD00000000000001CLL;
  *(&v59 + 1) = 0x800000021478A360;
  v42 = 0x800000021478A360;
  v46 = v31;

  v53 = v29;
  v33 = v29(v57, &v61, &v58);
  v34 = v42;
  v35 = v43;
  if (v33)
  {

    sub_213FB2DF4(v50, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v51, &unk_27C9131A0, &unk_2146E9D10);
    (*(v20 + 8))(v48, v55);
    (*(v54 + 8))(v11, v9);

    *v24 = v53;
    *(v24 + 8) = v30;
    v36 = v45;
    *(v24 + 16) = v44;
    *(v24 + 24) = v36;
    *(v24 + 32) = v32;
    sub_214328704(v24, v49, type metadata accessor for IMDispositionNotification);
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  LODWORD(v49) = v32;
  sub_214031C4C();
  swift_allocError();
  *v37 = 0xD000000000000023;
  v37[1] = v35;
  v37[2] = 0xD00000000000001CLL;
  v37[3] = v34;
  swift_willThrow();

  sub_213FB2DF4(v50, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v51, &unk_27C9131A0, &unk_2146E9D10);
  (*(v20 + 8))(v48, v55);
  (*(v54 + 8))(v11, v9);
  v38 = v47;

  *v38 = v53;
  *(v38 + 8) = v30;
  v39 = v46;
  *(v38 + 16) = v41;
  *(v38 + 24) = v39;
  *(v38 + 32) = v49;
  __swift_destroy_boxed_opaque_existential_1(v56);
  return sub_21432887C(v38, type metadata accessor for IMDispositionNotification);
}