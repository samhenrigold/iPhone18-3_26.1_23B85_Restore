uint64_t sub_1B75D1AA0(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB998D28, &qword_1B7847978);
    v8[0] = a2;
    v8[1] = a2;
    result = swift_getWitnessTable(a3, v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

id MapsStyleAttributesInput.XPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B7208D80(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id MapsStyleAttributesInput.XPC.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B7208D80(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id MapsStyleAttributesInput.XPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsStyleAttributesInput.XPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1B75D1D74@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___XPCMapsStyleAttributesInput_value + 8);
  v3 = *(v1 + OBJC_IVAR___XPCMapsStyleAttributesInput_value + 16);
  *a1 = *(v1 + OBJC_IVAR___XPCMapsStyleAttributesInput_value);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

id sub_1B75D1D94(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = &v3[OBJC_IVAR___XPCMapsStyleAttributesInput_value];
  *v6 = *a1;
  *(v6 + 1) = v4;
  v6[16] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t sub_1B75D1E44()
{
  result = qword_1EB998D50;
  if (!qword_1EB998D50)
  {
    result = swift_getWitnessTable(asc_1B7847B0C, &type metadata for MapsStyleAttributesInput.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998D50);
  }

  return result;
}

unint64_t sub_1B75D1E9C()
{
  result = qword_1EB998D58;
  if (!qword_1EB998D58)
  {
    result = swift_getWitnessTable(aUE7_2, &type metadata for MapsStyleAttributesInput.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998D58);
  }

  return result;
}

unint64_t sub_1B75D1EF4()
{
  result = qword_1EB998D60;
  if (!qword_1EB998D60)
  {
    result = swift_getWitnessTable(byte_1B7847AA4, &type metadata for MapsStyleAttributesInput.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998D60);
  }

  return result;
}

void MapsMerchant.postalAddress.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MapsMerchant(0) + 80);

  *(v1 + v3) = a1;
}

uint64_t type metadata accessor for MapsMerchant(uint64_t a1)
{
  result = qword_1EB998DB0;
  if (!qword_1EB998DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *MapsMerchant.postalAddress.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapsMerchant(0) + 80));
  v2 = v1;
  return v1;
}

void MapsMerchant.init(muid:placeIdentifier:resultProviderIdentifier:name:phoneNumber:url:heroImageURL:heroImageAttributionName:mapsCategory:mapsCategoryIdentifier:encodedStylingInfo:businessChatURL:lastProcessedDate:locationLatitude:locationLongitude:postalAddress:hasBrand:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  v48 = *a14;
  v29 = type metadata accessor for MapsMerchant(0);
  v30 = v29[9];
  v45 = v30;
  v31 = sub_1B77FF4F8();
  v32 = *(*(v31 - 8) + 56);
  v32(a9 + v30, 1, 1, v31);
  v44 = v29[10];
  v32(a9 + v44, 1, 1, v31);
  v42 = v29[12];
  v33 = (a9 + v29[11]);
  *(a9 + v42) = 8;
  v34 = (a9 + v29[13]);
  v35 = a9 + v29[14];
  *v35 = xmmword_1B7810080;
  v43 = v29[15];
  v32(a9 + v43, 1, 1, v31);
  v36 = v29[16];
  v41 = v36;
  v37 = sub_1B77FF988();
  (*(*(v37 - 8) + 56))(a9 + v36, 1, 1, v37);
  v38 = a9 + v29[18];
  v39 = a9 + v29[19];
  v40 = v29[20];
  *(a9 + v40) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 28) = BYTE4(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  sub_1B7213740(a10, a9 + v45, &unk_1EB994C70, &qword_1B7809800);
  sub_1B7213740(a11, a9 + v44, &unk_1EB994C70, &qword_1B7809800);
  *v33 = a12;
  v33[1] = a13;
  *(a9 + v42) = v48;
  *v34 = a15;
  v34[1] = a16;
  sub_1B72380B8(*v35, *(v35 + 8));
  *v35 = a17;
  *(v35 + 8) = a18;
  sub_1B7213740(a19, a9 + v43, &unk_1EB994C70, &qword_1B7809800);
  sub_1B7213740(a20, a9 + v41, &qword_1EB98EBD0, &unk_1B7809780);
  *v38 = a21;
  *(v38 + 8) = a22 & 1;
  *v39 = a23;
  *(v39 + 8) = a24 & 1;
  *(a9 + v29[17]) = a26;

  *(a9 + v40) = a25;
}

uint64_t MapsMerchant.placeIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void MapsMerchant.placeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t MapsMerchant.resultProviderIdentifier.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t MapsMerchant.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void MapsMerchant.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t MapsMerchant.phoneNumber.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void MapsMerchant.phoneNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t MapsMerchant.heroImageAttributionName.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapsMerchant(0) + 44));

  return v1;
}

void MapsMerchant.heroImageAttributionName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MapsMerchant(0) + 44));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t MapsMerchant.mapsCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MapsMerchant(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t MapsMerchant.mapsCategory.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MapsMerchant(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t MapsMerchant.mapsCategoryIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapsMerchant(0) + 52));

  return v1;
}

void MapsMerchant.mapsCategoryIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MapsMerchant(0) + 52));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t MapsMerchant.encodedStylingInfo.getter()
{
  v1 = v0 + *(type metadata accessor for MapsMerchant(0) + 56);
  v2 = *v1;
  sub_1B7228588(*v1, *(v1 + 8));
  return v2;
}

uint64_t MapsMerchant.encodedStylingInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MapsMerchant(0) + 56);
  result = sub_1B72380B8(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t MapsMerchant.hasBrand.setter(char a1)
{
  result = type metadata accessor for MapsMerchant(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t MapsMerchant.locationLatitude.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MapsMerchant(0);
  v6 = v2 + *(result + 72);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MapsMerchant.locationLongitude.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MapsMerchant(0);
  v6 = v2 + *(result + 76);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

void sub_1B75D2DCC(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for MapsMerchant(0) + 80);
  v5 = *(a2 + v4);
  v6 = v3;

  *(a2 + v4) = v3;
}

void (*MapsMerchant.postalAddress.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MapsMerchant(0) + 80);
  *(a1 + 16) = v3;
  v4 = *(v1 + v3);
  *a1 = v4;
  v5 = v4;
  return sub_1B75D2E74;
}

void sub_1B75D2E74(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    v5 = *(v4 + v2);
    v6 = v3;

    *(v4 + v2) = v3;
  }

  else
  {

    *(v4 + v2) = v3;
  }
}

unint64_t sub_1B75D2EF8(char a1)
{
  result = 1684632941;
  switch(a1)
  {
    case 1:
      result = 0x6564496563616C70;
      break;
    case 2:
    case 7:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x6D754E656E6F6870;
      break;
    case 5:
      result = 7107189;
      break;
    case 6:
      result = 0x67616D496F726568;
      break;
    case 8:
      result = 0x657461437370616DLL;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x7373656E69737562;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x646E617242736168;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B75D30EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B75D7DA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B75D3120(uint64_t a1)
{
  v2 = sub_1B75D76D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D315C(uint64_t a1)
{
  v2 = sub_1B75D76D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsMerchant.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998D70, &qword_1B7847B88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75D76D0();
  sub_1B78023F8();
  LOBYTE(v15) = 0;
  sub_1B7802008();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1B7801EF8();
    v9 = *(v3 + 28);
    LOBYTE(v15) = 2;
    v17 = v9;
    sub_1B7801F58();
    LOBYTE(v15) = 3;
    sub_1B7801EF8();
    LOBYTE(v15) = 4;
    sub_1B7801EF8();
    v10 = type metadata accessor for MapsMerchant(0);
    LOBYTE(v15) = 5;
    sub_1B77FF4F8();
    sub_1B72FA358(&qword_1EB98F700, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1B7801F38();
    LOBYTE(v15) = 6;
    sub_1B7801F38();
    LOBYTE(v15) = 7;
    sub_1B7801EF8();
    LOBYTE(v15) = *(v3 + v10[12]);
    v17 = 8;
    sub_1B75D7724();
    sub_1B7801F38();
    LOBYTE(v15) = 9;
    sub_1B7801EF8();
    v11 = v3 + v10[14];
    v12 = *(v11 + 8);
    v15 = *v11;
    v16 = v12;
    v17 = 10;
    sub_1B7228588(v15, v12);
    sub_1B727A60C();
    sub_1B7801F38();
    sub_1B72380B8(v15, v16);
    LOBYTE(v15) = 11;
    sub_1B7801F38();
    LOBYTE(v15) = 12;
    sub_1B77FF988();
    sub_1B72FA358(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B7801F38();
    LOBYTE(v15) = 13;
    sub_1B7801F88();
    LOBYTE(v15) = 14;
    sub_1B7801F18();
    LOBYTE(v15) = 15;
    sub_1B7801F18();
    v15 = *(v3 + v10[20]);
    v17 = 16;
    v13 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998D88, &qword_1B7847B90);
    sub_1B75D77CC(&qword_1EB998D90, protocol conformance descriptor for CodableWrapper<A>);
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

void MapsMerchant.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v72 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v73 = v68 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v76 = v68 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v78 = v68 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998D98, &qword_1B7847B98);
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v11 = v68 - v10;
  v12 = type metadata accessor for MapsMerchant(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 36);
  v17 = sub_1B77FF4F8();
  v18 = *(*(v17 - 8) + 56);
  v85 = v16;
  v18(v15 + v16, 1, 1, v17);
  v84 = v12[10];
  v18(v15 + v84, 1, 1, v17);
  v19 = v12[12];
  *(v15 + v19) = 8;
  v20 = v15 + v12[14];
  *v20 = xmmword_1B7810080;
  v82 = v12[15];
  v83 = v20;
  v18(v15 + v82, 1, 1, v17);
  v21 = v12[16];
  v22 = sub_1B77FF988();
  v23 = *(*(v22 - 8) + 56);
  v81 = v21;
  v23(v15 + v21, 1, 1, v22);
  v80 = v12[20];
  v86 = v15;
  *(v15 + v80) = 0;
  __swift_project_boxed_opaque_existential_1(v88, v88[3]);
  sub_1B75D76D0();
  v79 = v11;
  v24 = v87;
  sub_1B78023C8();
  if (v24)
  {
    v87 = v24;
    v26 = v84;
    v25 = v85;
LABEL_4:
    v31 = v86;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v88);

    sub_1B7205418(v31 + v25, &unk_1EB994C70, &qword_1B7809800);
    sub_1B7205418(v31 + v26, &unk_1EB994C70, &qword_1B7809800);

    sub_1B72380B8(*v83, *(v83 + 1));
    sub_1B7205418(v31 + v82, &unk_1EB994C70, &qword_1B7809800);
    sub_1B7205418(v31 + v81, &qword_1EB98EBD0, &unk_1B7809780);

    return;
  }

  v70 = v12;
  v69 = v19;
  v27 = v76;
  v71 = v17;
  v68[4] = v22;
  v28 = v75;
  LOBYTE(v89) = 0;
  v29 = v77;
  v30 = sub_1B7801E88();
  v26 = v84;
  v25 = v85;
  v31 = v86;
  *v86 = v30;
  LOBYTE(v89) = 1;
  v31[1] = sub_1B7801D78();
  v31[2] = v32;
  v68[3] = v32;
  LOBYTE(v89) = 2;
  v33 = sub_1B7801DD8();
  *(v31 + 6) = v33;
  *(v31 + 28) = BYTE4(v33) & 1;
  LOBYTE(v89) = 3;
  v31[4] = sub_1B7801D78();
  v31[5] = v34;
  v68[2] = v34;
  LOBYTE(v89) = 4;
  v35 = sub_1B7801D78();
  v87 = 0;
  v31[6] = v35;
  v31[7] = v36;
  v68[1] = v36;
  LOBYTE(v89) = 5;
  sub_1B72FA358(&qword_1EB98F730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v37 = v87;
  sub_1B7801DB8();
  v87 = v37;
  if (v37 || (sub_1B7213740(v78, v31 + v25, &unk_1EB994C70, &qword_1B7809800), LOBYTE(v89) = 6, v38 = v87, sub_1B7801DB8(), (v87 = v38) != 0) || (sub_1B7213740(v27, v31 + v26, &unk_1EB994C70, &qword_1B7809800), LOBYTE(v89) = 7, v39 = v87, v40 = sub_1B7801D78(), (v87 = v39) != 0) || (v42 = (v31 + v70[11]), *v42 = v40, v42[1] = v41, v78 = v41, v91 = 8, sub_1B75D7778(), v43 = v87, sub_1B7801DB8(), (v87 = v43) != 0))
  {
    (*(v28 + 8))(v79, v29);
    goto LABEL_5;
  }

  *(v31 + v69) = v89;
  LOBYTE(v89) = 9;
  v44 = v87;
  v45 = sub_1B7801D78();
  v87 = v44;
  if (v44 || (v47 = (v86 + v70[13]), *v47 = v45, v47[1] = v46, v91 = 10, sub_1B727A53C(), v48 = v87, sub_1B7801DB8(), (v87 = v48) != 0) || (v50 = v89, v49 = v90, v51 = v83, sub_1B72380B8(*v83, *(v83 + 1)), *v51 = v50, *(v51 + 1) = v49, LOBYTE(v89) = 11, v52 = v87, sub_1B7801DB8(), (v87 = v52) != 0) || (sub_1B7213740(v74, v86 + v82, &unk_1EB994C70, &qword_1B7809800), LOBYTE(v89) = 12, sub_1B72FA358(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]), v53 = v87, sub_1B7801DB8(), (v87 = v53) != 0) || (sub_1B7213740(v73, v86 + v81, &qword_1EB98EBD0, &unk_1B7809780), LOBYTE(v89) = 13, v54 = v87, v55 = sub_1B7801E08(), (v87 = v54) != 0))
  {
    (*(v28 + 8))(v79, v77);
LABEL_19:
    v26 = v84;
    v25 = v85;
    goto LABEL_4;
  }

  *(v86 + v70[17]) = v55 & 1;
  LOBYTE(v89) = 14;
  v56 = sub_1B7801D98();
  v87 = 0;
  v57 = v86 + v70[18];
  *v57 = v56;
  v57[8] = v58 & 1;
  LOBYTE(v89) = 15;
  v59 = sub_1B7801D98();
  v87 = 0;
  v61 = v86 + v70[19];
  *v61 = v59;
  v61[8] = v60 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998D88, &qword_1B7847B90);
  v91 = 16;
  sub_1B75D77CC(&qword_1EB998DA8, protocol conformance descriptor for CodableWrapper<A>);
  v62 = v77;
  v63 = v79;
  v64 = v87;
  sub_1B7801DB8();
  (*(v28 + 8))(v63, v62);
  v87 = v64;
  if (v64)
  {
    goto LABEL_19;
  }

  v65 = v89;
  v66 = v80;
  v67 = v86;

  *(v67 + v66) = v65;
  sub_1B72D2DDC(v67, v72);
  __swift_destroy_boxed_opaque_existential_1(v88);
  sub_1B75D788C(v67, type metadata accessor for MapsMerchant);
}

uint64_t sub_1B75D4234()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1B75D4264()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1B75D42FC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t sub_1B75D4344(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t sub_1B75D437C(uint64_t a1)
{
  v2 = v1 + *(a1 + 56);
  v3 = *v2;
  sub_1B7228588(*v2, *(v2 + 8));
  return v3;
}

unsigned __int8 *MapsMerchant.init(from:encodedStylingInfo:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v136 = a2;
  v137 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498, &qword_1B78587F0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v123 = v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v120 = v113 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9975B8, &qword_1B783D6F0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v119 = (v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v121 = v113 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v125 = v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v126 = v113 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997490, &qword_1B783D680);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v124 = v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v113 - v21;
  v23 = type metadata accessor for MapsMerchant(0);
  v135 = *(v23 - 1);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v24 + 36);
  v28 = sub_1B77FF4F8();
  v118 = *(v28 - 8);
  v29 = v118 + 56;
  v30 = *(v118 + 56);
  v130 = v27;
  v30(&v26[v27], 1, 1, v28);
  v131 = v23[10];
  v30(&v26[v131], 1, 1, v28);
  v122 = v23[12];
  v26[v122] = 8;
  v31 = &v26[v23[13]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v134 = &v26[v23[14]];
  *v134 = xmmword_1B7810080;
  v132 = v23[15];
  v128 = v29;
  v129 = v28;
  v127 = v30;
  v30(&v26[v132], 1, 1, v28);
  v32 = v23[16];
  v33 = sub_1B77FF988();
  result = (*(*(v33 - 8) + 56))(&v26[v32], 1, 1, v33);
  v133 = v23[20];
  *&v26[v133] = 0;
  v35 = *a1;
  v36 = a1[1];
  v37 = HIBYTE(v36) & 0xF;
  v38 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v36 & 0x2000000000000000) != 0)
  {
    v39 = HIBYTE(v36) & 0xF;
  }

  else
  {
    v39 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {
    goto LABEL_65;
  }

  if ((v36 & 0x1000000000000000) != 0)
  {

    sub_1B75D5318(v35, v36, 10);
    v41 = v54;
    v56 = v55;

    if (v56)
    {
      goto LABEL_65;
    }

    goto LABEL_67;
  }

  if ((v36 & 0x2000000000000000) != 0)
  {
    *&v149[0] = *a1;
    *(&v149[0] + 1) = v36 & 0xFFFFFFFFFFFFFFLL;
    if (v35 == 43)
    {
      if (v37)
      {
        if (--v37)
        {
          v41 = 0;
          v49 = v149 + 1;
          while (1)
          {
            v50 = *v49 - 48;
            if (v50 > 9)
            {
              break;
            }

            if (!is_mul_ok(v41, 0xAuLL))
            {
              break;
            }

            v44 = __CFADD__(10 * v41, v50);
            v41 = 10 * v41 + v50;
            if (v44)
            {
              break;
            }

            ++v49;
            if (!--v37)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_98:
      __break(1u);
      return result;
    }

    if (v35 != 45)
    {
      if (v37)
      {
        v41 = 0;
        v52 = v149;
        while (1)
        {
          v53 = *v52 - 48;
          if (v53 > 9)
          {
            break;
          }

          if (!is_mul_ok(v41, 0xAuLL))
          {
            break;
          }

          v44 = __CFADD__(10 * v41, v53);
          v41 = 10 * v41 + v53;
          if (v44)
          {
            break;
          }

          ++v52;
          if (!--v37)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v37)
    {
      if (--v37)
      {
        v41 = 0;
        v45 = v149 + 1;
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            break;
          }

          if (!is_mul_ok(v41, 0xAuLL))
          {
            break;
          }

          v44 = 10 * v41 >= v46;
          v41 = 10 * v41 - v46;
          if (!v44)
          {
            break;
          }

          ++v45;
          if (!--v37)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_96;
  }

  if ((v35 & 0x1000000000000000) != 0)
  {
    result = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1B7801B48();
  }

  v40 = *result;
  if (v40 == 43)
  {
    if (v38 >= 1)
    {
      v37 = v38 - 1;
      if (v38 != 1)
      {
        v41 = 0;
        if (result)
        {
          v47 = result + 1;
          while (1)
          {
            v48 = *v47 - 48;
            if (v48 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v41, 0xAuLL))
            {
              goto LABEL_63;
            }

            v44 = __CFADD__(10 * v41, v48);
            v41 = 10 * v41 + v48;
            if (v44)
            {
              goto LABEL_63;
            }

            ++v47;
            if (!--v37)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_55;
      }

      goto LABEL_63;
    }

    goto LABEL_97;
  }

  if (v40 == 45)
  {
    if (v38 >= 1)
    {
      v37 = v38 - 1;
      if (v38 != 1)
      {
        v41 = 0;
        if (result)
        {
          v42 = result + 1;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v41, 0xAuLL))
            {
              goto LABEL_63;
            }

            v44 = 10 * v41 >= v43;
            v41 = 10 * v41 - v43;
            if (!v44)
            {
              goto LABEL_63;
            }

            ++v42;
            if (!--v37)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v37) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v38)
  {
    v41 = 0;
    if (result)
    {
      while (1)
      {
        v51 = *result - 48;
        if (v51 > 9)
        {
          goto LABEL_63;
        }

        if (!is_mul_ok(v41, 0xAuLL))
        {
          goto LABEL_63;
        }

        v44 = __CFADD__(10 * v41, v51);
        v41 = 10 * v41 + v51;
        if (v44)
        {
          goto LABEL_63;
        }

        ++result;
        if (!--v38)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_63:
  v41 = 0;
  LOBYTE(v37) = 1;
LABEL_64:
  LOBYTE(v141) = v37;
  if (v37)
  {
LABEL_65:
    sub_1B72380B8(v136, v137);
    sub_1B75D788C(a1, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
    sub_1B7205418(&v26[v130], &unk_1EB994C70, &qword_1B7809800);
    sub_1B7205418(&v26[v131], &unk_1EB994C70, &qword_1B7809800);
    sub_1B72380B8(*v134, *(v134 + 1));
    sub_1B7205418(&v26[v132], &unk_1EB994C70, &qword_1B7809800);
    sub_1B7205418(&v26[v32], &qword_1EB98EBD0, &unk_1B7809780);

    return (*(v135 + 56))(a4, 1, 1, v23);
  }

LABEL_67:
  v117 = a4;
  *v26 = v41;
  v57 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  v58 = v57;
  *(v26 + 1) = 0;
  *(v26 + 2) = 0;
  v59 = a1 + *(v57 + 40);
  v61 = *(v59 + 1);
  v60 = *(v59 + 2);
  if (v61 == 1)
  {
    LODWORD(v60) = 0;
    v62 = 1;
  }

  else
  {
    v62 = BYTE4(v60) & 1;
  }

  *(v26 + 6) = v60;
  v26[28] = v62;
  v63 = a1[3];
  *(v26 + 4) = a1[2];
  *(v26 + 5) = v63;
  v116 = *(v57 + 28);
  sub_1B7205588(a1 + v116, v22, &qword_1EB997490, &qword_1B783D680);
  v64 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
  v65 = *(v64 - 8);
  v66 = *(v65 + 48);
  v113[1] = v65 + 48;
  v114 = v66;
  v67 = v66(v22, 1, v64);
  v115 = v64;
  if (v67 == 1)
  {

    sub_1B7205418(v22, &qword_1EB997490, &qword_1B783D680);
    v68 = 0;
    v69 = 0;
  }

  else
  {
    v70 = &v22[*(v64 + 20)];
    v68 = *v70;
    v69 = *(v70 + 1);

    sub_1B75D788C(v22, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  }

  v71 = v121;
  *(v26 + 6) = v68;
  *(v26 + 7) = v69;
  sub_1B75D781C(a1 + *(v58 + 52), &v26[v130]);
  v130 = v58;
  v121 = *(v58 + 36);
  v72 = v120;
  sub_1B7205588(a1 + v121, v120, &qword_1EB997498, &qword_1B78587F0);
  v73 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
  v74 = *(*(v73 - 8) + 48);
  if (v74(v72, 1, v73) == 1)
  {
    v75 = a1;
    v76 = &qword_1EB997498;
    v77 = &qword_1B78587F0;
    v78 = v72;
  }

  else
  {
    sub_1B7205588(v72, v71, &qword_1EB9975B8, &qword_1B783D6F0);
    sub_1B75D788C(v72, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
    v79 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
    v75 = a1;
    if ((*(*(v79 - 8) + 48))(v71, 1, v79) != 1)
    {
      (*(v118 + 16))(v126, v71 + *(v79 + 20), v129);
      sub_1B75D788C(v71, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
      v80 = 0;
      goto LABEL_79;
    }

    v76 = &qword_1EB9975B8;
    v77 = &qword_1B783D6F0;
    v78 = v71;
  }

  sub_1B7205418(v78, v76, v77);
  v80 = 1;
LABEL_79:
  v81 = v123;
  v82 = v126;
  v127(v126, v80, 1, v129);
  sub_1B7213740(v82, &v26[v131], &unk_1EB994C70, &qword_1B7809800);
  sub_1B7205588(v75 + v121, v81, &qword_1EB997498, &qword_1B78587F0);
  if (v74(v81, 1, v73) == 1)
  {
    sub_1B7205418(v81, &qword_1EB997498, &qword_1B78587F0);
    v83 = 0;
    v84 = 0;
    v85 = v117;
  }

  else
  {
    v86 = v119;
    sub_1B7205588(v81, v119, &qword_1EB9975B8, &qword_1B783D6F0);
    sub_1B75D788C(v81, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
    v87 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
    v88 = (*(*(v87 - 8) + 48))(v86, 1, v87);
    v85 = v117;
    if (v88 == 1)
    {
      sub_1B7205418(v86, &qword_1EB9975B8, &qword_1B783D6F0);
      v83 = 0;
      v84 = 0;
    }

    else
    {
      v83 = *v86;
      v84 = v86[1];

      sub_1B75D788C(v86, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
    }
  }

  v89 = &v26[v23[11]];
  *v89 = v83;
  *(v89 + 1) = v84;
  v90 = v130;
  v26[v122] = 0x3070204060501uLL >> (8 * *(v75 + *(v130 + 48) + 1));
  v91 = v124;
  sub_1B7205588(v75 + v116, v124, &qword_1EB997490, &qword_1B783D680);
  if (v114(v91, 1, v115) == 1)
  {
    sub_1B7205418(v91, &qword_1EB997490, &qword_1B783D680);
    v92 = v125;
    v127(v125, 1, 1, v129);
  }

  else
  {
    v92 = v125;
    sub_1B7205588(v91, v125, &unk_1EB994C70, &qword_1B7809800);
    sub_1B75D788C(v91, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  }

  sub_1B7213740(v92, &v26[v132], &unk_1EB994C70, &qword_1B7809800);
  v93 = v75 + *(v90 + 32);
  v94 = v93[16];
  v96 = *v93;
  v95 = *(v93 + 1);
  if (v94)
  {
    v96 = 0;
  }

  v97 = &v26[v23[18]];
  *v97 = v96;
  v97[8] = v94;
  if (v94)
  {
    v95 = 0;
  }

  v98 = &v26[v23[19]];
  *v98 = v95;
  v98[8] = v94;
  v26[v23[17]] = 0;
  v99 = (v75 + *(v90 + 44));
  v100 = v99[3];
  v101 = v99[5];
  v145 = v99[4];
  v146 = v101;
  v102 = v99[5];
  v103 = v99[7];
  v147 = v99[6];
  v148 = v103;
  v104 = v99[1];
  v141 = *v99;
  v142 = v104;
  v105 = v99[3];
  v107 = *v99;
  v106 = v99[1];
  v143 = v99[2];
  v144 = v105;
  v149[2] = v143;
  v149[3] = v100;
  v149[0] = v107;
  v149[1] = v106;
  v108 = v99[7];
  v149[6] = v147;
  v149[7] = v108;
  v149[4] = v145;
  v149[5] = v102;
  v109 = 0;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v149) != 1)
  {
    v139[4] = v145;
    v139[5] = v146;
    v139[6] = v147;
    v139[7] = v148;
    v139[0] = v141;
    v139[1] = v142;
    v139[2] = v143;
    v139[3] = v144;
    sub_1B7205540(0, &qword_1EB990D70, 0x1E695CF30);
    v140[4] = v145;
    v140[5] = v146;
    v140[6] = v147;
    v140[7] = v148;
    v140[0] = v141;
    v140[1] = v142;
    v140[2] = v143;
    v140[3] = v144;
    sub_1B745E8C0(v140, &v138);
    v109 = sub_1B745DE54(v139);
  }

  v110 = v133;

  *&v26[v110] = v109;
  sub_1B75D788C(v75, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
  v111 = v134;
  sub_1B72380B8(*v134, *(v134 + 1));
  v112 = v137;
  *v111 = v136;
  *(v111 + 1) = v112;
  sub_1B72D2DDC(v26, v85);
  (*(v135 + 56))(v85, 0, 1, v23);
  return sub_1B75D788C(v26, type metadata accessor for MapsMerchant);
}

void *sub_1B75D52A4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F6B8, &unk_1B7809490);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_1B75D5318(uint64_t a1, uint64_t a2, int64_t a3)
{
  v72 = a1;
  v73 = a2;

  v4 = sub_1B7800AB8();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B75D6414(v4, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1B7801B48();
      v8 = v71;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v7)
          {
            v25 = 0;
            v26 = v7 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (is_mul_ok(v25, a3))
              {
                v29 = v25 * a3;
                v30 = v27 + v28;
                v20 = __CFADD__(v29, v30);
                v25 = v29 + v30;
                if (!v20)
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (v7)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v7;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (is_mul_ok(v34, a3))
            {
              v37 = v34 * a3;
              v38 = v35 + v36;
              v20 = __CFADD__(v37, v38);
              v34 = v37 + v38;
              if (!v20)
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (is_mul_ok(v14, a3))
            {
              v18 = v14 * a3;
              v19 = v16 + v17;
              v20 = v18 >= v19;
              v14 = v18 - v19;
              if (v20)
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:

      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v72 = v6;
  v73 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v62 = 0;
        v63 = a3 + 48;
        v64 = a3 + 55;
        v65 = a3 + 87;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (is_mul_ok(v62, a3))
          {
            v69 = v62 * a3;
            v70 = v67 + v68;
            v20 = __CFADD__(v69, v70);
            v62 = v69 + v70;
            if (!v20)
            {
              v66 = (v66 + 1);
              if (--v41)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v72 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (is_mul_ok(v43, a3))
          {
            v50 = v43 * a3;
            v51 = v48 + v49;
            v20 = v50 >= v51;
            v43 = v50 - v51;
            if (v20)
            {
              ++v47;
              if (--v42)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v53 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v72 + 1;
      while (1)
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_127;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        if (is_mul_ok(v53, a3))
        {
          v60 = v53 * a3;
          v61 = v58 + v59;
          v20 = __CFADD__(v60, v61);
          v53 = v60 + v61;
          if (!v20)
          {
            ++v57;
            if (--v52)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

void sub_1B75D589C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a1;
  v72 = a2;

  v4 = sub_1B7800AB8();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B75D6414(v4, v5);
    v39 = v38;

    v5 = v39;
    if ((v39 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1B7801B48();
      v8 = v70;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (v7)
          {
            LOWORD(v24) = 0;
            v25 = v7 + 1;
            while (1)
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v21)
              {
                if (v26 < 0x41 || v26 >= v22)
                {
                  if (v26 < 0x61 || v26 >= v23)
                  {
                    goto LABEL_125;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v24 * a3;
              v29 = (v24 * a3);
              if (v29 == v28)
              {
                v24 = v29 + (v26 + v27);
                if (v24 == v24)
                {
                  ++v25;
                  if (--v20)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (v7)
        {
          LOWORD(v33) = 0;
          while (1)
          {
            v34 = *v7;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_125;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a3;
            v37 = (v33 * a3);
            if (v37 == v36)
            {
              v33 = v37 + (v34 + v35);
              if (v33 == v33)
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          LOWORD(v14) = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            v19 = (v14 * a3);
            if (v19 == v18)
            {
              v14 = v19 - (v16 + v17);
              if (v14 == v14)
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v40 = HIBYTE(v5) & 0xF;
  v71 = v6;
  v72 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v40)
      {
        LOWORD(v61) = 0;
        v62 = a3 + 48;
        v63 = a3 + 55;
        v64 = a3 + 87;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v64 = 97;
          v63 = 65;
        }

        v65 = &v71;
        while (1)
        {
          v66 = *v65;
          if (v66 < 0x30 || v66 >= v62)
          {
            if (v66 < 0x41 || v66 >= v63)
            {
              if (v66 < 0x61 || v66 >= v64)
              {
                goto LABEL_125;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v61 * a3;
          v69 = (v61 * a3);
          if (v69 == v68)
          {
            v61 = v69 + (v66 + v67);
            if (v61 == v61)
            {
              v65 = (v65 + 1);
              if (--v40)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v40)
    {
      v41 = v40 - 1;
      if (v41)
      {
        LOWORD(v42) = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        v46 = &v71 + 1;
        while (1)
        {
          v47 = *v46;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_125;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v42 * a3;
          v50 = (v42 * a3);
          if (v50 == v49)
          {
            v42 = v50 - (v47 + v48);
            if (v42 == v42)
            {
              ++v46;
              if (--v41)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v40)
  {
    v51 = v40 - 1;
    if (v51)
    {
      LOWORD(v52) = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v71 + 1;
      while (1)
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_125;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v52 * a3;
        v60 = (v52 * a3);
        if (v60 == v59)
        {
          v52 = v60 + (v57 + v58);
          if (v52 == v52)
          {
            ++v56;
            if (--v51)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

void sub_1B75D5E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_1B7800AB8();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B75D6414(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1B7801B48();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_1B75D6414(uint64_t a1, unint64_t a2)
{
  v2 = sub_1B7800AC8();
  v6 = sub_1B75D6494(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1B75D6494(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B7801788();
    if (!v9 || (v10 = v9, v11 = sub_1B75D52A4(v9, 0), v12 = sub_1B75D65EC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1B7800988();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B7800988();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1B7801B48();
LABEL_4:

  return sub_1B7800988();
}

unint64_t sub_1B75D65EC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1B75D680C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B7800A78();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B7801B48();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1B75D680C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1B7800A58();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1B75D680C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B7800A88();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B8CA4D80](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL _s10FinanceKit12MapsMerchantV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v113 = *(v4 - 8);
  v114 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v110 = &v103[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v111 = &v103[-v7];
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0, &qword_1B7813550);
  MEMORY[0x1EEE9AC00](v112);
  v115 = &v103[-v8];
  v9 = sub_1B77FF4F8();
  v117 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v116 = &v103[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v103[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v103[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v103[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30, &unk_1B7816E10);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v103[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v103[-v25];
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v103[-v27];
  if (*a1 != *a2)
  {
    return 0;
  }

  v29 = *(a1 + 16);
  v30 = *(a2 + 16);
  if (v29)
  {
    if (!v30 || (*(a1 + 8) != *(a2 + 8) || v29 != v30) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v31 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v31 = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  v32 = *(a1 + 40);
  v33 = *(a2 + 40);
  if (v32)
  {
    if (!v33 || (*(a1 + 32) != *(a2 + 32) || v32 != v33) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = *(a1 + 56);
  v35 = *(a2 + 56);
  if (v34)
  {
    if (!v35 || (*(a1 + 48) != *(a2 + 48) || v34 != v35) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v106 = type metadata accessor for MapsMerchant(0);
  v36 = *(v20 + 48);
  v108 = v106[9];
  v109 = v36;
  sub_1B7205588(a1 + v108, v28, &unk_1EB994C70, &qword_1B7809800);
  sub_1B7205588(a2 + v108, &v109[v28], &unk_1EB994C70, &qword_1B7809800);
  v107 = *(v117 + 48);
  v108 = v117 + 48;
  if (v107(v28, 1, v9) == 1)
  {
    if (v107(&v109[v28], 1, v9) == 1)
    {
      sub_1B7205418(v28, &unk_1EB994C70, &qword_1B7809800);
      goto LABEL_36;
    }

LABEL_34:
    v37 = &qword_1EB991C30;
    v38 = &unk_1B7816E10;
    v39 = v28;
LABEL_42:
    sub_1B7205418(v39, v37, v38);
    return 0;
  }

  sub_1B7205588(v28, v19, &unk_1EB994C70, &qword_1B7809800);
  if (v107(&v109[v28], 1, v9) == 1)
  {
    (*(v117 + 8))(v19, v9);
    goto LABEL_34;
  }

  (*(v117 + 32))(v116, &v109[v28], v9);
  sub_1B72FA358(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v104 = sub_1B7800828();
  v40 = *(v117 + 8);
  v105 = v117 + 8;
  v109 = v40;
  (v40)(v116, v9);
  (v109)(v19, v9);
  sub_1B7205418(v28, &unk_1EB994C70, &qword_1B7809800);
  if ((v104 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v41 = v106[10];
  v42 = *(v20 + 48);
  sub_1B7205588(a1 + v41, v26, &unk_1EB994C70, &qword_1B7809800);
  v109 = v42;
  sub_1B7205588(a2 + v41, &v42[v26], &unk_1EB994C70, &qword_1B7809800);
  v43 = v107;
  if (v107(v26, 1, v9) == 1)
  {
    if (v43(&v109[v26], 1, v9) == 1)
    {
      sub_1B7205418(v26, &unk_1EB994C70, &qword_1B7809800);
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  sub_1B7205588(v26, v17, &unk_1EB994C70, &qword_1B7809800);
  if (v43(&v109[v26], 1, v9) == 1)
  {
    (*(v117 + 8))(v17, v9);
LABEL_41:
    v37 = &qword_1EB991C30;
    v38 = &unk_1B7816E10;
    v39 = v26;
    goto LABEL_42;
  }

  v45 = v117;
  (*(v117 + 32))(v116, &v109[v26], v9);
  sub_1B72FA358(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  LODWORD(v109) = sub_1B7800828();
  v46 = *(v45 + 8);
  v46(v116, v9);
  v46(v17, v9);
  sub_1B7205418(v26, &unk_1EB994C70, &qword_1B7809800);
  if ((v109 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  v47 = v106[11];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a2 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (!v51 || (*v48 != *v50 || v49 != v51) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v51)
  {
    return 0;
  }

  v52 = v106[12];
  v53 = *(a1 + v52);
  v54 = *(a2 + v52);
  if (v53 == 8)
  {
    if (v54 != 8)
    {
      return 0;
    }
  }

  else if (v53 != v54)
  {
    return 0;
  }

  v55 = v106[13];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 8);
  v58 = (a2 + v55);
  v59 = v58[1];
  if (v57)
  {
    if (!v59 || (*v56 != *v58 || v57 != v59) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v59)
  {
    return 0;
  }

  v60 = v106[14];
  v62 = *(a1 + v60);
  v61 = *(a1 + v60 + 8);
  v63 = (a2 + v60);
  v65 = *v63;
  v64 = v63[1];
  if (v61 >> 60 == 15)
  {
    if (v64 >> 60 == 15)
    {
      sub_1B7228588(v62, v61);
      sub_1B7228588(v65, v64);
      sub_1B72380B8(v62, v61);
      goto LABEL_69;
    }

LABEL_67:
    sub_1B7228588(v62, v61);
    sub_1B7228588(v65, v64);
    sub_1B72380B8(v62, v61);
    sub_1B72380B8(v65, v64);
    return 0;
  }

  if (v64 >> 60 == 15)
  {
    goto LABEL_67;
  }

  sub_1B7228588(v62, v61);
  sub_1B7228588(v65, v64);
  LODWORD(v109) = sub_1B73FC434(v62, v61, v65, v64);
  sub_1B72380B8(v65, v64);
  sub_1B72380B8(v62, v61);
  if ((v109 & 1) == 0)
  {
    return 0;
  }

LABEL_69:
  v66 = v106[15];
  v67 = *(v20 + 48);
  sub_1B7205588(a1 + v66, v23, &unk_1EB994C70, &qword_1B7809800);
  sub_1B7205588(a2 + v66, &v23[v67], &unk_1EB994C70, &qword_1B7809800);
  v68 = v107;
  if (v107(v23, 1, v9) == 1)
  {
    if (v68(&v23[v67], 1, v9) == 1)
    {
      sub_1B7205418(v23, &unk_1EB994C70, &qword_1B7809800);
      goto LABEL_76;
    }

    goto LABEL_74;
  }

  sub_1B7205588(v23, v14, &unk_1EB994C70, &qword_1B7809800);
  if (v68(&v23[v67], 1, v9) == 1)
  {
    (*(v117 + 8))(v14, v9);
LABEL_74:
    v37 = &qword_1EB991C30;
    v38 = &unk_1B7816E10;
    v39 = v23;
    goto LABEL_42;
  }

  v69 = v117;
  v70 = &v23[v67];
  v71 = v116;
  (*(v117 + 32))(v116, v70, v9);
  sub_1B72FA358(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v72 = sub_1B7800828();
  v73 = *(v69 + 8);
  v73(v71, v9);
  v73(v14, v9);
  sub_1B7205418(v23, &unk_1EB994C70, &qword_1B7809800);
  if ((v72 & 1) == 0)
  {
    return 0;
  }

LABEL_76:
  v74 = v106[16];
  v75 = *(v112 + 48);
  v76 = v115;
  sub_1B7205588(a1 + v74, v115, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7205588(a2 + v74, &v76[v75], &qword_1EB98EBD0, &unk_1B7809780);
  v77 = *(v113 + 48);
  if (v77(v76, 1, v114) == 1)
  {
    if (v77(&v115[v75], 1, v114) == 1)
    {
      sub_1B7205418(v115, &qword_1EB98EBD0, &unk_1B7809780);
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  v78 = v115;
  sub_1B7205588(v115, v111, &qword_1EB98EBD0, &unk_1B7809780);
  if (v77(&v78[v75], 1, v114) == 1)
  {
    (*(v113 + 8))(v111, v114);
LABEL_81:
    v37 = &qword_1EB98FCE0;
    v38 = &qword_1B7813550;
    v39 = v115;
    goto LABEL_42;
  }

  v79 = v113;
  v80 = v115;
  v81 = &v115[v75];
  v82 = v110;
  v83 = v114;
  (*(v113 + 32))(v110, v81, v114);
  sub_1B72FA358(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v84 = v111;
  v85 = sub_1B7800828();
  v86 = *(v79 + 8);
  v86(v82, v83);
  v86(v84, v83);
  sub_1B7205418(v80, &qword_1EB98EBD0, &unk_1B7809780);
  if ((v85 & 1) == 0)
  {
    return 0;
  }

LABEL_83:
  if (*(a1 + v106[17]) != *(a2 + v106[17]))
  {
    return 0;
  }

  v87 = v106[18];
  v88 = (a1 + v87);
  v89 = *(a1 + v87 + 8);
  v90 = (a2 + v87);
  v91 = *(a2 + v87 + 8);
  if (v89)
  {
    if (!v91)
    {
      return 0;
    }
  }

  else
  {
    if (*v88 != *v90)
    {
      LOBYTE(v91) = 1;
    }

    if (v91)
    {
      return 0;
    }
  }

  v92 = v106[19];
  v93 = (a1 + v92);
  v94 = *(a1 + v92 + 8);
  v95 = (a2 + v92);
  v96 = *(a2 + v92 + 8);
  if (v94)
  {
    if (!v96)
    {
      return 0;
    }
  }

  else
  {
    if (*v93 != *v95)
    {
      LOBYTE(v96) = 1;
    }

    if (v96)
    {
      return 0;
    }
  }

  v97 = v106[20];
  v98 = *(a1 + v97);
  v99 = *(a2 + v97);
  if (!v98)
  {
    return !v99;
  }

  if (!v99)
  {
    return 0;
  }

  sub_1B7205540(0, &qword_1EDAFC4C0, 0x1E69E58C0);
  v100 = v98;
  v101 = v99;
  v102 = sub_1B7801558();

  return (v102 & 1) != 0;
}

unint64_t sub_1B75D76D0()
{
  result = qword_1EB998D78;
  if (!qword_1EB998D78)
  {
    result = swift_getWitnessTable("Q$e7H\t\a", &type metadata for MapsMerchant.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998D78);
  }

  return result;
}

unint64_t sub_1B75D7724()
{
  result = qword_1EB998D80;
  if (!qword_1EB998D80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MapsCategory, &type metadata for MapsCategory, v0, v1);
    atomic_store(result, &qword_1EB998D80);
  }

  return result;
}

unint64_t sub_1B75D7778()
{
  result = qword_1EB998DA0;
  if (!qword_1EB998DA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MapsCategory, &type metadata for MapsCategory, v0, v1);
    atomic_store(result, &qword_1EB998DA0);
  }

  return result;
}

uint64_t sub_1B75D77CC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB998D88, &qword_1B7847B90);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B75D781C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B75D788C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B75D7914(uint64_t a1)
{
  sub_1B72F2CB8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EB998DC0, MEMORY[0x1E69E72F0]);
    if (v2 <= 0x3F)
    {
      sub_1B72FA020(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
      if (v3 <= 0x3F)
      {
        sub_1B72F2CB8(319, &qword_1EB998DC8, &type metadata for MapsCategory);
        if (v4 <= 0x3F)
        {
          sub_1B72F2CB8(319, &qword_1EB991370, MEMORY[0x1E6969080]);
          if (v5 <= 0x3F)
          {
            sub_1B72FA020(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
            if (v6 <= 0x3F)
            {
              sub_1B72F2CB8(319, &qword_1EDAFA070, MEMORY[0x1E69E63B0]);
              if (v7 <= 0x3F)
              {
                sub_1B75D7AEC(319);
                if (v8 <= 0x3F)
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

void sub_1B75D7AEC(uint64_t a1)
{
  if (!qword_1EB998DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB998D88, &qword_1B7847B90);
    v1 = sub_1B7801768();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB998DD0);
    }
  }
}

uint64_t getEnumTagSinglePayload for TransactionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransactionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B75D7CA4()
{
  result = qword_1EB998DD8;
  if (!qword_1EB998DD8)
  {
    result = swift_getWitnessTable(asc_1B7847D40, &type metadata for MapsMerchant.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998DD8);
  }

  return result;
}

unint64_t sub_1B75D7CFC()
{
  result = qword_1EB998DE0;
  if (!qword_1EB998DE0)
  {
    result = swift_getWitnessTable(aA_28, &type metadata for MapsMerchant.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998DE0);
  }

  return result;
}

unint64_t sub_1B75D7D54()
{
  result = qword_1EB998DE8;
  if (!qword_1EB998DE8)
  {
    result = swift_getWitnessTable(aY_26, &type metadata for MapsMerchant.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998DE8);
  }

  return result;
}

uint64_t sub_1B75D7DA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632941 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6564496563616C70 && a2 == 0xEF7265696669746ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B7885060 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x67616D496F726568 && a2 == 0xEC0000004C525565 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B78824A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x657461437370616DLL && a2 == 0xEC00000079726F67 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B78824E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7882500 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7373656E69737562 && a2 == 0xEF4C525574616843 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7882520 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x646E617242736168 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7886280 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78862A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B78862C0 == a2)
  {

    return 16;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1B75D8320(uint64_t a1)
{
  v2 = sub_1B75D8F3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D835C(uint64_t a1)
{
  v2 = sub_1B75D8F3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75D8398()
{
  v1 = *v0;
  v2 = 0x676E69646E6570;
  v3 = 0x6465646E75666572;
  v4 = 0x64656E696C636564;
  if (v1 != 4)
  {
    v4 = 0x646564696F76;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7A69726F68747561;
  if (v1 != 1)
  {
    v5 = 1684627824;
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

uint64_t sub_1B75D844C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B75D9DC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B75D8474(uint64_t a1)
{
  v2 = sub_1B75D8D98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D84B0(uint64_t a1)
{
  v2 = sub_1B75D8D98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75D84EC(uint64_t a1)
{
  v2 = sub_1B75D8E40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D8528(uint64_t a1)
{
  v2 = sub_1B75D8E40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75D8564(uint64_t a1)
{
  v2 = sub_1B75D8EE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D85A0(uint64_t a1)
{
  v2 = sub_1B75D8EE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75D85DC(uint64_t a1)
{
  v2 = sub_1B75D8F90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D8618(uint64_t a1)
{
  v2 = sub_1B75D8F90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75D8654(uint64_t a1)
{
  v2 = sub_1B75D8E94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D8690(uint64_t a1)
{
  v2 = sub_1B75D8E94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75D86CC(uint64_t a1)
{
  v2 = sub_1B75D8DEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D8708(uint64_t a1)
{
  v2 = sub_1B75D8DEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OrderPaymentStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t OrderPaymentStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998DF0, &qword_1B7847DC0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998DF8, &qword_1B7847DC8);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E00, &qword_1B7847DD0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E08, &qword_1B7847DD8);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E10, &qword_1B7847DE0);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E18, &qword_1B7847DE8);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E20, &qword_1B7847DF0);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75D8D98();
  sub_1B78023F8();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1B75D8E94();
      v21 = v33;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1B75D8E40();
      v21 = v36;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1B75D8DEC();
      v21 = v39;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1B75D8F3C();
      v21 = v27;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1B75D8EE8();
      v21 = v30;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1B75D8F90();
  v22 = v42;
  sub_1B7801ED8();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

unint64_t sub_1B75D8D98()
{
  result = qword_1EB998E28;
  if (!qword_1EB998E28)
  {
    result = swift_getWitnessTable(asc_1B784845C, &type metadata for OrderPaymentStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998E28);
  }

  return result;
}

unint64_t sub_1B75D8DEC()
{
  result = qword_1EB998E30;
  if (!qword_1EB998E30)
  {
    result = swift_getWitnessTable(byte_1B784840C, &type metadata for OrderPaymentStatus.VoidedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998E30);
  }

  return result;
}

unint64_t sub_1B75D8E40()
{
  result = qword_1EB998E38;
  if (!qword_1EB998E38)
  {
    result = swift_getWitnessTable(byte_1B78483BC, &type metadata for OrderPaymentStatus.DeclinedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998E38);
  }

  return result;
}

unint64_t sub_1B75D8E94()
{
  result = qword_1EB998E40;
  if (!qword_1EB998E40)
  {
    result = swift_getWitnessTable(aM_18, &type metadata for OrderPaymentStatus.RefundedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998E40);
  }

  return result;
}

unint64_t sub_1B75D8EE8()
{
  result = qword_1EB998E48;
  if (!qword_1EB998E48)
  {
    result = swift_getWitnessTable(byte_1B784831C, &type metadata for OrderPaymentStatus.PaidCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998E48);
  }

  return result;
}

unint64_t sub_1B75D8F3C()
{
  result = qword_1EB998E50;
  if (!qword_1EB998E50)
  {
    result = swift_getWitnessTable(byte_1B78482CC, &type metadata for OrderPaymentStatus.AuthorizedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998E50);
  }

  return result;
}

unint64_t sub_1B75D8F90()
{
  result = qword_1EB998E58;
  if (!qword_1EB998E58)
  {
    result = swift_getWitnessTable(asc_1B784827C, &type metadata for OrderPaymentStatus.PendingCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998E58);
  }

  return result;
}

uint64_t OrderPaymentStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E60, &qword_1B7847DF8);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E68, &qword_1B7847E00);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E70, &qword_1B7847E08);
  v46 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E78, &qword_1B7847E10);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E80, &qword_1B7847E18);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E88, &qword_1B7847E20);
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E90, &unk_1B7847E28);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B75D8D98();
  v22 = v56;
  sub_1B78023C8();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v56 = v13;
    v25 = v53;
    v24 = v54;
    v26 = v55;
    v27 = sub_1B7801E98();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_1B721CE5C();
    v30 = v20;
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v34 = sub_1B7801B18();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050, &unk_1B780CC20);
      *v36 = &type metadata for OrderPaymentStatus;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v29;
      if (v29 > 2u)
      {
        v38 = v52;
        if (v29 == 3)
        {
          v63 = 3;
          sub_1B75D8E94();
          sub_1B7801D38();
          (*(v46 + 8))(v25, v41);
        }

        else if (v29 == 4)
        {
          v63 = 4;
          sub_1B75D8E40();
          sub_1B7801D38();
          (*(v48 + 8))(v24, v47);
        }

        else
        {
          v63 = 5;
          sub_1B75D8DEC();
          sub_1B7801D38();
          (*(v49 + 8))(v26, v50);
        }

        (*(v18 + 8))(v30, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v63 = 1;
            sub_1B75D8F3C();
            v31 = v56;
            sub_1B7801D38();
            v33 = v42;
            v32 = v43;
          }

          else
          {
            v63 = 2;
            sub_1B75D8EE8();
            v31 = v51;
            sub_1B7801D38();
            v33 = v44;
            v32 = v45;
          }

          (*(v33 + 8))(v31, v32);
        }

        else
        {
          v63 = 0;
          sub_1B75D8F90();
          sub_1B7801D38();
          (*(v40 + 8))(v23, v39);
        }

        (*(v18 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v38 = v52;
      }

      *v38 = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

unint64_t sub_1B75D979C()
{
  result = qword_1EB998E98;
  if (!qword_1EB998E98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrderPaymentStatus, &type metadata for OrderPaymentStatus, v0, v1);
    atomic_store(result, &qword_1EB998E98);
  }

  return result;
}

unint64_t sub_1B75D98A4()
{
  result = qword_1EB998EA0;
  if (!qword_1EB998EA0)
  {
    result = swift_getWitnessTable(byte_1B7848254, &type metadata for OrderPaymentStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998EA0);
  }

  return result;
}

unint64_t sub_1B75D98FC()
{
  result = qword_1EB998EA8;
  if (!qword_1EB998EA8)
  {
    result = swift_getWitnessTable(asc_1B7848174, &type metadata for OrderPaymentStatus.PendingCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998EA8);
  }

  return result;
}

unint64_t sub_1B75D9954()
{
  result = qword_1EB998EB0;
  if (!qword_1EB998EB0)
  {
    result = swift_getWitnessTable(byte_1B784819C, &type metadata for OrderPaymentStatus.PendingCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998EB0);
  }

  return result;
}

unint64_t sub_1B75D99AC()
{
  result = qword_1EB998EB8;
  if (!qword_1EB998EB8)
  {
    result = swift_getWitnessTable(byte_1B7848124, &type metadata for OrderPaymentStatus.AuthorizedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998EB8);
  }

  return result;
}

unint64_t sub_1B75D9A04()
{
  result = qword_1EB998EC0;
  if (!qword_1EB998EC0)
  {
    result = swift_getWitnessTable(byte_1B784814C, &type metadata for OrderPaymentStatus.AuthorizedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998EC0);
  }

  return result;
}

unint64_t sub_1B75D9A5C()
{
  result = qword_1EB998EC8;
  if (!qword_1EB998EC8)
  {
    result = swift_getWitnessTable(byte_1B78480D4, &type metadata for OrderPaymentStatus.PaidCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998EC8);
  }

  return result;
}

unint64_t sub_1B75D9AB4()
{
  result = qword_1EB998ED0;
  if (!qword_1EB998ED0)
  {
    result = swift_getWitnessTable(a5_12, &type metadata for OrderPaymentStatus.PaidCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998ED0);
  }

  return result;
}

unint64_t sub_1B75D9B0C()
{
  result = qword_1EB998ED8;
  if (!qword_1EB998ED8)
  {
    result = swift_getWitnessTable(aM_19, &type metadata for OrderPaymentStatus.RefundedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998ED8);
  }

  return result;
}

unint64_t sub_1B75D9B64()
{
  result = qword_1EB998EE0;
  if (!qword_1EB998EE0)
  {
    result = swift_getWitnessTable(byte_1B78480AC, &type metadata for OrderPaymentStatus.RefundedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998EE0);
  }

  return result;
}

unint64_t sub_1B75D9BBC()
{
  result = qword_1EB998EE8;
  if (!qword_1EB998EE8)
  {
    result = swift_getWitnessTable(byte_1B7848034, &type metadata for OrderPaymentStatus.DeclinedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998EE8);
  }

  return result;
}

unint64_t sub_1B75D9C14()
{
  result = qword_1EB998EF0;
  if (!qword_1EB998EF0)
  {
    result = swift_getWitnessTable(byte_1B784805C, &type metadata for OrderPaymentStatus.DeclinedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998EF0);
  }

  return result;
}

unint64_t sub_1B75D9C6C()
{
  result = qword_1EB998EF8;
  if (!qword_1EB998EF8)
  {
    result = swift_getWitnessTable(aE7_10, &type metadata for OrderPaymentStatus.VoidedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998EF8);
  }

  return result;
}

unint64_t sub_1B75D9CC4()
{
  result = qword_1EB998F00;
  if (!qword_1EB998F00)
  {
    result = swift_getWitnessTable(asc_1B784800C, &type metadata for OrderPaymentStatus.VoidedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998F00);
  }

  return result;
}

unint64_t sub_1B75D9D1C()
{
  result = qword_1EB998F08;
  if (!qword_1EB998F08)
  {
    result = swift_getWitnessTable(asc_1B78481C4, &type metadata for OrderPaymentStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998F08);
  }

  return result;
}

unint64_t sub_1B75D9D74()
{
  result = qword_1EB998F10;
  if (!qword_1EB998F10)
  {
    result = swift_getWitnessTable(aE_21, &type metadata for OrderPaymentStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998F10);
  }

  return result;
}

uint64_t sub_1B75D9DC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEA00000000006465 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684627824 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465646E75666572 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656E696C636564 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646564696F76 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_1B75DA01C(void *a1, uint64_t a2, uint64_t a3)
{
  ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(a3);
  if (!v3)
  {
    v7 = v6;
    v8 = [v6 contactInsightObject];
    if (!v8)
    {
      type metadata accessor for ManagedContactTransactionInsight();
      v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v7 setContactInsightObject_];
    }

    v9 = [a1 peerPaymentCounterpartHandle];
    if (v9)
    {
      v10 = v9;
      [v8 setPeerPaymentCounterpartHandle_];
    }
  }
}

uint64_t BankConnectService.loadPaymentInfo(for:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = type metadata accessor for BankConnectService.Message(0);
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75DA1E4, 0, 0);
}

uint64_t sub_1B75DA1E4()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[10];
  v0[15] = *(v0[12] + 16);
  *v1 = v3;
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B726B820, 0, 0);
}

uint64_t BankConnectService.loadPaymentInfo(for:)(uint64_t *a1)
{
  *(v2 + 80) = v1;
  *(v2 + 88) = type metadata accessor for BankConnectService.Message(0);
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v5;
  *(v2 + 112) = *(a1 + 1);
  *(v2 + 128) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B75DA31C, 0, 0);
}

uint64_t sub_1B75DA31C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v0[17] = *(v0[10] + 16);
  *v5 = v3;
  v5[1] = v4;
  v5[2] = v1;
  v5[3] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B726BC10, 0, 0);
}

uint64_t sub_1B75DA3C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B723838C;

  return BankConnectService.loadPaymentInfo(for:)(a1, a2);
}

uint64_t sub_1B75DA468(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7201BB0;

  return BankConnectService.loadPaymentInfo(for:)(a1);
}

uint64_t dispatch thunk of BankConnectPaymentInfoUpdating.loadPaymentInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B723838C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BankConnectPaymentInfoUpdating.loadPaymentInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7201BB0;

  return v9(a1, a2, a3);
}

id MapsHeroImageResult.Entity.xpcValue.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = type metadata accessor for MapsHeroImageResult.Entity.XPC();
  v4 = objc_allocWithZone(v3);
  v4[OBJC_IVAR___XPCMapsHeroImageResultEntity_value] = v2;
  v6.receiver = v4;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, sel_init);
}

id MapsHeroImageResult.xpcValue.getter()
{
  v1 = type metadata accessor for MapsHeroImageResult(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75DBEA8(v0, v3);
  v4 = type metadata accessor for MapsHeroImageResult.XPC(0);
  v5 = objc_allocWithZone(v4);
  sub_1B75DBEA8(v3, v5 + OBJC_IVAR___XPCMapsHeroImageResult_value);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_1B74C00F8(v3);
  return v6;
}

uint64_t sub_1B75DA88C(uint64_t a1)
{
  v2 = sub_1B75DBFD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DA8C8(uint64_t a1)
{
  v2 = sub_1B75DBFD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75DA904(uint64_t a1)
{
  v2 = sub_1B75DBF2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DA940(uint64_t a1)
{
  v2 = sub_1B75DBF2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75DA97C(uint64_t a1)
{
  v2 = sub_1B75DBF80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DA9B8(uint64_t a1)
{
  v2 = sub_1B75DBF80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsHeroImageResult.Entity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998F28, &qword_1B7848550);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998F30, &qword_1B7848558);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998F38, &qword_1B7848560);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75DBF2C();
  sub_1B78023F8();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1B75DBF80();
    v14 = v18;
    sub_1B7801ED8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1B75DBFD4();
    sub_1B7801ED8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t MapsHeroImageResult.Entity.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t MapsHeroImageResult.Entity.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998F58, &qword_1B7848568);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998F60, &qword_1B7848570);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB998F68, &unk_1B7848578);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75DBF2C();
  v12 = v31;
  sub_1B78023C8();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1B7801E98();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1B721CE4C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1B7801B18();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050, &unk_1B780CC20);
      *v22 = &type metadata for MapsHeroImageResult.Entity;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1B75DBF80();
        sub_1B7801D38();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1B75DBFD4();
        sub_1B7801D38();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t MapsHeroImageResult.init(attributionName:url:entity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X8>)
{
  v7 = *a4;
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for MapsHeroImageResult(0);
  v9 = *(v8 + 20);
  v10 = sub_1B77FF4F8();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  a5[*(v8 + 24)] = v7;
  return result;
}

uint64_t sub_1B75DB298()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x797469746E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_1B75DB2F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B75DC8CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B75DB31C(uint64_t a1)
{
  v2 = sub_1B75DC2BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DB358(uint64_t a1)
{
  v2 = sub_1B75DC2BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsHeroImageResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998F78, &qword_1B7848588);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75DC2BC();
  sub_1B78023F8();
  v11[15] = 0;
  sub_1B7801EF8();
  if (!v2)
  {
    v9 = type metadata accessor for MapsHeroImageResult(0);
    v11[14] = 1;
    sub_1B77FF4F8();
    sub_1B7535C74(&qword_1EB98F700, MEMORY[0x1E6968FB8]);
    sub_1B7801FC8();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_1B720A3DC();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

void MapsHeroImageResult.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v23 = sub_1B77FF4F8();
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998F88, &qword_1B7848590);
  v6 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v8 = &v18 - v7;
  v22 = type metadata accessor for MapsHeroImageResult(0);
  MEMORY[0x1EEE9AC00](v22);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75DC2BC();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v18 = v6;
    v27 = 0;
    *v10 = sub_1B7801D78();
    v10[1] = v11;
    v26 = 1;
    sub_1B7535C74(&qword_1EB98F730, MEMORY[0x1E6968FD0]);
    v12 = v5;
    v13 = v23;
    sub_1B7801E48();
    v14 = v10;
    v15 = v22;
    v16 = v14;
    (*(v21 + 32))(v14 + *(v22 + 20), v12, v13);
    v24 = 2;
    sub_1B720A430();
    v17 = v20;
    sub_1B7801E48();
    (*(v18 + 8))(v8, v17);
    *(v16 + *(v15 + 24)) = v25;
    sub_1B75DBEA8(v16, v19);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B74C00F8(v16);
  }
}

id MapsHeroImageResult.XPC.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B75DBEA8(a1, v3 + OBJC_IVAR___XPCMapsHeroImageResult_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B74C00F8(a1);
  return v4;
}

id MapsHeroImageResult.XPC.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1B75DBEA8(a1, v1 + OBJC_IVAR___XPCMapsHeroImageResult_value);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B74C00F8(a1);
  return v4;
}

id MapsHeroImageResult.XPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B7208F0C(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id MapsHeroImageResult.XPC.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B7208F0C(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id MapsHeroImageResult.XPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1B75DBD34(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B75DBEA8(a1, v3 + OBJC_IVAR___XPCMapsHeroImageResult_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B74C00F8(a1);
  return v4;
}

id MapsHeroImageResult.Entity.XPC.__allocating_init(value:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___XPCMapsHeroImageResultEntity_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MapsHeroImageResult.Entity.XPC.init(value:)(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___XPCMapsHeroImageResultEntity_value] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B75DBEA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsHeroImageResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B75DBF2C()
{
  result = qword_1EB998F40;
  if (!qword_1EB998F40)
  {
    result = swift_getWitnessTable(aE_22, &type metadata for MapsHeroImageResult.Entity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998F40);
  }

  return result;
}

unint64_t sub_1B75DBF80()
{
  result = qword_1EB998F48;
  if (!qword_1EB998F48)
  {
    result = swift_getWitnessTable(byte_1B7848A24, &type metadata for MapsHeroImageResult.Entity.MerchantCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998F48);
  }

  return result;
}

unint64_t sub_1B75DBFD4()
{
  result = qword_1EB998F50;
  if (!qword_1EB998F50)
  {
    result = swift_getWitnessTable(byte_1B78489D4, &type metadata for MapsHeroImageResult.Entity.BrandCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998F50);
  }

  return result;
}

id MapsHeroImageResult.Entity.XPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B720922C(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id MapsHeroImageResult.Entity.XPC.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B720922C(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id sub_1B75DC1C8(char *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___XPCMapsHeroImageResultEntity_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t _s10FinanceKit19MapsHeroImageResultV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v5)
  {
LABEL_12:
    v8 = 0;
    return v8 & 1;
  }

  v7 = type metadata accessor for MapsHeroImageResult(0);
  if ((sub_1B77FF458() & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(a1 + *(v7 + 24)) ^ *(a2 + *(v7 + 24)) ^ 1;
  return v8 & 1;
}

unint64_t sub_1B75DC2BC()
{
  result = qword_1EB998F80;
  if (!qword_1EB998F80)
  {
    result = swift_getWitnessTable(a5_13, &type metadata for MapsHeroImageResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998F80);
  }

  return result;
}

unint64_t sub_1B75DC314()
{
  result = qword_1EB998F90;
  if (!qword_1EB998F90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MapsHeroImageResult.Entity, &type metadata for MapsHeroImageResult.Entity, v0, v1);
    atomic_store(result, &qword_1EB998F90);
  }

  return result;
}

void sub_1B75DC390(uint64_t a1)
{
  sub_1B7280028();
  if (v1 <= 0x3F)
  {
    sub_1B77FF4F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B75DC434(uint64_t a1)
{
  result = type metadata accessor for MapsHeroImageResult(319);
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

unint64_t sub_1B75DC560()
{
  result = qword_1EB998FC8;
  if (!qword_1EB998FC8)
  {
    result = swift_getWitnessTable(byte_1B78488A4, &type metadata for MapsHeroImageResult.Entity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998FC8);
  }

  return result;
}

unint64_t sub_1B75DC5B8()
{
  result = qword_1EB998FD0;
  if (!qword_1EB998FD0)
  {
    result = swift_getWitnessTable(byte_1B784895C, &type metadata for MapsHeroImageResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998FD0);
  }

  return result;
}

unint64_t sub_1B75DC610()
{
  result = qword_1EB998FD8;
  if (!qword_1EB998FD8)
  {
    result = swift_getWitnessTable(asc_1B78488CC, &type metadata for MapsHeroImageResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998FD8);
  }

  return result;
}

unint64_t sub_1B75DC668()
{
  result = qword_1EB998FE0;
  if (!qword_1EB998FE0)
  {
    result = swift_getWitnessTable(asc_1B78488F4, &type metadata for MapsHeroImageResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998FE0);
  }

  return result;
}

unint64_t sub_1B75DC6C0()
{
  result = qword_1EB998FE8;
  if (!qword_1EB998FE8)
  {
    result = swift_getWitnessTable(asc_1B78487C4, &type metadata for MapsHeroImageResult.Entity.BrandCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998FE8);
  }

  return result;
}

unint64_t sub_1B75DC718()
{
  result = qword_1EB998FF0;
  if (!qword_1EB998FF0)
  {
    result = swift_getWitnessTable(aE_23, &type metadata for MapsHeroImageResult.Entity.BrandCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998FF0);
  }

  return result;
}

unint64_t sub_1B75DC770()
{
  result = qword_1EB998FF8;
  if (!qword_1EB998FF8)
  {
    result = swift_getWitnessTable(asc_1B7848774, &type metadata for MapsHeroImageResult.Entity.MerchantCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB998FF8);
  }

  return result;
}

unint64_t sub_1B75DC7C8()
{
  result = qword_1EB999000;
  if (!qword_1EB999000)
  {
    result = swift_getWitnessTable(byte_1B784879C, &type metadata for MapsHeroImageResult.Entity.MerchantCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999000);
  }

  return result;
}

unint64_t sub_1B75DC820()
{
  result = qword_1EB999008;
  if (!qword_1EB999008)
  {
    result = swift_getWitnessTable(byte_1B7848814, &type metadata for MapsHeroImageResult.Entity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999008);
  }

  return result;
}

unint64_t sub_1B75DC878()
{
  result = qword_1EB999010;
  if (!qword_1EB999010)
  {
    result = swift_getWitnessTable(byte_1B784883C, &type metadata for MapsHeroImageResult.Entity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999010);
  }

  return result;
}

uint64_t sub_1B75DC8CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475626972747461 && a2 == 0xEF656D614E6E6F69;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id ManagedCascadeExtractedOrderTransaction.__allocating_init(_:positionIndex:context:)(uint64_t *a1, __int16 a2, void *a3)
{
  v5 = a1[1];
  v6 = a1[3];
  v7 = a1[5];
  v8 = a1[7];
  v18 = *(a1 + 64);
  v9 = a1[10];
  v10 = [objc_allocWithZone(v3) initWithContext_];
  v11 = v10;
  if (v5)
  {

    v12 = sub_1B7800838();
  }

  else
  {
    v12 = 0;
  }

  [v10 setAmount_];

  if (v6)
  {

    v13 = sub_1B7800838();
  }

  else
  {
    v13 = 0;
  }

  [v10 setCurrencyCode_];

  if (v7)
  {

    v14 = sub_1B7800838();
  }

  else
  {
    v14 = 0;
  }

  [v10 setPaymentMethodDisplayName_];

  if (v8)
  {

    v15 = sub_1B7800838();
  }

  else
  {
    v15 = 0;
  }

  [v10 setPaymentMethodLastFourDigits_];

  [v10 setPaymentMethodIsApplePay_];
  if (v9)
  {

    v16 = sub_1B7800838();
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v16 = 0;
  }

  [v10 setTransactionIdentifier_];

  [v10 setPositionIndex_];
  return v10;
}

id ManagedCascadeExtractedOrderTransaction.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCascadeExtractedOrderTransaction.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCascadeExtractedOrderTransaction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Date.FormatStyle.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1B77FF378();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1B77FFCF8();
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B77FFC88();
  v8 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B77FFAF8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99D700, &qword_1B780F110);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v25 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B18, &unk_1B7817CD0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v25 - v19;
  v21 = sub_1B77FF648();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = sub_1B77FF628();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  (*(v12 + 16))(v14, a1, v11);
  v23 = type metadata accessor for FormatterConfiguration(0);
  (*(v8 + 16))(v10, a1 + *(v23 + 20), v25);
  (*(v5 + 16))(v7, a1 + *(v23 + 24), v26);
  sub_1B77FF368();
  sub_1B77FF668();
  return sub_1B75DE448(a1, type metadata accessor for FormatterConfiguration);
}

uint64_t sub_1B75DD1AC(uint64_t a1)
{
  v2 = sub_1B75DD5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DD1E8(uint64_t a1)
{
  v2 = sub_1B75DD5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75DD224(uint64_t a1)
{
  v2 = sub_1B75DD66C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DD260(uint64_t a1)
{
  v2 = sub_1B75DD66C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75DD29C(uint64_t a1)
{
  v2 = sub_1B75DD618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DD2D8(uint64_t a1)
{
  v2 = sub_1B75DD618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.DateAndTimeFormatter.Style.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999020, &qword_1B7848B10);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999028, &qword_1B7848B18);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999030, &qword_1B7848B20);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75DD5C4();
  sub_1B78023F8();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1B75DD618();
    v14 = v18;
    sub_1B7801ED8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1B75DD66C();
    sub_1B7801ED8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1B75DD5C4()
{
  result = qword_1EB999038;
  if (!qword_1EB999038)
  {
    result = swift_getWitnessTable(byte_1B7849304, &_s20DateAndTimeFormatterV5StyleO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999038);
  }

  return result;
}

unint64_t sub_1B75DD618()
{
  result = qword_1EB999040;
  if (!qword_1EB999040)
  {
    result = swift_getWitnessTable(byte_1B78492B4, &_s20DateAndTimeFormatterV5StyleO14WideCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999040);
  }

  return result;
}

unint64_t sub_1B75DD66C()
{
  result = qword_1EB999048;
  if (!qword_1EB999048)
  {
    result = swift_getWitnessTable(aU_20, &_s20DateAndTimeFormatterV5StyleO15ShortCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999048);
  }

  return result;
}

uint64_t Order.DateAndTimeFormatter.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t Order.DateAndTimeFormatter.Style.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999050, &qword_1B7848B28);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999058, &qword_1B7848B30);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999060, &qword_1B7848B38);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75DD5C4();
  v12 = v31;
  sub_1B78023C8();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1B7801E98();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1B721CE4C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1B7801B18();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050, &unk_1B780CC20);
      *v22 = &type metadata for Order.DateAndTimeFormatter.Style;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1B75DD618();
        sub_1B7801D38();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1B75DD66C();
        sub_1B7801D38();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t Order.DateAndTimeFormatter.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Order.DateAndTimeFormatter(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t Order.DateAndTimeFormatter.style.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Order.DateAndTimeFormatter(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t Order.DateAndTimeFormatter.dateStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Order.DateAndTimeFormatter(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t Order.DateAndTimeFormatter.dateStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Order.DateAndTimeFormatter(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t Order.DateAndTimeFormatter.init(configuration:style:dateStyle:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  sub_1B77FFA68();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  v8 = type metadata accessor for Order.DateAndTimeFormatter(0);
  *(a4 + *(v8 + 20)) = v6;
  *(a4 + *(v8 + 24)) = v7;

  return sub_1B72A2B9C(a1, a4);
}

uint64_t Order.DateAndTimeFormatter.format(_:now:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  v46 = a1;
  v4 = sub_1B77FFC68();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1B77FF988();
  v6 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatterConfiguration(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Order.TimeFormatter(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SingleDateFormatter(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75E08BC(v3, v18, type metadata accessor for FormatterConfiguration);
  v19 = type metadata accessor for Order.DateAndTimeFormatter(0);
  v18[*(v16 + 28)] = *(v3 + *(v19 + 24));
  v20 = v46;
  v48 = SingleDateFormatter.format(_:now:)(v46, v49);
  v49 = v21;
  sub_1B75DE448(v18, type metadata accessor for SingleDateFormatter);
  sub_1B75E08BC(v3, v11, type metadata accessor for FormatterConfiguration);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  sub_1B72A2B9C(v11, v14);
  sub_1B77FF938();
  v45 = Order.TimeFormatter.format(_:now:)(v20);
  v23 = v22;
  (*(v6 + 8))(v8, v47);
  sub_1B75DE448(v14, type metadata accessor for Order.TimeFormatter);
  v25 = v50;
  v24 = v51;
  v26 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x1E6969A58], v52);
  v27 = sub_1B77FFC78();
  (*(v24 + 8))(v25, v26);
  if (*(v3 + *(v19 + 20)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1B7808C50;
    v29 = MEMORY[0x1E69E6158];
    *(v28 + 56) = MEMORY[0x1E69E6158];
    v30 = sub_1B721FF04();
    v31 = v49;
    *(v28 + 32) = v48;
    *(v28 + 40) = v31;
    *(v28 + 96) = v29;
    *(v28 + 104) = v30;
    v32 = v45;
    *(v28 + 64) = v30;
    *(v28 + 72) = v32;
    *(v28 + 80) = v23;
    if (v27 == 1)
    {
      if (qword_1EDAF93A8 != -1)
      {
        swift_once();
      }

      v33 = qword_1EDAF93B0;
    }

    else
    {
      if (qword_1EDAF93A8 != -1)
      {
        swift_once();
      }

      v33 = qword_1EDAF93B0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1B7808C50;
    v35 = MEMORY[0x1E69E6158];
    *(v34 + 56) = MEMORY[0x1E69E6158];
    v36 = sub_1B721FF04();
    v37 = v49;
    *(v34 + 32) = v48;
    *(v34 + 40) = v37;
    *(v34 + 96) = v35;
    *(v34 + 104) = v36;
    v38 = v45;
    *(v34 + 64) = v36;
    *(v34 + 72) = v38;
    *(v34 + 80) = v23;
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v33 = qword_1EDAF93B0;
  }

  v39 = sub_1B7800838();
  v40 = sub_1B7800838();
  v41 = sub_1B7800838();
  v42 = [v33 localizedStringForKey:v39 value:v40 table:v41];

  sub_1B7800868();
  v43 = sub_1B78008A8();

  return v43;
}

uint64_t sub_1B75DE448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Order.TimeFormatter.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B77FFA68();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFBC8();
  sub_1B77FFCC8();

  return sub_1B72A2B9C(a1, a2);
}

uint64_t sub_1B75DE518()
{
  v1 = 0x656C797473;
  if (*v0 != 1)
  {
    v1 = 0x6C79745365746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_1B75DE580@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B75E126C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B75DE5A8(uint64_t a1)
{
  v2 = sub_1B75E0778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DE5E4(uint64_t a1)
{
  v2 = sub_1B75E0778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.DateAndTimeFormatter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999068, &qword_1B7848B40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75E0778();
  sub_1B78023F8();
  v11[15] = 0;
  type metadata accessor for FormatterConfiguration(0);
  sub_1B75E0820(&qword_1EB990850, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for Order.DateAndTimeFormatter(0);
    v11[14] = *(v3 + *(v9 + 20));
    v11[13] = 1;
    sub_1B75E07CC();
    sub_1B7801FC8();
    v11[12] = *(v3 + *(v9 + 24));
    v11[11] = 2;
    sub_1B7442868();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Order.DateAndTimeFormatter.hash(into:)(uint64_t a1)
{
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  v2 = type metadata accessor for Order.DateAndTimeFormatter(0);
  MEMORY[0x1B8CA6620](*(v1 + *(v2 + 20)));
  return MEMORY[0x1B8CA6620](*(v1 + *(v2 + 24)));
}

uint64_t Order.DateAndTimeFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  v1 = type metadata accessor for Order.DateAndTimeFormatter(0);
  MEMORY[0x1B8CA6620](*(v0 + *(v1 + 20)));
  MEMORY[0x1B8CA6620](*(v0 + *(v1 + 24)));
  return sub_1B7802368();
}

uint64_t Order.DateAndTimeFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for FormatterConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999080, &qword_1B7848B48);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Order.DateAndTimeFormatter(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75E0778();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = type metadata accessor for FormatterConfiguration;
  }

  else
  {
    v12 = v17;
    v24 = 0;
    sub_1B75E0820(&qword_1EB990870, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
    v13 = v18;
    sub_1B7801E48();
    sub_1B72A2B9C(v19, v11);
    v22 = 1;
    sub_1B75E0868();
    sub_1B7801E48();
    v11[*(v9 + 20)] = v23;
    v20 = 2;
    sub_1B74428BC();
    sub_1B7801E48();
    (*(v12 + 8))(v8, v13);
    v11[*(v9 + 24)] = v21;
    sub_1B75E08BC(v11, v16, type metadata accessor for Order.DateAndTimeFormatter);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = type metadata accessor for Order.DateAndTimeFormatter;
  }

  return sub_1B75DE448(v11, v15);
}

uint64_t sub_1B75DEE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Order.DateAndTimeFormatter.format(_:now:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B75DEEA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = Order.DateAndTimeFormatter.format(_:now:)(a1, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B75DEFC0(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](*(v1 + *(a1 + 20)));
  MEMORY[0x1B8CA6620](*(v1 + *(a1 + 24)));
  return sub_1B7802368();
}

uint64_t sub_1B75DF13C(uint64_t a1, uint64_t a2)
{
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](*(v2 + *(a2 + 20)));
  return MEMORY[0x1B8CA6620](*(v2 + *(a2 + 24)));
}

uint64_t sub_1B75DF29C(uint64_t a1, uint64_t a2)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](*(v2 + *(a2 + 20)));
  MEMORY[0x1B8CA6620](*(v2 + *(a2 + 24)));
  return sub_1B7802368();
}

uint64_t Order.TimeFormatter.format(_:now:)(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1B77FF378();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FFCF8();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1B77FFC88();
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B77FFAF8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99D700, &qword_1B780F110);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B18, &unk_1B7817CD0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  v19 = sub_1B77FF7D8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B77FF648();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  sub_1B77FF618();
  v24 = sub_1B77FF628();
  (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
  (*(v10 + 16))(v12, v2, v9);
  v25 = type metadata accessor for FormatterConfiguration(0);
  (*(v7 + 16))(v29, v2 + *(v25 + 20), v30);
  (*(v32 + 16))(v31, v2 + *(v25 + 24), v33);
  sub_1B77FF368();
  sub_1B77FF668();
  v26 = sub_1B77FF788();
  (*(v20 + 8))(v22, v19);
  return v26;
}

BOOL static Order.TimeFormatter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (MEMORY[0x1B8CA3D90]())
  {
    v4 = type metadata accessor for FormatterConfiguration(0);
    if (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) != 0 && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B75DF948(uint64_t a1)
{
  v2 = sub_1B75E0924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DF984(uint64_t a1)
{
  v2 = sub_1B75E0924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.TimeFormatter.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999090, &qword_1B7848B50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75E0924();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B75E0820(&qword_1EB990850, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Order.TimeFormatter.hash(into:)(uint64_t a1)
{
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return sub_1B7800768();
}

uint64_t Order.TimeFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t Order.TimeFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for FormatterConfiguration(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9990A0, &qword_1B7848B58);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Order.TimeFormatter(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75E0924();
  v12 = v17;
  sub_1B78023C8();
  if (!v12)
  {
    v13 = v15;
    sub_1B75E0820(&qword_1EB990870, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B72A2B9C(v5, v11);
    sub_1B75E08BC(v11, v13, type metadata accessor for Order.TimeFormatter);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B75DE448(v11, type metadata accessor for Order.TimeFormatter);
}

uint64_t sub_1B75E005C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Order.TimeFormatter.format(_:now:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B75E0084@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = Order.TimeFormatter.format(_:now:)(a1);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B75E0180(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999090, &qword_1B7848B50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75E0924();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B75E0820(&qword_1EB990850, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B75E02F8()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B75E0448(uint64_t a1)
{
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return sub_1B7800768();
}

uint64_t sub_1B75E0588(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t _s10FinanceKit5OrderV20DateAndTimeFormatterV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1B8CA3D90]() & 1) != 0 && (v4 = type metadata accessor for FormatterConfiguration(0), (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20))) && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)) & 1) != 0 && (v5 = type metadata accessor for Order.DateAndTimeFormatter(0), *(a1 + *(v5 + 20)) == *(a2 + *(v5 + 20))))
  {
    v6 = *(a1 + *(v5 + 24)) ^ *(a2 + *(v5 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1B75E0778()
{
  result = qword_1EB999070;
  if (!qword_1EB999070)
  {
    result = swift_getWitnessTable(byte_1B7849214, &_s20DateAndTimeFormatterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999070);
  }

  return result;
}

unint64_t sub_1B75E07CC()
{
  result = qword_1EB999078;
  if (!qword_1EB999078)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.DateAndTimeFormatter.Style, &type metadata for Order.DateAndTimeFormatter.Style, v0, v1);
    atomic_store(result, &qword_1EB999078);
  }

  return result;
}

uint64_t sub_1B75E0820(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B75E0868()
{
  result = qword_1EB999088;
  if (!qword_1EB999088)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.DateAndTimeFormatter.Style, &type metadata for Order.DateAndTimeFormatter.Style, v0, v1);
    atomic_store(result, &qword_1EB999088);
  }

  return result;
}

uint64_t sub_1B75E08BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B75E0924()
{
  result = qword_1EB999098;
  if (!qword_1EB999098)
  {
    result = swift_getWitnessTable(byte_1B78491C4, &_s13TimeFormatterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999098);
  }

  return result;
}

unint64_t sub_1B75E097C()
{
  result = qword_1EB9990A8;
  if (!qword_1EB9990A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.DateAndTimeFormatter.Style, &type metadata for Order.DateAndTimeFormatter.Style, v0, v1);
    atomic_store(result, &qword_1EB9990A8);
  }

  return result;
}

uint64_t sub_1B75E09D0(uint64_t a1)
{
  result = sub_1B75E0820(&qword_1EB9990B0, type metadata accessor for Order.DateAndTimeFormatter, protocol conformance descriptor for Order.DateAndTimeFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B75E0B48(uint64_t a1)
{
  result = sub_1B75E0820(&qword_1EB9990D8, type metadata accessor for Order.TimeFormatter, protocol conformance descriptor for Order.TimeFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B75E0CE8(uint64_t a1)
{
  result = type metadata accessor for FormatterConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B75E0DF8()
{
  result = qword_1EB999120;
  if (!qword_1EB999120)
  {
    result = swift_getWitnessTable(byte_1B784902C, &_s20DateAndTimeFormatterV5StyleO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999120);
  }

  return result;
}

unint64_t sub_1B75E0E50()
{
  result = qword_1EB999128;
  if (!qword_1EB999128)
  {
    result = swift_getWitnessTable(aE_24, &_s20DateAndTimeFormatterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999128);
  }

  return result;
}

unint64_t sub_1B75E0EA8()
{
  result = qword_1EB999130;
  if (!qword_1EB999130)
  {
    result = swift_getWitnessTable(byte_1B784919C, &_s13TimeFormatterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999130);
  }

  return result;
}

unint64_t sub_1B75E0F00()
{
  result = qword_1EB999138;
  if (!qword_1EB999138)
  {
    result = swift_getWitnessTable(byte_1B784910C, &_s13TimeFormatterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999138);
  }

  return result;
}

unint64_t sub_1B75E0F58()
{
  result = qword_1EB999140;
  if (!qword_1EB999140)
  {
    result = swift_getWitnessTable(byte_1B7849134, &_s13TimeFormatterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999140);
  }

  return result;
}

unint64_t sub_1B75E0FB0()
{
  result = qword_1EB999148;
  if (!qword_1EB999148)
  {
    result = swift_getWitnessTable(byte_1B7849054, &_s20DateAndTimeFormatterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999148);
  }

  return result;
}

unint64_t sub_1B75E1008()
{
  result = qword_1EB999150;
  if (!qword_1EB999150)
  {
    result = swift_getWitnessTable(byte_1B784907C, &_s20DateAndTimeFormatterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999150);
  }

  return result;
}

unint64_t sub_1B75E1060()
{
  result = qword_1EB999158;
  if (!qword_1EB999158)
  {
    result = swift_getWitnessTable(byte_1B7848F4C, &_s20DateAndTimeFormatterV5StyleO15ShortCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999158);
  }

  return result;
}

unint64_t sub_1B75E10B8()
{
  result = qword_1EB999160;
  if (!qword_1EB999160)
  {
    result = swift_getWitnessTable(byte_1B7848F74, &_s20DateAndTimeFormatterV5StyleO15ShortCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999160);
  }

  return result;
}

unint64_t sub_1B75E1110()
{
  result = qword_1EB999168;
  if (!qword_1EB999168)
  {
    result = swift_getWitnessTable(byte_1B7848EFC, &_s20DateAndTimeFormatterV5StyleO14WideCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999168);
  }

  return result;
}

unint64_t sub_1B75E1168()
{
  result = qword_1EB999170;
  if (!qword_1EB999170)
  {
    result = swift_getWitnessTable(aE7_11, &_s20DateAndTimeFormatterV5StyleO14WideCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999170);
  }

  return result;
}

unint64_t sub_1B75E11C0()
{
  result = qword_1EB999178;
  if (!qword_1EB999178)
  {
    result = swift_getWitnessTable(aUE7_3, &_s20DateAndTimeFormatterV5StyleO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999178);
  }

  return result;
}

unint64_t sub_1B75E1218()
{
  result = qword_1EB999180;
  if (!qword_1EB999180)
  {
    result = swift_getWitnessTable(aME7_0, &_s20DateAndTimeFormatterV5StyleO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999180);
  }

  return result;
}

uint64_t sub_1B75E126C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C79745365746164 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t Order.PickupFulfillment.init(_:previewResourceLoader:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828, &unk_1B781C5A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v78 = &v72 - v6;
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Order.PickupFulfillment(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 11) = 0;
  *(v13 + 72) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 40) = 0u;
  v14 = *(v11 + 48);
  v15 = type metadata accessor for Order.FulfillmentWindow(0);
  v16 = *(*(v15 - 8) + 56);
  v77 = v14;
  v16(&v13[v14], 1, 1, v15);
  v79 = v10;
  v17 = *(v10 + 52);
  v73 = v8;
  v74 = v7;
  v18 = *(v8 + 56);
  v76 = v17;
  v18(&v13[v17], 1, 1, v7);
  v19 = *a1;
  v82[2] = a2;
  sub_1B75EBB14(sub_1B742CB48, v82, v19);
  *v13 = v20;
  v13[8] = *(a1 + 8);
  v22 = a1[2];
  v21 = a1[3];
  v81 = a2;
  sub_1B719B06C(a2, v98);
  if (v21)
  {
    v24 = v99;
    v23 = v100;
    __swift_project_boxed_opaque_existential_1(v98, v99);
    v25 = *(v23 + 8);

    v26 = v25(v22, v21, v24, v23);
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v98);
  *(v13 + 2) = v26;
  *(v13 + 3) = v28;
  v29 = a1[4];
  if (v29 == 1)
  {
    v30 = 0;
  }

  else
  {
    v87 = *(a1 + 9);
    v88 = *(a1 + 11);
    v89 = *(a1 + 13);
    v90 = *(a1 + 15);
    v85 = *(a1 + 5);
    v86 = *(a1 + 7);
    sub_1B7205540(0, &qword_1EB990D70, 0x1E695CF30);
    v84 = v29;
    v91 = v29;
    v31 = *(a1 + 11);
    v94 = *(a1 + 9);
    v95 = v31;
    v32 = *(a1 + 15);
    v96 = *(a1 + 13);
    v97 = v32;
    v33 = *(a1 + 7);
    v92 = *(a1 + 5);
    v93 = v33;
    sub_1B74C6B2C(&v91, v83);
    v30 = CNMutablePostalAddress.init(rawAddress:)(&v84);
  }

  v34 = v81;
  *(v13 + 4) = v30;
  v35 = a1[21];
  if (v35)
  {
    v36 = a1[22];
    v37 = a1[23];
    v39 = a1[19];
    v38 = a1[20];
    v40 = a1[18];
    v91 = a1[17];
    *&v92 = v40;
    BYTE8(v92) = v39;
    *&v93 = v38;
    *(&v93 + 1) = v35;
    *&v94 = v36;
    *(&v94 + 1) = v37;
    sub_1B719B06C(v34, v83);

    Barcode.init(_:previewResourceLoader:)(&v91, v83, &v84);
    v41 = v85;
    v75 = v84;
    v42 = BYTE8(v85);
    v44 = *(&v86 + 1);
    v43 = v86;
    v35 = *(&v87 + 1);
    v45 = v87;
  }

  else
  {
    v75 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
  }

  sub_1B74C69A8(*(v13 + 5), *(v13 + 6), *(v13 + 7), *(v13 + 8), *(v13 + 9), *(v13 + 10), *(v13 + 11));
  *(v13 + 5) = v75;
  *(v13 + 6) = v41;
  *(v13 + 7) = v42;
  *(v13 + 8) = v43;
  *(v13 + 9) = v44;
  *(v13 + 10) = v45;
  *(v13 + 11) = v35;
  v46 = a1[28];
  v47 = a1[29];
  sub_1B719B06C(v34, &v91);
  if (v47)
  {
    v48 = v93;
    __swift_project_boxed_opaque_existential_1(&v91, v93);
    v49 = *(*(&v48 + 1) + 8);

    v50 = v49(v46, v47, v48, *(&v48 + 1));
    v34 = v81;
    v51 = v50;
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(&v91);
  *(v13 + 12) = v51;
  *(v13 + 13) = v53;
  v54 = v34[3];
  v55 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v54);
  *(v13 + 14) = (*(v55 + 8))(a1[30], a1[31], v54, v55);
  *(v13 + 15) = v56;
  if (*(a1 + 217))
  {
    v57 = 0;
  }

  else
  {
    v58 = *(a1 + 25);
    v59 = *(a1 + 24);
    if (a1[27])
    {
      v60 = 0.0;
    }

    else
    {
      v60 = *(a1 + 26);
    }

    v61 = objc_allocWithZone(MEMORY[0x1E6985C40]);
    v62 = v72;
    sub_1B77FF978();
    v63 = sub_1B77FF8B8();
    (*(v73 + 8))(v62, v74);
    v57 = [v61 initWithCoordinate:v63 altitude:v59 horizontalAccuracy:v58 verticalAccuracy:v60 timestamp:{0.0, 1.0}];
  }

  *(v13 + 16) = v57;
  v64 = v78;
  RawOrderPickupFulfillment.pickupWindow.getter(v78);
  sub_1B7213740(v64, &v13[v77], &qword_1EB990828, &unk_1B781C5A0);
  v65 = type metadata accessor for RawOrderPickupFulfillment(0);
  sub_1B75E4514(a1 + *(v65 + 56), &v13[v76]);
  v66 = (a1 + *(v65 + 60));
  v68 = *v66;
  v67 = v66[1];

  sub_1B75E4F98(a1, type metadata accessor for RawOrderPickupFulfillment);
  v69 = v80;
  v70 = &v13[*(v79 + 56)];
  *v70 = v68;
  *(v70 + 1) = v67;
  sub_1B75E4584(v13, v69);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_1B75E4F98(v13, type metadata accessor for Order.PickupFulfillment);
}

void Order.PickupFulfillment.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v71 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828, &unk_1B781C5A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v72 = &v71 - v8;
  v9 = type metadata accessor for Order.PickupFulfillment(0);
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  v10 = *(v9 + 48);
  v11 = type metadata accessor for Order.FulfillmentWindow(0);
  v12 = *(*(v11 - 8) + 56);
  v71 = v10;
  v12(a2 + v10, 1, 1, v11);
  v13 = *(v9 + 52);
  v14 = sub_1B77FF988();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = v15 + 56;
  v16(a2 + v13, 1, 1, v14);
  v18 = [a1 lineItemObjects];
  type metadata accessor for ManagedOrderLineItem();
  sub_1B75E505C(&qword_1EB98FFA0, type metadata accessor for ManagedOrderLineItem, MEMORY[0x1E69E81B8]);
  v19 = sub_1B7800FA8();

  *&v78 = sub_1B7519CE0(v19);
  sub_1B74D29C8(&v78);
  v73 = v17;

  v20 = v78;
  v76 = v13;
  v77 = v9;
  v75 = v14;
  v74 = v16;
  if ((v78 & 0x8000000000000000) != 0 || (v78 & 0x4000000000000000) != 0)
  {
    v21 = sub_1B7801958();
    if (v21)
    {
      goto LABEL_4;
    }

LABEL_15:

    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v21 = *(v78 + 16);
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_4:
  v86 = MEMORY[0x1E69E7CC0];
  sub_1B71FDDBC(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
    __break(1u);

    __break(1u);
    return;
  }

  v22 = 0;
  v23 = v86;
  if ((v20 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

LABEL_6:
  for (i = MEMORY[0x1B8CA5DC0](v22, v20); ; i = *(v20 + 8 * v22 + 32))
  {
    Order.LineItem.init(_:)(i, &v78);
    v86 = v23;
    v26 = *(v23 + 16);
    v25 = *(v23 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1B71FDDBC((v25 > 1), v26 + 1, 1);
      v23 = v86;
    }

    *(v23 + 16) = v26 + 1;
    v27 = (v23 + (v26 << 7));
    v28 = v78;
    v29 = v79;
    v30 = v81;
    v27[4] = v80;
    v27[5] = v30;
    v27[2] = v28;
    v27[3] = v29;
    v31 = v82;
    v32 = v83;
    v33 = v85;
    v27[8] = v84;
    v27[9] = v33;
    v27[6] = v31;
    v27[7] = v32;
    if (v21 - 1 == v22)
    {
      break;
    }

    ++v22;
    if ((v20 & 0xC000000000000001) != 0)
    {
      goto LABEL_6;
    }

LABEL_7:
    ;
  }

LABEL_16:
  *a2 = v23;
  *(a2 + 8) = ManagedOrderPickupFulfillment.status.getter();
  v34 = [a1 statusDescription];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1B77FFA48();
    v37 = sub_1B741F7D4(v36);
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  *(a2 + 16) = v37;
  *(a2 + 24) = v39;
  *(a2 + 32) = [a1 address];
  v40 = [a1 barcode];
  if (v40)
  {
    ManagedOrderBarcode.model.getter(&v78);

    v41 = *(&v78 + 1);
    v40 = v78;
    v42 = v79;
    v43 = *(&v79 + 1);
    v46 = *(&v80 + 1);
    v45 = v80;
    v44 = v81;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v45 = 0;
    v46 = 0;
    v44 = 0;
  }

  v47 = sub_1B74C69A8(*(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64), *(a2 + 72), *(a2 + 80), *(a2 + 88));
  *(a2 + 40) = v40;
  *(a2 + 48) = v41;
  *(a2 + 56) = v42;
  *(a2 + 64) = v43;
  *(a2 + 72) = v45;
  *(a2 + 80) = v46;
  *(a2 + 88) = v44;
  v48 = [a1 notes];
  if (v48)
  {
    v49 = v48;
    v50 = sub_1B77FFA48();
    v51 = sub_1B741F7D4(v50);
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  v54 = v72;
  v55 = v71;
  *(a2 + 96) = v51;
  *(a2 + 104) = v53;
  v56 = [a1 displayName];
  v57 = sub_1B77FFA48();
  v58 = sub_1B741F7D4(v57);
  v60 = v59;

  *(a2 + 112) = v58;
  *(a2 + 120) = v60;
  *(a2 + 128) = [a1 location];
  ManagedOrderPickupFulfillment.pickupWindow.getter(v54);
  sub_1B7213740(v54, a2 + v55, &qword_1EB990828, &unk_1B781C5A0);
  v61 = [a1 pickedUpDate];
  if (v61)
  {
    v62 = v61;
    sub_1B77FF928();

    v63 = 0;
  }

  else
  {
    v63 = 1;
  }

  v64 = v76;
  v65 = v77;
  v74(v6, v63, 1, v75);
  sub_1B7213740(v6, a2 + v64, &qword_1EB98EBD0, &unk_1B7809780);
  v66 = [a1 fulfillmentIdentifier];
  v67 = sub_1B7800868();
  v69 = v68;

  v70 = (a2 + *(v65 + 56));
  *v70 = v67;
  v70[1] = v69;
}

uint64_t Order.PickupFulfillment.statusDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void Order.PickupFulfillment.statusDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void *Order.PickupFulfillment.address.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

double Order.PickupFulfillment.barcode.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B74C6ADC(v2, v3, v4, v5, v6, v7, v8);
}

__n128 Order.PickupFulfillment.barcode.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1B74C69A8(v1[5], v1[6], v1[7], v1[8], v1[9], v1[10], v1[11]);
  v4 = *a1;
  *(v1 + 7) = a1[1];
  *(v1 + 5) = v4;
  result = v6;
  *(v1 + 9) = v6;
  v1[11] = v3;
  return result;
}

uint64_t Order.PickupFulfillment.notes.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

void Order.PickupFulfillment.notes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t Order.PickupFulfillment.displayName.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

void Order.PickupFulfillment.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

void *Order.PickupFulfillment.location.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

uint64_t Order.PickupFulfillment.fulfillmentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for Order.PickupFulfillment(0) + 56));

  return v1;
}

void Order.PickupFulfillment.fulfillmentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Order.PickupFulfillment(0) + 56));

  *v5 = a1;
  v5[1] = a2;
}

unint64_t sub_1B75E263C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6D657449656E696CLL;
    v7 = 0xD000000000000011;
    v8 = 0x73736572646461;
    if (a1 != 3)
    {
      v8 = 0x65646F63726162;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x737574617473;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x695770756B636970;
    v2 = 0x705564656B636970;
    if (a1 != 9)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7365746F6ELL;
    v4 = 0x4E79616C70736964;
    if (a1 != 6)
    {
      v4 = 0x6E6F697461636F6CLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B75E27C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B75E4C08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B75E27F8(uint64_t a1)
{
  v2 = sub_1B75E45E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75E2834(uint64_t a1)
{
  v2 = sub_1B75E45E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Order.PickupFulfillment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999188, &qword_1B7849360);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75E45E8();
  sub_1B78023F8();
  v8 = *(v3 + 32);
  if (v8)
  {
    RawAddress.init(_:)(v8, v25);
  }

  else
  {
    *&v25[0] = 1;
    memset(v25 + 8, 0, 96);
  }

  v9 = *(v3 + 128);
  *&v17 = *v3;
  v24 = 0;
  v10 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9946A0, &qword_1B782A250);
  sub_1B742C9C4(&qword_1EB9946A8, sub_1B742C91C, MEMORY[0x1E69E6300]);
  sub_1B7801FC8();
  if (v2)
  {

    sub_1B7205418(v25, &qword_1EB995F40, &unk_1B78347E0);

    (*(v26 + 8))(v7, v5);
  }

  else
  {

    LOBYTE(v17) = *(v3 + 8);
    v24 = 1;
    sub_1B75E463C();
    sub_1B7801FC8();
    LOBYTE(v17) = 2;
    sub_1B7801EF8();
    v21 = v25[4];
    v22 = v25[5];
    v17 = v25[0];
    v18 = v25[1];
    v23 = *&v25[6];
    v20 = v25[3];
    v19 = v25[2];
    v24 = 3;
    sub_1B7304418();
    sub_1B7801F38();
    sub_1B7205418(v25, &qword_1EB995F40, &unk_1B78347E0);
    v11 = *(v3 + 48);
    v12 = *(v3 + 56);
    v13 = *(v3 + 64);
    v14 = *(v3 + 72);
    v15 = *(v3 + 80);
    v16 = *(v3 + 88);
    *&v17 = *(v3 + 40);
    *(&v17 + 1) = v11;
    *&v18 = v12;
    *(&v18 + 1) = v13;
    *&v19 = v14;
    *(&v19 + 1) = v15;
    *&v20 = v16;
    v24 = 4;
    sub_1B74C6ADC(v17, v11, v12, v13, v14, v15, v16);
    sub_1B75E4690();
    sub_1B7801F38();
    sub_1B74C69A8(v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20);
    LOBYTE(v17) = 5;
    sub_1B7801EF8();
    LOBYTE(v17) = 6;
    sub_1B7801F78();
    *&v17 = v9;
    v24 = 7;
    sub_1B75E46E4();
    sub_1B7801F38();
    type metadata accessor for Order.PickupFulfillment(0);
    LOBYTE(v17) = 8;
    type metadata accessor for Order.FulfillmentWindow(0);
    sub_1B75E505C(&qword_1EB996760, type metadata accessor for Order.FulfillmentWindow, protocol conformance descriptor for Order.FulfillmentWindow);
    sub_1B7801F38();
    LOBYTE(v17) = 9;
    sub_1B77FF988();
    sub_1B75E505C(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B7801F38();
    LOBYTE(v17) = 10;
    sub_1B7801F78();
    (*(v26 + 8))(v7, v5);
  }
}

uint64_t Order.PickupFulfillment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828, &unk_1B781C5A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9991A8, &qword_1B7849368);
  v8 = *(v7 - 8);
  v57 = v7;
  v58 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - v9;
  v11 = type metadata accessor for Order.PickupFulfillment(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 11) = 0;
  *(v14 + 72) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 40) = 0u;
  v15 = *(v12 + 48);
  v16 = type metadata accessor for Order.FulfillmentWindow(0);
  v17 = *(*(v16 - 8) + 56);
  v86 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = *(v11 + 52);
  v19 = sub_1B77FF988();
  v20 = *(*(v19 - 8) + 56);
  v61 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B75E45E8();
  v22 = v59;
  sub_1B78023C8();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
    sub_1B74C69A8(*(v14 + 5), *(v14 + 6), *(v14 + 7), *(v14 + 8), *(v14 + 9), *(v14 + 10), *(v14 + 11));

    sub_1B7205418(&v14[v86], &qword_1EB990828, &unk_1B781C5A0);
    return sub_1B7205418(&v14[v61], &qword_1EB98EBD0, &unk_1B7809780);
  }

  else
  {
    v59 = v16;
    v53 = v11;
    v78 = 3;
    sub_1B73043C4();
    v23 = v57;
    sub_1B7801DB8();
    v75 = v83;
    v76 = v84;
    v77 = v85;
    v71 = v79;
    v72 = v80;
    v73 = v81;
    v74 = v82;
    v70 = 7;
    sub_1B75E4738();
    sub_1B7801DB8();
    v24 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9946A0, &qword_1B782A250);
    v70 = 0;
    sub_1B742C9C4(&qword_1EB9946C8, sub_1B742CA3C, MEMORY[0x1E69E6330]);
    sub_1B7801E48();
    v52 = v62;
    *v14 = v62;
    v70 = 1;
    sub_1B75E478C();
    sub_1B7801E48();
    v14[8] = v62;
    v70 = 2;
    v26 = sub_1B7801D78();
    *(v14 + 2) = v26;
    *(v14 + 3) = v27;
    v51 = v27;
    if (v71 == 1)
    {
      v28 = 0;
    }

    else
    {
      v66 = v75;
      v67 = v76;
      v68 = v77;
      v62 = v71;
      v63 = v72;
      v64 = v73;
      v65 = v74;
      sub_1B7205540(0, &qword_1EB990D70, 0x1E695CF30);
      v28 = CNMutablePostalAddress.init(rawAddress:)(&v62);
    }

    v50 = v28;
    *(v14 + 4) = v28;
    v69 = 4;
    sub_1B75E47E0();
    sub_1B7801DB8();
    v29 = v65;
    v30 = *(v14 + 5);
    v31 = *(v14 + 6);
    v32 = *(v14 + 7);
    v33 = *(v14 + 8);
    v34 = *(v14 + 9);
    v35 = *(v14 + 10);
    v36 = *(v14 + 11);
    v48 = v62;
    v49 = v64;
    v47 = v63;
    sub_1B74C69A8(v30, v31, v32, v33, v34, v35, v36);
    v37 = v48;
    *(v14 + 56) = v47;
    *(v14 + 40) = v37;
    *(v14 + 72) = v49;
    *(v14 + 11) = v29;
    LOBYTE(v62) = 5;
    *(v14 + 12) = sub_1B7801D78();
    *(v14 + 13) = v38;
    LOBYTE(v62) = 6;
    *(v14 + 14) = sub_1B7801DF8();
    *(v14 + 15) = v39;
    *(v14 + 16) = v24;
    LOBYTE(v62) = 8;
    sub_1B75E505C(&qword_1EB996748, type metadata accessor for Order.FulfillmentWindow, protocol conformance descriptor for Order.FulfillmentWindow);
    *&v49 = v24;
    sub_1B7801DB8();
    sub_1B7213740(v56, &v14[v86], &qword_1EB990828, &unk_1B781C5A0);
    LOBYTE(v62) = 9;
    sub_1B75E505C(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v40 = v23;
    v41 = v10;
    sub_1B7801DB8();
    sub_1B7213740(v55, &v14[v61], &qword_1EB98EBD0, &unk_1B7809780);
    LOBYTE(v62) = 10;
    v42 = sub_1B7801DF8();
    v44 = v43;
    (*(v58 + 8))(v41, v40);

    v45 = v54;
    v46 = &v14[*(v53 + 56)];
    *v46 = v42;
    v46[1] = v44;
    sub_1B75E4584(v14, v45);
    __swift_destroy_boxed_opaque_existential_1(v60);
    return sub_1B75E4F98(v14, type metadata accessor for Order.PickupFulfillment);
  }
}

uint64_t Order.PickupFulfillment.fulfillment.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1B75E4584(v1, a1);
  type metadata accessor for Order.Fulfillment(0);

  return swift_storeEnumTagMultiPayload();
}

BOOL _s10FinanceKit5OrderV17PickupFulfillmentV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Order.FulfillmentWindow(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828, &unk_1B781C5A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v97 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990A40, &unk_1B780EB60);
  MEMORY[0x1EEE9AC00](v116);
  v12 = &v97 - v11;
  v118 = sub_1B77FF988();
  v120 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v119 = &v97 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0, &qword_1B7813550);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v97 - v18;
  v20 = a1[16];
  v21 = a2[16];
  v22 = a1[4];
  v23 = a2[4];
  if (!v22)
  {
    if (v23)
    {
      return 0;
    }

    v110 = v17;
    v111 = v19;
    v108 = v5;
    v107 = v10;
    v109 = v4;
    v115 = v20;
    v30 = v20;
    v31 = v21;
    goto LABEL_8;
  }

  if (v23)
  {
    v110 = v17;
    v111 = v19;
    v108 = v5;
    v107 = v10;
    v109 = v4;
    v24 = v20;
    sub_1B7205540(0, &qword_1EDAFAF20, 0x1E695CF60);
    v115 = v24;
    v25 = v24;
    v26 = v21;
    v27 = v23;
    v28 = v22;
    v29 = sub_1B7801558();

    if ((v29 & 1) == 0)
    {

LABEL_5:
      return 0;
    }

LABEL_8:
    v101 = v7;
    v102 = v12;
    v112 = v21;
    v32 = a1[5];
    v33 = a1[6];
    v35 = a1[7];
    v34 = a1[8];
    v36 = a1[9];
    v121 = a1[10];
    v105 = a1;
    v37 = a1[11];
    v38 = a2[5];
    v39 = a2[6];
    v40 = a2;
    v42 = a2[7];
    v41 = a2[8];
    v43 = v40[9];
    v44 = v40[10];
    v106 = v40;
    v45 = v40[11];
    v114 = v39;
    v113 = v38;
    if (v36)
    {
      v129[0] = v32;
      v129[1] = v33;
      v129[2] = v35;
      v129[3] = v34;
      v129[4] = v36;
      v129[5] = v121;
      v129[6] = v37;
      if (v43)
      {
        v122 = v38;
        v123 = v39;
        v124 = v42;
        v98 = v41;
        v125 = v41;
        v126 = v43;
        v127 = v44;
        v128 = v45;
        v46 = v34;
        v97 = v43;
        v47 = v35;
        LODWORD(v104) = _s10FinanceKit7BarcodeV2eeoiySbAC_ACtFZ_0(v129, &v122);
        v103 = v123;
        v100 = v126;
        v99 = v128;
        v48 = v32;
        v49 = v32;
        v50 = v33;
        v51 = v33;
        v52 = v47;
        v53 = v47;
        v54 = v46;
        v55 = v46;
        v56 = v121;
        sub_1B74C6ADC(v49, v51, v52, v54, v36, v121, v37);
        sub_1B74C6ADC(v113, v114, v42, v98, v97, v44, v45);
        sub_1B74C6ADC(v48, v50, v53, v55, v36, v56, v37);

        sub_1B74C69A8(v48, v50, v53, v55, v36, v56, v37);
        if ((v104 & 1) == 0)
        {

          return 0;
        }

LABEL_17:
        v65 = v105;
        v66 = v106;
        v67 = v112;
        if ((v105[14] != v106[14] || v105[15] != v106[15]) && (sub_1B78020F8() & 1) == 0 || ((v68 = type metadata accessor for Order.PickupFulfillment(0), v69 = *(v68 + 56), v70 = *(v65 + v69), v71 = *(v65 + v69 + 8), v72 = (v66 + v69), v70 != *v72) || v71 != v72[1]) && (sub_1B78020F8() & 1) == 0 || (sub_1B731C3C0(*v65, *v66) & 1) == 0)
        {
LABEL_47:

          goto LABEL_48;
        }

        v26 = v115;
        if (v115)
        {
          v73 = v102;
          v74 = v101;
          if (!v67)
          {
            goto LABEL_5;
          }

          v75 = v67;
          v76 = sub_1B742E3B8(v26, v75);

          if (!v76)
          {

            return 0;
          }
        }

        else
        {
          v73 = v102;
          v74 = v101;
          if (v67)
          {
            goto LABEL_48;
          }
        }

        v77 = v65[13];
        v78 = v66[13];
        if (v77)
        {
          if (v78 && (v65[12] == v66[12] && v77 == v78 || (sub_1B78020F8() & 1) != 0))
          {
            goto LABEL_34;
          }
        }

        else if (!v78)
        {
LABEL_34:
          v115 = v26;
          v121 = v68;
          v79 = *(v68 + 52);
          v80 = *(v110 + 48);
          v81 = v111;
          sub_1B7205588(v65 + v79, v111, &qword_1EB98EBD0, &unk_1B7809780);
          sub_1B7205588(v66 + v79, v81 + v80, &qword_1EB98EBD0, &unk_1B7809780);
          v82 = *(v120 + 48);
          v83 = v118;
          if (v82(v81, 1, v118) == 1)
          {
            if (v82(v81 + v80, 1, v83) == 1)
            {
              sub_1B7205418(v81, &qword_1EB98EBD0, &unk_1B7809780);
LABEL_44:
              v90 = *(v121 + 48);
              v91 = *(v116 + 48);
              sub_1B7205588(v65 + v90, v73, &qword_1EB990828, &unk_1B781C5A0);
              sub_1B7205588(v66 + v90, v73 + v91, &qword_1EB990828, &unk_1B781C5A0);
              v92 = *(v108 + 48);
              v93 = v109;
              if (v92(v73, 1, v109) == 1)
              {

                if (v92(v73 + v91, 1, v93) == 1)
                {
                  sub_1B7205418(v73, &qword_1EB990828, &unk_1B781C5A0);
                  return *(v65 + 8) == *(v66 + 8);
                }
              }

              else
              {
                v95 = v107;
                sub_1B7205588(v73, v107, &qword_1EB990828, &unk_1B781C5A0);
                if (v92(v73 + v91, 1, v93) != 1)
                {
                  sub_1B75E4FF8(v73 + v91, v74);
                  v96 = _s10FinanceKit5OrderV17FulfillmentWindowO2eeoiySbAE_AEtFZ_0(v95, v74);

                  sub_1B75E4F98(v74, type metadata accessor for Order.FulfillmentWindow);
                  sub_1B75E4F98(v95, type metadata accessor for Order.FulfillmentWindow);
                  sub_1B7205418(v73, &qword_1EB990828, &unk_1B781C5A0);
                  if ((v96 & 1) == 0)
                  {
                    return 0;
                  }

                  return *(v65 + 8) == *(v66 + 8);
                }

                sub_1B75E4F98(v95, type metadata accessor for Order.FulfillmentWindow);
              }

              v84 = &qword_1EB990A40;
              v85 = &unk_1B780EB60;
              v86 = v73;
LABEL_54:
              sub_1B7205418(v86, v84, v85);
              return 0;
            }

LABEL_42:
            v84 = &qword_1EB98FCE0;
            v85 = &qword_1B7813550;
            v86 = v81;
            goto LABEL_54;
          }

          sub_1B7205588(v81, v119, &qword_1EB98EBD0, &unk_1B7809780);
          if (v82(v81 + v80, 1, v83) == 1)
          {

            (*(v120 + 8))(v119, v83);
            goto LABEL_42;
          }

          v87 = v120;
          (*(v120 + 32))(v117, v81 + v80, v83);
          sub_1B75E505C(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
          v88 = sub_1B7800828();
          v89 = *(v87 + 8);
          v89(v117, v83);
          v89(v119, v83);
          sub_1B7205418(v81, &qword_1EB98EBD0, &unk_1B7809780);
          if (v88)
          {
            goto LABEL_44;
          }

          goto LABEL_47;
        }

LABEL_48:
        return 0;
      }

      v118 = v33;
      v119 = v37;
      v57 = v38;
      v58 = v32;
      v59 = v37;
      v60 = v35;
      v120 = v58;
      v61 = v34;
      sub_1B74C6ADC(v58, v118, v35, v34, v36, v121, v59);
      v62 = v57;
      v33 = v118;
      sub_1B74C6ADC(v62, v39, v42, v41, 0, v44, v45);
      v103 = v60;
      v63 = v60;
      v64 = v119;
      v104 = v61;
      v32 = v120;
      sub_1B74C6ADC(v120, v33, v63, v61, v36, v121, v119);
      v37 = v64;
    }

    else
    {
      v103 = v35;
      v104 = v34;
      sub_1B74C6ADC(v32, v33, v35, v34, 0, v121, v37);
      if (!v43)
      {
        sub_1B74C6ADC(v113, v114, v42, v41, 0, v44, v45);
        sub_1B74C69A8(v32, v33, v103, v104, 0, v121, v37);
        goto LABEL_17;
      }

      sub_1B74C6ADC(v113, v114, v42, v41, v43, v44, v45);
    }

    sub_1B74C69A8(v32, v33, v103, v104, v36, v121, v37);
    sub_1B74C69A8(v113, v114, v42, v41, v43, v44, v45);
  }

  return 0;
}

uint64_t type metadata accessor for Order.PickupFulfillment(uint64_t a1)
{
  result = qword_1EB9991C0;
  if (!qword_1EB9991C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B75E4514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B75E4584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Order.PickupFulfillment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B75E45E8()
{
  result = qword_1EB999190;
  if (!qword_1EB999190)
  {
    result = swift_getWitnessTable(byte_1B7849508, &_s17PickupFulfillmentV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999190);
  }

  return result;
}

unint64_t sub_1B75E463C()
{
  result = qword_1EB999198;
  if (!qword_1EB999198)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.PickupStatus, &type metadata for Order.PickupStatus, v0, v1);
    atomic_store(result, &qword_1EB999198);
  }

  return result;
}

unint64_t sub_1B75E4690()
{
  result = qword_1EB9991A0;
  if (!qword_1EB9991A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Barcode, &type metadata for Barcode, v0, v1);
    atomic_store(result, &qword_1EB9991A0);
  }

  return result;
}

unint64_t sub_1B75E46E4()
{
  result = qword_1EB99DA60;
  if (!qword_1EB99DA60)
  {
    result = swift_getWitnessTable(byte_1B782AB94, &type metadata for Location, v0, v1);
    atomic_store(result, &qword_1EB99DA60);
  }

  return result;
}

unint64_t sub_1B75E4738()
{
  result = qword_1EB99DAD0;
  if (!qword_1EB99DAD0)
  {
    result = swift_getWitnessTable(byte_1B782AB6C, &type metadata for Location, v0, v1);
    atomic_store(result, &qword_1EB99DAD0);
  }

  return result;
}

unint64_t sub_1B75E478C()
{
  result = qword_1EB9991B0;
  if (!qword_1EB9991B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Order.PickupStatus, &type metadata for Order.PickupStatus, v0, v1);
    atomic_store(result, &qword_1EB9991B0);
  }

  return result;
}

unint64_t sub_1B75E47E0()
{
  result = qword_1EB9991B8;
  if (!qword_1EB9991B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Barcode, &type metadata for Barcode, v0, v1);
    atomic_store(result, &qword_1EB9991B8);
  }

  return result;
}

void sub_1B75E485C(uint64_t a1)
{
  sub_1B75E4A4C(319, &qword_1EB992E20, &type metadata for Order.LineItem, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B75E4A4C(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B7503C9C(319, &qword_1EDAF93F0, &qword_1EDAFAF20, 0x1E695CF60);
      if (v3 <= 0x3F)
      {
        sub_1B75E4A4C(319, &qword_1EB9991D0, &type metadata for Barcode, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B7503C9C(319, &qword_1EDAF9408, &qword_1EDAFAF38, 0x1E6985C40);
          if (v5 <= 0x3F)
          {
            sub_1B75E4A9C(319, &qword_1EB990A10, type metadata accessor for Order.FulfillmentWindow);
            if (v6 <= 0x3F)
            {
              sub_1B75E4A9C(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
              if (v7 <= 0x3F)
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

void sub_1B75E4A4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B75E4A9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7801768();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B75E4B04()
{
  result = qword_1EB9991D8;
  if (!qword_1EB9991D8)
  {
    result = swift_getWitnessTable(aI_35, &_s17PickupFulfillmentV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9991D8);
  }

  return result;
}

unint64_t sub_1B75E4B5C()
{
  result = qword_1EB9991E0;
  if (!qword_1EB9991E0)
  {
    result = swift_getWitnessTable(byte_1B7849450, &_s17PickupFulfillmentV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9991E0);
  }

  return result;
}

unint64_t sub_1B75E4BB4()
{
  result = qword_1EB9991E8;
  if (!qword_1EB9991E8)
  {
    result = swift_getWitnessTable(byte_1B7849478, &_s17PickupFulfillmentV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9991E8);
  }

  return result;
}

uint64_t sub_1B75E4C08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D657449656E696CLL && a2 == 0xE900000000000073;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78749D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65646F63726162 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x695770756B636970 && a2 == 0xEC000000776F646ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x705564656B636970 && a2 == 0xEC00000065746144 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7881AD0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1B75E4F98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B75E4FF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Order.FulfillmentWindow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B75E505C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void static CoreDataProvider.getBackgroundProvider()()
{
  if (qword_1EDAF8960 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF8968;
  os_unfair_lock_lock((qword_1EDAF8968 + 24));
  sub_1B75E5458((v0 + 16), &v1);
  os_unfair_lock_unlock((v0 + 24));
}

id CoreDataProviding.viewContext.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 8))(a1) + 16);

  v3 = [v2 viewContext];

  return v3;
}

void *sub_1B75E51D4()
{
  type metadata accessor for CoreDataProvider();
  v0 = swift_allocObject();
  result = CoreDataProvider.init(shared:)(1);
  off_1EDAF9E38 = v0;
  return result;
}

uint64_t CoreDataProvider.__allocating_init(shared:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  CoreDataProvider.init(shared:)(v1);
  return v2;
}

void sub_1B75E529C()
{
  if (qword_1EDAF8960 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF8968;
  os_unfair_lock_lock((qword_1EDAF8968 + 24));
  sub_1B75E5458((v0 + 16), &v1);
  os_unfair_lock_unlock((v0 + 24));
  off_1EDAF8980 = v1;
}

uint64_t sub_1B75E5374(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t CoreDataProvider.__allocating_init(store:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1B75E5414()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9991F0, &unk_1B78495D0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  qword_1EDAF8968 = result;
  return result;
}

uint64_t sub_1B75E5458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    goto LABEL_2;
  }

  v6 = a2;
  type metadata accessor for CoreDataProvider();
  v3 = swift_allocObject();
  CoreDataProvider.init(shared:)(0);
  if (!v2)
  {
    *a1 = v3;
    a2 = v6;
LABEL_2:
    *a2 = v3;
  }

  if (qword_1EDAFD2C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1B78000B8();
  __swift_project_value_buffer(v7, qword_1EDAFD2D0);
  v8 = v2;
  v9 = sub_1B7800098();
  v10 = sub_1B78011E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1B7198000, v9, v10, "Could not create background CoreDataProvider: %@", v11, 0xCu);
    sub_1B726B694(v12);
    MEMORY[0x1B8CA7A40](v12, -1, -1);
    MEMORY[0x1B8CA7A40](v11, -1, -1);
  }

  return swift_willThrow();
}

void *CoreDataProvider.init(shared:)(int a1)
{
  v2 = v1;
  v4 = *v1;
  v32 = type metadata accessor for CoreDataStoreConfiguration(0);
  v5 = MEMORY[0x1EEE9AC00](v32);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v31 - v8;
  v10 = type metadata accessor for CoreDataStoreClientConfiguration(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  if ((a1 & 1) == 0)
  {
    goto LABEL_12;
  }

  v31[1] = v4;
  v13 = [objc_opt_self() mainBundle];
  v14 = [v13 bundleIdentifier];
  if (!v14)
  {

    goto LABEL_11;
  }

  v15 = v14;
  v16 = sub_1B7800868();
  v18 = v17;

  if (!v18)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v16 == 0xD000000000000012 && 0x80000001B7878970 == v18)
  {

LABEL_19:
    result = sub_1B7801C88();
    __break(1u);
    return result;
  }

  v20 = sub_1B78020F8();

  if (v20)
  {
    goto LABEL_19;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110, &unk_1B7808C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7808C50;
  *(inited + 32) = sub_1B7800868();
  *(inited + 40) = v22;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  *(inited + 80) = sub_1B7800868();
  *(inited + 88) = v23;
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = 0xD000000000000028;
  *(inited + 104) = 0x80000001B7874E50;
  v24 = sub_1B72018E0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F118, &qword_1B781A570);
  swift_arrayDestroy();
  if (qword_1EDAFCB50 != -1)
  {
    swift_once();
  }

  v25 = sub_1B77FF4F8();
  v26 = __swift_project_value_buffer(v25, qword_1EDAFCB58);
  (*(*(v25 - 8) + 16))(v12, v26, v25);
  v27 = *(v10 + 20);
  *&v12[*(v10 + 24)] = v24;
  v12[v27] = v33 & 1;
  sub_1B75E5B5C(v12, v9, type metadata accessor for CoreDataStoreClientConfiguration);
  swift_storeEnumTagMultiPayload();
  sub_1B75E5B5C(v9, v7, type metadata accessor for CoreDataStoreConfiguration);
  type metadata accessor for CoreDataStore();
  swift_allocObject();
  v28 = v34;
  v29 = CoreDataStore.init(configuration:)(v7);
  sub_1B75E5BC4(v9, type metadata accessor for CoreDataStoreConfiguration);
  sub_1B75E5BC4(v12, type metadata accessor for CoreDataStoreClientConfiguration);
  if (v28)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v2[2] = v29;
  }

  return v2;
}

uint64_t CoreDataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1B75E5B1C()
{
  v1 = [*(*(*v0 + 16) + 16) viewContext];

  return v1;
}

uint64_t sub_1B75E5B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B75E5BC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B75E5CEC(uint64_t a1)
{
  v2 = sub_1B75E67C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75E5D28(uint64_t a1)
{
  v2 = sub_1B75E67C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75E5D64()
{
  v1 = *v0;
  v2 = 1852141679;
  v3 = 0x705564656B636970;
  v4 = 0x6575737369;
  if (v1 != 4)
  {
    v4 = 0x656C6C65636E6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x69737365636F7270;
  if (v1 != 1)
  {
    v5 = 0x726F467964616572;
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

uint64_t sub_1B75E5E28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B75E7750(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B75E5E50(uint64_t a1)
{
  v2 = sub_1B75E6774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75E5E8C(uint64_t a1)
{
  v2 = sub_1B75E6774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75E5EC8(uint64_t a1)
{
  v2 = sub_1B75E681C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75E5F04(uint64_t a1)
{
  v2 = sub_1B75E681C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75E5F40(uint64_t a1)
{
  v2 = sub_1B75E696C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75E5F7C(uint64_t a1)
{
  v2 = sub_1B75E696C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75E5FB8(uint64_t a1)
{
  v2 = sub_1B75E6870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75E5FF4(uint64_t a1)
{
  v2 = sub_1B75E6870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75E6030(uint64_t a1)
{
  v2 = sub_1B75E6918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75E606C(uint64_t a1)
{
  v2 = sub_1B75E6918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75E60A8(uint64_t a1)
{
  v2 = sub_1B75E68C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75E60E4(uint64_t a1)
{
  v2 = sub_1B75E68C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.PickupStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t Order.PickupStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9991F8, &qword_1B78495E0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999200, &qword_1B78495E8);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999208, &qword_1B78495F0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999210, &qword_1B78495F8);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999218, &qword_1B7849600);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999220, &qword_1B7849608);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999228, &qword_1B7849610);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75E6774();
  sub_1B78023F8();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1B75E6870();
      v21 = v33;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1B75E681C();
      v21 = v36;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1B75E67C8();
      v21 = v39;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1B75E6918();
      v21 = v27;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1B75E68C4();
      v21 = v30;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1B75E696C();
  v22 = v42;
  sub_1B7801ED8();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

unint64_t sub_1B75E6774()
{
  result = qword_1EB999230;
  if (!qword_1EB999230)
  {
    result = swift_getWitnessTable(asc_1B7849C5C, &_s12PickupStatusO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999230);
  }

  return result;
}

unint64_t sub_1B75E67C8()
{
  result = qword_1EB999238;
  if (!qword_1EB999238)
  {
    result = swift_getWitnessTable(byte_1B7849C0C, &_s12PickupStatusO19CancelledCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999238);
  }

  return result;
}

unint64_t sub_1B75E681C()
{
  result = qword_1EB999240;
  if (!qword_1EB999240)
  {
    result = swift_getWitnessTable(byte_1B7849BBC, &_s12PickupStatusO15IssueCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999240);
  }

  return result;
}

unint64_t sub_1B75E6870()
{
  result = qword_1EB999248;
  if (!qword_1EB999248)
  {
    result = swift_getWitnessTable(aM_20, &_s12PickupStatusO18PickedUpCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999248);
  }

  return result;
}

unint64_t sub_1B75E68C4()
{
  result = qword_1EB999250;
  if (!qword_1EB999250)
  {
    result = swift_getWitnessTable(byte_1B7849B1C, &_s12PickupStatusO24ReadyForPickupCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999250);
  }

  return result;
}

unint64_t sub_1B75E6918()
{
  result = qword_1EB999258;
  if (!qword_1EB999258)
  {
    result = swift_getWitnessTable(byte_1B7849ACC, &_s12PickupStatusO20ProcessingCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999258);
  }

  return result;
}

unint64_t sub_1B75E696C()
{
  result = qword_1EB999260;
  if (!qword_1EB999260)
  {
    result = swift_getWitnessTable(aE7p, &_s12PickupStatusO14OpenCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999260);
  }

  return result;
}

uint64_t Order.PickupStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999268, &qword_1B7849618);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999270, &qword_1B7849620);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999278, &qword_1B7849628);
  v46 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999280, &qword_1B7849630);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999288, &qword_1B7849638);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999290, &qword_1B7849640);
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999298, &unk_1B7849648);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B75E6774();
  v22 = v56;
  sub_1B78023C8();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v56 = v13;
    v25 = v53;
    v24 = v54;
    v26 = v55;
    v27 = sub_1B7801E98();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_1B721CE5C();
    v30 = v20;
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v34 = sub_1B7801B18();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050, &unk_1B780CC20);
      *v36 = &type metadata for Order.PickupStatus;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v29;
      if (v29 > 2u)
      {
        v38 = v52;
        if (v29 == 3)
        {
          v63 = 3;
          sub_1B75E6870();
          sub_1B7801D38();
          (*(v46 + 8))(v25, v41);
        }

        else if (v29 == 4)
        {
          v63 = 4;
          sub_1B75E681C();
          sub_1B7801D38();
          (*(v48 + 8))(v24, v47);
        }

        else
        {
          v63 = 5;
          sub_1B75E67C8();
          sub_1B7801D38();
          (*(v49 + 8))(v26, v50);
        }

        (*(v18 + 8))(v30, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v63 = 1;
            sub_1B75E6918();
            v31 = v56;
            sub_1B7801D38();
            v33 = v42;
            v32 = v43;
          }

          else
          {
            v63 = 2;
            sub_1B75E68C4();
            v31 = v51;
            sub_1B7801D38();
            v33 = v44;
            v32 = v45;
          }

          (*(v33 + 8))(v31, v32);
        }

        else
        {
          v63 = 0;
          sub_1B75E696C();
          sub_1B7801D38();
          (*(v40 + 8))(v23, v39);
        }

        (*(v18 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v38 = v52;
      }

      *v38 = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

unint64_t sub_1B75E722C()
{
  result = qword_1EB9992A0;
  if (!qword_1EB9992A0)
  {
    result = swift_getWitnessTable(byte_1B7849A54, &_s12PickupStatusO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9992A0);
  }

  return result;
}

unint64_t sub_1B75E7284()
{
  result = qword_1EB9992A8;
  if (!qword_1EB9992A8)
  {
    result = swift_getWitnessTable(asc_1B7849974, &_s12PickupStatusO14OpenCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9992A8);
  }

  return result;
}

unint64_t sub_1B75E72DC()
{
  result = qword_1EB9992B0;
  if (!qword_1EB9992B0)
  {
    result = swift_getWitnessTable(byte_1B784999C, &_s12PickupStatusO14OpenCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9992B0);
  }

  return result;
}

unint64_t sub_1B75E7334()
{
  result = qword_1EB9992B8;
  if (!qword_1EB9992B8)
  {
    result = swift_getWitnessTable(byte_1B7849924, &_s12PickupStatusO20ProcessingCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9992B8);
  }

  return result;
}

unint64_t sub_1B75E738C()
{
  result = qword_1EB9992C0;
  if (!qword_1EB9992C0)
  {
    result = swift_getWitnessTable(byte_1B784994C, &_s12PickupStatusO20ProcessingCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9992C0);
  }

  return result;
}

unint64_t sub_1B75E73E4()
{
  result = qword_1EB9992C8;
  if (!qword_1EB9992C8)
  {
    result = swift_getWitnessTable(byte_1B78498D4, &_s12PickupStatusO24ReadyForPickupCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9992C8);
  }

  return result;
}

unint64_t sub_1B75E743C()
{
  result = qword_1EB9992D0;
  if (!qword_1EB9992D0)
  {
    result = swift_getWitnessTable(a5_14, &_s12PickupStatusO24ReadyForPickupCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9992D0);
  }

  return result;
}

unint64_t sub_1B75E7494()
{
  result = qword_1EB9992D8;
  if (!qword_1EB9992D8)
  {
    result = swift_getWitnessTable(aM_21, &_s12PickupStatusO18PickedUpCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9992D8);
  }

  return result;
}

unint64_t sub_1B75E74EC()
{
  result = qword_1EB9992E0;
  if (!qword_1EB9992E0)
  {
    result = swift_getWitnessTable(byte_1B78498AC, &_s12PickupStatusO18PickedUpCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9992E0);
  }

  return result;
}

unint64_t sub_1B75E7544()
{
  result = qword_1EB9992E8;
  if (!qword_1EB9992E8)
  {
    result = swift_getWitnessTable(byte_1B7849834, &_s12PickupStatusO15IssueCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9992E8);
  }

  return result;
}

unint64_t sub_1B75E759C()
{
  result = qword_1EB9992F0;
  if (!qword_1EB9992F0)
  {
    result = swift_getWitnessTable(byte_1B784985C, &_s12PickupStatusO15IssueCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9992F0);
  }

  return result;
}

unint64_t sub_1B75E75F4()
{
  result = qword_1EB9992F8;
  if (!qword_1EB9992F8)
  {
    result = swift_getWitnessTable(asc_1B78497E4, &_s12PickupStatusO19CancelledCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB9992F8);
  }

  return result;
}

unint64_t sub_1B75E764C()
{
  result = qword_1EB999300;
  if (!qword_1EB999300)
  {
    result = swift_getWitnessTable(asc_1B784980C, &_s12PickupStatusO19CancelledCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999300);
  }

  return result;
}

unint64_t sub_1B75E76A4()
{
  result = qword_1EB999308;
  if (!qword_1EB999308)
  {
    result = swift_getWitnessTable(asc_1B78499C4, &_s12PickupStatusO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999308);
  }

  return result;
}

unint64_t sub_1B75E76FC()
{
  result = qword_1EB999310;
  if (!qword_1EB999310)
  {
    result = swift_getWitnessTable(aE_25, &_s12PickupStatusO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB999310);
  }

  return result;
}

uint64_t sub_1B75E7750(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852141679 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69737365636F7270 && a2 == 0xEA0000000000676ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F467964616572 && a2 == 0xEE0070756B636950 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x705564656B636970 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575737369 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t BankConnectWebServiceNotificationEventsRequest.init(consent:fromDateTime:subscriptionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B75E79FC(a1, a5);
  v9 = type metadata accessor for BankConnectWebServiceNotificationEventsRequest(0);
  v10 = *(v9 + 20);
  v11 = sub_1B77FF988();
  result = (*(*(v11 - 8) + 32))(a5 + v10, a2, v11);
  v13 = (a5 + *(v9 + 24));
  *v13 = a3;
  v13[1] = a4;
  return result;
}

uint64_t sub_1B75E79FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectConsent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double BankConnectWebServiceNotificationEventsRequest.jsonBody.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BankConnectWebServiceNotificationEventsRequest(0);
  v4 = *(v3 + 20);
  v5 = sub_1B77FF988();
  (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
  v6 = (v1 + *(v3 + 24));
  v8 = *v6;
  v7 = v6[1];
  v9 = (a1 + *(type metadata accessor for RawBankConnectData.NotificationEventsRequestBody(0) + 20));
  *v9 = v8;
  v9[1] = v7;

  return result;
}

uint64_t BankConnectWebServiceNotificationEventsRequest.makeJSONEncoder()()
{
  v0 = sub_1B77FE968();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FE9B8();
  swift_allocObject();
  v4 = sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB991BE8);
  (*(v1 + 16))(v3, v5, v0);
  sub_1B77FE988();
  return v4;
}

double sub_1B75E7C80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 20);
  v6 = sub_1B77FF988();
  (*(*(v6 - 8) + 16))(a2, v2 + v5, v6);
  v7 = (v2 + *(a1 + 24));
  v9 = *v7;
  v8 = v7[1];
  v10 = (a2 + *(type metadata accessor for RawBankConnectData.NotificationEventsRequestBody(0) + 20));
  *v10 = v9;
  v10[1] = v8;

  return result;
}

uint64_t sub_1B75E7D20()
{
  v0 = sub_1B77FE968();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FE9B8();
  swift_allocObject();
  v4 = sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB991BE8);
  (*(v1 + 16))(v3, v5, v0);
  sub_1B77FE988();
  return v4;
}

void static RawBankConnectData.NotificationEventsResponse.parse(data:urlResponse:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1B77FE8B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v24 = v4;
    v12 = a3;
    v13 = [v11 statusCode];
    if (v13 == 200)
    {
      sub_1B77FE8F8();
      swift_allocObject();
      sub_1B77FE8E8();
      if (qword_1EB98E9B0 != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(v6, qword_1EB991BC8);
      (*(v7 + 16))(v9, v14, v6);
      sub_1B77FE8C8();
      sub_1B75E81C0();
      v15 = v24;
      sub_1B77FE8D8();
      if (v15)
      {

        type metadata accessor for FinanceNetworkError(0);
        sub_1B75E8C44(&qword_1EB994C00, type metadata accessor for FinanceNetworkError, protocol conformance descriptor for FinanceNetworkError);
        swift_allocError();
        *v16 = v15;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
      }
    }

    else
    {
      v21 = v13;
      type metadata accessor for FinanceNetworkError(0);
      sub_1B75E8C44(&qword_1EB994C00, type metadata accessor for FinanceNetworkError, protocol conformance descriptor for FinanceNetworkError);
      swift_allocError();
      *v22 = v21;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FinanceNetworkError(0);
    sub_1B75E8C44(&qword_1EB994C00, type metadata accessor for FinanceNetworkError, protocol conformance descriptor for FinanceNetworkError);
    swift_allocError();
    v18 = v17;
    v19 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v18 = v19;
    v18[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

unint64_t sub_1B75E81C0()
{
  result = qword_1EB999318;
  if (!qword_1EB999318)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.NotificationEventsResponse, &type metadata for RawBankConnectData.NotificationEventsResponse, v0, v1);
    atomic_store(result, &qword_1EB999318);
  }

  return result;
}

uint64_t BankConnectWebServiceRegisterToNotificationEventsRequest.init(consent:eventTypes:subscriptionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B75E79FC(a1, a5);
  result = type metadata accessor for BankConnectWebServiceRegisterToNotificationEventsRequest(0);
  *(a5 + *(result + 24)) = a2;
  v10 = (a5 + *(result + 20));
  *v10 = a3;
  v10[1] = a4;
  return result;
}

double BankConnectWebServiceRegisterToNotificationEventsRequest.jsonBody.getter@<D0>(void *a1@<X8>)
{
  v3 = type metadata accessor for BankConnectWebServiceRegisterToNotificationEventsRequest(0);
  v4 = *(v1 + *(v3 + 24));
  v5 = (v1 + *(v3 + 20));
  v7 = *v5;
  v6 = v5[1];
  *a1 = v4;
  a1[1] = v7;
  a1[2] = v6;

  return result;
}

void *sub_1B75E82F8()
{
  v1 = sub_1B77FE968();
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v32 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60, &qword_1B780CC30);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B7807CD0;
  v3 = type metadata accessor for BankConnectConsent(0);
  v4 = v3[6];
  v5 = (v0 + v3[5]);
  v6 = *v5;
  v30 = v5[1];
  v31 = v6;
  v7 = type metadata accessor for RawBankConnectData.Consent(0);
  v37 = v7;
  v38 = sub_1B75E8C44(&qword_1EB990658, type metadata accessor for RawBankConnectData.Consent, protocol conformance descriptor for RawBankConnectData.Consent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  v9 = v7[5];
  v10 = sub_1B77FF988();
  v11 = *(*(v10 - 8) + 16);
  v11(boxed_opaque_existential_1 + v9, v0 + v4, v10);
  v11(boxed_opaque_existential_1 + v7[6], v0 + v3[7], v10);
  v12 = *(v0 + v3[9]);
  v13 = (v0 + v3[10]);
  v14 = *v13;
  v15 = v13[1];
  v16 = v30;
  *boxed_opaque_existential_1 = v31;
  boxed_opaque_existential_1[1] = v16;
  *(boxed_opaque_existential_1 + v7[7]) = v12;
  v17 = (boxed_opaque_existential_1 + v7[8]);
  *v17 = v14;
  v17[1] = v15;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  sub_1B77FE9B8();
  swift_allocObject();

  sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v18 = v34;
  v19 = __swift_project_value_buffer(v34, qword_1EB991BE8);
  (*(v33 + 16))(v32, v19, v18);
  sub_1B77FE988();
  v20 = v35;
  v21 = sub_1B77FE998();
  v23 = v22;

  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
    v24 = v39;
    *(v39 + 16) = 0;
  }

  else
  {
    v25 = sub_1B77FF5A8();
    v27 = v26;
    sub_1B720A388(v21, v23);
    v24 = v39;
    *(v39 + 32) = 0x746E65736E6F43;
    v24[5] = 0xE700000000000000;
    v24[6] = v25;
    v24[7] = v27;
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return v24;
}

double sub_1B75E8638@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + *(a1 + 24));
  v4 = (v2 + *(a1 + 20));
  v6 = *v4;
  v5 = v4[1];
  *a2 = v3;
  a2[1] = v6;
  a2[2] = v5;

  return result;
}

void static RawBankConnectData.RegisterToNotificationEventsResponse.parse(data:urlResponse:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1B77FE8B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v24 = v4;
    v12 = a3;
    v13 = [v11 statusCode];
    if (v13 == 200)
    {
      sub_1B77FE8F8();
      swift_allocObject();
      sub_1B77FE8E8();
      if (qword_1EB98E9B0 != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(v6, qword_1EB991BC8);
      (*(v7 + 16))(v9, v14, v6);
      sub_1B77FE8C8();
      sub_1B75E89FC();
      v15 = v24;
      sub_1B77FE8D8();
      if (v15)
      {

        type metadata accessor for FinanceNetworkError(0);
        sub_1B75E8C44(&qword_1EB994C00, type metadata accessor for FinanceNetworkError, protocol conformance descriptor for FinanceNetworkError);
        swift_allocError();
        *v16 = v15;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
      }
    }

    else
    {
      v21 = v13;
      type metadata accessor for FinanceNetworkError(0);
      sub_1B75E8C44(&qword_1EB994C00, type metadata accessor for FinanceNetworkError, protocol conformance descriptor for FinanceNetworkError);
      swift_allocError();
      *v22 = v21;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FinanceNetworkError(0);
    sub_1B75E8C44(&qword_1EB994C00, type metadata accessor for FinanceNetworkError, protocol conformance descriptor for FinanceNetworkError);
    swift_allocError();
    v18 = v17;
    v19 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v18 = v19;
    v18[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

unint64_t sub_1B75E89FC()
{
  result = qword_1EB999320;
  if (!qword_1EB999320)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.RegisterToNotificationEventsResponse, &type metadata for RawBankConnectData.RegisterToNotificationEventsResponse, v0, v1);
    atomic_store(result, &qword_1EB999320);
  }

  return result;
}

double BankConnectWebServiceUnregisterFromNotificationEventsRequest.jsonBody.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

void static BankConnectWebServiceUnregisterFromNotificationEventsResponse.parse(urlResponse:)(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 statusCode];
    if (v5 != 200)
    {
      v6 = v5;
      type metadata accessor for FinanceNetworkError(0);
      sub_1B75E8C44(&qword_1EB994C00, type metadata accessor for FinanceNetworkError, protocol conformance descriptor for FinanceNetworkError);
      swift_allocError();
      *v7 = v6;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FinanceNetworkError(0);
    sub_1B75E8C44(&qword_1EB994C00, type metadata accessor for FinanceNetworkError, protocol conformance descriptor for FinanceNetworkError);
    swift_allocError();
    v9 = v8;
    v10 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v9 = v10;
    v9[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}